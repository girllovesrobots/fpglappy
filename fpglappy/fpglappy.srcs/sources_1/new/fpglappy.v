`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////
//
//
//    ▄████████   ▄███████▄    ▄██████▄   ▄█          ▄████████    ▄███████▄    ▄███████▄ ▄██   ▄
//   ███    ███  ███    ███   ███    ███ ███         ███    ███   ███    ███   ███    ███ ███   ██▄
//   ███    █▀   ███    ███   ███    █▀  ███         ███    ███   ███    ███   ███    ███ ███▄▄▄███
//  ▄███▄▄▄      ███    ███  ▄███        ███         ███    ███   ███    ███   ███    ███ ▀▀▀▀▀▀███
// ▀▀███▀▀▀    ▀█████████▀  ▀▀███ ████▄  ███       ▀███████████ ▀█████████▀  ▀█████████▀  ▄██   ███
//   ███         ███          ███    ███ ███         ███    ███   ███          ███        ███   ███
//   ███         ███          ███    ███ ███▌    ▄   ███    ███   ███          ███        ███   ███
//   ███        ▄████▀        ████████▀  █████▄▄██   ███    █▀   ▄████▀       ▄████▀       ▀█████▀
//                            ▀
//                    ▀█████████▄   ▄█     ▄████████ ████████▄
//                      ███    ███ ███    ███    ███ ███   ▀███
//                      ███    ███ ███▌   ███    ███ ███    ███
//                     ▄███▄▄▄██▀  ███▌  ▄███▄▄▄▄██▀ ███    ███
//                    ▀▀███▀▀▀██▄  ███▌ ▀▀███▀▀▀▀▀   ███    ███
//                      ███    ██▄ ███  ▀███████████ ███    ███
//                      ███    ███ ███    ███    ███ ███   ▄███
//                    ▄█████████▀  █▀     ███    ███ ████████▀
//                                        ███    ███
// Design Name: Fpglappy Bird
// Module Name: fpglappy
// Project Name: Fpglappy Bird
// Target Devices: Nexys 4
// Tool Versions: Vivado v2015.2
// Description: Implementation of flappy bird on an FPGA for the 6.111 final
// project
//
// Authors: Julian Mendoza, Wei Low, Nicholas McCoy
//
//
//                   _(_)(_)(_)           _ (_)    _ (_)    _ (_)
//                 _(_)                  (_)(_)   (_)(_)   (_)(_)
//                (_) _  _  _               (_)      (_)      (_)
//                (_)(_)(_)(_)_             (_)      (_)      (_)
//                (_)        (_)  _  _      (_)      (_)      (_)
//                (_)_  _  _ (_) (_)(_)   _ (_) _  _ (_) _  _ (_) _
//                  (_)(_)(_)    (_)(_)  (_)(_)(_)(_)(_)(_)(_)(_)(_)
//
//
///////////////////////////////////////////////////////////////////////////////////////////////

module fpglappy(
    input CLK100MHZ,
    input SD_CD,
    input[15:0] SW,
    input BTNC, BTNU, BTNL, BTNR, BTND,
    output AUD_PWM,AUD_SD,
    output SD_RESET,
    output SD_SCK,
    output SD_CMD,
    output[3:0] VGA_R,
    output[3:0] VGA_B,
    output[3:0] VGA_G,
    // VISION STUFF --------------------------------------------
    input PCLK_C,
    input VSYNC_C,
    input HREF_C,
    output XCLK_C,
    output SIOD_C,
    output PWDN_C,
    output RESET_C,
    output SIOC_C,
    input[7:0] JA,
    // VISION STUFF --------------------------------------------
    output VGA_HS,
    output VGA_VS,
    output LED16_B, LED16_G, LED16_R,
    output LED17_B, LED17_G, LED17_R,
    output[15:0] LED,
    output[7:0] SEG,  // segments A-G (0-6), DP (7)
    output[7:0] AN,    // Display 0-7
    inout[3:0] SD_DAT
    );
    // Create 25mhz system clock
    wire clock_25mhz;
    clock_quarter_divider clockgen(.clk100_mhz(CLK100MHZ), .clock_25mhz(clock_25mhz));

    // Instantiate 7-segment display
    wire [31:0] data;
    wire [6:0] segments;
    display_8hex display(.clk(clock_25mhz),.data(data), .seg(segments), .strobe(AN));    
    assign SEG[6:0] = segments;
    assign SEG[7] = 1'b1;

//////////////////////////////////////////////////////////////////////////////////
// Game Logic Specific wires, regs, and submodule calls
//////////////////////////////////////////////////////////////////////////////////
    //debounce button and switch inputs
    // BTNC is start
    wire start; //Assert = start game, deassert = pause
       debounce db1(.reset(0),.clock(clock_25mhz),.noisy(BTNC),.clean(start));
    wire reset; //Assert = reset the game
    wire up; //Used for testing if a jump occurs
       debounce db2(.reset(0),.clock(clock_25mhz),.noisy(BTNU),.clean(up));
    //Game Level
    wire [3:0] gamelvl;
       debounce db7(.reset(0),.clock(clock_25mhz),.noisy(SW[3]),.clean(gamelvl[3]));
       debounce db71(.reset(0),.clock(clock_25mhz),.noisy(SW[2]),.clean(gamelvl[2]));
       debounce db72(.reset(0),.clock(clock_25mhz),.noisy(SW[1]),.clean(gamelvl[1]));
       debounce db73(.reset(0),.clock(clock_25mhz),.noisy(SW[0]),.clean(gamelvl[0]));
    wire obs1en;
       debounce dbo1(.reset(0),.clock(clock_25mhz),.noisy(SW[4]),.clean(obs1en));
    wire obs2en;
       debounce dbo2(.reset(0),.clock(clock_25mhz),.noisy(SW[5]),.clean(obs2en));
    wire obs3en;
       debounce dbo3(.reset(0),.clock(clock_25mhz),.noisy(SW[6]),.clean(obs3en));
    wire pause;
       debounce dbo4(.reset(0),.clock(clock_25mhz),.noisy(SW[7]),.clean(pause));
    wire showCam;
       debounce dbo5(.reset(0),.clock(clock_25mhz),.noisy(SW[8]),.clean(showCam));

    //Vision tracking player location 
    wire [9:0] player_x, player_y;
 
    wire [9:0] bird_x, bird_y; //Bird has format x-coord, y-coord
    wire [9:0] prev_player_locx, prev_players_locy; //Keeps track of previous player location
    wire [9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y; //x and y coords for the obstacles

    wire collision, jump;
    wire hs_enable, sound_background, sound_collide, sound_jump;
    wire showbit, pause;
    wire one_hz, sixty_hz, start_timer, expired;
    wire [3:0] countdown, score, randbit;
   
    //Submodules --tested
    onehzstart onehzs(.clock(clock_25mhz), .one_hz_enable(one_hz));
    //fivehzstart fivehzs(.clock(clock_25mhz), .five_hz_enable(five_hz));
    sixtyhzstart sixtyhzs(.clock(clock_25mhz), .sixty_hz_enable(sixty_hz));

    timer timer1(.clock(clock_25mhz), .start_timer(start_timer), .one_hz(one_hz), 
                 .expired(expired), .countdown(countdown));
    collision_detection cd(.clock(clock_25mhz), .obs1en(obs1en), .obs2en(obs2en), .obs3en(obs3en),
                           .bird_x(bird_x), .bird_y(bird_y),
                           .obs1x(obs1x), .obs1y(obs1y), .obs2x(obs2x), .obs2y(obs2y), .obs3x(obs3x), .obs3y(obs3y),
                           .collision(collision));
                           
    //submodules --not tested                     
    physics phys(.clock(clock_25mhz), .sixty_hz(sixty_hz), .player_x(player_x), .player_y(player_y),
                 .up(up), //button for testing
                 .jump(jump), .bird_x(bird_x), .bird_y(bird_y), 
                 .prev_player_locx(prev_player_locx), .prev_player_locy(prev_player_locy));
    
    gamestate gs(.clock(clock_25mhz), .start(start), .jump(jump), .collision(collision), 
                 .expired(expired), .one_hz(one_hz), .start_timer(start_timer),
                 .hs_enable(hs_enable), .score(score),
                 .sound_collide(sound_collide), .sound_jump(sound_jump), .sound_background(sound_background));
    
    obstacle_gen og(.clock(clock_25mhz), .randbit(randbit),
                 .obs1x(obs1x), .obs1y(obs1y), .obs2x(obs2x), .obs2y(obs2y), .obs3x(obs3x), .obs3y(obs3y));
    
    randombit rb(.clock(clock_25mhz), .randbit(randbit));

    assign LED[15] = sound_collide;
    assign LED[14] = collision;
    assign LED[13] = sound_jump;
    assign LED[12] = jump;
    assign LED[11] = up;
    //assign data = {score, 24'h012345, countdown};
    //////////////////////////////////////////////////////////////////////////////////


 
    wire src_1_req, src_1_done, src_1_rd, src_1_en;
    wire [31:0] src_1_addr;
    wire [7:0] dout;
    wire ready, byte_available, ready_for_next_byte; 
    
    // Distributes access to SD card among modules
    sdMaster sdMaster(.clock(clock_25mhz),.reset(0),.src_1_req(src_1_req),
        .src_1_done(src_1_done),.src_1_addr(src_1_addr),.src_1_rd(src_1_rd),
        .SD_CD(SD_CD),.src_1_en(src_1_en),.dout(dout),.byte_available(byte_available),
        .ready_for_next_byte(ready_for_next_byte),.ready(ready),.SD_RESET(SD_RESET),
        .SD_SCK(SD_SCK),.SD_CMD(SD_CMD),.SD_DAT(SD_DAT));

    /* Vision */
    // Wires needed for BRAM
    wire [18:0] addra;
    wire [7:0] dina;
    wire [7:0] douta;
    wire wea;
    reg [18:0] addrb;
    wire [7:0] dinb;
    wire [7:0] doutb;
    wire web;

    // Assign Multi-color LEDs
    assign LED16_B = 0;
    assign LED16_G = 0;
    assign LED16_R = 1;
    assign LED17_B = 0;
    assign LED17_G = 0;
    assign LED17_R = 1;

    // Instantiate Vision Module

    wire [9:0] player_location [2:0];
    reg [19:0] next_pixel;
    wire done_cam_config;
    
    assign player_x = player_location[0];
    assign player_y = player_location[1];

    assign XCLK_C = clock_25mhz;
    assign RESET_C = 0;
    assign PWDN_C = 0;

    vision tracking(
        .clk(clock_25mhz),
        .x_pos(player_location[0]),
        .y_pos(player_location[1]),
        .z_pos(player_location[2]),
        .sioc(SIOC_C),
        .siod(SIOD_C),
        .vsync(VSYNC_C),
        .href(HREF_C),
        .pclk(PCLK_C),
        .p_data(JA),
        .addra(addra),
        .dina(dina),
        .wea(wea),
        .done_cam_config(done_cam_config),
        .button_input(BTNC),
        .sel(BTNU)
    );

    // BRAM
    blk_mem block_memory(
        .clka(CLK100MHZ),
        .clkb(CLK100MHZ),
        .addra(addra),
        .dina(dina),
        .douta(douta),
        .wea(wea),
        .addrb(addrb),
        .dinb(dinb),
        .doutb(doutb),
        .web(0) //enable
    );


    assign web = 0;
    assign dinb = 0;
    assign data = {6'b0, player_location[0], 6'b0, player_location[1]};
    /* Vision */

    //////////////////////////////////////////////////////////////////////////////////
    // sample Verilog to generate color bars
    wire [9:0] hcount;
    wire [9:0] vcount;
    wire hsync, vsync, at_display_area;
    vga vga1(.vga_clock(clock_25mhz),.hcount(hcount),.vcount(vcount),
          .hsync(hsync),.vsync(vsync),.at_display_area(at_display_area));
    
    wire [3:0] VGA_R_GAME,VGA_G_GAME,VGA_B_GAME;
    wire [18:0] faceSpriteAddr;
    spriteline spriteline1(.vsync(vsync),.birdX(bird_x),.birdY(bird_y),
        .obs1x(obs1x),.obs1y(obs1y),.obs1en(obs1en),
        .obs2x(obs2x),.obs2y(obs2y),.obs2en(obs2en),
        .obs3x(obs3x),.obs3y(obs3y),.obs3en(obs3en),
        .hcount(hcount), .vcount(vcount),
        .at_display_area(at_display_area),
        .faceXCenter(player_x), .faceYCenter(player_y),
        .facePixel(doutb), .pixelAddr(faceSpriteAddr),
        .pause(pause),
        .VGA_RGB({VGA_R_GAME,VGA_G_GAME,VGA_B_GAME}));

    always @(posedge clock_25mhz) begin
        addrb <= (showCam)? (hcount + 640*vcount) : faceSpriteAddr;
    end
    assign VGA_R = (at_display_area) ? ((showCam) ? {doutb[7:5],1'b0} : VGA_R_GAME):0;
    assign VGA_G = (at_display_area) ? ((showCam) ? {doutb[4:2],1'b0} : VGA_G_GAME):0;
    assign VGA_B = (at_display_area) ? ((showCam) ? {doutb[1:0],2'b00} : VGA_B_GAME):0;    

    assign VGA_HS = ~hsync;
    assign VGA_VS = ~vsync;
    
    // Audio
    assign AUD_SD=1;
    audio audio(.clk(clock_25mhz),.jumpSound(sound_jump),.crashSound(sound_collide),.music(sound_background),.PWM_out(AUD_PWM));

endmodule

//////////////////////////////////////////////////////////////////////////////////
// debounce module: debounces switch and button inputs
//////////////////////////////////////////////////////////////////////////////////
module debounce #(parameter DELAY=270000)   // .01 sec with a 27Mhz clock
	        (input reset, clock, noisy,
	         output reg clean);

   reg [18:0] count;
   reg new;

   always @(posedge clock)
     if (reset)
       begin
	  count <= 0;
	  new <= noisy;
	  clean <= noisy;
       end
     else if (noisy != new)
       begin
	  new <= noisy;
	  count <= 0;
       end
     else if (count == DELAY)
       clean <= new;
     else
       count <= count+1; 
endmodule

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
    output [7:0] JD,
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
    wire hsync, vsync, at_display_area;
    // BTNC is start
    wire start; //Assert = start game, deassert = pause
       debounce_wrapper db1(.reset(0),.clock(clock_25mhz),.noisy(BTNC),.clean(start));
    wire reset; //Assert = reset the game
        debounce_wrapper dbr(.reset(0),.clock(clock_25mhz),.noisy(BTND),.clean(reset));
    wire up; //Used for testing if a jump occurs
       debounce db2(.reset(0),.clock(clock_25mhz),.noisy(BTNU),.clean(up));
    //Game Level
    wire [3:0] gamelvl;
       debounce_wrapper db7(.reset(0),.clock(clock_25mhz),.noisy(SW[3]),.clean(gamelvl[3]));
       debounce_wrapper db71(.reset(0),.clock(clock_25mhz),.noisy(SW[2]),.clean(gamelvl[2]));
       debounce_wrapper db72(.reset(0),.clock(clock_25mhz),.noisy(SW[1]),.clean(gamelvl[1]));
       debounce_wrapper db73(.reset(0),.clock(clock_25mhz),.noisy(SW[0]),.clean(gamelvl[0]));
    wire showCam;
        debounce_wrapper dbo5(.reset(0),.clock(clock_25mhz),.noisy(SW[8]),.clean(showCam));
    wire startScreen;
       debounce dbo6(.reset(0),.clock(clock_25mhz),.noisy(SW[9]),.clean(startScreen));
    wire highScoreScreen;
       debounce dbo7(.reset(0),.clock(clock_25mhz),.noisy(SW[10]),.clean(highScoreScreen));
    wire [4:0] highScore;// = SW[15:11];
        debounce db8(.reset(0),.clock(clock_25mhz),.noisy(SW[11]),.clean(highScore[0]));
        debounce db81(.reset(0),.clock(clock_25mhz),.noisy(SW[12]),.clean(highScore[1]));
        debounce db82(.reset(0),.clock(clock_25mhz),.noisy(SW[13]),.clean(highScore[2]));
        debounce db83(.reset(0),.clock(clock_25mhz),.noisy(SW[14]),.clean(highScore[3]));
        debounce db84(.reset(0),.clock(clock_25mhz),.noisy(SW[14]),.clean(highScore[4]));
    


    //Vision tracking player location 
    wire [9:0] player_x, player_y;
 
    wire [9:0] bird_x, bird_y; //Bird has format x-coord, y-coord
    wire [9:0] prev_player_locx, prev_players_locy; //Keeps track of previous player location
    wire [9:0] obs1x, obs1y, obs2x, obs2y, obs3x, obs3y; //x and y coords for the obstacles
    wire obs1en, obs2en, obs3en;
    wire reset_physics, reset_score;
    wire collision, jump, pass, prev_enable;
    wire hs_enable, sound_background, sound_collide, sound_jump;
    wire showbit, pause, updatepos;
    wire one_hz, sixty_hz, start_timer, expired;
    wire [3:0] countdown, randbit;
    wire [6:0] score;
    wire [3:0] state;
    reg frameupdate;
    //initial frameupdate = VSYNC_C;
    
    always @(*) begin
        frameupdate <= VSYNC_C;
    end
    
    //Submodules --tested
    onehzstart onehzs(.clock(clock_25mhz), .one_hz_enable(one_hz));
    sixtyhzstart sixtyhzs(.clock(clock_25mhz), .sixty_hz_enable(sixty_hz));

    timer timer1(.clock(clock_25mhz), .start_timer(start_timer), .one_hz(one_hz), 
                 .expired(expired), .countdown(countdown));
                 
    collision_detection cd(.clock(clock_25mhz), .updatepos(updatepos), .obs1en(obs1en), .obs2en(obs2en), .obs3en(obs3en),
                           .bird_x(bird_x), .bird_y(bird_y), .reset_collision(reset_collision),
                           .obs1x(obs1x), .obs1y(obs1y), .obs2x(obs2x), .obs2y(obs2y), .obs3x(obs3x), .obs3y(obs3y),
                           .collision(collision), .pass(pass));
    
    gamestate gs(.clock(clock_25mhz), .start(start), .reset(reset), .jump(jump), .collision(collision), 
                  .expired(expired), .one_hz(one_hz), .start_timer(start_timer), 
                  .hs_enable(hs_enable), .home_enable(home_enable), .updatepos(updatepos), .pause(pause),
                  .reset_physics(reset_physics), .reset_score(reset_score), .reset_collision(reset_collision),
                  .state(state),
                  .sound_collide(sound_collide), .sound_jump(sound_jump), .sound_background(sound_background));
          
    //submodules --not tested                     
    physics phys(.clock(clock_25mhz), .updatepos(updatepos), .reset_physics(reset_physics), .up(up),
                 .sixty_hz(sixty_hz), .player_x(player_x), .player_y(player_y), .frameupdate(frameupdate),
                 .jump(jump), .bird_x(bird_x), .bird_y(bird_y), .prev_enable(prev_enable),
                 .prev_player_locx(prev_player_locx), .prev_player_locy(prev_player_locy),
                 .velocity_thresh(SW[7:0]));

   
    obstacle_gen og(.clock(vsync), .randbit(randbit), .updatepos(updatepos),
                 .obs1en(obs1en), .obs2en(obs2en), .obs3en(obs3en), .reset_physics(reset_physics),
                 .obs1x(obs1x), .obs1y(obs1y), .obs2x(obs2x), .obs2y(obs2y), .obs3x(obs3x), .obs3y(obs3y));
    
    highscore hs(.clock(clock_25mhz), .reset_score(reset_score), .pass(pass), .score(score));
    
    randombit rb(.clock(clock_25mhz), .player_x(player_x), .randbit(randbit));

    assign LED[15] = collision;
    assign LED[14] = jump;
    assign LED[13] = up;
    assign LED[12] = updatepos;

    assign LED[10] = state[3];
    assign LED[9] = state[2];
    assign LED[8] = state[1];
    assign LED[7] = state[0];
    assign LED[4] = obs1en;
    assign LED[3] = obs2en;
    assign LED[2] = obs3en;
    assign LED[1] = frameupdate;
    //assign data = {24'h012345, 6'b0, state};
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
    wire signed [10:0] signed_y_vel;
    
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
        .button_input(BTNL),
        .sel(BTNR),
        .y_vel(signed_y_vel)
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
    assign data = {signed_y_vel};
    /* Vision */

    //////////////////////////////////////////////////////////////////////////////////
    // sample Verilog to generate color bars
    wire [9:0] hcount;
    wire [9:0] vcount;

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
        .pause(pause),.startScreen(home_enable),
        .highScoreScreen(highScoreScreen),.highScore({3'b000,highScore}),
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
module debounce #(parameter DELAY=250000)   // .01 sec with a 25Mhz clock
	        (input reset, clock, noisy,
	         output reg clean);

   reg [18:0] count;
   reg new;

   always @(posedge clock)
     if (reset) begin
	  count <= 0;
	  new <= noisy;
	  clean <= noisy;
     end
     else if (noisy != new) begin
	  new <= noisy;
	  count <= 0;
     end
     else if (count == DELAY) clean <= new;
     else count <= count+1; 
endmodule

module debounce_wrapper(input reset, clock, noisy,
                        output reg clean);
    wire clean_nc;
    reg prev_clean_nc;
    reg high;
    debounce(.reset(reset), .clock(clock), .noisy(noisy),
	         .clean(clean_nc));
    initial begin
        high <= 0;
        clean <= 0;
        prev_clean_nc <= 0;
    end

    always@(posedge clock) begin
        prev_clean_nc <= clean_nc;
        if (prev_clean_nc != clean_nc && clean_nc == 1)
            clean <= 1;
        else clean <= 0;
    end
endmodule

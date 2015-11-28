`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2015 05:01:06 AM
// Design Name: 
// Module Name: v_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module v_sim();
    reg clk;
    reg VSYNC_C;
    reg HREF_C;
    reg PCLK_C;
    reg [7:0] JA;

    wire [9:0] player_location [2:0];
    wire SIOC_C;
    wire SIOD_C;
    wire RESET_C;
    wire PWDN_C;
    wire [18:0] addra;
    wire [7:0] dina;
    wire wea;
    wire done_cam_config;
    wire start_config;


    vision tracking(
        .clk(clk),
        .x_pos(player_location[0]),
        .y_pos(player_location[1]),
        .z_pos(player_location[2]),
        .sioc(SIOC_C),
        .siod(SIOD_C),
        .vsync(VSYNC_C),
        .href(HREF_C),
        .pclk(PCLK_C),
        .p_data(JA),
        .reset_cam(RESET_C),
        .pwdn_cam(PWDN_C),
        .addra(addra),
        .dina(dina),
        .wea(wea),
        .done_cam_config(done_cam_config),
        .start_config(start_config)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        VSYNC_C = 0;
        HREF_C = 0;
        PCLK_C = 0;
        JA = 0;
        #100;
    end

endmodule

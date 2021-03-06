// soc_system_sph_add_one.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module soc_system_sph_add_one (
		input  wire        start,      //       call.valid
		output wire        busy,       //           .stall
		input  wire        clock,      //      clock.clk
		input  wire [63:0] in_val,     //     in_val.data
		input  wire        resetn,     //      reset.reset_n
		output wire        done,       //     return.valid
		input  wire        stall,      //           .stall
		output wire [63:0] returndata  // returndata.data
	);

	add_one_internal add_one_internal_inst (
		.clock      (clock),      //      clock.clk
		.resetn     (resetn),     //      reset.reset_n
		.start      (start),      //       call.valid
		.busy       (busy),       //           .stall
		.done       (done),       //     return.valid
		.stall      (stall),      //           .stall
		.returndata (returndata), // returndata.data
		.in_val     (in_val)      //     in_val.data
	);

endmodule

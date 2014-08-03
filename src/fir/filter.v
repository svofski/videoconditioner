// megafunction wizard: %FIR Compiler II v13.0%
// GENERATION: XML
// filter.v

// Generated using ACDS version 13.0sp1 232 at 2014.08.02.00:57:05

`timescale 1 ps / 1 ps
module filter (
		input  wire       clk,              //                     clk.clk
		input  wire       reset_n,          //                     rst.reset_n
		input  wire [6:0] ast_sink_data,    //   avalon_streaming_sink.data
		input  wire       ast_sink_valid,   //                        .valid
		input  wire [1:0] ast_sink_error,   //                        .error
		output wire [6:0] ast_source_data,  // avalon_streaming_source.data
		output wire       ast_source_valid, //                        .valid
		output wire [1:0] ast_source_error  //                        .error
	);

	filter_0002 filter_inst (
		.clk              (clk),              //                     clk.clk
		.reset_n          (reset_n),          //                     rst.reset_n
		.ast_sink_data    (ast_sink_data),    //   avalon_streaming_sink.data
		.ast_sink_valid   (ast_sink_valid),   //                        .valid
		.ast_sink_error   (ast_sink_error),   //                        .error
		.ast_source_data  (ast_source_data),  // avalon_streaming_source.data
		.ast_source_valid (ast_source_valid), //                        .valid
		.ast_source_error (ast_source_error)  //                        .error
	);

endmodule
// Retrieval info: <?xml version="1.0"?>
//<!--
//	Generated by Altera MegaWizard Launcher Utility version 1.0
//	************************************************************
//	THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//	************************************************************
//	Copyright (C) 1991-2014 Altera Corporation
//	Any megafunction design, and related net list (encrypted or decrypted),
//	support information, device programming or simulation file, and any other
//	associated documentation or information provided by Altera or a partner
//	under Altera's Megafunction Partnership Program may be used only to
//	program PLD devices (but not masked PLD devices) from Altera.  Any other
//	use of such megafunction design, net list, support information, device
//	programming or simulation file, or any other related documentation or
//	information is prohibited for any other purpose, including, but not
//	limited to modification, reverse engineering, de-compiling, or use with
//	any other silicon devices, unless such use is explicitly licensed under
//	a separate agreement with Altera or a megafunction partner.  Title to
//	the intellectual property, including patents, copyrights, trademarks,
//	trade secrets, or maskworks, embodied in any such megafunction design,
//	net list, support information, device programming or simulation file, or
//	any other related documentation or information provided by Altera or a
//	megafunction partner, remains with Altera, the megafunction partner, or
//	their respective licensors.  No other licenses, including any licenses
//	needed under any third party's intellectual property, are provided herein.
//-->
// Retrieval info: <instance entity-name="altera_fir_compiler_ii" version="13.0" >
// Retrieval info: 	<generic name="deviceFamily" value="Cyclone II" />
// Retrieval info: 	<generic name="filterType" value="Single Rate" />
// Retrieval info: 	<generic name="interpFactor" value="1" />
// Retrieval info: 	<generic name="decimFactor" value="1" />
// Retrieval info: 	<generic name="L_bandsFilter" value="All taps" />
// Retrieval info: 	<generic name="clockRate" value="96" />
// Retrieval info: 	<generic name="clockSlack" value="0" />
// Retrieval info: 	<generic name="speedGrade" value="Medium" />
// Retrieval info: 	<generic name="coeffReload" value="false" />
// Retrieval info: 	<generic name="baseAddress" value="0" />
// Retrieval info: 	<generic name="readWriteMode" value="Read/Write" />
// Retrieval info: 	<generic name="backPressure" value="false" />
// Retrieval info: 	<generic name="symmetryMode" value="Non Symmetry" />
// Retrieval info: 	<generic name="delayRAMBlockThreshold" value="20" />
// Retrieval info: 	<generic name="dualMemDistRAMThreshold" value="1280" />
// Retrieval info: 	<generic name="mRAMThreshold" value="1000000" />
// Retrieval info: 	<generic name="hardMultiplierThreshold" value="-1" />
// Retrieval info: 	<generic name="inputRate" value="96" />
// Retrieval info: 	<generic name="inputChannelNum" value="1" />
// Retrieval info: 	<generic name="inputType" value="Signed Binary" />
// Retrieval info: 	<generic name="inputBitWidth" value="7" />
// Retrieval info: 	<generic name="inputFracBitWidth" value="0" />
// Retrieval info: 	<generic name="coeffSetRealValue" value="5.52880919101E-35,-1.18534654203E-5,-9.76582051367E-5,-3.33152118528E-4,-7.77592096389E-4,-0.00144106003253,-0.00224056138901,-0.00295538388295,-0.00319916820958,-0.00242816879754,1.35453513988E-18,0.00471508329386,0.0121847908599,0.0225575228428,0.0355371622232,0.0503292892218,0.0656858911125,0.0800538427488,0.0918064807929,0.0995145957816,0.102199878639,0.0995145957816,0.0918064807929,0.0800538427488,0.0656858911125,0.0503292892218,0.0355371622232,0.0225575228428,0.0121847908599,0.00471508329386,1.35453513988E-18,-0.00242816879754,-0.00319916820958,-0.00295538388295,-0.00224056138901,-0.00144106003253,-7.77592096389E-4,-3.33152118528E-4,-9.76582051367E-5,-1.18534654203E-5,5.52880919101E-35" />
// Retrieval info: 	<generic name="coeffType" value="Signed Binary" />
// Retrieval info: 	<generic name="coeffScaling" value="Auto" />
// Retrieval info: 	<generic name="coeffBitWidth" value="8" />
// Retrieval info: 	<generic name="coeffFracBitWidth" value="0" />
// Retrieval info: 	<generic name="outType" value="Signed Binary" />
// Retrieval info: 	<generic name="outMSBRound" value="Saturating" />
// Retrieval info: 	<generic name="outMsbBitRem" value="4" />
// Retrieval info: 	<generic name="outLSBRound" value="Rounding" />
// Retrieval info: 	<generic name="outLsbBitRem" value="10" />
// Retrieval info: 	<generic name="resoureEstimation" value="1000,1200,10" />
// Retrieval info: 	<generic name="bankCount" value="1" />
// Retrieval info: 	<generic name="bankDisplay" value="0" />
// Retrieval info: </instance>
// IPFS_FILES : filter.vo
// RELATED_FILES: filter.v, altera_avalon_sc_fifo.v, auk_dspip_math_pkg_hpfir.vhd, auk_dspip_lib_pkg_hpfir.vhd, auk_dspip_avalon_streaming_controller_hpfir.vhd, auk_dspip_avalon_streaming_sink_hpfir.vhd, auk_dspip_avalon_streaming_source_hpfir.vhd, auk_dspip_roundsat_hpfir.vhd, dspba_library_package.vhd, dspba_library.vhd, filter_0002_rtl.vhd, filter_0002_ast.vhd, filter_0002.vhd

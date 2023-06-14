// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jun  1 00:27:34 2023
// Host        : LAPTOP-LQL7TVT1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Deshitha/VivadoProjects/Nanoprocessor/Nanoprocessor.sim/sim_1/impl/timing/xsim/NanoProcessorSimulation_time_impl.v
// Design      : NanoProcessor
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module InstructionDecoder
   (AddSubSelect,
    LoadSelect,
    D,
    Q,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    \Q_reg[3]_3 ,
    \Q_reg[1] ,
    \output_reg[1] ,
    \output_reg[2] ,
    \output_reg[2]_0 ,
    E,
    ROMMemorySelect,
    \Q_reg[1]_0 ,
    \Q_reg[2] ,
    \Q_reg[0] ,
    \Q_reg[3]_4 ,
    \Q_reg[3]_5 ,
    \output_reg[2]_1 ,
    \output_reg[2]_2 ,
    \output_reg[1]_0 ,
    \output_reg[1]_1 ,
    \output_reg[1]_2 ,
    \output_reg[2]_3 );
  output AddSubSelect;
  output LoadSelect;
  output [2:0]D;
  output [0:0]Q;
  output \Q_reg[3] ;
  output \Q_reg[3]_0 ;
  output [1:0]\Q_reg[3]_1 ;
  output \Q_reg[3]_2 ;
  output [1:0]\Q_reg[3]_3 ;
  output \Q_reg[1] ;
  output [1:0]\output_reg[1] ;
  input \output_reg[2] ;
  input \output_reg[2]_0 ;
  input [0:0]E;
  input [0:0]ROMMemorySelect;
  input \Q_reg[1]_0 ;
  input \Q_reg[2] ;
  input \Q_reg[0] ;
  input [2:0]\Q_reg[3]_4 ;
  input [2:0]\Q_reg[3]_5 ;
  input [1:0]\output_reg[2]_1 ;
  input [0:0]\output_reg[2]_2 ;
  input [3:0]\output_reg[1]_0 ;
  input [1:0]\output_reg[1]_1 ;
  input [0:0]\output_reg[1]_2 ;
  input [1:0]\output_reg[2]_3 ;

  wire AddSubSelect;
  wire [2:0]D;
  wire [0:0]E;
  wire [3:1]ImmediateValue;
  wire LoadSelect;
  wire [0:0]Q;
  wire \Q[2]_i_2_n_0 ;
  wire \Q_reg[0] ;
  wire \Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[2] ;
  wire \Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire [1:0]\Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire [1:0]\Q_reg[3]_3 ;
  wire [2:0]\Q_reg[3]_4 ;
  wire [2:0]\Q_reg[3]_5 ;
  wire [0:0]ROMMemorySelect;
  wire [1:0]\output_reg[1] ;
  wire [3:0]\output_reg[1]_0 ;
  wire [1:0]\output_reg[1]_1 ;
  wire [0:0]\output_reg[1]_2 ;
  wire \output_reg[2] ;
  wire \output_reg[2]_0 ;
  wire [1:0]\output_reg[2]_1 ;
  wire [0:0]\output_reg[2]_2 ;
  wire [1:0]\output_reg[2]_3 ;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    AddSubSelect_reg
       (.CLR(\output_reg[2]_0 ),
        .D(1'b1),
        .G(\output_reg[2] ),
        .GE(1'b1),
        .Q(AddSubSelect));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImmediateValue_reg[0] 
       (.CLR(1'b0),
        .D(\output_reg[1]_0 [0]),
        .G(E),
        .GE(1'b1),
        .Q(Q));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImmediateValue_reg[1] 
       (.CLR(1'b0),
        .D(\output_reg[1]_0 [1]),
        .G(E),
        .GE(1'b1),
        .Q(ImmediateValue[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImmediateValue_reg[2] 
       (.CLR(1'b0),
        .D(\output_reg[1]_0 [2]),
        .G(E),
        .GE(1'b1),
        .Q(ImmediateValue[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImmediateValue_reg[3] 
       (.CLR(1'b0),
        .D(\output_reg[1]_0 [3]),
        .G(E),
        .GE(1'b1),
        .Q(ImmediateValue[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \JumpAddress_reg[0] 
       (.CLR(1'b0),
        .D(\output_reg[2]_1 [0]),
        .G(\output_reg[2]_2 ),
        .GE(1'b1),
        .Q(\output_reg[1] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \JumpAddress_reg[1] 
       (.CLR(1'b0),
        .D(\output_reg[2]_1 [1]),
        .G(\output_reg[2]_2 ),
        .GE(1'b1),
        .Q(\output_reg[1] [1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    LoadSelect_reg
       (.D(1'b0),
        .G(E),
        .GE(1'b1),
        .PRE(ROMMemorySelect),
        .Q(LoadSelect));
  LUT5 #(
    .INIT(32'hA5955595)) 
    Overflow_OBUF_inst_i_2
       (.I0(AddSubSelect),
        .I1(\Q_reg[3]_4 [2]),
        .I2(\Q_reg[3]_3 [1]),
        .I3(\Q_reg[3]_3 [0]),
        .I4(\Q_reg[3]_5 [2]),
        .O(\Q_reg[3]_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[1]_i_1 
       (.I0(\Q_reg[0] ),
        .I1(LoadSelect),
        .I2(ImmediateValue[1]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[1]_0 ),
        .I1(\Q[2]_i_2_n_0 ),
        .I2(LoadSelect),
        .I3(ImmediateValue[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h37F7C808)) 
    \Q[2]_i_2 
       (.I0(\Q_reg[3]_4 [1]),
        .I1(\Q_reg[3]_1 [1]),
        .I2(\Q_reg[3]_1 [0]),
        .I3(\Q_reg[3]_5 [1]),
        .I4(\Q_reg[3] ),
        .O(\Q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4FFFF2BD40000)) 
    \Q[3]_i_2 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[3] ),
        .I2(\Q_reg[1]_0 ),
        .I3(\Q_reg[3]_0 ),
        .I4(LoadSelect),
        .I5(ImmediateValue[3]),
        .O(D[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegASelect_reg[0] 
       (.CLR(1'b0),
        .D(\output_reg[1]_1 [0]),
        .G(\output_reg[1]_2 ),
        .GE(1'b1),
        .Q(\Q_reg[3]_1 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegASelect_reg[1] 
       (.CLR(1'b0),
        .D(\output_reg[1]_1 [1]),
        .G(\output_reg[1]_2 ),
        .GE(1'b1),
        .Q(\Q_reg[3]_1 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegBSelect_reg[0] 
       (.CLR(1'b0),
        .D(\output_reg[2]_3 [0]),
        .G(ROMMemorySelect),
        .GE(1'b1),
        .Q(\Q_reg[3]_3 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegBSelect_reg[1] 
       (.CLR(1'b0),
        .D(\output_reg[2]_3 [1]),
        .G(ROMMemorySelect),
        .GE(1'b1),
        .Q(\Q_reg[3]_3 [1]));
  LUT5 #(
    .INIT(32'hC80837F7)) 
    Zero_OBUF_inst_i_4
       (.I0(\Q_reg[3]_4 [2]),
        .I1(\Q_reg[3]_1 [1]),
        .I2(\Q_reg[3]_1 [0]),
        .I3(\Q_reg[3]_5 [2]),
        .I4(\Q_reg[3]_2 ),
        .O(\Q_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h6A5A6AAA)) 
    Zero_OBUF_inst_i_6
       (.I0(AddSubSelect),
        .I1(\Q_reg[3]_5 [1]),
        .I2(\Q_reg[3]_3 [1]),
        .I3(\Q_reg[3]_3 [0]),
        .I4(\Q_reg[3]_4 [1]),
        .O(\Q_reg[3] ));
  LUT5 #(
    .INIT(32'h5A6AAA6A)) 
    Zero_OBUF_inst_i_8
       (.I0(AddSubSelect),
        .I1(\Q_reg[3]_4 [0]),
        .I2(\Q_reg[3]_3 [1]),
        .I3(\Q_reg[3]_3 [0]),
        .I4(\Q_reg[3]_5 [0]),
        .O(\Q_reg[1] ));
endmodule

(* ECO_CHECKSUM = "541c0126" *) 
(* NotValidForBitStream *)
module NanoProcessor
   (Clk,
    Reset,
    Reg7,
    Zero,
    Overflow,
    SevenSegment,
    AnodeSelect,
    SwitchIn);
  input Clk;
  input Reset;
  output [3:0]Reg7;
  output Zero;
  output Overflow;
  output [6:0]SevenSegment;
  output [3:0]AnodeSelect;
  input [3:0]SwitchIn;

  wire AddSubSelect;
  wire [3:0]AnodeSelect;
  wire [3:0]AnodeSelect_OBUF;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire Clk_out;
  wire [3:1]DataBus2;
  wire [0:0]ImmediateValue;
  wire [1:0]InstructionBus;
  wire InstructionDecoder0_n_10;
  wire InstructionDecoder0_n_13;
  wire InstructionDecoder0_n_6;
  wire InstructionDecoder0_n_7;
  wire [1:0]JumpAddress;
  wire LoadSelect;
  wire Overflow;
  wire Overflow_OBUF;
  wire ProgramCounter0_n_0;
  wire ProgramCounter0_n_10;
  wire ProgramCounter0_n_11;
  wire ProgramCounter0_n_12;
  wire ProgramCounter0_n_15;
  wire ProgramCounter0_n_16;
  wire ProgramCounter0_n_17;
  wire ProgramCounter0_n_18;
  wire ProgramCounter0_n_19;
  wire ProgramCounter0_n_3;
  wire ProgramCounter0_n_4;
  wire ProgramCounter0_n_5;
  wire ProgramCounter0_n_6;
  wire ProgramCounter0_n_7;
  wire ProgramCounter0_n_8;
  wire ProgramCounter0_n_9;
  wire [2:1]ROMMemorySelect;
  wire [3:0]Reg7;
  wire [3:0]Reg7_OBUF;
  wire [1:0]RegASelect;
  wire [1:0]RegBSelect;
  wire RegisterBank0_n_10;
  wire RegisterBank0_n_15;
  wire RegisterBank0_n_8;
  wire RegisterBank0_n_9;
  wire [3:1]RegisterIn;
  wire Reset;
  wire Reset_IBUF;
  wire [2:0]S_temp;
  wire \S_temp_reg_n_0_[0] ;
  wire \S_temp_reg_n_0_[1] ;
  wire \S_temp_reg_n_0_[2] ;
  wire \S_temp_reg_n_0_[3] ;
  wire [6:0]SevenSegment;
  wire [6:0]SevenSegment_OBUF;
  wire [3:0]SwitchIn;
  wire [3:0]SwitchIn_IBUF;
  wire [7:2]Y0;
  wire Zero;
  wire Zero_OBUF;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_10_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_0 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[31]_i_2_n_5 ;
  wire \count_reg[31]_i_2_n_6 ;
  wire \count_reg[31]_i_2_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire \lookupTableIn_reg_n_0_[0] ;
  wire \lookupTableIn_reg_n_0_[1] ;
  wire \lookupTableIn_reg_n_0_[2] ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("NanoProcessorSimulation_time_impl.sdf",,,,"tool_control");
end
  OBUF \AnodeSelect_OBUF[0]_inst 
       (.I(AnodeSelect_OBUF[0]),
        .O(AnodeSelect[0]));
  OBUF \AnodeSelect_OBUF[1]_inst 
       (.I(1'b1),
        .O(AnodeSelect[1]));
  OBUF \AnodeSelect_OBUF[2]_inst 
       (.I(1'b1),
        .O(AnodeSelect[2]));
  OBUF \AnodeSelect_OBUF[3]_inst 
       (.I(AnodeSelect_OBUF[3]),
        .O(AnodeSelect[3]));
  FDSE #(
    .INIT(1'b1)) 
    \AnodeSelect_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(AnodeSelect_OBUF[0]),
        .S(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AnodeSelect_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(AnodeSelect_OBUF[3]),
        .R(\count[31]_i_1_n_0 ));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  InstructionDecoder InstructionDecoder0
       (.AddSubSelect(AddSubSelect),
        .D(RegisterIn),
        .E(ProgramCounter0_n_18),
        .LoadSelect(LoadSelect),
        .Q(ImmediateValue),
        .\Q_reg[0] (RegisterBank0_n_8),
        .\Q_reg[1] (InstructionDecoder0_n_13),
        .\Q_reg[1]_0 (RegisterBank0_n_9),
        .\Q_reg[2] (RegisterBank0_n_10),
        .\Q_reg[3] (InstructionDecoder0_n_6),
        .\Q_reg[3]_0 (InstructionDecoder0_n_7),
        .\Q_reg[3]_1 (RegASelect),
        .\Q_reg[3]_2 (InstructionDecoder0_n_10),
        .\Q_reg[3]_3 (RegBSelect),
        .\Q_reg[3]_4 (DataBus2),
        .\Q_reg[3]_5 (Reg7_OBUF[3:1]),
        .ROMMemorySelect(ROMMemorySelect[1]),
        .\output_reg[1] (JumpAddress),
        .\output_reg[1]_0 ({ProgramCounter0_n_5,ProgramCounter0_n_6,ProgramCounter0_n_7,ProgramCounter0_n_8}),
        .\output_reg[1]_1 ({ProgramCounter0_n_11,ProgramCounter0_n_12}),
        .\output_reg[1]_2 (ProgramCounter0_n_15),
        .\output_reg[2] (ProgramCounter0_n_16),
        .\output_reg[2]_0 (ProgramCounter0_n_17),
        .\output_reg[2]_1 (InstructionBus),
        .\output_reg[2]_2 (ProgramCounter0_n_19),
        .\output_reg[2]_3 ({ProgramCounter0_n_9,ProgramCounter0_n_10}));
  OBUF Overflow_OBUF_inst
       (.I(Overflow_OBUF),
        .O(Overflow));
  ProgramCounter ProgramCounter0
       (.Clk_out(Clk_out),
        .E(ProgramCounter0_n_18),
        .\Q_reg[3] ({ProgramCounter0_n_5,ProgramCounter0_n_6,ProgramCounter0_n_7,ProgramCounter0_n_8}),
        .\Q_reg[3]_0 ({ProgramCounter0_n_9,ProgramCounter0_n_10}),
        .\Q_reg[3]_1 ({ProgramCounter0_n_11,ProgramCounter0_n_12}),
        .\Q_reg[3]_2 (ProgramCounter0_n_15),
        .\Q_reg[3]_3 (ProgramCounter0_n_16),
        .\Q_reg[3]_4 (ProgramCounter0_n_17),
        .Reset_IBUF(Reset_IBUF),
        .SwitchIn_IBUF(SwitchIn_IBUF),
        .Y0({Y0[7],Y0[2]}),
        .\count_reg[0] (\count[31]_i_5_n_0 ),
        .\count_reg[17] (\count[31]_i_6_n_0 ),
        .\count_reg[19] (\count[31]_i_4_n_0 ),
        .\count_reg[7] (\count[31]_i_3_n_0 ),
        .\lookupTableIn_reg[0] (ProgramCounter0_n_4),
        .\lookupTableIn_reg[0]_0 (\lookupTableIn_reg_n_0_[0] ),
        .\lookupTableIn_reg[1] (ProgramCounter0_n_3),
        .\lookupTableIn_reg[1]_0 (\lookupTableIn_reg_n_0_[1] ),
        .\lookupTableIn_reg[2] (ProgramCounter0_n_0),
        .\lookupTableIn_reg[2]_0 (\lookupTableIn_reg_n_0_[2] ),
        .\output_reg[0]_0 (ProgramCounter0_n_19),
        .\output_reg[1]_0 (InstructionBus),
        .\output_reg[2]_0 (ROMMemorySelect),
        .\output_reg[2]_1 (RegisterBank0_n_15),
        .\output_reg[2]_2 (JumpAddress));
  OBUF \Reg7_OBUF[0]_inst 
       (.I(Reg7_OBUF[0]),
        .O(Reg7[0]));
  OBUF \Reg7_OBUF[1]_inst 
       (.I(Reg7_OBUF[1]),
        .O(Reg7[1]));
  OBUF \Reg7_OBUF[2]_inst 
       (.I(Reg7_OBUF[2]),
        .O(Reg7[2]));
  OBUF \Reg7_OBUF[3]_inst 
       (.I(Reg7_OBUF[3]),
        .O(Reg7[3]));
  RegisterBank RegisterBank0
       (.AddSubSelect(AddSubSelect),
        .CLK(Clk_out),
        .D(S_temp),
        .LoadSelect(LoadSelect),
        .Overflow_OBUF(Overflow_OBUF),
        .Q(Reg7_OBUF),
        .\Q_reg[1] (RegisterBank0_n_8),
        .\Q_reg[1]_0 (InstructionDecoder0_n_13),
        .\Q_reg[2] (RegisterBank0_n_9),
        .\Q_reg[2]_0 (InstructionDecoder0_n_6),
        .\Q_reg[2]_1 (RegisterIn),
        .\Q_reg[3] (RegisterBank0_n_10),
        .\Q_reg[3]_0 (DataBus2),
        .\Q_reg[3]_1 (InstructionDecoder0_n_7),
        .\Q_reg[3]_2 (InstructionDecoder0_n_10),
        .SR(Reset_IBUF),
        .Y0({Y0[7],Y0[2]}),
        .Zero_OBUF(Zero_OBUF),
        .\count_reg[0] (\count[31]_i_5_n_0 ),
        .\count_reg[17] (\count[31]_i_6_n_0 ),
        .\count_reg[19] (\count[31]_i_4_n_0 ),
        .\count_reg[7] (\count[31]_i_3_n_0 ),
        .\lookupTableIn_reg[0] (\lookupTableIn_reg_n_0_[0] ),
        .\lookupTableIn_reg[1] (\lookupTableIn_reg_n_0_[1] ),
        .\lookupTableIn_reg[2] (\lookupTableIn_reg_n_0_[2] ),
        .\output_reg[1] (ImmediateValue),
        .\output_reg[1]_0 (RegASelect),
        .\output_reg[1]_1 (RegBSelect),
        .\output_reg[2] (RegisterBank0_n_15),
        .\output_reg[2]_0 (ROMMemorySelect));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \S_temp_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(S_temp[0]),
        .Q(\S_temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_temp_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(S_temp[1]),
        .Q(\S_temp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_temp_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(S_temp[2]),
        .Q(\S_temp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_temp_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Reg7_OBUF[3]),
        .Q(\S_temp_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  OBUF \SevenSegment_OBUF[0]_inst 
       (.I(SevenSegment_OBUF[0]),
        .O(SevenSegment[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \SevenSegment_OBUF[0]_inst_i_1 
       (.I0(\S_temp_reg_n_0_[3] ),
        .I1(\S_temp_reg_n_0_[2] ),
        .I2(\S_temp_reg_n_0_[0] ),
        .I3(\S_temp_reg_n_0_[1] ),
        .O(SevenSegment_OBUF[0]));
  OBUF \SevenSegment_OBUF[1]_inst 
       (.I(SevenSegment_OBUF[1]),
        .O(SevenSegment[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \SevenSegment_OBUF[1]_inst_i_1 
       (.I0(\S_temp_reg_n_0_[3] ),
        .I1(\S_temp_reg_n_0_[2] ),
        .I2(\S_temp_reg_n_0_[1] ),
        .I3(\S_temp_reg_n_0_[0] ),
        .O(SevenSegment_OBUF[1]));
  OBUF \SevenSegment_OBUF[2]_inst 
       (.I(SevenSegment_OBUF[2]),
        .O(SevenSegment[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \SevenSegment_OBUF[2]_inst_i_1 
       (.I0(\S_temp_reg_n_0_[3] ),
        .I1(\S_temp_reg_n_0_[0] ),
        .I2(\S_temp_reg_n_0_[1] ),
        .I3(\S_temp_reg_n_0_[2] ),
        .O(SevenSegment_OBUF[2]));
  OBUF \SevenSegment_OBUF[3]_inst 
       (.I(SevenSegment_OBUF[3]),
        .O(SevenSegment[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \SevenSegment_OBUF[3]_inst_i_1 
       (.I0(\S_temp_reg_n_0_[3] ),
        .I1(\S_temp_reg_n_0_[2] ),
        .I2(\S_temp_reg_n_0_[0] ),
        .I3(\S_temp_reg_n_0_[1] ),
        .O(SevenSegment_OBUF[3]));
  OBUF \SevenSegment_OBUF[4]_inst 
       (.I(SevenSegment_OBUF[4]),
        .O(SevenSegment[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \SevenSegment_OBUF[4]_inst_i_1 
       (.I0(\S_temp_reg_n_0_[3] ),
        .I1(\S_temp_reg_n_0_[1] ),
        .I2(\S_temp_reg_n_0_[2] ),
        .I3(\S_temp_reg_n_0_[0] ),
        .O(SevenSegment_OBUF[4]));
  OBUF \SevenSegment_OBUF[5]_inst 
       (.I(SevenSegment_OBUF[5]),
        .O(SevenSegment[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \SevenSegment_OBUF[5]_inst_i_1 
       (.I0(\S_temp_reg_n_0_[3] ),
        .I1(\S_temp_reg_n_0_[2] ),
        .I2(\S_temp_reg_n_0_[0] ),
        .I3(\S_temp_reg_n_0_[1] ),
        .O(SevenSegment_OBUF[5]));
  OBUF \SevenSegment_OBUF[6]_inst 
       (.I(SevenSegment_OBUF[6]),
        .O(SevenSegment[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \SevenSegment_OBUF[6]_inst_i_1 
       (.I0(\S_temp_reg_n_0_[3] ),
        .I1(\S_temp_reg_n_0_[0] ),
        .I2(\S_temp_reg_n_0_[2] ),
        .I3(\S_temp_reg_n_0_[1] ),
        .O(SevenSegment_OBUF[6]));
  Slow_Clk Slow_Clk0
       (.CLK(Clk_out),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG));
  IBUF \SwitchIn_IBUF[0]_inst 
       (.I(SwitchIn[0]),
        .O(SwitchIn_IBUF[0]));
  IBUF \SwitchIn_IBUF[1]_inst 
       (.I(SwitchIn[1]),
        .O(SwitchIn_IBUF[1]));
  IBUF \SwitchIn_IBUF[2]_inst 
       (.I(SwitchIn[2]),
        .O(SwitchIn_IBUF[2]));
  IBUF \SwitchIn_IBUF[3]_inst 
       (.I(SwitchIn[3]),
        .O(SwitchIn_IBUF[3]));
  OBUF Zero_OBUF_inst
       (.I(Zero_OBUF),
        .O(Zero));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \count[31]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\count[31]_i_6_n_0 ),
        .O(\count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[31]_i_10 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[20] ),
        .I2(\count_reg_n_0_[30] ),
        .I3(\count_reg_n_0_[28] ),
        .O(\count[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[11] ),
        .I4(\count[31]_i_7_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[31]_i_4 
       (.I0(\count_reg_n_0_[19] ),
        .I1(\count_reg_n_0_[21] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count[31]_i_8_n_0 ),
        .O(\count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_5 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[25] ),
        .I2(\count_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[22] ),
        .I4(\count[31]_i_9_n_0 ),
        .O(\count[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_6 
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[23] ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[10] ),
        .I4(\count[31]_i_10_n_0 ),
        .O(\count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_7 
       (.I0(\count_reg_n_0_[27] ),
        .I1(\count_reg_n_0_[15] ),
        .I2(\count_reg_n_0_[14] ),
        .I3(\count_reg_n_0_[8] ),
        .O(\count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8 
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[26] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[31] ),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9 
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[24] ),
        .I3(\count_reg_n_0_[12] ),
        .O(\count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\NLW_count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_1_n_0 ,\NLW_count_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[31]_i_2_n_7 ),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[31]_i_2_n_6 ),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[31]_i_2_n_5 ),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[31]_i_2 
       (.CI(\count_reg[28]_i_1_n_0 ),
        .CO(\NLW_count_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_2_O_UNCONNECTED [3],\count_reg[31]_i_2_n_5 ,\count_reg[31]_i_2_n_6 ,\count_reg[31]_i_2_n_7 }),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lookupTableIn_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ProgramCounter0_n_4),
        .Q(\lookupTableIn_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lookupTableIn_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ProgramCounter0_n_3),
        .Q(\lookupTableIn_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lookupTableIn_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ProgramCounter0_n_0),
        .Q(\lookupTableIn_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module ProgramCounter
   (\lookupTableIn_reg[2] ,
    \output_reg[2]_0 ,
    \lookupTableIn_reg[1] ,
    \lookupTableIn_reg[0] ,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    Y0,
    \Q_reg[3]_2 ,
    \Q_reg[3]_3 ,
    \Q_reg[3]_4 ,
    E,
    \output_reg[0]_0 ,
    \output_reg[1]_0 ,
    \count_reg[7] ,
    \count_reg[19] ,
    \count_reg[0] ,
    \count_reg[17] ,
    \lookupTableIn_reg[2]_0 ,
    \lookupTableIn_reg[1]_0 ,
    \lookupTableIn_reg[0]_0 ,
    SwitchIn_IBUF,
    \output_reg[2]_1 ,
    Reset_IBUF,
    \output_reg[2]_2 ,
    Clk_out);
  output \lookupTableIn_reg[2] ;
  output [1:0]\output_reg[2]_0 ;
  output \lookupTableIn_reg[1] ;
  output \lookupTableIn_reg[0] ;
  output [3:0]\Q_reg[3] ;
  output [1:0]\Q_reg[3]_0 ;
  output [1:0]\Q_reg[3]_1 ;
  output [1:0]Y0;
  output [0:0]\Q_reg[3]_2 ;
  output \Q_reg[3]_3 ;
  output \Q_reg[3]_4 ;
  output [0:0]E;
  output [0:0]\output_reg[0]_0 ;
  output [1:0]\output_reg[1]_0 ;
  input \count_reg[7] ;
  input \count_reg[19] ;
  input \count_reg[0] ;
  input \count_reg[17] ;
  input \lookupTableIn_reg[2]_0 ;
  input \lookupTableIn_reg[1]_0 ;
  input \lookupTableIn_reg[0]_0 ;
  input [3:0]SwitchIn_IBUF;
  input \output_reg[2]_1 ;
  input Reset_IBUF;
  input [1:0]\output_reg[2]_2 ;
  input Clk_out;

  wire Clk_out;
  wire [0:0]E;
  wire [3:0]\Q_reg[3] ;
  wire [1:0]\Q_reg[3]_0 ;
  wire [1:0]\Q_reg[3]_1 ;
  wire [0:0]\Q_reg[3]_2 ;
  wire \Q_reg[3]_3 ;
  wire \Q_reg[3]_4 ;
  wire [0:0]ROMMemorySelect;
  wire Reset_IBUF;
  wire [3:0]SwitchIn_IBUF;
  wire [1:0]Y0;
  wire \count_reg[0] ;
  wire \count_reg[17] ;
  wire \count_reg[19] ;
  wire \count_reg[7] ;
  wire \lookupTableIn_reg[0] ;
  wire \lookupTableIn_reg[0]_0 ;
  wire \lookupTableIn_reg[1] ;
  wire \lookupTableIn_reg[1]_0 ;
  wire \lookupTableIn_reg[2] ;
  wire \lookupTableIn_reg[2]_0 ;
  wire \output[0]_i_1_n_0 ;
  wire \output[1]_i_1_n_0 ;
  wire \output[2]_i_1_n_0 ;
  wire [0:0]\output_reg[0]_0 ;
  wire [1:0]\output_reg[1]_0 ;
  wire [1:0]\output_reg[2]_0 ;
  wire \output_reg[2]_1 ;
  wire [1:0]\output_reg[2]_2 ;

  LUT3 #(
    .INIT(8'h10)) 
    AddSubSelect_reg_i_1
       (.I0(\output_reg[2]_0 [1]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [0]),
        .O(\Q_reg[3]_3 ));
  LUT3 #(
    .INIT(8'hC8)) 
    AddSubSelect_reg_i_2
       (.I0(\output_reg[2]_0 [1]),
        .I1(\output_reg[2]_0 [0]),
        .I2(ROMMemorySelect),
        .O(\Q_reg[3]_4 ));
  LUT4 #(
    .INIT(16'h3080)) 
    \ImmediateValue_reg[0]_i_1 
       (.I0(SwitchIn_IBUF[0]),
        .I1(\output_reg[2]_0 [0]),
        .I2(ROMMemorySelect),
        .I3(\output_reg[2]_0 [1]),
        .O(\Q_reg[3] [0]));
  LUT4 #(
    .INIT(16'h30B3)) 
    \ImmediateValue_reg[1]_i_1 
       (.I0(SwitchIn_IBUF[1]),
        .I1(\output_reg[2]_0 [0]),
        .I2(ROMMemorySelect),
        .I3(\output_reg[2]_0 [1]),
        .O(\Q_reg[3] [1]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ImmediateValue_reg[2]_i_1 
       (.I0(\output_reg[2]_0 [1]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [0]),
        .I3(SwitchIn_IBUF[2]),
        .O(\Q_reg[3] [2]));
  LUT4 #(
    .INIT(16'h0083)) 
    \ImmediateValue_reg[3]_i_1 
       (.I0(SwitchIn_IBUF[3]),
        .I1(\output_reg[2]_0 [0]),
        .I2(ROMMemorySelect),
        .I3(\output_reg[2]_0 [1]),
        .O(\Q_reg[3] [3]));
  LUT3 #(
    .INIT(8'h08)) 
    \JumpAddress_reg[0]_i_1 
       (.I0(\output_reg[2]_0 [1]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [0]),
        .O(\output_reg[1]_0 [0]));
  LUT3 #(
    .INIT(8'h0D)) 
    \JumpAddress_reg[1]_i_1 
       (.I0(\output_reg[2]_0 [1]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [0]),
        .O(\output_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \JumpAddress_reg[1]_i_2 
       (.I0(\output_reg[2]_0 [1]),
        .I1(\output_reg[2]_0 [0]),
        .O(\output_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    LoadSelect_reg_i_1
       (.I0(\output_reg[2]_0 [1]),
        .I1(\output_reg[2]_0 [0]),
        .O(E));
  LUT3 #(
    .INIT(8'h41)) 
    \Q[3]_i_1 
       (.I0(\output_reg[2]_0 [1]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [0]),
        .O(Y0[1]));
  LUT3 #(
    .INIT(8'h06)) 
    \Q[3]_i_1__0 
       (.I0(\output_reg[2]_0 [0]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [1]),
        .O(Y0[0]));
  LUT3 #(
    .INIT(8'h19)) 
    \RegASelect_reg[0]_i_1 
       (.I0(\output_reg[2]_0 [0]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [1]),
        .O(\Q_reg[3]_1 [0]));
  LUT3 #(
    .INIT(8'h1D)) 
    \RegASelect_reg[1]_i_1 
       (.I0(\output_reg[2]_0 [0]),
        .I1(ROMMemorySelect),
        .I2(\output_reg[2]_0 [1]),
        .O(\Q_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    \RegASelect_reg[1]_i_2 
       (.I0(\output_reg[2]_0 [0]),
        .I1(\output_reg[2]_0 [1]),
        .O(\Q_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RegBSelect_reg[0]_i_1 
       (.I0(ROMMemorySelect),
        .I1(\output_reg[2]_0 [0]),
        .O(\Q_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \RegBSelect_reg[1]_i_1 
       (.I0(\output_reg[2]_0 [1]),
        .I1(\output_reg[2]_0 [0]),
        .I2(ROMMemorySelect),
        .O(\Q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \lookupTableIn[0]_i_1 
       (.I0(ROMMemorySelect),
        .I1(\count_reg[7] ),
        .I2(\count_reg[19] ),
        .I3(\count_reg[0] ),
        .I4(\count_reg[17] ),
        .I5(\lookupTableIn_reg[0]_0 ),
        .O(\lookupTableIn_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \lookupTableIn[1]_i_1 
       (.I0(\output_reg[2]_0 [0]),
        .I1(\count_reg[7] ),
        .I2(\count_reg[19] ),
        .I3(\count_reg[0] ),
        .I4(\count_reg[17] ),
        .I5(\lookupTableIn_reg[1]_0 ),
        .O(\lookupTableIn_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \lookupTableIn[2]_i_1 
       (.I0(\output_reg[2]_0 [1]),
        .I1(\count_reg[7] ),
        .I2(\count_reg[19] ),
        .I3(\count_reg[0] ),
        .I4(\count_reg[17] ),
        .I5(\lookupTableIn_reg[2]_0 ),
        .O(\lookupTableIn_reg[2] ));
  LUT4 #(
    .INIT(16'h00D1)) 
    \output[0]_i_1 
       (.I0(ROMMemorySelect),
        .I1(\output_reg[2]_1 ),
        .I2(\output_reg[2]_2 [0]),
        .I3(Reset_IBUF),
        .O(\output[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000F606)) 
    \output[1]_i_1 
       (.I0(ROMMemorySelect),
        .I1(\output_reg[2]_0 [0]),
        .I2(\output_reg[2]_1 ),
        .I3(\output_reg[2]_2 [1]),
        .I4(Reset_IBUF),
        .O(\output[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001444)) 
    \output[2]_i_1 
       (.I0(\output_reg[2]_1 ),
        .I1(\output_reg[2]_0 [1]),
        .I2(ROMMemorySelect),
        .I3(\output_reg[2]_0 [0]),
        .I4(Reset_IBUF),
        .O(\output[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[0] 
       (.C(Clk_out),
        .CE(1'b1),
        .D(\output[0]_i_1_n_0 ),
        .Q(ROMMemorySelect),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[1] 
       (.C(Clk_out),
        .CE(1'b1),
        .D(\output[1]_i_1_n_0 ),
        .Q(\output_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[2] 
       (.C(Clk_out),
        .CE(1'b1),
        .D(\output[2]_i_1_n_0 ),
        .Q(\output_reg[2]_0 [1]),
        .R(1'b0));
endmodule

module Reg
   (Zero_OBUF,
    \Q_reg[1]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[2]_1 ,
    \Q_reg[0]_0 ,
    D,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[2]_2 ,
    \Q_reg[2]_3 ,
    \Q_reg[1]_1 ,
    AddSubSelect,
    LoadSelect,
    \output_reg[1] ,
    Q,
    \output_reg[1]_0 ,
    \output_reg[1]_1 ,
    SR,
    Y0,
    \Q_reg[2]_4 ,
    CLK);
  output Zero_OBUF;
  output \Q_reg[1]_0 ;
  output \Q_reg[2]_0 ;
  output \Q_reg[2]_1 ;
  output \Q_reg[0]_0 ;
  output [0:0]D;
  output [2:0]\Q_reg[3]_0 ;
  input \Q_reg[3]_1 ;
  input \Q_reg[2]_2 ;
  input \Q_reg[2]_3 ;
  input \Q_reg[1]_1 ;
  input AddSubSelect;
  input LoadSelect;
  input [0:0]\output_reg[1] ;
  input [1:0]Q;
  input [1:0]\output_reg[1]_0 ;
  input [1:0]\output_reg[1]_1 ;
  input [0:0]SR;
  input [0:0]Y0;
  input [2:0]\Q_reg[2]_4 ;
  input CLK;

  wire AddSubSelect;
  wire CLK;
  wire [0:0]D;
  wire [0:0]DataBus2;
  wire LoadSelect;
  wire [1:0]Q;
  wire \Q[0]_i_2_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire \Q_reg[2]_2 ;
  wire \Q_reg[2]_3 ;
  wire [2:0]\Q_reg[2]_4 ;
  wire [2:0]\Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire [0:0]SR;
  wire [0:0]Y0;
  wire Zero_OBUF;
  wire Zero_OBUF_inst_i_3_n_0;
  wire [0:0]\output_reg[1] ;
  wire [1:0]\output_reg[1]_0 ;
  wire [1:0]\output_reg[1]_1 ;

  LUT4 #(
    .INIT(16'h9F90)) 
    \Q[0]_i_1 
       (.I0(\Q[0]_i_2_n_0 ),
        .I1(\Q_reg[0]_0 ),
        .I2(LoadSelect),
        .I3(\output_reg[1] ),
        .O(D));
  LUT4 #(
    .INIT(16'h35FF)) 
    \Q[0]_i_2 
       (.I0(DataBus2),
        .I1(Q[0]),
        .I2(\output_reg[1]_1 [0]),
        .I3(\output_reg[1]_1 [1]),
        .O(\Q[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCA00)) 
    \Q[0]_i_3 
       (.I0(DataBus2),
        .I1(Q[0]),
        .I2(\output_reg[1]_0 [0]),
        .I3(\output_reg[1]_0 [1]),
        .O(\Q_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(Y0),
        .D(D),
        .Q(DataBus2),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(Y0),
        .D(\Q_reg[2]_4 [0]),
        .Q(\Q_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(Y0),
        .D(\Q_reg[2]_4 [1]),
        .Q(\Q_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(Y0),
        .D(\Q_reg[2]_4 [2]),
        .Q(\Q_reg[3]_0 [2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h1000000100101000)) 
    Zero_OBUF_inst_i_1
       (.I0(\Q_reg[1]_0 ),
        .I1(Zero_OBUF_inst_i_3_n_0),
        .I2(\Q_reg[3]_1 ),
        .I3(\Q_reg[2]_0 ),
        .I4(\Q_reg[2]_2 ),
        .I5(\Q_reg[2]_3 ),
        .O(Zero_OBUF));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    Zero_OBUF_inst_i_2
       (.I0(\Q_reg[0]_0 ),
        .I1(\Q[0]_i_2_n_0 ),
        .I2(AddSubSelect),
        .I3(\Q_reg[1]_1 ),
        .I4(\Q_reg[2]_1 ),
        .O(\Q_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    Zero_OBUF_inst_i_3
       (.I0(\Q[0]_i_2_n_0 ),
        .I1(\Q_reg[0]_0 ),
        .O(Zero_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    Zero_OBUF_inst_i_5
       (.I0(\Q_reg[2]_1 ),
        .I1(\Q_reg[1]_1 ),
        .I2(AddSubSelect),
        .I3(\Q[0]_i_2_n_0 ),
        .I4(\Q_reg[0]_0 ),
        .O(\Q_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    Zero_OBUF_inst_i_9
       (.I0(\Q_reg[3]_0 [0]),
        .I1(Q[1]),
        .I2(\output_reg[1]_0 [1]),
        .I3(\output_reg[1]_0 [0]),
        .O(\Q_reg[2]_1 ));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_0
   (D,
    Q,
    Overflow_OBUF,
    \Q_reg[3]_0 ,
    \output_reg[2] ,
    \lookupTableIn_reg[2] ,
    \count_reg[7] ,
    \count_reg[19] ,
    \count_reg[0] ,
    \count_reg[17] ,
    \lookupTableIn_reg[1] ,
    \lookupTableIn_reg[0] ,
    \Q_reg[1]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[3]_1 ,
    \output_reg[1] ,
    \Q_reg[3]_2 ,
    \output_reg[2]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[1]_1 ,
    SR,
    Y0,
    \Q_reg[2]_1 ,
    CLK);
  output [2:0]D;
  output [3:0]Q;
  output Overflow_OBUF;
  output \Q_reg[3]_0 ;
  output \output_reg[2] ;
  input \lookupTableIn_reg[2] ;
  input \count_reg[7] ;
  input \count_reg[19] ;
  input \count_reg[0] ;
  input \count_reg[17] ;
  input \lookupTableIn_reg[1] ;
  input \lookupTableIn_reg[0] ;
  input \Q_reg[1]_0 ;
  input \Q_reg[2]_0 ;
  input \Q_reg[3]_1 ;
  input [1:0]\output_reg[1] ;
  input [1:0]\Q_reg[3]_2 ;
  input [1:0]\output_reg[2]_0 ;
  input \Q_reg[0]_0 ;
  input \Q_reg[1]_1 ;
  input [0:0]SR;
  input [0:0]Y0;
  input [3:0]\Q_reg[2]_1 ;
  input CLK;

  wire CLK;
  wire [2:0]D;
  wire Overflow_OBUF;
  wire Overflow_OBUF_inst_i_3_n_0;
  wire [3:0]Q;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire \Q_reg[2]_0 ;
  wire [3:0]\Q_reg[2]_1 ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire [1:0]\Q_reg[3]_2 ;
  wire [0:0]SR;
  wire [0:0]Y0;
  wire \count_reg[0] ;
  wire \count_reg[17] ;
  wire \count_reg[19] ;
  wire \count_reg[7] ;
  wire \lookupTableIn_reg[0] ;
  wire \lookupTableIn_reg[1] ;
  wire \lookupTableIn_reg[2] ;
  wire [1:0]\output_reg[1] ;
  wire \output_reg[2] ;
  wire [1:0]\output_reg[2]_0 ;

  LUT5 #(
    .INIT(32'h008E8EFF)) 
    Overflow_OBUF_inst_i_1
       (.I0(\Q_reg[1]_0 ),
        .I1(\Q_reg[2]_0 ),
        .I2(\Q_reg[3]_0 ),
        .I3(\Q_reg[3]_1 ),
        .I4(Overflow_OBUF_inst_i_3_n_0),
        .O(Overflow_OBUF));
  LUT4 #(
    .INIT(16'h4F7F)) 
    Overflow_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(\output_reg[1] [0]),
        .I2(\output_reg[1] [1]),
        .I3(\Q_reg[3]_2 [1]),
        .O(Overflow_OBUF_inst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(Y0),
        .D(\Q_reg[2]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(Y0),
        .D(\Q_reg[2]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(Y0),
        .D(\Q_reg[2]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(Y0),
        .D(\Q_reg[2]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \S_temp[0]_i_1 
       (.I0(\lookupTableIn_reg[0] ),
        .I1(\count_reg[7] ),
        .I2(\count_reg[19] ),
        .I3(\count_reg[0] ),
        .I4(\count_reg[17] ),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \S_temp[1]_i_1 
       (.I0(\lookupTableIn_reg[1] ),
        .I1(\count_reg[7] ),
        .I2(\count_reg[19] ),
        .I3(\count_reg[0] ),
        .I4(\count_reg[17] ),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \S_temp[2]_i_1 
       (.I0(\lookupTableIn_reg[2] ),
        .I1(\count_reg[7] ),
        .I2(\count_reg[19] ),
        .I3(\count_reg[0] ),
        .I4(\count_reg[17] ),
        .I5(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h4F7F)) 
    Zero_OBUF_inst_i_7
       (.I0(Q[2]),
        .I1(\output_reg[1] [0]),
        .I2(\output_reg[1] [1]),
        .I3(\Q_reg[3]_2 [0]),
        .O(\Q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \output[2]_i_2 
       (.I0(\output_reg[2]_0 [1]),
        .I1(\output_reg[2]_0 [0]),
        .I2(Overflow_OBUF_inst_i_3_n_0),
        .I3(\Q_reg[0]_0 ),
        .I4(\Q_reg[3]_0 ),
        .I5(\Q_reg[1]_1 ),
        .O(\output_reg[2] ));
endmodule

module RegisterBank
   (D,
    Q,
    Zero_OBUF,
    \Q_reg[1] ,
    \Q_reg[2] ,
    \Q_reg[3] ,
    Overflow_OBUF,
    \Q_reg[3]_0 ,
    \output_reg[2] ,
    \lookupTableIn_reg[2] ,
    \count_reg[7] ,
    \count_reg[19] ,
    \count_reg[0] ,
    \count_reg[17] ,
    \lookupTableIn_reg[1] ,
    \lookupTableIn_reg[0] ,
    \Q_reg[3]_1 ,
    \Q_reg[2]_0 ,
    \Q_reg[3]_2 ,
    \Q_reg[1]_0 ,
    AddSubSelect,
    \Q_reg[2]_1 ,
    LoadSelect,
    \output_reg[1] ,
    \output_reg[1]_0 ,
    \output_reg[1]_1 ,
    \output_reg[2]_0 ,
    SR,
    Y0,
    CLK);
  output [2:0]D;
  output [3:0]Q;
  output Zero_OBUF;
  output \Q_reg[1] ;
  output \Q_reg[2] ;
  output \Q_reg[3] ;
  output Overflow_OBUF;
  output [2:0]\Q_reg[3]_0 ;
  output \output_reg[2] ;
  input \lookupTableIn_reg[2] ;
  input \count_reg[7] ;
  input \count_reg[19] ;
  input \count_reg[0] ;
  input \count_reg[17] ;
  input \lookupTableIn_reg[1] ;
  input \lookupTableIn_reg[0] ;
  input \Q_reg[3]_1 ;
  input \Q_reg[2]_0 ;
  input \Q_reg[3]_2 ;
  input \Q_reg[1]_0 ;
  input AddSubSelect;
  input [2:0]\Q_reg[2]_1 ;
  input LoadSelect;
  input [0:0]\output_reg[1] ;
  input [1:0]\output_reg[1]_0 ;
  input [1:0]\output_reg[1]_1 ;
  input [1:0]\output_reg[2]_0 ;
  input [0:0]SR;
  input [1:0]Y0;
  input CLK;

  wire AddSubSelect;
  wire CLK;
  wire [2:0]D;
  wire LoadSelect;
  wire Overflow_OBUF;
  wire [3:0]Q;
  wire \Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[2] ;
  wire \Q_reg[2]_0 ;
  wire [2:0]\Q_reg[2]_1 ;
  wire \Q_reg[3] ;
  wire [2:0]\Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire Reg2_n_3;
  wire Reg2_n_4;
  wire [0:0]RegisterIn;
  wire [0:0]SR;
  wire [1:0]Y0;
  wire Zero_OBUF;
  wire \count_reg[0] ;
  wire \count_reg[17] ;
  wire \count_reg[19] ;
  wire \count_reg[7] ;
  wire \lookupTableIn_reg[0] ;
  wire \lookupTableIn_reg[1] ;
  wire \lookupTableIn_reg[2] ;
  wire [0:0]\output_reg[1] ;
  wire [1:0]\output_reg[1]_0 ;
  wire [1:0]\output_reg[1]_1 ;
  wire \output_reg[2] ;
  wire [1:0]\output_reg[2]_0 ;

  Reg Reg2
       (.AddSubSelect(AddSubSelect),
        .CLK(CLK),
        .D(RegisterIn),
        .LoadSelect(LoadSelect),
        .Q(Q[1:0]),
        .\Q_reg[0]_0 (Reg2_n_4),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[1]_1 (\Q_reg[1]_0 ),
        .\Q_reg[2]_0 (\Q_reg[2] ),
        .\Q_reg[2]_1 (Reg2_n_3),
        .\Q_reg[2]_2 (\Q_reg[2]_0 ),
        .\Q_reg[2]_3 (\Q_reg[3] ),
        .\Q_reg[2]_4 (\Q_reg[2]_1 ),
        .\Q_reg[3]_0 (\Q_reg[3]_0 ),
        .\Q_reg[3]_1 (\Q_reg[3]_1 ),
        .SR(SR),
        .Y0(Y0[0]),
        .Zero_OBUF(Zero_OBUF),
        .\output_reg[1] (\output_reg[1] ),
        .\output_reg[1]_0 (\output_reg[1]_0 ),
        .\output_reg[1]_1 (\output_reg[1]_1 ));
  Reg_0 Reg7
       (.CLK(CLK),
        .D(D),
        .Overflow_OBUF(Overflow_OBUF),
        .Q(Q),
        .\Q_reg[0]_0 (Reg2_n_4),
        .\Q_reg[1]_0 (\Q_reg[2] ),
        .\Q_reg[1]_1 (Reg2_n_3),
        .\Q_reg[2]_0 (\Q_reg[2]_0 ),
        .\Q_reg[2]_1 ({\Q_reg[2]_1 ,RegisterIn}),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[3]_1 (\Q_reg[3]_2 ),
        .\Q_reg[3]_2 (\Q_reg[3]_0 [2:1]),
        .SR(SR),
        .Y0(Y0[1]),
        .\count_reg[0] (\count_reg[0] ),
        .\count_reg[17] (\count_reg[17] ),
        .\count_reg[19] (\count_reg[19] ),
        .\count_reg[7] (\count_reg[7] ),
        .\lookupTableIn_reg[0] (\lookupTableIn_reg[0] ),
        .\lookupTableIn_reg[1] (\lookupTableIn_reg[1] ),
        .\lookupTableIn_reg[2] (\lookupTableIn_reg[2] ),
        .\output_reg[1] (\output_reg[1]_0 ),
        .\output_reg[2] (\output_reg[2] ),
        .\output_reg[2]_0 (\output_reg[2]_0 ));
endmodule

module Slow_Clk
   (CLK,
    Clk_IBUF_BUFG);
  output CLK;
  input Clk_IBUF_BUFG;

  wire CLK;
  wire Clk_IBUF_BUFG;
  wire Clk_out_i_1_n_0;
  wire clk_status;
  wire clk_status_i_1_n_0;
  wire [0:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__2_n_0;
  wire count0_carry__3_n_0;
  wire count0_carry__4_n_0;
  wire count0_carry__5_n_0;
  wire count0_carry_n_0;
  wire \count[31]_i_1__0_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[31]_i_3__0_n_0 ;
  wire \count[31]_i_4__0_n_0 ;
  wire \count[31]_i_5__0_n_0 ;
  wire \count[31]_i_6__0_n_0 ;
  wire \count[31]_i_7__0_n_0 ;
  wire \count[31]_i_8__0_n_0 ;
  wire \count[31]_i_9__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [31:1]data0;
  wire [2:0]NLW_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    Clk_out_i_1
       (.I0(clk_status),
        .I1(\count[31]_i_2_n_0 ),
        .I2(\count[31]_i_3__0_n_0 ),
        .I3(\count[31]_i_4__0_n_0 ),
        .I4(\count[31]_i_5__0_n_0 ),
        .I5(CLK),
        .O(Clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Clk_out_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Clk_out_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_status_i_1
       (.I0(\count[31]_i_5__0_n_0 ),
        .I1(\count[31]_i_4__0_n_0 ),
        .I2(\count[31]_i_3__0_n_0 ),
        .I3(\count[31]_i_2_n_0 ),
        .I4(clk_status),
        .O(clk_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_status_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_status_i_1_n_0),
        .Q(clk_status),
        .R(1'b0));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,NLW_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,NLW_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,NLW_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,NLW_count0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,NLW_count0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,NLW_count0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,NLW_count0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO(NLW_count0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .O(count));
  LUT4 #(
    .INIT(16'h0001)) 
    \count[31]_i_1__0 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3__0_n_0 ),
        .I2(\count[31]_i_4__0_n_0 ),
        .I3(\count[31]_i_5__0_n_0 ),
        .O(\count[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_2 
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[11] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count[31]_i_6__0_n_0 ),
        .O(\count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \count[31]_i_3__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count[31]_i_7__0_n_0 ),
        .O(\count[31]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_4__0 
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[27] ),
        .I2(\count_reg_n_0_[24] ),
        .I3(\count_reg_n_0_[25] ),
        .I4(\count[31]_i_8__0_n_0 ),
        .O(\count[31]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_5__0 
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[17] ),
        .I4(\count[31]_i_9__0_n_0 ),
        .O(\count[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_6__0 
       (.I0(\count_reg_n_0_[13] ),
        .I1(\count_reg_n_0_[12] ),
        .I2(\count_reg_n_0_[15] ),
        .I3(\count_reg_n_0_[14] ),
        .O(\count[31]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_7__0 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[6] ),
        .O(\count[31]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8__0 
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[31] ),
        .I3(\count_reg_n_0_[30] ),
        .O(\count[31]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9__0 
       (.I0(\count_reg_n_0_[21] ),
        .I1(\count_reg_n_0_[20] ),
        .I2(\count_reg_n_0_[23] ),
        .I3(\count_reg_n_0_[22] ),
        .O(\count[31]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[22]),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[23]),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[24]),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[25]),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[26]),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[27]),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[28]),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[29]),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[30]),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[31]),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1__0_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

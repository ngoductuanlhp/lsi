
// Generated by Cadence Genus(TM) Synthesis Solution 19.13-s073_1
// Generated on: Aug  5 2020 23:17:59 +07 (Aug  5 2020 16:17:59 UTC)

// Verification Directory fv/bound_flasher 

module bound_flasher(clk, rst_n, flick, LED);
  input clk, rst_n, flick;
  output [15:0] LED;
  wire clk, rst_n, flick;
  wire [15:0] LED;
  wire [15:0] next_LED;
  wire [3:0] next_index;
  wire [3:0] index;
  wire [1:0] next_state;
  wire [1:0] state;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire UNCONNECTED7, UNCONNECTED8, UNCONNECTED9, UNCONNECTED10,
       UNCONNECTED11, UNCONNECTED12, UNCONNECTED13, UNCONNECTED14;
  wire UNCONNECTED15, UNCONNECTED16, UNCONNECTED17, UNCONNECTED18,
       UNCONNECTED19, UNCONNECTED20, n_0, n_2;
  wire n_3, n_4, n_7, n_8, n_9, n_11, n_13, n_14;
  wire n_15, n_16, n_17, n_18, n_19, n_20, n_21, n_22;
  wire n_23, n_24, n_25, n_26, n_27, n_28, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_101, n_102, n_103, n_104;
  wire n_105, n_107, n_109, n_110, n_111, n_112, n_113, n_143;
  SDFFRHQX2 \LED_reg[2] (.RN (n_113), .CK (clk), .D (next_LED[2]), .SI
       (LED[2]), .SE (n_112), .Q (LED[2]));
  SDFFRHQX4 \LED_reg[1] (.RN (n_113), .CK (clk), .D (next_LED[1]), .SI
       (LED[1]), .SE (n_112), .Q (LED[1]));
  SDFFRHQX2 \LED_reg[3] (.RN (n_113), .CK (clk), .D (next_LED[3]), .SI
       (LED[3]), .SE (n_112), .Q (LED[3]));
  SDFFRHQX4 \LED_reg[4] (.RN (n_113), .CK (clk), .D (next_LED[4]), .SI
       (LED[4]), .SE (n_112), .Q (LED[4]));
  SDFFRHQX4 \LED_reg[5] (.RN (n_113), .CK (clk), .D (next_LED[5]), .SI
       (LED[5]), .SE (n_112), .Q (LED[5]));
  SDFFRHQX4 \LED_reg[0] (.RN (n_113), .CK (clk), .D (next_LED[0]), .SI
       (LED[0]), .SE (n_112), .Q (LED[0]));
  SDFFRHQX4 \LED_reg[14] (.RN (n_113), .CK (clk), .D (next_LED[14]),
       .SI (LED[14]), .SE (n_112), .Q (LED[14]));
  SDFFRHQX4 \LED_reg[7] (.RN (n_113), .CK (clk), .D (next_LED[7]), .SI
       (LED[7]), .SE (n_112), .Q (LED[7]));
  SDFFRHQX4 \LED_reg[10] (.RN (n_113), .CK (clk), .D (next_LED[10]),
       .SI (LED[10]), .SE (n_112), .Q (LED[10]));
  SDFFRHQX8 \LED_reg[6] (.RN (n_113), .CK (clk), .D (next_LED[6]), .SI
       (LED[6]), .SE (n_112), .Q (LED[6]));
  SDFFRHQX4 \LED_reg[13] (.RN (n_113), .CK (clk), .D (next_LED[13]),
       .SI (LED[13]), .SE (n_112), .Q (LED[13]));
  SDFFRHQX4 \LED_reg[11] (.RN (n_113), .CK (clk), .D (next_LED[11]),
       .SI (LED[11]), .SE (n_112), .Q (LED[11]));
  SDFFRHQX8 \LED_reg[12] (.RN (n_113), .CK (clk), .D (next_LED[12]),
       .SI (LED[12]), .SE (n_112), .Q (LED[12]));
  SDFFRHQX8 \LED_reg[9] (.RN (n_113), .CK (clk), .D (next_LED[9]), .SI
       (LED[9]), .SE (n_112), .Q (LED[9]));
  SDFFRHQX4 \LED_reg[8] (.RN (n_113), .CK (clk), .D (next_LED[8]), .SI
       (LED[8]), .SE (n_112), .Q (LED[8]));
  DFFSRHQX4 \index_reg[1] (.RN (n_64), .SN (n_74), .CK (clk), .D
       (next_index[1]), .Q (index[1]));
  TLATNXL \next_index_reg[2] (.GN (n_111), .D (n_110), .Q
       (next_index[2]), .QN (UNCONNECTED));
  TLATNXL \next_LED_reg[3] (.GN (n_111), .D (n_107), .Q (next_LED[3]),
       .QN (UNCONNECTED0));
  TLATNXL \next_LED_reg[4] (.GN (n_111), .D (n_103), .Q (next_LED[4]),
       .QN (UNCONNECTED1));
  TLATNXL \next_LED_reg[5] (.GN (n_111), .D (n_102), .Q (next_LED[5]),
       .QN (UNCONNECTED2));
  SDFFRHQX4 \LED_reg[15] (.RN (n_113), .CK (clk), .D (next_LED[15]),
       .SI (LED[15]), .SE (n_112), .Q (LED[15]));
  TLATNXL \next_LED_reg[2] (.GN (n_111), .D (n_109), .Q (next_LED[2]),
       .QN (UNCONNECTED3));
  TLATNXL \next_LED_reg[1] (.GN (n_111), .D (n_101), .Q (next_LED[1]),
       .QN (UNCONNECTED4));
  DFFSRHQX2 \index_reg[3] (.RN (n_57), .SN (n_67), .CK (clk), .D
       (next_index[3]), .Q (index[3]));
  DFFSRHQX4 \state_reg[1] (.RN (rst_n), .SN (n_65), .CK (clk), .D
       (next_state[1]), .Q (state[1]));
  TLATNXL \next_index_reg[0] (.GN (n_111), .D (n_97), .Q
       (next_index[0]), .QN (UNCONNECTED5));
  TLATNXL \next_LED_reg[0] (.GN (n_111), .D (n_95), .Q (next_LED[0]),
       .QN (UNCONNECTED6));
  TLATNXL \next_index_reg[1] (.GN (n_111), .D (n_99), .Q
       (next_index[1]), .QN (UNCONNECTED7));
  TLATNXL \next_LED_reg[14] (.GN (n_111), .D (n_92), .Q (next_LED[14]),
       .QN (UNCONNECTED8));
  TLATNXL \next_LED_reg[6] (.GN (n_111), .D (n_86), .Q (next_LED[6]),
       .QN (UNCONNECTED9));
  TLATNXL \next_LED_reg[7] (.GN (n_111), .D (n_93), .Q (next_LED[7]),
       .QN (UNCONNECTED10));
  TLATNXL \next_LED_reg[8] (.GN (n_111), .D (n_81), .Q (next_LED[8]),
       .QN (UNCONNECTED11));
  TLATNXL \next_LED_reg[9] (.GN (n_111), .D (n_89), .Q (next_LED[9]),
       .QN (UNCONNECTED12));
  TLATNXL \next_LED_reg[10] (.GN (n_111), .D (n_88), .Q (next_LED[10]),
       .QN (UNCONNECTED13));
  TLATNXL \next_LED_reg[11] (.GN (n_111), .D (n_87), .Q (next_LED[11]),
       .QN (UNCONNECTED14));
  TLATNXL \next_LED_reg[12] (.GN (n_111), .D (n_85), .Q (next_LED[12]),
       .QN (UNCONNECTED15));
  TLATNXL \next_LED_reg[13] (.GN (n_111), .D (n_80), .Q (next_LED[13]),
       .QN (UNCONNECTED16));
  TLATNXL \next_state_reg[0] (.GN (n_111), .D (n_94), .Q
       (next_state[0]), .QN (UNCONNECTED17));
  TLATNXL \next_state_reg[1] (.GN (n_111), .D (n_84), .Q
       (next_state[1]), .QN (UNCONNECTED18));
  OAI2BB1X1 g5959__2398(.A0N (index[2]), .A1N (n_98), .B0 (n_82), .Y
       (n_110));
  TLATNXL \next_index_reg[3] (.GN (n_111), .D (n_83), .Q
       (next_index[3]), .QN (UNCONNECTED19));
  AO22X1 g5962__5107(.A0 (LED[1]), .A1 (n_105), .B0 (LED[3]), .B1
       (n_104), .Y (n_109));
  AO22X1 g5963__6260(.A0 (LED[2]), .A1 (n_105), .B0 (LED[4]), .B1
       (n_104), .Y (n_107));
  AO22X1 g5964__4319(.A0 (LED[3]), .A1 (n_105), .B0 (LED[5]), .B1
       (n_104), .Y (n_103));
  AO22X1 g5965__8428(.A0 (LED[4]), .A1 (n_105), .B0 (LED[6]), .B1
       (n_104), .Y (n_102));
  AO22X1 g5956__5526(.A0 (LED[0]), .A1 (n_105), .B0 (LED[2]), .B1
       (n_104), .Y (n_101));
  AO22X1 g5960__6783(.A0 (n_73), .A1 (n_96), .B0 (index[1]), .B1
       (n_98), .Y (n_99));
  MX2X1 g5966__3680(.A (n_96), .B (n_98), .S0 (index[0]), .Y (n_97));
  NAND2BXL g5971__1617(.AN (n_105), .B (n_54), .Y (n_95));
  INVXL g5984(.A (n_105), .Y (n_94));
  AO22X1 g5977__2802(.A0 (LED[8]), .A1 (n_91), .B0 (LED[6]), .B1
       (n_90), .Y (n_93));
  AO22X1 g5978__1705(.A0 (LED[15]), .A1 (n_91), .B0 (LED[13]), .B1
       (n_90), .Y (n_92));
  AO22X1 g5979__5122(.A0 (LED[10]), .A1 (n_91), .B0 (LED[8]), .B1
       (n_90), .Y (n_89));
  AO22X1 g5980__8246(.A0 (LED[11]), .A1 (n_91), .B0 (LED[9]), .B1
       (n_90), .Y (n_88));
  AO22X1 g5981__7098(.A0 (LED[12]), .A1 (n_91), .B0 (LED[10]), .B1
       (n_90), .Y (n_87));
  AO22X1 g5976__6131(.A0 (LED[7]), .A1 (n_91), .B0 (LED[5]), .B1
       (n_90), .Y (n_86));
  AO22X1 g5975__1881(.A0 (LED[13]), .A1 (n_91), .B0 (LED[11]), .B1
       (n_90), .Y (n_85));
  NAND2BXL g5969__5115(.AN (n_98), .B (n_79), .Y (n_84));
  AND2X1 g5970__7482(.A (index[3]), .B (n_98), .Y (n_83));
  OAI21XL g5972__4733(.A0 (index[2]), .A1 (n_26), .B0 (n_96), .Y
       (n_82));
  TLATNXL \next_LED_reg[15] (.GN (n_111), .D (n_78), .Q (next_LED[15]),
       .QN (UNCONNECTED20));
  AO22X1 g5974__6161(.A0 (LED[9]), .A1 (n_91), .B0 (LED[7]), .B1
       (n_90), .Y (n_81));
  AO22X1 g5967__9315(.A0 (LED[14]), .A1 (n_91), .B0 (LED[12]), .B1
       (n_90), .Y (n_80));
  OAI21XL g5986__9945(.A0 (n_79), .A1 (n_69), .B0 (n_76), .Y (n_105));
  NOR2XL g5982__2883(.A (n_79), .B (n_77), .Y (n_96));
  AND2X1 g5985__2346(.A (LED[14]), .B (n_90), .Y (n_78));
  AND2X1 g5983__1666(.A (state[1]), .B (n_77), .Y (n_98));
  INVXL g5987(.A (n_90), .Y (n_76));
  NAND2XL g5988__7410(.A (n_71), .B (n_53), .Y (n_104));
  NAND2BXL g5997__6417(.AN (index[0]), .B (n_72), .Y (n_75));
  NAND2BXL g5998__5477(.AN (n_73), .B (n_72), .Y (n_74));
  OAI2BB1X1 g5991__2398(.A0N (state[0]), .A1N (state[1]), .B0 (n_71),
       .Y (n_91));
  AND3XL g5989__5107(.A (n_51), .B (state[1]), .C (n_70), .Y (n_90));
  MX2X1 g5990__6260(.A (n_70), .B (n_69), .S0 (state[0]), .Y (n_77));
  OR2XL g6002__4319(.A (n_58), .B (n_66), .Y (n_68));
  OR2X1 g5992__8428(.A (n_79), .B (n_70), .Y (n_71));
  OR2XL g6003__5526(.A (n_56), .B (n_66), .Y (n_67));
  OA21X1 g6005__6783(.A0 (n_18), .A1 (n_30), .B0 (n_66), .Y (n_65));
  NOR2XL g6004__3680(.A (n_42), .B (n_66), .Y (n_72));
  AOI211XL g5999__1617(.A0 (n_73), .A1 (n_62), .B0 (n_61), .C0 (n_60),
       .Y (n_64));
  AOI211XL g6000__2802(.A0 (index[0]), .A1 (n_62), .B0 (n_61), .C0
       (n_60), .Y (n_63));
  AOI21XL g6006__1705(.A0 (n_58), .A1 (n_62), .B0 (n_60), .Y (n_59));
  AOI21XL g6007__5122(.A0 (n_56), .A1 (n_62), .B0 (n_60), .Y (n_57));
  AOI222X1 g5993__8246(.A0 (n_23), .A1 (n_45), .B0 (n_48), .B1 (n_46),
       .C0 (LED[5]), .C1 (n_52), .Y (n_70));
  NOR2XL g6010__7098(.A (n_60), .B (n_62), .Y (n_55));
  NAND2XL g6009__6131(.A (n_62), .B (rst_n), .Y (n_66));
  OAI2BB1X1 g5995__1881(.A0N (n_79), .A1N (n_53), .B0 (LED[1]), .Y
       (n_54));
  BUFX2 g6012(.A (n_112), .Y (n_62));
  NOR2XL g5994__5115(.A (n_39), .B (n_49), .Y (n_52));
  NAND3BXL g6001__7482(.AN (n_51), .B (state[1]), .C (n_69), .Y (n_53));
  NOR2X6 g6014__4733(.A (n_61), .B (n_47), .Y (n_50));
  AOI31X1 g5996__6161(.A0 (LED[9]), .A1 (LED[8]), .A2 (n_43), .B0
       (n_48), .Y (n_49));
  NOR2X4 g6016__9315(.A (n_40), .B (n_44), .Y (n_47));
  OR4X1 g6011__9945(.A (LED[5]), .B (n_46), .C (n_45), .D (n_41), .Y
       (n_69));
  NAND3X4 g6020__2883(.A (n_28), .B (flick), .C (n_37), .Y (n_44));
  NOR2BX1 g6008__2346(.AN (LED[6]), .B (n_38), .Y (n_43));
  OR2X1 g6019__1666(.A (n_42), .B (n_34), .Y (n_56));
  AOI21XL g6021__7410(.A0 (n_4), .A1 (n_73), .B0 (n_36), .Y (n_41));
  CLKAND2X2 g6023__6417(.A (n_35), .B (n_39), .Y (n_40));
  OAI211X1 g6015__5477(.A0 (index[1]), .A1 (n_27), .B0 (LED[10]), .C0
       (LED[7]), .Y (n_38));
  NOR2X6 g6024__2398(.A (n_32), .B (n_31), .Y (n_37));
  INVXL g6035(.A (n_35), .Y (n_36));
  NAND2X4 g6033__5107(.A (n_143), .B (n_13), .Y (n_39));
  AO21X1 g6017__6260(.A0 (n_21), .A1 (n_33), .B0 (n_42), .Y (n_58));
  CLKXOR2X1 g6026__4319(.A (index[3]), .B (n_33), .Y (n_34));
  OR3X1 g6018__8428(.A (index[3]), .B (n_19), .C (n_22), .Y (n_79));
  INVXL g6030(.A (n_60), .Y (n_113));
  NAND2X8 g6032__5526(.A (n_15), .B (n_25), .Y (n_32));
  NAND2XL g6034__6783(.A (rst_n), .B (n_30), .Y (n_60));
  OR4X1 g6027__3680(.A (LED[6]), .B (LED[9]), .C (LED[8]), .D (n_8), .Y
       (n_46));
  OR4X1 g6029__1617(.A (LED[15]), .B (LED[13]), .C (LED[12]), .D
       (n_16), .Y (n_45));
  AND2X2 g6043__1705(.A (n_42), .B (flick), .Y (n_61));
  NAND2X2 g6046__5122(.A (n_9), .B (n_48), .Y (n_28));
  NOR2BX1 g6022__8246(.AN (LED[13]), .B (n_14), .Y (n_27));
  ADDHX1 g6031__7098(.A (index[1]), .B (index[0]), .CO (n_26), .S
       (n_73));
  CLKAND2X6 g6039__6131(.A (state[0]), .B (n_3), .Y (n_25));
  CLKAND2X6 g6041__1881(.A (n_2), .B (n_7), .Y (n_24));
  OR2X1 g6042__5115(.A (index[0]), .B (n_23), .Y (n_33));
  INVXL g6025(.A (n_21), .Y (n_22));
  NOR3X4 g6044__7482(.A (LED[1]), .B (LED[2]), .C (LED[0]), .Y (n_20));
  NAND3BXL g6047__4733(.AN (state[1]), .B (n_51), .C (flick), .Y
       (n_30));
  AND3XL g6048__6161(.A (n_51), .B (n_19), .C (n_18), .Y (n_111));
  NOR3X6 g6045__9315(.A (LED[15]), .B (LED[13]), .C (LED[8]), .Y
       (n_17));
  INVXL g6055(.A (n_15), .Y (n_16));
  NAND4XL g6036__9945(.A (LED[14]), .B (LED[12]), .C (LED[15]), .D
       (LED[11]), .Y (n_14));
  CLKAND2X2 g6052__2883(.A (LED[3]), .B (LED[2]), .Y (n_13));
  NOR2X2 g6053__2346(.A (n_51), .B (state[1]), .Y (n_42));
  NOR2X2 g6057__1666(.A (LED[4]), .B (LED[3]), .Y (n_11));
  NOR2X2 g6050__7410(.A (index[3]), .B (n_0), .Y (n_9));
  INVXL g6054(.A (n_7), .Y (n_8));
  OAI21XL g6028__5477(.A0 (index[1]), .A1 (index[0]), .B0 (index[2]),
       .Y (n_21));
  NOR2X4 g6061__2398(.A (index[1]), .B (n_4), .Y (n_48));
  OR2X1 g6060__5107(.A (index[1]), .B (index[2]), .Y (n_23));
  NOR2X6 g6058__6260(.A (LED[10]), .B (LED[7]), .Y (n_7));
  NOR2X6 g6056__4319(.A (LED[6]), .B (LED[5]), .Y (n_3));
  NOR2X4 g6051__8428(.A (LED[12]), .B (LED[9]), .Y (n_2));
  NOR2X4 g6059__5526(.A (LED[14]), .B (LED[11]), .Y (n_15));
  INVXL g6065(.A (state[1]), .Y (n_19));
  INVXL g6067(.A (rst_n), .Y (n_18));
  CLKINVX16 g6119(.A (n_50), .Y (n_112));
  NAND2X8 g6121__6783(.A (n_17), .B (n_24), .Y (n_31));
  NAND2X4 g6123__3680(.A (n_11), .B (n_20), .Y (n_35));
  DFFRX4 \state_reg[0] (.RN (n_55), .CK (clk), .D (next_state[0]), .Q
       (state[0]), .QN (n_51));
  DFFSRX1 \index_reg[0] (.RN (n_63), .SN (n_75), .CK (clk), .D
       (next_index[0]), .Q (index[0]), .QN (n_0));
  DFFSRX2 \index_reg[2] (.RN (n_59), .SN (n_68), .CK (clk), .D
       (next_index[2]), .Q (index[2]), .QN (n_4));
  AND3X6 g6153(.A (LED[4]), .B (LED[1]), .C (LED[0]), .Y (n_143));
endmodule


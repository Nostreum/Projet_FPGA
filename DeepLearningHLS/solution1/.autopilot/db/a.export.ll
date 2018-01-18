; ModuleID = 'C:/Users/Nostreum/Desktop/FPGA2/DeepLearningHLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1952]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@hls_KD_KD_cordic_KD_1 = internal unnamed_addr constant [142 x i8] c"hls::cordic::addsub<0, 0, ap_fixed<34, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<34, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_uint<1> >.region\00"
@hls_KD_KD_cordic_KD = internal unnamed_addr constant [135 x i8] c"hls::cordic::addsub<0, 0, ap_fixed<34, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<34, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, bool>.region\00"
@hls_cordic_hyperb_t = internal unnamed_addr constant [170 x i124] [i124 -9585198247670726853851719693845799963, i124 5432029760592378283246879852463189417, i124 2672433390525286130177267809822890185, i124 1330962829239154633210310286949909797, i124 1330962829239154633210310286949909797, i124 664830470448448415199587086217459572, i124 332334046121132908790187665441141962, i124 166156879998514493899734945083667493, i124 166156879998514493899734945083667493, i124 83077172290625922920208780593479801, i124 41538427687174523449170950767302673, i124 20769194036489964598576567905277614, i124 20769194036489964598576567905277614, i124 10384594542363132839830019691527620, i124 5192296961696501258327824385821068, i124 2596148442162622672113444382627483, i124 2596148442162622672113444382627483, i124 1298074216245608003555009360063302, i124 649037107518341090281340227696035, i124 324518553683612681361979232258769, i124 324518553683612681361979232258769, i124 162259276832361607713601058260040, i124 81129638415000212236031578219042, i124 40564819207352532165424502083857, i124 40564819207352532165424502083857, i124 20282409603657819338638491158664, i124 10141204801826603826310030312516, i124 5070602400913013682778863395362, i124 5070602400913013682778863395362, i124 2535301200456470812592412732177, i124 1267650600228230902696578995544, i124 633825300114114888398336076458, i124 633825300114114888398336076458, i124 316912650057057373830423860565, i124 158456325028528678119118908074, i124 79228162514264337960047826261, i124 79228162514264337960047826261, i124 39614081257132168842584959658, i124 19807040628566084404112610645, i124 9903520314283042199908821674, i124 9903520314283042199908821674, i124 4951760157141521099685975381, i124 2475880078570760549809433258, i124 1237940039285380274900522325, i124 1237940039285380274900522325, i124 618970019642690137449736874, i124 309485009821345068724802901, i124 154742504910672534362393258, i124 154742504910672534362393258, i124 77371252455336267181195605, i124 38685626227668133590597674, i124 19342813113834066795298821, i124 19342813113834066795298821, i124 9671406556917033397649408, i124 4835703278458516698824704, i124 2417851639229258349412351, i124 2417851639229258349412351, i124 1208925819614629174706175, i124 604462909807314587353087, i124 302231454903657293676543, i124 302231454903657293676543, i124 151115727451828646838271, i124 75557863725914323419135, i124 37778931862957161709567, i124 37778931862957161709567, i124 18889465931478580854783, i124 9444732965739290427391, i124 4722366482869645213695, i124 4722366482869645213695, i124 2361183241434822606847, i124 1180591620717411303423, i124 590295810358705651711, i124 590295810358705651711, i124 295147905179352825855, i124 147573952589676412927, i124 73786976294838206463, i124 73786976294838206463, i124 36893488147419103231, i124 18446744073709551615, i124 9223372036854775807, i124 9223372036854775807, i124 4611686018427387903, i124 2305843009213693951, i124 1152921504606846975, i124 1152921504606846975, i124 576460752303423487, i124 288230376151711743, i124 144115188075855871, i124 144115188075855871, i124 72057594037927935, i124 36028797018963967, i124 18014398509481983, i124 18014398509481983, i124 9007199254740991, i124 4503599627370495, i124 2251799813685247, i124 2251799813685247, i124 1125899906842623, i124 562949953421311, i124 281474976710655, i124 281474976710655, i124 140737488355327, i124 70368744177663, i124 35184372088831, i124 35184372088831, i124 17592186044415, i124 8796093022207, i124 4398046511103, i124 4398046511103, i124 2199023255551, i124 1099511627775, i124 549755813887, i124 549755813887, i124 274877906943, i124 137438953471, i124 68719476735, i124 68719476735, i124 34359738367, i124 17179869183, i124 8589934591, i124 8589934591, i124 4294967295, i124 2147483647, i124 1073741823, i124 1073741823, i124 536870911, i124 268435455, i124 134217727, i124 134217727, i124 67108863, i124 33554431, i124 16777215, i124 16777215, i124 8388607, i124 4194303, i124 2097151, i124 2097151, i124 1048575, i124 524287, i124 262143, i124 262143, i124 131071, i124 65535, i124 32767, i124 32767, i124 16383, i124 8191, i124 4095, i124 4095, i124 2047, i124 1023, i124 511, i124 511, i124 255, i124 127, i124 63, i124 63, i124 31, i124 15, i124 7, i124 7, i124 3, i124 1, i124 0, i124 0, i124 0, i124 0, i124 0, i124 0, i124 0]
@calculateLayer4_str = internal unnamed_addr constant [16 x i8] c"calculateLayer4\00"
@p_str2 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@p_str1804 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [2 x i8] c"I\00", align 1

define internal fastcc { float, float } @sinh_cosh_range_redu(float %t_in) readnone {
ap_fixed_base.exit_ifconv:
  %t_in_read = call float @_ssdm_op_Read.ap_auto.float(float %t_in)
  %p_Val2_3 = bitcast float %t_in_read to i32
  %p_Result_25 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_3, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_3, i32 23, i32 30)
  %loc_V_1 = trunc i32 %p_Val2_3 to i23
  %tmp_i = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1)
  %p_Result_s = zext i24 %tmp_i to i42
  %tmp_i_i_cast = zext i8 %loc_V to i9
  %tmp_i_i = add i9 -127, %tmp_i_i_cast
  %tmp_27_i = icmp sgt i9 %tmp_i_i, 6
  %tmp_28_i = icmp slt i9 %tmp_i_i, -12
  %tmp_29_i = add i9 -115, %tmp_i_i_cast
  %p_tmp_29_i_cast = select i1 %tmp_27_i, i9 18, i9 0
  %tmp = or i1 %tmp_27_i, %tmp_28_i
  %left_shift = select i1 %tmp, i9 %p_tmp_29_i_cast, i9 %tmp_29_i
  %left_shift_cast = sext i9 %left_shift to i32
  %tmp_30_i = zext i32 %left_shift_cast to i42
  %p_Val2_30 = shl i42 %p_Result_s, %tmp_30_i
  %p_Val2_8 = call fastcc i77 @big_mult_v3small(i42 %p_Val2_30)
  %ret_V = call i8 @_ssdm_op_PartSelect.i8.i77.i32.i32(i77 %p_Val2_8, i32 69, i32 76)
  %tmp_32_i = zext i8 %ret_V to i32
  %tmp_33_i = sitofp i32 %tmp_32_i to double
  %tmp_7 = bitcast double %tmp_33_i to i64
  %p_Val2_9 = select i1 %tmp_27_i, i64 4638707616191610880, i64 %tmp_7
  %loc_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_9, i32 52, i32 62) nounwind
  %loc_V_3 = trunc i64 %p_Val2_9 to i52
  %p_Result_30 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_3) nounwind
  %tmp_i_i_i = zext i53 %p_Result_30 to i112
  %tmp_i_i_i_i_cast2 = zext i11 %loc_V_2 to i12
  %sh_assign_2 = add i12 -1023, %tmp_i_i_i_i_cast2
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign_2, i32 11)
  %tmp_i_i_i_35 = sub i11 1023, %loc_V_2
  %tmp_i_i_i_cast = sext i11 %tmp_i_i_i_35 to i12
  %sh_assign_3 = select i1 %isNeg, i12 %tmp_i_i_i_cast, i12 %sh_assign_2
  %sh_assign_3_cast = sext i12 %sh_assign_3 to i32
  %tmp_43_i_i_i = zext i32 %sh_assign_3_cast to i112
  %tmp_43_i_i_i_cast = zext i32 %sh_assign_3_cast to i53
  %tmp_44_i_i_i = lshr i53 %p_Result_30, %tmp_43_i_i_i_cast
  %tmp_45_i_i_i = shl i112 %tmp_i_i_i, %tmp_43_i_i_i
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_44_i_i_i, i32 52)
  %tmp_10 = zext i1 %tmp_28 to i8
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i112.i32.i32(i112 %tmp_45_i_i_i, i32 52, i32 59)
  %result_V = select i1 %isNeg, i8 %tmp_10, i8 %tmp_12
  %p_Val2_31 = call i35 @_ssdm_op_PartSelect.i35.i77.i32.i32(i77 %p_Val2_8, i32 34, i32 68)
  %p_Val2_s = call fastcc i70 @big_mult_v3small.1(i35 %p_Val2_31)
  %ssdm_int_V_write_ass = call i32 @_ssdm_op_PartSelect.i32.i70.i32.i32(i70 %p_Val2_s, i32 38, i32 69)
  %tmp_2 = zext i32 %ssdm_int_V_write_ass to i35
  br label %0

; <label>:0                                       ; preds = %"operator>>.exit92.i", %ap_fixed_base.exit_ifconv
  %p_022_in = phi i35 [ %tmp_2, %ap_fixed_base.exit_ifconv ], [ %r_V, %"operator>>.exit92.i" ]
  %p_Val2_26 = phi i34 [ 0, %ap_fixed_base.exit_ifconv ], [ %ty_V, %"operator>>.exit92.i" ]
  %p_Val2_1 = phi i34 [ 5186321408, %ap_fixed_base.exit_ifconv ], [ %tx_V, %"operator>>.exit92.i" ]
  %k1_0_i = phi i6 [ 0, %ap_fixed_base.exit_ifconv ], [ %k1, %"operator>>.exit92.i" ]
  %k1_0_i_cast1 = zext i6 %k1_0_i to i32
  %k1_0_i_cast = zext i6 %k1_0_i to i7
  %exitcond_i = icmp eq i6 %k1_0_i, -22
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 42, i64 42, i64 42)
  %k1 = add i6 %k1_0_i, 1
  br i1 %exitcond_i, label %"cordic_hyperb_v1<34, 34, 0, 0, 0, ap_fixed<34, 2, 5, 3, 0> >.exit_ifconv", label %"operator>>.exit92.i"

"operator>>.exit92.i":                            ; preds = %0
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %k1_0_i, i32 2, i32 5)
  %tmp_cast = zext i4 %p_lshr_f_cast to i7
  %tmp_8 = sub i7 %k1_0_i_cast, %tmp_cast
  %k = add i7 1, %tmp_8
  %d_V = call i1 @_ssdm_op_BitSelect.i1.i35.i32(i35 %p_022_in, i32 33)
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %k, i32 6)
  %tmp_s = xor i7 %tmp_8, -1
  %sh_assign_1 = select i1 %isNeg_1, i7 %tmp_s, i7 %k
  %sh_assign_1_cast = sext i7 %sh_assign_1 to i32
  %tmp_1 = zext i32 %sh_assign_1_cast to i34
  %tmp_4 = ashr i34 %p_Val2_26, %tmp_1
  %tmp_3 = shl i34 %p_Val2_26, %tmp_1
  %y_s_V = select i1 %isNeg_1, i34 %tmp_3, i34 %tmp_4
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([135 x i8]* @hls_KD_KD_cordic_KD)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str1804) nounwind
  %p_Val2_i = sub i34 0, %y_s_V
  %p_Val2_4 = select i1 %d_V, i34 %p_Val2_i, i34 %y_s_V
  %tx_V = add i34 %p_Val2_1, %p_Val2_4
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([135 x i8]* @hls_KD_KD_cordic_KD, i32 %rbegin)
  %tmp_9 = ashr i34 %p_Val2_1, %tmp_1
  %tmp_5 = shl i34 %p_Val2_1, %tmp_1
  %x_s_V = select i1 %isNeg_1, i34 %tmp_5, i34 %tmp_9
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([135 x i8]* @hls_KD_KD_cordic_KD)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str1804) nounwind
  %p_Val2_i4 = sub i34 0, %x_s_V
  %p_Val2_6 = select i1 %d_V, i34 %p_Val2_i4, i34 %x_s_V
  %ty_V = add i34 %p_Val2_26, %p_Val2_6
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([135 x i8]* @hls_KD_KD_cordic_KD, i32 %rbegin2)
  %hls_cordic_hyperb_t = getelementptr [170 x i124]* @hls_cordic_hyperb_t, i32 0, i32 %k1_0_i_cast1
  %p_Val2_27 = load i124* %hls_cordic_hyperb_t, align 16
  %tmp_23 = call i32 @_ssdm_op_PartSelect.i32.i124.i32.i32(i124 %p_Val2_27, i32 92, i32 123)
  %p_4_cast = zext i32 %tmp_23 to i33
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([142 x i8]* @hls_KD_KD_cordic_KD_1)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str1804) nounwind
  %p_Val2_i1 = sub i33 0, %p_4_cast
  %p_Val2_28 = select i1 %d_V, i33 %p_4_cast, i33 %p_Val2_i1
  %tmp_34 = trunc i35 %p_022_in to i34
  %tmp_i_36 = sext i34 %tmp_34 to i35
  %tmp_37_i = sext i33 %p_Val2_28 to i35
  %r_V = add nsw i35 %tmp_i_36, %tmp_37_i
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([142 x i8]* @hls_KD_KD_cordic_KD_1, i32 %rbegin1)
  br label %0

"cordic_hyperb_v1<34, 34, 0, 0, 0, ap_fixed<34, 2, 5, 3, 0> >.exit_ifconv": ; preds = %0
  %tmp_6 = icmp eq i34 %p_Val2_1, 0
  %dp_s = sext i34 %p_Val2_1 to i64
  %dp_1 = sitofp i64 %dp_s to float
  %res_V_3 = bitcast float %dp_1 to i32
  %exp_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %res_V_3, i32 23, i32 30)
  %exp_V_4 = add i8 -32, %exp_V
  %p_Result_31 = call i32 @llvm.part.set.i32.i8(i32 %res_V_3, i8 %exp_V_4, i32 23, i32 30) nounwind
  %dp = bitcast i32 %p_Result_31 to float
  %x = select i1 %tmp_6, float 0.000000e+00, float %dp
  %tmp_11 = icmp eq i34 %p_Val2_26, 0
  %dp_4 = sext i34 %p_Val2_26 to i64
  %dp_3 = sitofp i64 %dp_4 to float
  %res_V_4 = bitcast float %dp_3 to i32
  %exp_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %res_V_4, i32 23, i32 30)
  %exp_V_5 = add i8 -32, %exp_V_2
  %p_Result_32 = call i32 @llvm.part.set.i32.i8(i32 %res_V_4, i8 %exp_V_5, i32 23, i32 30) nounwind
  %dp_2 = bitcast i32 %p_Result_32 to float
  %y = select i1 %tmp_11, float 0.000000e+00, float %dp_2
  %tmp_29 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %result_V, i32 7)
  %tmp_13 = add i8 126, %result_V
  %two_p_plus_s_exp_V = select i1 %tmp_29, i8 -1, i8 %tmp_13
  %two_p_minus_s_exp_V = sub i8 126, %result_V
  %p_Result_33 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i8.i23(i1 false, i8 %two_p_plus_s_exp_V, i23 0)
  %two_p_plus_k = bitcast i32 %p_Result_33 to float
  %p_Result_34 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i8.i23(i1 false, i8 %two_p_minus_s_exp_V, i23 0)
  %two_p_minus_k = bitcast i32 %p_Result_34 to float
  %sinhkln2 = fsub float %two_p_plus_k, %two_p_minus_k
  %coshkln2 = fadd float %two_p_plus_k, %two_p_minus_k
  %tmp_14 = icmp eq i8 %result_V, 0
  %tmp_15 = fmul float %coshkln2, %y
  %tmp_16 = fmul float %sinhkln2, %x
  %tmp_17 = fadd float %tmp_15, %tmp_16
  %s_out_tmp = select i1 %tmp_14, float %y, float %tmp_17
  %tmp_18 = fmul float %coshkln2, %x
  %tmp_19 = fmul float %sinhkln2, %y
  %tmp_20 = fadd float %tmp_18, %tmp_19
  %c_out_tmp = select i1 %tmp_14, float %x, float %tmp_20
  %p_Val2_20 = bitcast float %s_out_tmp to i32
  %p_Val2_21 = bitcast float %c_out_tmp to i32
  %tmp_30 = trunc i32 %p_Val2_20 to i31
  %p_Result_35 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %p_Result_25, i31 %tmp_30)
  %ret_i_i = bitcast i32 %p_Result_35 to float
  %tmp_31 = trunc i32 %p_Val2_21 to i31
  %p_Result_36 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 false, i31 %tmp_31)
  %ret_i_i1 = bitcast i32 %p_Result_36 to float
  %tmp_21 = icmp eq i8 %loc_V, -1
  %p_Result_37 = call i32 @_ssdm_op_BitConcatenate.i32.i9.i23(i9 255, i23 %loc_V_1)
  %ret_i_i2 = bitcast i32 %p_Result_37 to float
  %tmp_22 = icmp ult i8 %loc_V, 116
  %t_in_tmp_s = select i1 %tmp_22, float %t_in_read, float %ret_i_i
  %p_tmp_s = select i1 %tmp_22, float 1.000000e+00, float %ret_i_i1
  %s_out_write_assign = select i1 %tmp_21, float %t_in_read, float %t_in_tmp_s
  %c_out_write_assign = select i1 %tmp_21, float %ret_i_i2, float %p_tmp_s
  %mrv = insertvalue { float, float } undef, float %s_out_write_assign, 0
  %mrv_1 = insertvalue { float, float } %mrv, float %c_out_write_assign, 1
  ret { float, float } %mrv_1
}

declare i77 @llvm.part.set.i77.i43(i77, i43, i32, i32) nounwind readnone

declare i70 @llvm.part.set.i70.i36(i70, i36, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i8(i32, i8, i32, i32) nounwind readnone

declare i77 @llvm.part.select.i77(i77, i32, i32) nounwind readnone

declare i70 @llvm.part.select.i70(i70, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i62 @llvm.part.select.i62(i62, i32, i32) nounwind readnone

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i52 @llvm.part.select.i52(i52, i32, i32) nounwind readnone

declare i42 @llvm.part.select.i42(i42, i32, i32) nounwind readnone

declare i35 @llvm.part.select.i35(i35, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i124 @llvm.part.select.i124(i124, i32, i32) nounwind readnone

declare i112 @llvm.part.select.i112(i112, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @calculateLayer4([1250 x i16]* %Layer3_Neurons_CPU_hls, [1250 x i16]* %Layer3_Weights_CPU_hls, [100 x i16]* %Layer4_Neurons_CPU_hls) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([1250 x i16]* %Layer3_Neurons_CPU_hls) nounwind, !map !1205
  call void (...)* @_ssdm_op_SpecBitsMap([1250 x i16]* %Layer3_Weights_CPU_hls) nounwind, !map !1211
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i16]* %Layer4_Neurons_CPU_hls) nounwind, !map !1215
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @calculateLayer4_str) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %4 ]
  %phi_mul1 = phi i12 [ 0, %0 ], [ %next_mul2, %4 ]
  %next_mul2 = add i12 %phi_mul1, 1251
  %exitcond3 = icmp eq i7 %i, -28
  %i_1 = add i7 %i, 1
  br i1 %exitcond3, label %5, label %2

; <label>:2                                       ; preds = %1
  %i_cast1 = zext i7 %i to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([2 x i8]* @p_str) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([2 x i8]* @p_str) nounwind
  %tmp_cast = sext i12 %phi_mul1 to i32
  %Layer3_Weights_CPU_h = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %tmp_cast
  %somme = load i16* %Layer3_Weights_CPU_h, align 2
  %Layer4_Neurons_CPU_h = getelementptr [100 x i16]* %Layer4_Neurons_CPU_hls, i32 0, i32 %i_cast1
  br label %3

; <label>:3                                       ; preds = %ifFalse, %2
  %somme1 = phi i16 [ %somme, %2 ], [ %somme_3_4_4, %ifFalse ]
  %j = phi i6 [ 0, %2 ], [ %j_1, %ifFalse ]
  %phi_mul = phi i11 [ 0, %2 ], [ %next_mul, %ifFalse ]
  %exitcond2 = icmp eq i6 %j, -14
  %j_1 = add i6 %j, 1
  br i1 %exitcond2, label %4, label %ifBlock

ifBlock:                                          ; preds = %3
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([2 x i8]* @p_str2) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([2 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %next_mul = add i11 %phi_mul, 25
  %tmp_35_cast1 = zext i11 %phi_mul to i32
  %tmp1 = add i11 %phi_mul, 1
  %tmp1_cast = zext i11 %tmp1 to i12
  %sum5 = add i12 %tmp1_cast, %phi_mul1
  %sum5_cast = sext i12 %sum5 to i32
  %Layer3_Weights_CPU_h_1 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_cast
  %Layer3_Weights_CPU_h_2 = load i16* %Layer3_Weights_CPU_h_1, align 2
  %tmp_115_cast = zext i16 %Layer3_Weights_CPU_h_2 to i24
  %Layer3_Neurons_CPU_h = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %tmp_35_cast1
  %Layer3_Neurons_CPU_h_1 = load i16* %Layer3_Neurons_CPU_h, align 2
  %tmp_118_cast = zext i16 %Layer3_Neurons_CPU_h_1 to i24
  %tmp_24 = mul i24 %tmp_118_cast, %tmp_115_cast
  %tmp_25 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_24, i32 8, i32 23)
  %sum5_0_1 = add i12 %sum5, 1
  %sum5_0_1_cast = sext i12 %sum5_0_1 to i32
  %Layer3_Weights_CPU_h_3 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_0_1_cast
  %Layer3_Weights_CPU_h_4 = load i16* %Layer3_Weights_CPU_h_3, align 2
  %tmp_115_0_1_cast = zext i16 %Layer3_Weights_CPU_h_4 to i24
  %sum_0_1_cast = zext i11 %tmp1 to i32
  %Layer3_Neurons_CPU_h_2 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_0_1_cast
  %Layer3_Neurons_CPU_h_3 = load i16* %Layer3_Neurons_CPU_h_2, align 2
  %tmp_118_0_1_cast = zext i16 %Layer3_Neurons_CPU_h_3 to i24
  %tmp_119_0_1 = mul i24 %tmp_118_0_1_cast, %tmp_115_0_1_cast
  %tmp_121_0_1 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_0_1, i32 8, i32 23)
  %sum5_0_2 = add i12 %sum5, 2
  %sum5_0_2_cast = sext i12 %sum5_0_2 to i32
  %Layer3_Weights_CPU_h_5 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_0_2_cast
  %Layer3_Weights_CPU_h_6 = load i16* %Layer3_Weights_CPU_h_5, align 2
  %tmp_115_0_2_cast = zext i16 %Layer3_Weights_CPU_h_6 to i24
  %sum_0_2 = add i11 %phi_mul, 2
  %sum_0_2_cast = zext i11 %sum_0_2 to i32
  %Layer3_Neurons_CPU_h_4 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_0_2_cast
  %Layer3_Neurons_CPU_h_5 = load i16* %Layer3_Neurons_CPU_h_4, align 2
  %tmp_118_0_2_cast = zext i16 %Layer3_Neurons_CPU_h_5 to i24
  %tmp_119_0_2 = mul i24 %tmp_118_0_2_cast, %tmp_115_0_2_cast
  %tmp_121_0_2 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_0_2, i32 8, i32 23)
  %sum5_0_3 = add i12 %sum5, 3
  %sum5_0_3_cast = sext i12 %sum5_0_3 to i32
  %Layer3_Weights_CPU_h_7 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_0_3_cast
  %Layer3_Weights_CPU_h_8 = load i16* %Layer3_Weights_CPU_h_7, align 2
  %tmp_115_0_3_cast = zext i16 %Layer3_Weights_CPU_h_8 to i24
  %sum_0_3 = add i11 %phi_mul, 3
  %sum_0_3_cast = zext i11 %sum_0_3 to i32
  %Layer3_Neurons_CPU_h_6 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_0_3_cast
  %Layer3_Neurons_CPU_h_7 = load i16* %Layer3_Neurons_CPU_h_6, align 2
  %tmp_118_0_3_cast = zext i16 %Layer3_Neurons_CPU_h_7 to i24
  %tmp_119_0_3 = mul i24 %tmp_118_0_3_cast, %tmp_115_0_3_cast
  %tmp_121_0_3 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_0_3, i32 8, i32 23)
  %sum5_0_4 = add i12 %sum5, 4
  %sum5_0_4_cast = sext i12 %sum5_0_4 to i32
  %Layer3_Weights_CPU_h_9 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_0_4_cast
  %Layer3_Weights_CPU_h_10 = load i16* %Layer3_Weights_CPU_h_9, align 2
  %tmp_115_0_4_cast = zext i16 %Layer3_Weights_CPU_h_10 to i24
  %sum_0_4 = add i11 %phi_mul, 4
  %sum_0_4_cast = zext i11 %sum_0_4 to i32
  %Layer3_Neurons_CPU_h_8 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_0_4_cast
  %Layer3_Neurons_CPU_h_9 = load i16* %Layer3_Neurons_CPU_h_8, align 2
  %tmp_118_0_4_cast = zext i16 %Layer3_Neurons_CPU_h_9 to i24
  %tmp_119_0_4 = mul i24 %tmp_118_0_4_cast, %tmp_115_0_4_cast
  %tmp_121_0_4 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_0_4, i32 8, i32 23)
  %sum5_1 = add i12 %sum5, 5
  %sum5_1_cast = sext i12 %sum5_1 to i32
  %Layer3_Weights_CPU_h_11 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_1_cast
  %Layer3_Weights_CPU_h_12 = load i16* %Layer3_Weights_CPU_h_11, align 2
  %tmp_115_1_cast = zext i16 %Layer3_Weights_CPU_h_12 to i24
  %sum_1 = add i11 %phi_mul, 5
  %sum_1_cast = zext i11 %sum_1 to i32
  %Layer3_Neurons_CPU_h_10 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_1_cast
  %Layer3_Neurons_CPU_h_11 = load i16* %Layer3_Neurons_CPU_h_10, align 2
  %tmp_118_1_cast = zext i16 %Layer3_Neurons_CPU_h_11 to i24
  %tmp_119_1 = mul i24 %tmp_118_1_cast, %tmp_115_1_cast
  %tmp_121_1 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_1, i32 8, i32 23)
  %sum5_1_1 = add i12 %sum5, 6
  %sum5_1_1_cast = sext i12 %sum5_1_1 to i32
  %Layer3_Weights_CPU_h_13 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_1_1_cast
  %Layer3_Weights_CPU_h_14 = load i16* %Layer3_Weights_CPU_h_13, align 2
  %tmp_115_1_1_cast = zext i16 %Layer3_Weights_CPU_h_14 to i24
  %sum_1_1 = add i11 %phi_mul, 6
  %sum_1_1_cast = zext i11 %sum_1_1 to i32
  %Layer3_Neurons_CPU_h_12 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_1_1_cast
  %Layer3_Neurons_CPU_h_13 = load i16* %Layer3_Neurons_CPU_h_12, align 2
  %tmp_118_1_1_cast = zext i16 %Layer3_Neurons_CPU_h_13 to i24
  %tmp_119_1_1 = mul i24 %tmp_118_1_1_cast, %tmp_115_1_1_cast
  %tmp_121_1_1 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_1_1, i32 8, i32 23)
  %sum5_1_2 = add i12 %sum5, 7
  %sum5_1_2_cast = sext i12 %sum5_1_2 to i32
  %Layer3_Weights_CPU_h_15 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_1_2_cast
  %Layer3_Weights_CPU_h_16 = load i16* %Layer3_Weights_CPU_h_15, align 2
  %tmp_115_1_2_cast = zext i16 %Layer3_Weights_CPU_h_16 to i24
  %sum_1_2 = add i11 %phi_mul, 7
  %sum_1_2_cast = zext i11 %sum_1_2 to i32
  %Layer3_Neurons_CPU_h_14 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_1_2_cast
  %Layer3_Neurons_CPU_h_15 = load i16* %Layer3_Neurons_CPU_h_14, align 2
  %tmp_118_1_2_cast = zext i16 %Layer3_Neurons_CPU_h_15 to i24
  %tmp_119_1_2 = mul i24 %tmp_118_1_2_cast, %tmp_115_1_2_cast
  %tmp_121_1_2 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_1_2, i32 8, i32 23)
  %sum5_1_3 = add i12 %sum5, 8
  %sum5_1_3_cast = sext i12 %sum5_1_3 to i32
  %Layer3_Weights_CPU_h_17 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_1_3_cast
  %Layer3_Weights_CPU_h_18 = load i16* %Layer3_Weights_CPU_h_17, align 2
  %tmp_115_1_3_cast = zext i16 %Layer3_Weights_CPU_h_18 to i24
  %sum_1_3 = add i11 %phi_mul, 8
  %sum_1_3_cast = zext i11 %sum_1_3 to i32
  %Layer3_Neurons_CPU_h_16 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_1_3_cast
  %Layer3_Neurons_CPU_h_17 = load i16* %Layer3_Neurons_CPU_h_16, align 2
  %tmp_118_1_3_cast = zext i16 %Layer3_Neurons_CPU_h_17 to i24
  %tmp_119_1_3 = mul i24 %tmp_118_1_3_cast, %tmp_115_1_3_cast
  %tmp_121_1_3 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_1_3, i32 8, i32 23)
  %sum5_1_4 = add i12 %sum5, 9
  %sum5_1_4_cast = sext i12 %sum5_1_4 to i32
  %Layer3_Weights_CPU_h_19 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_1_4_cast
  %Layer3_Weights_CPU_h_20 = load i16* %Layer3_Weights_CPU_h_19, align 2
  %tmp_115_1_4_cast = zext i16 %Layer3_Weights_CPU_h_20 to i24
  %sum_1_4 = add i11 %phi_mul, 9
  %sum_1_4_cast = zext i11 %sum_1_4 to i32
  %Layer3_Neurons_CPU_h_18 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_1_4_cast
  %Layer3_Neurons_CPU_h_19 = load i16* %Layer3_Neurons_CPU_h_18, align 2
  %tmp_118_1_4_cast = zext i16 %Layer3_Neurons_CPU_h_19 to i24
  %tmp_119_1_4 = mul i24 %tmp_118_1_4_cast, %tmp_115_1_4_cast
  %tmp_121_1_4 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_1_4, i32 8, i32 23)
  %sum5_2 = add i12 %sum5, 10
  %sum5_2_cast = sext i12 %sum5_2 to i32
  %Layer3_Weights_CPU_h_21 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_2_cast
  %Layer3_Weights_CPU_h_22 = load i16* %Layer3_Weights_CPU_h_21, align 2
  %tmp_115_2_cast = zext i16 %Layer3_Weights_CPU_h_22 to i24
  %sum_2 = add i11 %phi_mul, 10
  %sum_2_cast = zext i11 %sum_2 to i32
  %Layer3_Neurons_CPU_h_20 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_2_cast
  %Layer3_Neurons_CPU_h_21 = load i16* %Layer3_Neurons_CPU_h_20, align 2
  %tmp_118_2_cast = zext i16 %Layer3_Neurons_CPU_h_21 to i24
  %tmp_119_2 = mul i24 %tmp_118_2_cast, %tmp_115_2_cast
  %tmp_121_2 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_2, i32 8, i32 23)
  %sum5_2_1 = add i12 %sum5, 11
  %sum5_2_1_cast = sext i12 %sum5_2_1 to i32
  %Layer3_Weights_CPU_h_23 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_2_1_cast
  %Layer3_Weights_CPU_h_24 = load i16* %Layer3_Weights_CPU_h_23, align 2
  %tmp_115_2_1_cast = zext i16 %Layer3_Weights_CPU_h_24 to i24
  %sum_2_1 = add i11 %phi_mul, 11
  %sum_2_1_cast = zext i11 %sum_2_1 to i32
  %Layer3_Neurons_CPU_h_22 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_2_1_cast
  %Layer3_Neurons_CPU_h_23 = load i16* %Layer3_Neurons_CPU_h_22, align 2
  %tmp_118_2_1_cast = zext i16 %Layer3_Neurons_CPU_h_23 to i24
  %tmp_119_2_1 = mul i24 %tmp_118_2_1_cast, %tmp_115_2_1_cast
  %tmp_121_2_1 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_2_1, i32 8, i32 23)
  %sum5_2_2 = add i12 %sum5, 12
  %sum5_2_2_cast = sext i12 %sum5_2_2 to i32
  %Layer3_Weights_CPU_h_25 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_2_2_cast
  %Layer3_Weights_CPU_h_26 = load i16* %Layer3_Weights_CPU_h_25, align 2
  %tmp_115_2_2_cast = zext i16 %Layer3_Weights_CPU_h_26 to i24
  %sum_2_2 = add i11 %phi_mul, 12
  %sum_2_2_cast = zext i11 %sum_2_2 to i32
  %Layer3_Neurons_CPU_h_24 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_2_2_cast
  %Layer3_Neurons_CPU_h_25 = load i16* %Layer3_Neurons_CPU_h_24, align 2
  %tmp_118_2_2_cast = zext i16 %Layer3_Neurons_CPU_h_25 to i24
  %tmp_119_2_2 = mul i24 %tmp_118_2_2_cast, %tmp_115_2_2_cast
  %tmp_121_2_2 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_2_2, i32 8, i32 23)
  %sum5_2_3 = add i12 %sum5, 13
  %sum5_2_3_cast = sext i12 %sum5_2_3 to i32
  %Layer3_Weights_CPU_h_27 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_2_3_cast
  %Layer3_Weights_CPU_h_28 = load i16* %Layer3_Weights_CPU_h_27, align 2
  %tmp_115_2_3_cast = zext i16 %Layer3_Weights_CPU_h_28 to i24
  %sum_2_3 = add i11 %phi_mul, 13
  %sum_2_3_cast = zext i11 %sum_2_3 to i32
  %Layer3_Neurons_CPU_h_26 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_2_3_cast
  %Layer3_Neurons_CPU_h_27 = load i16* %Layer3_Neurons_CPU_h_26, align 2
  %tmp_118_2_3_cast = zext i16 %Layer3_Neurons_CPU_h_27 to i24
  %tmp_119_2_3 = mul i24 %tmp_118_2_3_cast, %tmp_115_2_3_cast
  %tmp_121_2_3 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_2_3, i32 8, i32 23)
  %sum5_2_4 = add i12 %sum5, 14
  %sum5_2_4_cast = sext i12 %sum5_2_4 to i32
  %Layer3_Weights_CPU_h_29 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_2_4_cast
  %Layer3_Weights_CPU_h_30 = load i16* %Layer3_Weights_CPU_h_29, align 2
  %tmp_115_2_4_cast = zext i16 %Layer3_Weights_CPU_h_30 to i24
  %sum_2_4 = add i11 %phi_mul, 14
  %sum_2_4_cast = zext i11 %sum_2_4 to i32
  %Layer3_Neurons_CPU_h_28 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_2_4_cast
  %Layer3_Neurons_CPU_h_29 = load i16* %Layer3_Neurons_CPU_h_28, align 2
  %tmp_118_2_4_cast = zext i16 %Layer3_Neurons_CPU_h_29 to i24
  %tmp_119_2_4 = mul i24 %tmp_118_2_4_cast, %tmp_115_2_4_cast
  %tmp_121_2_4 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_2_4, i32 8, i32 23)
  %sum5_3 = add i12 %sum5, 15
  %sum5_3_cast = sext i12 %sum5_3 to i32
  %Layer3_Weights_CPU_h_31 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_3_cast
  %Layer3_Weights_CPU_h_32 = load i16* %Layer3_Weights_CPU_h_31, align 2
  %tmp_115_3_cast = zext i16 %Layer3_Weights_CPU_h_32 to i24
  %sum_3 = add i11 %phi_mul, 15
  %sum_3_cast = zext i11 %sum_3 to i32
  %Layer3_Neurons_CPU_h_30 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_3_cast
  %Layer3_Neurons_CPU_h_31 = load i16* %Layer3_Neurons_CPU_h_30, align 2
  %tmp_118_3_cast = zext i16 %Layer3_Neurons_CPU_h_31 to i24
  %tmp_119_3 = mul i24 %tmp_118_3_cast, %tmp_115_3_cast
  %tmp_121_3 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_3, i32 8, i32 23)
  %sum5_3_1 = add i12 %sum5, 16
  %sum5_3_1_cast = sext i12 %sum5_3_1 to i32
  %Layer3_Weights_CPU_h_33 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_3_1_cast
  %Layer3_Weights_CPU_h_34 = load i16* %Layer3_Weights_CPU_h_33, align 2
  %tmp_115_3_1_cast = zext i16 %Layer3_Weights_CPU_h_34 to i24
  %sum_3_1 = add i11 %phi_mul, 16
  %sum_3_1_cast = zext i11 %sum_3_1 to i32
  %Layer3_Neurons_CPU_h_32 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_3_1_cast
  %Layer3_Neurons_CPU_h_33 = load i16* %Layer3_Neurons_CPU_h_32, align 2
  %tmp_118_3_1_cast = zext i16 %Layer3_Neurons_CPU_h_33 to i24
  %tmp_119_3_1 = mul i24 %tmp_118_3_1_cast, %tmp_115_3_1_cast
  %tmp_121_3_1 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_3_1, i32 8, i32 23)
  %sum5_3_2 = add i12 %sum5, 17
  %sum5_3_2_cast = sext i12 %sum5_3_2 to i32
  %Layer3_Weights_CPU_h_35 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_3_2_cast
  %Layer3_Weights_CPU_h_36 = load i16* %Layer3_Weights_CPU_h_35, align 2
  %tmp_115_3_2_cast = zext i16 %Layer3_Weights_CPU_h_36 to i24
  %sum_3_2 = add i11 %phi_mul, 17
  %sum_3_2_cast = zext i11 %sum_3_2 to i32
  %Layer3_Neurons_CPU_h_34 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_3_2_cast
  %Layer3_Neurons_CPU_h_35 = load i16* %Layer3_Neurons_CPU_h_34, align 2
  %tmp_118_3_2_cast = zext i16 %Layer3_Neurons_CPU_h_35 to i24
  %tmp_119_3_2 = mul i24 %tmp_118_3_2_cast, %tmp_115_3_2_cast
  %tmp_121_3_2 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_3_2, i32 8, i32 23)
  %sum5_3_3 = add i12 %sum5, 18
  %sum5_3_3_cast = sext i12 %sum5_3_3 to i32
  %Layer3_Weights_CPU_h_37 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_3_3_cast
  %Layer3_Weights_CPU_h_38 = load i16* %Layer3_Weights_CPU_h_37, align 2
  %tmp_115_3_3_cast = zext i16 %Layer3_Weights_CPU_h_38 to i24
  %sum_3_3 = add i11 %phi_mul, 18
  %sum_3_3_cast = zext i11 %sum_3_3 to i32
  %Layer3_Neurons_CPU_h_36 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_3_3_cast
  %Layer3_Neurons_CPU_h_37 = load i16* %Layer3_Neurons_CPU_h_36, align 2
  %tmp_118_3_3_cast = zext i16 %Layer3_Neurons_CPU_h_37 to i24
  %tmp_119_3_3 = mul i24 %tmp_118_3_3_cast, %tmp_115_3_3_cast
  %tmp_121_3_3 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_3_3, i32 8, i32 23)
  %sum5_3_4 = add i12 %sum5, 19
  %sum5_3_4_cast = sext i12 %sum5_3_4 to i32
  %Layer3_Weights_CPU_h_39 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_3_4_cast
  %Layer3_Weights_CPU_h_40 = load i16* %Layer3_Weights_CPU_h_39, align 2
  %tmp_115_3_4_cast = zext i16 %Layer3_Weights_CPU_h_40 to i24
  %sum_3_4 = add i11 %phi_mul, 19
  %sum_3_4_cast = zext i11 %sum_3_4 to i32
  %Layer3_Neurons_CPU_h_38 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_3_4_cast
  %Layer3_Neurons_CPU_h_39 = load i16* %Layer3_Neurons_CPU_h_38, align 2
  %tmp_118_3_4_cast = zext i16 %Layer3_Neurons_CPU_h_39 to i24
  %tmp_119_3_4 = mul i24 %tmp_118_3_4_cast, %tmp_115_3_4_cast
  %tmp_121_3_4 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_3_4, i32 8, i32 23)
  %sum5_4 = add i12 %sum5, 20
  %sum5_4_cast = sext i12 %sum5_4 to i32
  %Layer3_Weights_CPU_h_41 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_4_cast
  %Layer3_Weights_CPU_h_42 = load i16* %Layer3_Weights_CPU_h_41, align 2
  %tmp_115_4_cast = zext i16 %Layer3_Weights_CPU_h_42 to i24
  %sum_4 = add i11 %phi_mul, 20
  %sum_4_cast = zext i11 %sum_4 to i32
  %Layer3_Neurons_CPU_h_40 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_4_cast
  %Layer3_Neurons_CPU_h_41 = load i16* %Layer3_Neurons_CPU_h_40, align 2
  %tmp_118_4_cast = zext i16 %Layer3_Neurons_CPU_h_41 to i24
  %tmp_119_4 = mul i24 %tmp_118_4_cast, %tmp_115_4_cast
  %tmp_121_4 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_4, i32 8, i32 23)
  %sum5_4_1 = add i12 %sum5, 21
  %sum5_4_1_cast = sext i12 %sum5_4_1 to i32
  %Layer3_Weights_CPU_h_43 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_4_1_cast
  %Layer3_Weights_CPU_h_44 = load i16* %Layer3_Weights_CPU_h_43, align 2
  %tmp_115_4_1_cast = zext i16 %Layer3_Weights_CPU_h_44 to i24
  %sum_4_1 = add i11 %phi_mul, 21
  %sum_4_1_cast = zext i11 %sum_4_1 to i32
  %Layer3_Neurons_CPU_h_42 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_4_1_cast
  %Layer3_Neurons_CPU_h_43 = load i16* %Layer3_Neurons_CPU_h_42, align 2
  %tmp_118_4_1_cast = zext i16 %Layer3_Neurons_CPU_h_43 to i24
  %tmp_119_4_1 = mul i24 %tmp_118_4_1_cast, %tmp_115_4_1_cast
  %tmp_121_4_1 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_4_1, i32 8, i32 23)
  %sum5_4_2 = add i12 %sum5, 22
  %sum5_4_2_cast = sext i12 %sum5_4_2 to i32
  %Layer3_Weights_CPU_h_45 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_4_2_cast
  %Layer3_Weights_CPU_h_46 = load i16* %Layer3_Weights_CPU_h_45, align 2
  %tmp_115_4_2_cast = zext i16 %Layer3_Weights_CPU_h_46 to i24
  %sum_4_2 = add i11 %phi_mul, 22
  %sum_4_2_cast = zext i11 %sum_4_2 to i32
  %Layer3_Neurons_CPU_h_44 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_4_2_cast
  %Layer3_Neurons_CPU_h_45 = load i16* %Layer3_Neurons_CPU_h_44, align 2
  %tmp_118_4_2_cast = zext i16 %Layer3_Neurons_CPU_h_45 to i24
  %tmp_119_4_2 = mul i24 %tmp_118_4_2_cast, %tmp_115_4_2_cast
  %tmp_121_4_2 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_4_2, i32 8, i32 23)
  %sum5_4_3 = add i12 %sum5, 23
  %sum5_4_3_cast = sext i12 %sum5_4_3 to i32
  %Layer3_Weights_CPU_h_47 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_4_3_cast
  %Layer3_Weights_CPU_h_48 = load i16* %Layer3_Weights_CPU_h_47, align 2
  %tmp_115_4_3_cast = zext i16 %Layer3_Weights_CPU_h_48 to i24
  %sum_4_3 = add i11 %phi_mul, 23
  %sum_4_3_cast = zext i11 %sum_4_3 to i32
  %Layer3_Neurons_CPU_h_46 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_4_3_cast
  %Layer3_Neurons_CPU_h_47 = load i16* %Layer3_Neurons_CPU_h_46, align 2
  %tmp_118_4_3_cast = zext i16 %Layer3_Neurons_CPU_h_47 to i24
  %tmp_119_4_3 = mul i24 %tmp_118_4_3_cast, %tmp_115_4_3_cast
  %tmp_121_4_3 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_4_3, i32 8, i32 23)
  %sum5_4_4 = add i12 %sum5, 24
  %sum5_4_4_cast = sext i12 %sum5_4_4 to i32
  %Layer3_Weights_CPU_h_49 = getelementptr [1250 x i16]* %Layer3_Weights_CPU_hls, i32 0, i32 %sum5_4_4_cast
  %Layer3_Weights_CPU_h_50 = load i16* %Layer3_Weights_CPU_h_49, align 2
  %tmp_115_4_4_cast = zext i16 %Layer3_Weights_CPU_h_50 to i24
  %sum_4_4 = add i11 %phi_mul, 24
  %sum_4_4_cast = zext i11 %sum_4_4 to i32
  %Layer3_Neurons_CPU_h_48 = getelementptr [1250 x i16]* %Layer3_Neurons_CPU_hls, i32 0, i32 %sum_4_4_cast
  %Layer3_Neurons_CPU_h_49 = load i16* %Layer3_Neurons_CPU_h_48, align 2
  %tmp_118_4_4_cast = zext i16 %Layer3_Neurons_CPU_h_49 to i24
  %tmp_119_4_4 = mul i24 %tmp_118_4_4_cast, %tmp_115_4_4_cast
  %tmp_121_4_4 = call i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24 %tmp_119_4_4, i32 8, i32 23)
  %tmp5 = add i16 %tmp_121_0_1, %tmp_121_0_2
  %tmp4 = add i16 %tmp5, %tmp_25
  %tmp7 = add i16 %tmp_121_0_4, %tmp_121_1
  %tmp6 = add i16 %tmp7, %tmp_121_0_3
  %tmp3 = add i16 %tmp6, %tmp4
  %tmp10 = add i16 %tmp_121_1_2, %tmp_121_1_3
  %tmp9 = add i16 %tmp10, %tmp_121_1_1
  %tmp12 = add i16 %tmp_121_2, %tmp_121_2_1
  %tmp11 = add i16 %tmp12, %tmp_121_1_4
  %tmp8 = add i16 %tmp11, %tmp9
  %tmp2 = add i16 %tmp8, %tmp3
  %tmp16 = add i16 %tmp_121_2_3, %tmp_121_2_4
  %tmp15 = add i16 %tmp16, %tmp_121_2_2
  %tmp18 = add i16 %tmp_121_3_1, %tmp_121_3_2
  %tmp17 = add i16 %tmp18, %tmp_121_3
  %tmp14 = add i16 %tmp17, %tmp15
  %tmp21 = add i16 %tmp_121_3_4, %tmp_121_4
  %tmp20 = add i16 %tmp21, %tmp_121_3_3
  %tmp23 = add i16 %tmp_121_4_1, %tmp_121_4_2
  %tmp24 = add i16 %tmp_121_4_3, %tmp_121_4_4
  %tmp22 = add i16 %tmp24, %tmp23
  %tmp19 = add i16 %tmp22, %tmp20
  %tmp13 = add i16 %tmp19, %tmp14
  %tmp_26 = add i16 %tmp13, %tmp2
  %somme_3_4_4 = add i16 %somme1, %tmp_26
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([2 x i8]* @p_str2, i32 %tmp_8) nounwind
  %ifzero = icmp eq i6 %j_1, -14
  br i1 %ifzero, label %ifTrue, label %ifFalse

ifTrue:                                           ; preds = %ifBlock
  %tmp_s = zext i16 %somme_3_4_4 to i32
  %tmp_27 = sitofp i32 %tmp_s to double
  %tmp_28 = fmul double %tmp_27, 0x3FE55555571F7693
  %x_assign = fptrunc double %tmp_28 to float
  %call_ret_i_i_i = call fastcc { float, float } @sinh_cosh_range_redu(float %x_assign) nounwind
  %s_out = extractvalue { float, float } %call_ret_i_i_i, 0
  %c_out = extractvalue { float, float } %call_ret_i_i_i, 1
  %x_assign_1 = fdiv float %s_out, %c_out
  %p_Val2_s = bitcast float %x_assign_1 to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_4 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_4) nounwind
  %tmp_i_i = zext i24 %p_Result_s to i62
  %tmp_i_i_i_cast = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_38_i_i = sub i8 127, %loc_V
  %tmp_38_i_i_cast = sext i8 %tmp_38_i_i to i9
  %sh_assign_5 = select i1 %isNeg, i9 %tmp_38_i_i_cast, i9 %sh_assign
  %sh_assign_5_cast = sext i9 %sh_assign_5 to i32
  %sh_assign_5_cast_cas = sext i9 %sh_assign_5 to i24
  %tmp_39_i_i = zext i32 %sh_assign_5_cast to i62
  %tmp_40_i_i = lshr i24 %p_Result_s, %sh_assign_5_cast_cas
  %tmp_41_i_i = shl i62 %tmp_i_i, %tmp_39_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_40_i_i, i32 23)
  %tmp_29 = zext i1 %tmp to i16
  %tmp_30 = call i16 @_ssdm_op_PartSelect.i16.i62.i32.i32(i62 %tmp_41_i_i, i32 23, i32 38)
  %result_V = select i1 %isNeg, i16 %tmp_29, i16 %tmp_30
  store i16 %result_V, i16* %Layer4_Neurons_CPU_h, align 2
  br label %ifFalse

ifFalse:                                          ; preds = %ifTrue, %ifBlock
  br label %3

; <label>:4                                       ; preds = %3
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([2 x i8]* @p_str, i32 %tmp_7) nounwind
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define internal fastcc i70 @big_mult_v3small.1(i35 %a_V) readnone {
.preheader142.preheader:
  %a_V_read = call i35 @_ssdm_op_Read.ap_auto.i35(i35 %a_V)
  br label %.preheader142

.preheader142:                                    ; preds = %_ifconv, %.preheader142.preheader
  %pp_V_2_s = phi i52 [ undef, %.preheader142.preheader ], [ %pp_2_V_2, %_ifconv ]
  %pp_V_1_s = phi i52 [ undef, %.preheader142.preheader ], [ %pp_2_V_4, %_ifconv ]
  %pps_0_V = phi i52 [ undef, %.preheader142.preheader ], [ %pp_2_V_6, %_ifconv ]
  %i = phi i2 [ 0, %.preheader142.preheader ], [ %i_3, %_ifconv ]
  %exitcond3 = icmp eq i2 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %i_3 = add i2 %i, 1
  br i1 %exitcond3, label %arrayctor.loop1.preheader.preheader, label %_ifconv

arrayctor.loop1.preheader.preheader:              ; preds = %.preheader142
  br label %arrayctor.loop1.preheader

_ifconv:                                          ; preds = %.preheader142
  %tmp_s = icmp eq i2 %i, -2
  %Lo_assign = call i6 @_ssdm_op_BitConcatenate.i6.i2.i2.i2(i2 %i, i2 0, i2 %i)
  %tmp_28 = add i6 %Lo_assign, 16
  %Ui = select i1 %tmp_s, i6 -30, i6 %tmp_28
  %tmp = icmp ugt i6 %Lo_assign, %Ui
  %tmp_35 = call i35 @llvm.part.select.i35(i35 %a_V_read, i32 34, i32 0)
  %tmp_36 = sub i6 %Lo_assign, %Ui
  %tmp_39 = sub i6 -30, %Lo_assign
  %tmp_40 = sub i6 %Ui, %Lo_assign
  %tmp_41 = select i1 %tmp, i6 %tmp_36, i6 %tmp_40
  %tmp_42 = select i1 %tmp, i35 %tmp_35, i35 %a_V_read
  %tmp_43 = select i1 %tmp, i6 %tmp_39, i6 %Lo_assign
  %tmp_44 = sub i6 -30, %tmp_41
  %tmp_45 = zext i6 %tmp_43 to i35
  %tmp_46 = zext i6 %tmp_44 to i35
  %tmp_47 = lshr i35 %tmp_42, %tmp_45
  %tmp_48 = lshr i35 -1, %tmp_46
  %p_Result_43 = and i35 %tmp_47, %tmp_48
  %tmp_29 = zext i35 %p_Result_43 to i52
  %pp_0_V = mul i52 %tmp_29, 23816355774
  %sel_tmp = icmp eq i2 %i, 1
  %pp_2_V = select i1 %sel_tmp, i52 %pp_V_2_s, i52 %pp_0_V
  %sel_tmp2 = icmp eq i2 %i, 0
  %pp_2_V_2 = select i1 %sel_tmp2, i52 %pp_V_2_s, i52 %pp_2_V
  %pp_2_V_3 = select i1 %sel_tmp, i52 %pp_0_V, i52 %pp_V_1_s
  %pp_2_V_4 = select i1 %sel_tmp2, i52 %pp_V_1_s, i52 %pp_2_V_3
  %pp_2_V_6 = select i1 %sel_tmp2, i52 %pp_0_V, i52 %pps_0_V
  br label %.preheader142

arrayctor.loop1.preheader:                        ; preds = %arrayctor.loop1.preheader.preheader, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %pps_V_1_s = phi i52 [ %pps_2_V_1, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ undef, %arrayctor.loop1.preheader.preheader ]
  %pps_V_2_s = phi i52 [ %pps_2_V_2, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ undef, %arrayctor.loop1.preheader.preheader ]
  %i_1 = phi i2 [ %i_4, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ 1, %arrayctor.loop1.preheader.preheader ]
  %exitcond4 = icmp eq i2 %i_1, -1
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %exitcond4, label %.preheader.preheader, label %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

.preheader.preheader:                             ; preds = %arrayctor.loop1.preheader
  br label %.preheader

_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %arrayctor.loop1.preheader
  %cond = icmp eq i2 %i_1, 1
  %tmp_31 = call i35 @_ssdm_op_PartSelect.i35.i52.i32.i32(i52 %pps_0_V, i32 17, i32 51)
  %tmp_32 = call i35 @_ssdm_op_PartSelect.i35.i52.i32.i32(i52 %pps_V_1_s, i32 17, i32 51)
  %p_v = select i1 %cond, i35 %tmp_31, i35 %tmp_32
  %r_V = zext i35 %p_v to i52
  %pp_V_load_2_phi = select i1 %cond, i52 %pp_V_1_s, i52 %pp_V_2_s
  %pps_1_V = add i52 %pp_V_load_2_phi, %r_V
  %pps_2_V_1 = select i1 %cond, i52 %pps_1_V, i52 %pps_V_1_s
  %pps_2_V_2 = select i1 %cond, i52 %pps_V_2_s, i52 %pps_1_V
  %i_4 = add i2 %i_1, 1
  br label %arrayctor.loop1.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge143
  %p_Val2_s = phi i70 [ %p_Result_42, %._crit_edge143 ], [ undef, %.preheader.preheader ]
  %i_2 = phi i2 [ %tmp_30, %._crit_edge143 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i2 %i_2, -2
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %tmp_30 = add i2 %i_2, 1
  br i1 %exitcond, label %0, label %._crit_edge143

._crit_edge143:                                   ; preds = %.preheader
  %tmp_51 = trunc i2 %i_2 to i1
  %Li = call i5 @_ssdm_op_BitConcatenate.i5.i1.i2.i2(i1 %tmp_51, i2 0, i2 %i_2)
  %Li_cast2 = zext i5 %Li to i6
  %Li_cast = zext i5 %Li to i32
  %Ui_1 = add i6 16, %Li_cast2
  %Ui_2_cast = zext i6 %Ui_1 to i32
  %cond2 = icmp eq i2 %i_2, 0
  %tmp_52 = trunc i52 %pps_0_V to i17
  %tmp_53 = trunc i52 %pps_V_1_s to i17
  %tmp_54 = select i1 %cond2, i17 %tmp_52, i17 %tmp_53
  %loc_V = zext i17 %tmp_54 to i70
  %tmp_55 = icmp ugt i32 %Li_cast, %Ui_2_cast
  %tmp_56 = zext i5 %Li to i7
  %tmp_57 = zext i6 %Ui_1 to i7
  %tmp_58 = sub i7 -59, %tmp_56
  %tmp_59 = select i1 %tmp_55, i7 %tmp_56, i7 %tmp_57
  %tmp_60 = select i1 %tmp_55, i7 %tmp_57, i7 %tmp_56
  %tmp_61 = select i1 %tmp_55, i7 %tmp_58, i7 %tmp_56
  %tmp_62 = sub i7 -59, %tmp_59
  %tmp_63 = zext i7 %tmp_61 to i70
  %tmp_64 = zext i7 %tmp_60 to i70
  %tmp_65 = zext i7 %tmp_62 to i70
  %tmp_66 = shl i70 %loc_V, %tmp_63
  %tmp_67 = call i70 @llvm.part.select.i70(i70 %tmp_66, i32 69, i32 0)
  %tmp_68 = select i1 %tmp_55, i70 %tmp_67, i70 %tmp_66
  %tmp_69 = shl i70 -1, %tmp_64
  %tmp_70 = lshr i70 -1, %tmp_65
  %p_demorgan = and i70 %tmp_69, %tmp_70
  %tmp_71 = xor i70 %p_demorgan, -1
  %tmp_72 = and i70 %p_Val2_s, %tmp_71
  %tmp_73 = and i70 %tmp_68, %p_demorgan
  %p_Result_42 = or i70 %tmp_72, %tmp_73
  br label %.preheader

; <label>:0                                       ; preds = %.preheader
  %tmp_50 = trunc i52 %pps_V_2_s to i36
  %p_Result_s = call i70 @llvm.part.set.i70.i36(i70 %p_Val2_s, i36 %tmp_50, i32 34, i32 69)
  ret i70 %p_Result_s
}

define internal fastcc i77 @big_mult_v3small(i42 %a_V) readnone {
.preheader142.preheader:
  %a_V_read = call i42 @_ssdm_op_Read.ap_auto.i42(i42 %a_V)
  br label %.preheader142

.preheader142:                                    ; preds = %_ifconv, %.preheader142.preheader
  %pp_V_2_s = phi i52 [ undef, %.preheader142.preheader ], [ %pp_2_V_1, %_ifconv ]
  %pp_V_1_s = phi i52 [ undef, %.preheader142.preheader ], [ %pp_2_V_3, %_ifconv ]
  %pps_0_V = phi i52 [ undef, %.preheader142.preheader ], [ %pp_2_V_5, %_ifconv ]
  %i = phi i2 [ 0, %.preheader142.preheader ], [ %i_4, %_ifconv ]
  %exitcond1 = icmp eq i2 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %i_4 = add i2 %i, 1
  br i1 %exitcond1, label %arrayctor.loop1.preheader.preheader, label %_ifconv

arrayctor.loop1.preheader.preheader:              ; preds = %.preheader142
  br label %arrayctor.loop1.preheader

_ifconv:                                          ; preds = %.preheader142
  %tmp_s = icmp eq i2 %i, -2
  %Lo_assign = call i6 @_ssdm_op_BitConcatenate.i6.i2.i2.i2(i2 %i, i2 0, i2 %i)
  %tmp_24 = add i6 %Lo_assign, 16
  %Ui = select i1 %tmp_s, i6 -23, i6 %tmp_24
  %tmp = icmp ugt i6 %Lo_assign, %Ui
  %tmp_75 = call i42 @llvm.part.select.i42(i42 %a_V_read, i32 41, i32 0)
  %tmp_76 = sub i6 %Lo_assign, %Ui
  %tmp_77 = sub i6 -23, %Lo_assign
  %tmp_78 = sub i6 %Ui, %Lo_assign
  %tmp_79 = select i1 %tmp, i6 %tmp_76, i6 %tmp_78
  %tmp_80 = select i1 %tmp, i42 %tmp_75, i42 %a_V_read
  %tmp_81 = select i1 %tmp, i6 %tmp_77, i6 %Lo_assign
  %tmp_82 = sub i6 -23, %tmp_79
  %tmp_83 = zext i6 %tmp_81 to i42
  %tmp_84 = zext i6 %tmp_82 to i42
  %tmp_85 = lshr i42 %tmp_80, %tmp_83
  %tmp_86 = lshr i42 -1, %tmp_84
  %p_Result_46 = and i42 %tmp_85, %tmp_86
  %tmp_25 = zext i42 %p_Result_46 to i52
  %pp_0_V = mul i52 %tmp_25, 24785312074
  %sel_tmp = icmp eq i2 %i, 1
  %pp_2_V = select i1 %sel_tmp, i52 %pp_V_2_s, i52 %pp_0_V
  %sel_tmp2 = icmp eq i2 %i, 0
  %pp_2_V_1 = select i1 %sel_tmp2, i52 %pp_V_2_s, i52 %pp_2_V
  %pp_2_V_2 = select i1 %sel_tmp, i52 %pp_0_V, i52 %pp_V_1_s
  %pp_2_V_3 = select i1 %sel_tmp2, i52 %pp_V_1_s, i52 %pp_2_V_2
  %pp_2_V_5 = select i1 %sel_tmp2, i52 %pp_0_V, i52 %pps_0_V
  br label %.preheader142

arrayctor.loop1.preheader:                        ; preds = %arrayctor.loop1.preheader.preheader, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %pps_V_1_s = phi i52 [ %pps_2_V_1, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ undef, %arrayctor.loop1.preheader.preheader ]
  %pps_V_2_s = phi i52 [ %pps_2_V_2, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ undef, %arrayctor.loop1.preheader.preheader ]
  %i_1 = phi i2 [ %i_3, %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ 1, %arrayctor.loop1.preheader.preheader ]
  %exitcond2 = icmp eq i2 %i_1, -1
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %exitcond2, label %.preheader.preheader, label %_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

.preheader.preheader:                             ; preds = %arrayctor.loop1.preheader
  br label %.preheader

_ZrsILi52ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %arrayctor.loop1.preheader
  %cond = icmp eq i2 %i_1, 1
  %tmp_33 = call i35 @_ssdm_op_PartSelect.i35.i52.i32.i32(i52 %pps_0_V, i32 17, i32 51)
  %tmp_34 = call i35 @_ssdm_op_PartSelect.i35.i52.i32.i32(i52 %pps_V_1_s, i32 17, i32 51)
  %p_v = select i1 %cond, i35 %tmp_33, i35 %tmp_34
  %r_V = zext i35 %p_v to i52
  %pp_V_load_1_phi = select i1 %cond, i52 %pp_V_1_s, i52 %pp_V_2_s
  %pps_1_V = add i52 %pp_V_load_1_phi, %r_V
  %pps_2_V_1 = select i1 %cond, i52 %pps_1_V, i52 %pps_V_1_s
  %pps_2_V_2 = select i1 %cond, i52 %pps_V_2_s, i52 %pps_1_V
  %i_3 = add i2 %i_1, 1
  br label %arrayctor.loop1.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge143
  %p_Val2_s = phi i77 [ %p_Result_45, %._crit_edge143 ], [ undef, %.preheader.preheader ]
  %i_2 = phi i2 [ %tmp_26, %._crit_edge143 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i2 %i_2, -2
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %tmp_26 = add i2 %i_2, 1
  br i1 %exitcond, label %0, label %._crit_edge143

._crit_edge143:                                   ; preds = %.preheader
  %tmp_89 = trunc i2 %i_2 to i1
  %Li = call i5 @_ssdm_op_BitConcatenate.i5.i1.i2.i2(i1 %tmp_89, i2 0, i2 %i_2)
  %Li_cast1 = zext i5 %Li to i6
  %Li_cast = zext i5 %Li to i32
  %Ui_1 = add i6 16, %Li_cast1
  %Ui_1_cast = zext i6 %Ui_1 to i32
  %cond1 = icmp eq i2 %i_2, 0
  %tmp_90 = trunc i52 %pps_0_V to i17
  %tmp_91 = trunc i52 %pps_V_1_s to i17
  %tmp_92 = select i1 %cond1, i17 %tmp_90, i17 %tmp_91
  %loc_V = zext i17 %tmp_92 to i77
  %tmp_93 = icmp ugt i32 %Li_cast, %Ui_1_cast
  %tmp_94 = zext i5 %Li to i7
  %tmp_95 = zext i6 %Ui_1 to i7
  %tmp_96 = sub i7 -52, %tmp_94
  %tmp_97 = select i1 %tmp_93, i7 %tmp_94, i7 %tmp_95
  %tmp_98 = select i1 %tmp_93, i7 %tmp_95, i7 %tmp_94
  %tmp_99 = select i1 %tmp_93, i7 %tmp_96, i7 %tmp_94
  %tmp_100 = sub i7 -52, %tmp_97
  %tmp_101 = zext i7 %tmp_99 to i77
  %tmp_102 = zext i7 %tmp_98 to i77
  %tmp_103 = zext i7 %tmp_100 to i77
  %tmp_104 = shl i77 %loc_V, %tmp_101
  %tmp_105 = call i77 @llvm.part.select.i77(i77 %tmp_104, i32 76, i32 0)
  %tmp_106 = select i1 %tmp_93, i77 %tmp_105, i77 %tmp_104
  %tmp_107 = shl i77 -1, %tmp_102
  %tmp_108 = lshr i77 -1, %tmp_103
  %p_demorgan = and i77 %tmp_107, %tmp_108
  %tmp_109 = xor i77 %p_demorgan, -1
  %tmp_110 = and i77 %p_Val2_s, %tmp_109
  %tmp_111 = and i77 %tmp_106, %p_demorgan
  %p_Result_45 = or i77 %tmp_110, %tmp_111
  br label %.preheader

; <label>:0                                       ; preds = %.preheader
  %tmp_88 = trunc i52 %pps_V_2_s to i43
  %p_Result_s = call i77 @llvm.part.set.i77.i43(i77 %p_Val2_s, i43 %tmp_88, i32 34, i32 76)
  ret i77 %p_Result_s
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i42 @_ssdm_op_Read.ap_auto.i42(i42) {
entry:
  ret i42 %0
}

define weak i35 @_ssdm_op_Read.ap_auto.i35(i35) {
entry:
  ret i35 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i77.i32.i32(i77, i32, i32) nounwind readnone {
entry:
  %empty = call i77 @llvm.part.select.i77(i77 %0, i32 %1, i32 %2)
  %empty_44 = trunc i77 %empty to i8
  ret i8 %empty_44
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_45 = trunc i32 %empty to i8
  ret i8 %empty_45
}

define weak i8 @_ssdm_op_PartSelect.i8.i112.i32.i32(i112, i32, i32) nounwind readnone {
entry:
  %empty = call i112 @llvm.part.select.i112(i112 %0, i32 %1, i32 %2)
  %empty_46 = trunc i112 %empty to i8
  ret i8 %empty_46
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i43 @_ssdm_op_PartSelect.i43.i52.i32.i32(i52, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_47 = trunc i6 %empty to i4
  ret i4 %empty_47
}

declare i36 @_ssdm_op_PartSelect.i36.i52.i32.i32(i52, i32, i32) nounwind readnone

define weak i35 @_ssdm_op_PartSelect.i35.i77.i32.i32(i77, i32, i32) nounwind readnone {
entry:
  %empty = call i77 @llvm.part.select.i77(i77 %0, i32 %1, i32 %2)
  %empty_48 = trunc i77 %empty to i35
  ret i35 %empty_48
}

define weak i35 @_ssdm_op_PartSelect.i35.i52.i32.i32(i52, i32, i32) nounwind readnone {
entry:
  %empty = call i52 @llvm.part.select.i52(i52 %0, i32 %1, i32 %2)
  %empty_49 = trunc i52 %empty to i35
  ret i35 %empty_49
}

declare i34 @_ssdm_op_PartSelect.i34.i35.i32.i32(i35, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i70.i32.i32(i70, i32, i32) nounwind readnone {
entry:
  %empty = call i70 @llvm.part.select.i70(i70 %0, i32 %1, i32 %2)
  %empty_50 = trunc i70 %empty to i32
  ret i32 %empty_50
}

define weak i32 @_ssdm_op_PartSelect.i32.i124.i32.i32(i124, i32, i32) nounwind readnone {
entry:
  %empty = call i124 @llvm.part.select.i124(i124 %0, i32 %1, i32 %2)
  %empty_51 = trunc i124 %empty to i32
  ret i32 %empty_51
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i17 @_ssdm_op_PartSelect.i17.i52.i32.i32(i52, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i62.i32.i32(i62, i32, i32) nounwind readnone {
entry:
  %empty = call i62 @llvm.part.select.i62(i62 %0, i32 %1, i32 %2)
  %empty_52 = trunc i62 %empty to i16
  ret i16 %empty_52
}

define weak i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_53 = trunc i24 %empty to i16
  ret i16 %empty_53
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_54 = trunc i64 %empty to i11
  ret i11 %empty_54
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_55 = shl i9 1, %empty
  %empty_56 = and i9 %0, %empty_55
  %empty_57 = icmp ne i9 %empty_56, 0
  ret i1 %empty_57
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_58 = shl i8 1, %empty
  %empty_59 = and i8 %0, %empty_58
  %empty_60 = icmp ne i8 %empty_59, 0
  ret i1 %empty_60
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_61 = shl i7 1, %empty
  %empty_62 = and i7 %0, %empty_61
  %empty_63 = icmp ne i7 %empty_62, 0
  ret i1 %empty_63
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_64 = shl i53 1, %empty
  %empty_65 = and i53 %0, %empty_64
  %empty_66 = icmp ne i53 %empty_65, 0
  ret i1 %empty_66
}

define weak i1 @_ssdm_op_BitSelect.i1.i35.i32(i35, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i35
  %empty_67 = shl i35 1, %empty
  %empty_68 = and i35 %0, %empty_67
  %empty_69 = icmp ne i35 %empty_68, 0
  ret i1 %empty_69
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_70 = and i32 %0, %empty
  %empty_71 = icmp ne i32 %empty_70, 0
  ret i1 %empty_71
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_72 = shl i24 1, %empty
  %empty_73 = and i24 %0, %empty_72
  %empty_74 = icmp ne i24 %empty_73, 0
  ret i1 %empty_74
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_75 = shl i12 1, %empty
  %empty_76 = and i12 %0, %empty_75
  %empty_77 = icmp ne i12 %empty_76, 0
  ret i1 %empty_77
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i2.i2.i2(i2, i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %1 to i4
  %empty_78 = zext i2 %2 to i4
  %empty_79 = shl i4 %empty, 2
  %empty_80 = or i4 %empty_79, %empty_78
  %empty_81 = zext i2 %0 to i6
  %empty_82 = zext i4 %empty_80 to i6
  %empty_83 = shl i6 %empty_81, 4
  %empty_84 = or i6 %empty_83, %empty_82
  ret i6 %empty_84
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_85 = zext i52 %1 to i53
  %empty_86 = shl i53 %empty, 52
  %empty_87 = or i53 %empty_86, %empty_85
  ret i53 %empty_87
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i1.i2.i2(i1, i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %1 to i4
  %empty_88 = zext i2 %2 to i4
  %empty_89 = shl i4 %empty, 2
  %empty_90 = or i4 %empty_89, %empty_88
  %empty_91 = zext i1 %0 to i5
  %empty_92 = zext i4 %empty_90 to i5
  %empty_93 = shl i5 %empty_91, 4
  %empty_94 = or i5 %empty_93, %empty_92
  ret i5 %empty_94
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i9.i23(i9, i23) nounwind readnone {
entry:
  %empty = zext i9 %0 to i32
  %empty_95 = zext i23 %1 to i32
  %empty_96 = shl i32 %empty, 23
  %empty_97 = or i32 %empty_96, %empty_95
  ret i32 %empty_97
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i8.i23(i1, i8, i23) nounwind readnone {
entry:
  %empty = zext i8 %1 to i31
  %empty_98 = zext i23 %2 to i31
  %empty_99 = shl i31 %empty, 23
  %empty_100 = or i31 %empty_99, %empty_98
  %empty_101 = zext i1 %0 to i32
  %empty_102 = zext i31 %empty_100 to i32
  %empty_103 = shl i32 %empty_101, 31
  %empty_104 = or i32 %empty_103, %empty_102
  ret i32 %empty_104
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_105 = zext i31 %1 to i32
  %empty_106 = shl i32 %empty, 31
  %empty_107 = or i32 %empty_106, %empty_105
  ret i32 %empty_107
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_108 = zext i23 %1 to i24
  %empty_109 = shl i24 %empty, 23
  %empty_110 = or i24 %empty_109, %empty_108
  ret i24 %empty_110
}

declare void @_GLOBAL__I_a1952() nounwind

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !9, !15, !15, !9, !15, !15, !15, !17, !23, !15, !15, !25, !29, !9, !15, !31, !33, !31, !33, !31, !33, !9, !15, !9, !15, !9, !15, !9, !15, !9, !15, !9, !9, !15, !15, !34, !38, !34, !38, !40, !43, !45, !47, !9, !15, !9, !15, !9, !15, !49, !51, !49, !51, !49, !51, !51, !49, !51, !51, !49, !51, !49, !51, !52, !52, !57, !57, !59, !61, !67, !67, !61, !70, !61, !61, !61, !73, !73, !75, !75, !77, !61, !61, !61, !80, !67, !67, !61, !83, !61, !61, !61, !85, !85, !87, !87, !89, !61, !61, !61, !61, !61, !61, !91, !61, !61, !61, !61, !57, !57, !59, !91, !61, !57, !57, !59, !91, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !93, !93, !93, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !93, !93, !93, !95, !95, !95, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !95, !95, !95, !61, !95, !95, !95, !100, !61, !61, !61, !61, !102, !102, !105, !105, !109, !112, !112, !61, !61, !61, !61, !114, !116, !116, !61, !102, !102, !117, !117, !119, !121, !121, !61, !61, !61, !61, !122, !124, !124, !102, !125, !125, !127, !61, !129, !129, !132, !127, !134, !134, !61, !61, !61, !136, !136, !61, !137, !136, !136, !139, !136, !136, !141, !61, !61, !61, !61, !61, !61, !61, !61, !100, !61, !61, !61, !61, !102, !102, !143, !143, !145, !147, !147, !61, !61, !61, !61, !148, !150, !150, !102, !102, !151, !151, !153, !155, !155, !61, !156, !87, !87, !102, !157, !157, !132, !127, !159, !159, !61, !61, !136, !136, !161, !136, !136, !163, !61, !61, !61, !61, !61, !61, !51, !165, !167, !168, !167, !169, !169, !171, !173, !173, !61, !174, !176, !176, !102, !171, !174, !176, !176, !102, !177, !61, !132, !127, !132, !132, !49, !179, !167, !181, !167, !183, !183, !184, !186, !186, !61, !61, !187, !189, !189, !102, !184, !187, !189, !189, !102, !190, !61, !192, !192, !51, !168, !167, !49, !181, !167, !51, !165, !167, !49, !179, !167, !51, !49, !51, !49, !194, !61, !61, !196, !61, !15, !9, !15, !9, !15, !15, !9, !9, !47, !61, !45, !61, !43, !192, !192, !61, !61, !197, !198, !124, !124, !40, !192, !192, !61, !38, !200, !202, !202, !203, !61, !61, !61, !189, !189, !205, !205, !207, !207, !210, !179, !116, !116, !61, !213, !215, !61, !61, !61, !85, !85, !217, !217, !61, !102, !102, !218, !218, !220, !222, !189, !189, !61, !224, !61, !61, !61, !116, !116, !75, !75, !226, !226, !61, !121, !121, !121, !61, !228, !230, !228, !230, !228, !230, !231, !34, !165, !150, !150, !61, !102, !102, !218, !218, !234, !236, !176, !176, !61, !155, !155, !155, !238, !230, !238, !230, !240, !38, !34, !15, !242, !61, !61, !61, !246, !67, !67, !61, !61, !249, !249, !61, !251, !251, !251, !253, !255, !255, !249, !61, !132, !127, !257, !257, !136, !136, !61, !259, !261, !261, !263, !265, !265, !61, !267, !267, !269, !267, !267, !269, !271, !277, !61, !61, !61, !279, !67, !67, !281, !61, !61, !61, !283, !283, !283, !61, !132, !285, !286, !286, !109, !114, !116, !116, !61, !61, !102, !288, !288, !290, !290, !291, !293, !293, !294, !296, !296, !294, !15, !298, !61, !61, !61, !246, !61, !300, !300, !302, !302, !302, !304, !306, !306, !300, !61, !132, !127, !308, !308, !136, !136, !61, !310, !263, !312, !312, !61, !314, !314, !316, !314, !314, !316, !271, !318, !61, !61, !61, !320, !67, !67, !281, !61, !61, !61, !322, !322, !322, !296, !296, !294, !9, !324, !326, !326, !328, !326, !326, !328, !330, !61, !61, !61, !332, !67, !67, !281, !61, !61, !61, !334, !334, !334, !61, !132, !285, !336, !336, !145, !148, !150, !150, !61, !61, !102, !338, !338, !290, !290, !291, !293, !293, !340, !342, !342, !340, !9, !344, !346, !346, !348, !346, !346, !348, !350, !61, !61, !61, !352, !67, !67, !281, !61, !61, !61, !354, !354, !354, !342, !342, !340, !15, !231, !9, !356, !358, !61, !61, !61, !176, !176, !360, !360, !362, !362, !364, !240, !15, !9, !15, !9, !15, !9, !15, !9, !33, !61, !366, !167, !368, !371, !61, !116, !116, !85, !85, !31, !61, !373, !375, !33, !31, !33, !31, !49, !51, !29, !377, !61, !61, !379, !132, !127, !380, !380, !382, !382, !61, !61, !61, !61, !384, !61, !61, !61, !386, !386, !75, !75, !388, !61, !61, !61, !390, !392, !392, !393, !393, !61, !61, !390, !392, !392, !61, !61, !395, !395, !395, !61, !397, !61, !61, !61, !61, !61, !61, !399, !399, !399, !61, !401, !61, !61, !61, !61, !61, !61, !61, !61, !403, !403, !403, !405, !405, !407, !409, !61, !412, !263, !293, !293, !61, !414, !414, !416, !418, !102, !421, !421, !423, !423, !425, !61, !296, !296, !294, !102, !426, !426, !428, !430, !428, !428, !61, !61, !61, !61, !61, !61, !281, !61, !61, !392, !392, !432, !414, !414, !416, !61, !102, !434, !434, !436, !436, !436, !61, !430, !438, !438, !439, !416, !416, !440, !440, !61, !61, !439, !416, !416, !61, !61, !442, !444, !446, !446, !61, !293, !293, !61, !61, !447, !447, !447, !449, !61, !61, !451, !451, !451, !453, !61, !61, !61, !61, !61, !61, !61, !61, !455, !455, !455, !61, !457, !457, !459, !461, !61, !61, !61, !61, !61, !463, !463, !463, !61, !465, !465, !467, !61, !469, !469, !471, !61, !61, !102, !472, !472, !474, !474, !476, !61, !61, !477, !483, !281, !61, !61, !61, !471, !471, !471, !484, !484, !486, !61, !61, !61, !61, !487, !487, !487, !489, !492, !492, !494, !469, !496, !61, !102, !498, !498, !500, !502, !502, !61, !61, !61, !61, !503, !505, !505, !132, !127, !506, !506, !61, !102, !508, !508, !510, !510, !510, !61, !61, !61, !512, !514, !514, !102, !61, !61, !192, !192, !61, !515, !517, !487, !487, !61, !293, !293, !61, !61, !518, !518, !518, !520, !127, !522, !522, !524, !61, !526, !526, !528, !246, !67, !67, !61, !61, !136, !136, !61, !530, !526, !526, !528, !102, !531, !531, !533, !535, !535, !61, !61, !61, !61, !536, !61, !102, !538, !538, !540, !540, !543, !545, !545, !102, !546, !546, !548, !550, !550, !61, !61, !61, !61, !551, !552, !545, !545, !102, !554, !554, !556, !559, !559, !61, !61, !61, !61, !561, !563, !563, !565, !565, !567, !567, !568, !61, !61, !570, !102, !573, !573, !102, !575, !575, !577, !577, !577, !61, !61, !61, !579, !61, !61, !61, !581, !581, !581, !61, !583, !583, !167, !136, !136, !585, !132, !127, !587, !587, !109, !114, !102, !589, !589, !61, !61, !61, !61, !61, !61, !61, !136, !136, !61, !61, !591, !61, !61, !61, !61, !61, !61, !61, !61, !61, !25, !593, !595, !168, !167, !61, !597, !597, !61, !599, !61, !602, !167, !604, !604, !604, !61, !61, !606, !608, !608, !609, !281, !61, !61, !611, !611, !61, !604, !606, !608, !608, !136, !136, !102, !613, !613, !615, !617, !617, !61, !606, !102, !618, !618, !61, !61, !136, !136, !602, !620, !61, !61, !61, !622, !622, !608, !608, !624, !624, !61, !61, !136, !136, !626, !61, !622, !622, !626, !167, !628, !628, !630, !61, !61, !61, !61, !631, !634, !637, !639, !639, !640, !640, !61, !61, !642, !642, !644, !61, !642, !642, !642, !61, !61, !61, !646, !646, !648, !489, !650, !61, !61, !61, !61, !652, !654, !61, !642, !642, !642, !655, !644, !644, !281, !61, !61, !640, !640, !285, !657, !657, !659, !659, !661, !61, !662, !622, !622, !290, !290, !291, !293, !293, !640, !663, !102, !102, !665, !167, !230, !230, !61, !667, !75, !75, !89, !85, !85, !127, !61, !581, !581, !669, !671, !671, !61, !102, !672, !672, !61, !61, !602, !608, !608, !674, !61, !61, !675, !678, !679, !150, !150, !608, !608, !102, !681, !681, !683, !683, !683, !61, !685, !687, !687, !624, !624, !102, !689, !689, !691, !691, !691, !61, !61, !61, !61, !693, !695, !695, !697, !699, !699, !699, !102, !701, !701, !703, !705, !705, !61, !61, !61, !61, !706, !708, !708, !61, !102, !709, !709, !711, !713, !708, !708, !715, !715, !717, !61, !61, !102, !719, !719, !721, !724, !724, !61, !61, !61, !61, !726, !61, !61, !728, !728, !730, !730, !61, !732, !61, !61, !61, !61, !733, !733, !102, !735, !735, !737, !737, !737, !61, !61, !61, !61, !102, !739, !739, !741, !741, !741, !61, !61, !61, !61, !743, !745, !745, !747, !749, !749, !751, !753, !753, !102, !754, !754, !756, !758, !758, !61, !61, !61, !61, !759, !760, !753, !753, !102, !762, !762, !764, !766, !766, !61, !61, !61, !61, !768, !770, !770, !772, !772, !745, !745, !774, !61, !61, !776, !136, !136, !778, !167, !102, !780, !780, !782, !782, !782, !61, !61, !61, !61, !784, !61, !61, !61, !786, !786, !786, !61, !61, !61, !102, !788, !788, !136, !136, !790, !136, !136, !61, !792, !61, !794, !770, !770, !796, !798, !798, !798, !61, !61, !61, !800, !102, !102, !802, !802, !798, !798, !798, !804, !61, !61, !61, !61, !61, !61, !61, !61, !61, !61, !61, !61, !61, !61, !49, !49, !805, !181, !167, !181, !167, !807, !807, !61, !810, !124, !124, !812, !813, !815, !815, !213, !215, !61, !61, !61, !817, !819, !167, !61, !821, !822, !824, !826, !828, !828, !61, !61, !61, !829, !829, !831, !61, !829, !829, !829, !61, !61, !833, !833, !835, !837, !831, !831, !839, !281, !61, !61, !828, !828, !285, !841, !841, !843, !843, !845, !61, !61, !61, !846, !846, !848, !290, !290, !291, !293, !293, !828, !850, !850, !59, !91, !851, !854, !854, !856, !61, !846, !858, !756, !751, !102, !860, !860, !862, !862, !148, !150, !150, !145, !864, !165, !865, !867, !867, !61, !61, !61, !869, !871, !871, !753, !753, !102, !873, !873, !875, !875, !875, !61, !877, !102, !878, !878, !61, !61, !61, !61, !61, !880, !880, !882, !61, !61, !61, !246, !67, !67, !884, !884, !885, !102, !887, !887, !889, !891, !891, !61, !61, !61, !61, !892, !102, !894, !894, !896, !896, !148, !150, !150, !145, !898, !900, !900, !61, !61, !61, !61, !902, !871, !871, !904, !904, !906, !906, !102, !907, !907, !909, !909, !909, !61, !911, !911, !911, !61, !913, !102, !914, !914, !61, !61, !61, !61, !61, !61, !61, !57, !57, !59, !91, !57, !57, !59, !91, !281, !61, !61, !916, !916, !918, !132, !285, !920, !920, !114, !116, !116, !102, !922, !922, !290, !290, !291, !293, !293, !916, !61, !61, !61, !49, !49, !924, !924, !924, !924, !924, !61, !61, !817, !821, !926, !928, !930, !932, !932, !61, !933, !933, !61, !61, !935, !935, !937, !61, !935, !935, !935, !61, !61, !61, !646, !646, !648, !489, !939, !61, !61, !61, !941, !943, !61, !935, !935, !935, !944, !937, !937, !281, !61, !61, !933, !933, !61, !946, !946, !281, !132, !285, !947, !947, !114, !116, !116, !102, !949, !949, !290, !290, !291, !293, !293, !933, !951, !61, !61, !953, !955, !197, !198, !230, !15, !956, !956, !956, !956, !956, !61, !61, !957, !61, !102, !958, !958, !960, !962, !962, !61, !61, !61, !61, !963, !965, !965, !61, !61, !61, !966, !968, !970, !972, !972, !973, !973, !61, !61, !975, !975, !977, !61, !975, !975, !975, !61, !61, !61, !646, !646, !648, !489, !979, !61, !61, !61, !981, !983, !61, !975, !975, !975, !984, !977, !977, !281, !61, !61, !973, !973, !61, !281, !132, !285, !986, !986, !148, !150, !150, !102, !988, !988, !290, !290, !291, !293, !293, !973, !990, !61, !61, !61, !992, !87, !87, !994, !80, !83, !995, !9, !996, !996, !49, !49, !49, !998, !1001, !1001, !1003, !1005, !1007, !61, !1009, !167, !1011, !1011, !1011, !61, !1013, !1015, !1015, !281, !61, !61, !1016, !1016, !132, !61, !1011, !1013, !1015, !1015, !1018, !1020, !1020, !61, !1013, !102, !1021, !1021, !1011, !1013, !102, !1023, !1023, !1025, !1025, !1027, !1029, !61, !61, !1031, !1033, !1035, !1037, !1037, !1003, !1003, !61, !61, !1038, !1038, !1040, !61, !1038, !1038, !1038, !61, !61, !646, !646, !648, !489, !1042, !61, !61, !61, !1044, !1046, !61, !1038, !1038, !1038, !1047, !1040, !1040, !281, !61, !61, !1003, !1003, !61, !285, !1049, !1049, !290, !290, !291, !293, !293, !1003, !1001, !1009, !1013, !1015, !1015, !61, !102, !1051, !1051, !1053, !1053, !1053, !61, !61, !61, !1055, !61, !61, !61, !61, !1057, !1059, !1059, !1061, !563, !563, !102, !1062, !1062, !136, !136, !1064, !136, !136, !1066, !61, !1068, !563, !563, !1070, !1072, !189, !189, !61, !61, !49, !49, !1074, !451, !451, !451, !455, !455, !455, !1077, !1077, !1079, !290, !290, !291, !293, !293, !271, !67, !67, !1081, !67, !67, !1083, !1085, !1085, !1083, !132, !127, !1087, !1087, !474, !474, !476, !1089, !1095, !263, !293, !293, !526, !526, !528, !1097, !167, !230, !230, !1099, !1099, !1101, !49, !49, !51, !51, !49, !49, !49, !49, !51, !51, !15, !15, !15, !15, !9, !9, !9, !9, !15, !15, !15, !15, !9, !9, !9, !9, !1103, !61, !61, !61, !246, !67, !67, !61, !61, !61, !61, !136, !136, !61, !259, !261, !261, !61, !263, !265, !265, !61, !326, !326, !328, !326, !326, !328, !271, !67, !67, !330, !61, !61, !61, !332, !67, !67, !61, !61, !61, !80, !67, !67, !83, !61, !61, !61, !85, !85, !87, !87, !281, !61, !61, !61, !334, !334, !334, !61, !132, !285, !336, !336, !102, !102, !143, !143, !145, !147, !147, !61, !61, !61, !61, !148, !150, !150, !61, !61, !102, !338, !338, !290, !290, !291, !293, !293, !340, !342, !342, !340, !169, !169, !171, !173, !173, !61, !61, !174, !176, !176, !102, !102, !157, !157, !171, !174, !176, !176, !61, !102, !151, !151, !127, !159, !159, !177, !61, !132, !127, !129, !129, !132, !132, !61, !61, !61, !61, !61, !61, !61, !61, !1105, !61, !61, !61, !246, !67, !67, !61, !61, !136, !136, !61, !310, !263, !312, !312, !61, !346, !346, !348, !346, !346, !348, !271, !350, !61, !61, !61, !352, !67, !67, !281, !61, !61, !61, !354, !354, !354, !342, !342, !340, !1107, !61, !61, !61, !246, !67, !67, !61, !61, !136, !136, !61, !1109, !263, !1111, !1111, !61, !1113, !1113, !1115, !1113, !1113, !1115, !271, !1117, !61, !61, !61, !1119, !67, !67, !281, !61, !61, !61, !1121, !1121, !1121, !342, !342, !340, !1123, !61, !61, !61, !246, !67, !67, !61, !61, !136, !136, !61, !1125, !263, !1127, !1127, !61, !1129, !1129, !1131, !1129, !1129, !1131, !271, !1133, !61, !61, !61, !1135, !67, !67, !281, !61, !61, !61, !1137, !1137, !1137, !342, !342, !340, !1139, !61, !267, !267, !269, !267, !267, !269, !277, !61, !61, !61, !279, !67, !67, !61, !197, !198, !124, !124, !281, !61, !61, !61, !283, !283, !283, !61, !132, !285, !286, !286, !102, !102, !105, !105, !109, !112, !112, !61, !61, !61, !61, !114, !116, !116, !61, !61, !102, !288, !288, !290, !290, !291, !293, !293, !294, !296, !296, !294, !183, !183, !184, !186, !186, !61, !61, !187, !189, !189, !102, !102, !125, !125, !184, !187, !189, !189, !102, !117, !117, !127, !134, !134, !190, !61, !192, !192, !61, !61, !61, !61, !1141, !314, !314, !316, !314, !314, !316, !318, !61, !61, !61, !320, !67, !67, !281, !61, !61, !61, !322, !322, !322, !296, !296, !294, !1143, !1145, !1145, !1147, !1145, !1145, !1147, !1149, !61, !61, !61, !1151, !67, !67, !281, !61, !61, !61, !1153, !1153, !1153, !296, !296, !294, !1155, !1157, !1157, !1159, !1157, !1157, !1159, !1161, !61, !61, !61, !1163, !67, !67, !281, !61, !61, !61, !1164, !1164, !1164, !296, !296, !294, !1166, !61, !61, !61, !246, !61, !300, !300, !302, !302, !302, !304, !306, !306, !300, !61, !132, !127, !308, !308, !136, !136, !61, !1168, !61, !61, !61, !246, !67, !67, !61, !61, !1170, !1170, !61, !1172, !1172, !1172, !1174, !1176, !1176, !1170, !61, !132, !127, !1178, !1178, !136, !136, !61, !1180, !61, !61, !61, !246, !67, !67, !61, !61, !1182, !1182, !61, !1184, !1184, !1184, !1186, !1188, !1188, !1182, !61, !132, !127, !1190, !1190, !136, !136, !61, !1192, !1194, !1196, !57, !57, !59, !61, !70, !61, !61, !61, !73, !73, !75, !75, !77, !61, !61, !61, !89, !61, !61, !61, !61, !91, !61, !57, !57, !59, !91, !61, !57, !57, !59, !91, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !93, !93, !93, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !242, !61, !61, !61, !246, !67, !67, !61, !61, !249, !249, !61, !251, !251, !251, !253, !255, !255, !249, !61, !132, !127, !257, !257, !136, !136, !61, !324, !93, !93, !93, !61, !93, !93, !93, !93, !93, !93, !95, !95, !95, !61, !93, !93, !93, !61, !93, !93, !93, !61, !93, !93, !93, !61, !95, !95, !95, !61, !95, !95, !95}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!1198}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uint16_t*", metadata !"uint16_t*", metadata !"uint16_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"Layer3_Neurons_CPU_hls", metadata !"Layer3_Weights_CPU_hls", metadata !"Layer4_Neurons_CPU_hls"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"Layer2_Neurons_CPU_hls", metadata !"Layer2_Weights_CPU_hls", metadata !"Layer3_Neurons_CPU_hls"}
!9 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!15 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !14, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!19 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double"}
!21 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!23 = metadata !{null, metadata !18, metadata !19, metadata !24, metadata !21, metadata !22, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!25 = metadata !{null, metadata !26, metadata !2, metadata !27, metadata !4, metadata !28, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*", metadata !"double*"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"sin", metadata !"cos"}
!29 = metadata !{null, metadata !26, metadata !2, metadata !30, metadata !4, metadata !28, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!31 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !32, metadata !6}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!33 = metadata !{null, metadata !18, metadata !19, metadata !24, metadata !21, metadata !32, metadata !6}
!34 = metadata !{null, metadata !35, metadata !19, metadata !36, metadata !21, metadata !37, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"intpart"}
!38 = metadata !{null, metadata !35, metadata !19, metadata !39, metadata !21, metadata !37, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*"}
!40 = metadata !{null, metadata !35, metadata !19, metadata !41, metadata !21, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int*"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"exp"}
!43 = metadata !{null, metadata !35, metadata !19, metadata !44, metadata !21, metadata !42, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int*"}
!45 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !42, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!47 = metadata !{null, metadata !18, metadata !19, metadata !48, metadata !21, metadata !42, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int"}
!49 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !50, metadata !6}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"t_in"}
!51 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !50, metadata !6}
!52 = metadata !{null, metadata !53, metadata !11, metadata !54, metadata !55, metadata !56, metadata !6}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!55 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"p"}
!57 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !58, metadata !6}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!59 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !60, metadata !6}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!61 = metadata !{null, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !6}
!62 = metadata !{metadata !"kernel_arg_addr_space"}
!63 = metadata !{metadata !"kernel_arg_access_qual"}
!64 = metadata !{metadata !"kernel_arg_type"}
!65 = metadata !{metadata !"kernel_arg_type_qual"}
!66 = metadata !{metadata !"kernel_arg_name"}
!67 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !69, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!70 = metadata !{null, metadata !18, metadata !19, metadata !71, metadata !21, metadata !72, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!73 = metadata !{null, metadata !10, metadata !11, metadata !74, metadata !13, metadata !69, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!75 = metadata !{null, metadata !10, metadata !11, metadata !76, metadata !13, metadata !69, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!77 = metadata !{null, metadata !10, metadata !11, metadata !78, metadata !13, metadata !79, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!80 = metadata !{null, metadata !18, metadata !19, metadata !81, metadata !21, metadata !82, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!83 = metadata !{null, metadata !18, metadata !19, metadata !84, metadata !21, metadata !72, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!85 = metadata !{null, metadata !10, metadata !11, metadata !86, metadata !13, metadata !69, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!87 = metadata !{null, metadata !10, metadata !11, metadata !88, metadata !13, metadata !69, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!89 = metadata !{null, metadata !10, metadata !11, metadata !90, metadata !13, metadata !79, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!91 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !92, metadata !6}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!93 = metadata !{null, metadata !53, metadata !11, metadata !54, metadata !55, metadata !94, metadata !6}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!95 = metadata !{null, metadata !96, metadata !19, metadata !97, metadata !98, metadata !99, metadata !6}
!96 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!98 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!100 = metadata !{null, metadata !53, metadata !11, metadata !54, metadata !55, metadata !101, metadata !6}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"tagp"}
!102 = metadata !{null, metadata !18, metadata !19, metadata !103, metadata !21, metadata !104, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!105 = metadata !{null, metadata !106, metadata !2, metadata !107, metadata !4, metadata !108, metadata !6}
!106 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!108 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!109 = metadata !{null, metadata !10, metadata !11, metadata !110, metadata !13, metadata !111, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!112 = metadata !{null, metadata !10, metadata !11, metadata !110, metadata !13, metadata !113, metadata !6}
!113 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!114 = metadata !{null, metadata !10, metadata !11, metadata !115, metadata !13, metadata !111, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!116 = metadata !{null, metadata !10, metadata !11, metadata !115, metadata !13, metadata !69, metadata !6}
!117 = metadata !{null, metadata !106, metadata !2, metadata !118, metadata !4, metadata !108, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!119 = metadata !{null, metadata !10, metadata !11, metadata !120, metadata !13, metadata !111, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!121 = metadata !{null, metadata !10, metadata !11, metadata !120, metadata !13, metadata !113, metadata !6}
!122 = metadata !{null, metadata !10, metadata !11, metadata !123, metadata !13, metadata !111, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!124 = metadata !{null, metadata !10, metadata !11, metadata !123, metadata !13, metadata !69, metadata !6}
!125 = metadata !{null, metadata !106, metadata !2, metadata !126, metadata !4, metadata !108, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!127 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !128, metadata !6}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!129 = metadata !{null, metadata !96, metadata !19, metadata !130, metadata !21, metadata !131, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!131 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!132 = metadata !{null, metadata !10, metadata !11, metadata !133, metadata !13, metadata !111, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!134 = metadata !{null, metadata !96, metadata !19, metadata !135, metadata !21, metadata !131, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!136 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !111, metadata !6}
!137 = metadata !{null, metadata !10, metadata !11, metadata !138, metadata !13, metadata !79, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!139 = metadata !{null, metadata !10, metadata !11, metadata !140, metadata !13, metadata !79, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!141 = metadata !{null, metadata !10, metadata !11, metadata !142, metadata !13, metadata !79, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<23> &"}
!143 = metadata !{null, metadata !106, metadata !2, metadata !144, metadata !4, metadata !108, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!145 = metadata !{null, metadata !10, metadata !11, metadata !146, metadata !13, metadata !111, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!147 = metadata !{null, metadata !10, metadata !11, metadata !146, metadata !13, metadata !113, metadata !6}
!148 = metadata !{null, metadata !10, metadata !11, metadata !149, metadata !13, metadata !111, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!150 = metadata !{null, metadata !10, metadata !11, metadata !149, metadata !13, metadata !69, metadata !6}
!151 = metadata !{null, metadata !106, metadata !2, metadata !152, metadata !4, metadata !108, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!153 = metadata !{null, metadata !10, metadata !11, metadata !154, metadata !13, metadata !111, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<11, false> &"}
!155 = metadata !{null, metadata !10, metadata !11, metadata !154, metadata !13, metadata !113, metadata !6}
!156 = metadata !{null, metadata !10, metadata !11, metadata !88, metadata !13, metadata !111, metadata !6}
!157 = metadata !{null, metadata !106, metadata !2, metadata !158, metadata !4, metadata !108, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!159 = metadata !{null, metadata !96, metadata !19, metadata !160, metadata !21, metadata !131, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!161 = metadata !{null, metadata !10, metadata !11, metadata !162, metadata !13, metadata !79, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<11> &"}
!163 = metadata !{null, metadata !10, metadata !11, metadata !164, metadata !13, metadata !79, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<52> &"}
!165 = metadata !{null, metadata !18, metadata !19, metadata !166, metadata !21, metadata !72, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"int"}
!167 = metadata !{null, metadata !10, metadata !11, metadata !86, metadata !13, metadata !79, metadata !6}
!168 = metadata !{null, metadata !18, metadata !19, metadata !81, metadata !21, metadata !72, metadata !6}
!169 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !170, metadata !6}
!170 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!171 = metadata !{null, metadata !10, metadata !11, metadata !172, metadata !13, metadata !111, metadata !6}
!172 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!173 = metadata !{null, metadata !10, metadata !11, metadata !172, metadata !13, metadata !113, metadata !6}
!174 = metadata !{null, metadata !10, metadata !11, metadata !175, metadata !13, metadata !111, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!176 = metadata !{null, metadata !10, metadata !11, metadata !175, metadata !13, metadata !69, metadata !6}
!177 = metadata !{null, metadata !10, metadata !11, metadata !178, metadata !13, metadata !111, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!179 = metadata !{null, metadata !18, metadata !19, metadata !180, metadata !21, metadata !72, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"int"}
!181 = metadata !{null, metadata !18, metadata !19, metadata !182, metadata !21, metadata !72, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!183 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !170, metadata !6}
!184 = metadata !{null, metadata !10, metadata !11, metadata !185, metadata !13, metadata !111, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!186 = metadata !{null, metadata !10, metadata !11, metadata !185, metadata !13, metadata !113, metadata !6}
!187 = metadata !{null, metadata !10, metadata !11, metadata !188, metadata !13, metadata !111, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!189 = metadata !{null, metadata !10, metadata !11, metadata !188, metadata !13, metadata !69, metadata !6}
!190 = metadata !{null, metadata !10, metadata !11, metadata !191, metadata !13, metadata !111, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!192 = metadata !{null, metadata !10, metadata !11, metadata !193, metadata !13, metadata !111, metadata !6}
!193 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!194 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !195, metadata !6}
!195 = metadata !{metadata !"kernel_arg_name", metadata !"a_re"}
!196 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !195, metadata !6}
!197 = metadata !{null, metadata !18, metadata !19, metadata !182, metadata !21, metadata !82, metadata !6}
!198 = metadata !{null, metadata !18, metadata !19, metadata !199, metadata !21, metadata !72, metadata !6}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!200 = metadata !{null, metadata !18, metadata !19, metadata !201, metadata !21, metadata !82, metadata !6}
!201 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"uint"}
!202 = metadata !{null, metadata !10, metadata !11, metadata !193, metadata !13, metadata !69, metadata !6}
!203 = metadata !{null, metadata !18, metadata !19, metadata !204, metadata !21, metadata !72, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, false> &"}
!205 = metadata !{null, metadata !10, metadata !11, metadata !206, metadata !13, metadata !69, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!207 = metadata !{null, metadata !10, metadata !11, metadata !208, metadata !13, metadata !209, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32>"}
!209 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!210 = metadata !{null, metadata !10, metadata !11, metadata !211, metadata !13, metadata !212, metadata !6}
!211 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<float> &"}
!212 = metadata !{metadata !"kernel_arg_name", metadata !""}
!213 = metadata !{null, metadata !18, metadata !19, metadata !214, metadata !21, metadata !82, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!215 = metadata !{null, metadata !18, metadata !19, metadata !216, metadata !21, metadata !72, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!217 = metadata !{null, metadata !10, metadata !11, metadata !90, metadata !13, metadata !69, metadata !6}
!218 = metadata !{null, metadata !10, metadata !11, metadata !219, metadata !13, metadata !69, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!220 = metadata !{null, metadata !18, metadata !19, metadata !221, metadata !21, metadata !82, metadata !6}
!221 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"uint"}
!222 = metadata !{null, metadata !18, metadata !19, metadata !223, metadata !21, metadata !72, metadata !6}
!223 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"const ap_int_base<32, false> &"}
!224 = metadata !{null, metadata !18, metadata !19, metadata !225, metadata !21, metadata !72, metadata !6}
!225 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<23, false> &"}
!226 = metadata !{null, metadata !10, metadata !11, metadata !227, metadata !13, metadata !69, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, true> &"}
!228 = metadata !{null, metadata !18, metadata !19, metadata !229, metadata !21, metadata !72, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!230 = metadata !{null, metadata !10, metadata !11, metadata !188, metadata !13, metadata !79, metadata !6}
!231 = metadata !{null, metadata !53, metadata !11, metadata !232, metadata !13, metadata !233, metadata !6}
!232 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t*"}
!233 = metadata !{metadata !"kernel_arg_name", metadata !"mask_table"}
!234 = metadata !{null, metadata !18, metadata !19, metadata !235, metadata !21, metadata !82, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"ap_ulong"}
!236 = metadata !{null, metadata !18, metadata !19, metadata !237, metadata !21, metadata !72, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"const ap_int_base<64, false> &"}
!238 = metadata !{null, metadata !18, metadata !19, metadata !239, metadata !21, metadata !72, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"uint"}
!240 = metadata !{null, metadata !53, metadata !11, metadata !241, metadata !13, metadata !233, metadata !6}
!241 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t*"}
!242 = metadata !{null, metadata !243, metadata !2, metadata !244, metadata !4, metadata !245, metadata !6}
!243 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!245 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!246 = metadata !{null, metadata !10, metadata !11, metadata !247, metadata !13, metadata !248, metadata !6}
!247 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!248 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!249 = metadata !{null, metadata !10, metadata !11, metadata !250, metadata !13, metadata !69, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!251 = metadata !{null, metadata !10, metadata !11, metadata !252, metadata !13, metadata !69, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!253 = metadata !{null, metadata !10, metadata !11, metadata !254, metadata !13, metadata !69, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!255 = metadata !{null, metadata !10, metadata !11, metadata !256, metadata !13, metadata !69, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!257 = metadata !{null, metadata !96, metadata !19, metadata !258, metadata !21, metadata !131, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!259 = metadata !{null, metadata !18, metadata !19, metadata !260, metadata !21, metadata !82, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!261 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !262, metadata !6}
!262 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!263 = metadata !{null, metadata !10, metadata !11, metadata !264, metadata !13, metadata !79, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!265 = metadata !{null, metadata !10, metadata !11, metadata !266, metadata !13, metadata !69, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!267 = metadata !{null, metadata !10, metadata !11, metadata !268, metadata !13, metadata !69, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!269 = metadata !{null, metadata !10, metadata !11, metadata !270, metadata !13, metadata !69, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!271 = metadata !{null, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !6}
!272 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!273 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!274 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!275 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!276 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!277 = metadata !{null, metadata !18, metadata !19, metadata !278, metadata !21, metadata !72, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!279 = metadata !{null, metadata !10, metadata !11, metadata !280, metadata !13, metadata !79, metadata !6}
!280 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!281 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !282, metadata !6}
!282 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!283 = metadata !{null, metadata !10, metadata !11, metadata !284, metadata !13, metadata !69, metadata !6}
!284 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!285 = metadata !{null, metadata !10, metadata !11, metadata !193, metadata !13, metadata !128, metadata !6}
!286 = metadata !{null, metadata !96, metadata !19, metadata !287, metadata !21, metadata !131, metadata !6}
!287 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!288 = metadata !{null, metadata !106, metadata !2, metadata !289, metadata !4, metadata !108, metadata !6}
!289 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!290 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !58, metadata !6}
!291 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !292, metadata !6}
!292 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!293 = metadata !{null, metadata !10, metadata !11, metadata !264, metadata !13, metadata !69, metadata !6}
!294 = metadata !{null, metadata !10, metadata !11, metadata !295, metadata !13, metadata !69, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!296 = metadata !{null, metadata !10, metadata !11, metadata !297, metadata !13, metadata !69, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!298 = metadata !{null, metadata !243, metadata !2, metadata !299, metadata !4, metadata !245, metadata !6}
!299 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!300 = metadata !{null, metadata !10, metadata !11, metadata !301, metadata !13, metadata !69, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!302 = metadata !{null, metadata !10, metadata !11, metadata !303, metadata !13, metadata !69, metadata !6}
!303 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!304 = metadata !{null, metadata !10, metadata !11, metadata !305, metadata !13, metadata !69, metadata !6}
!305 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!306 = metadata !{null, metadata !10, metadata !11, metadata !307, metadata !13, metadata !69, metadata !6}
!307 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!308 = metadata !{null, metadata !96, metadata !19, metadata !309, metadata !21, metadata !131, metadata !6}
!309 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!310 = metadata !{null, metadata !18, metadata !19, metadata !311, metadata !21, metadata !82, metadata !6}
!311 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!312 = metadata !{null, metadata !10, metadata !11, metadata !313, metadata !13, metadata !69, metadata !6}
!313 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!314 = metadata !{null, metadata !10, metadata !11, metadata !315, metadata !13, metadata !69, metadata !6}
!315 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!316 = metadata !{null, metadata !10, metadata !11, metadata !317, metadata !13, metadata !69, metadata !6}
!317 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!318 = metadata !{null, metadata !18, metadata !19, metadata !319, metadata !21, metadata !72, metadata !6}
!319 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!320 = metadata !{null, metadata !10, metadata !11, metadata !321, metadata !13, metadata !79, metadata !6}
!321 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!322 = metadata !{null, metadata !10, metadata !11, metadata !323, metadata !13, metadata !69, metadata !6}
!323 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!324 = metadata !{null, metadata !243, metadata !2, metadata !325, metadata !4, metadata !245, metadata !6}
!325 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!326 = metadata !{null, metadata !10, metadata !11, metadata !327, metadata !13, metadata !69, metadata !6}
!327 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!328 = metadata !{null, metadata !10, metadata !11, metadata !329, metadata !13, metadata !69, metadata !6}
!329 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!330 = metadata !{null, metadata !18, metadata !19, metadata !331, metadata !21, metadata !72, metadata !6}
!331 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!332 = metadata !{null, metadata !10, metadata !11, metadata !333, metadata !13, metadata !79, metadata !6}
!333 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!334 = metadata !{null, metadata !10, metadata !11, metadata !335, metadata !13, metadata !69, metadata !6}
!335 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!336 = metadata !{null, metadata !96, metadata !19, metadata !337, metadata !21, metadata !131, metadata !6}
!337 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!338 = metadata !{null, metadata !106, metadata !2, metadata !339, metadata !4, metadata !108, metadata !6}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!340 = metadata !{null, metadata !10, metadata !11, metadata !341, metadata !13, metadata !69, metadata !6}
!341 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!342 = metadata !{null, metadata !10, metadata !11, metadata !343, metadata !13, metadata !69, metadata !6}
!343 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!344 = metadata !{null, metadata !243, metadata !2, metadata !345, metadata !4, metadata !245, metadata !6}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!346 = metadata !{null, metadata !10, metadata !11, metadata !347, metadata !13, metadata !69, metadata !6}
!347 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!348 = metadata !{null, metadata !10, metadata !11, metadata !349, metadata !13, metadata !69, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!350 = metadata !{null, metadata !18, metadata !19, metadata !351, metadata !21, metadata !72, metadata !6}
!351 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!352 = metadata !{null, metadata !10, metadata !11, metadata !353, metadata !13, metadata !79, metadata !6}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!354 = metadata !{null, metadata !10, metadata !11, metadata !355, metadata !13, metadata !69, metadata !6}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!356 = metadata !{null, metadata !18, metadata !19, metadata !357, metadata !21, metadata !82, metadata !6}
!357 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"ap_ulong"}
!358 = metadata !{null, metadata !18, metadata !19, metadata !359, metadata !21, metadata !72, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!360 = metadata !{null, metadata !10, metadata !11, metadata !361, metadata !13, metadata !69, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, false> &"}
!362 = metadata !{null, metadata !10, metadata !11, metadata !363, metadata !13, metadata !209, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<64>"}
!364 = metadata !{null, metadata !10, metadata !11, metadata !365, metadata !13, metadata !212, metadata !6}
!365 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<double> &"}
!366 = metadata !{null, metadata !18, metadata !19, metadata !367, metadata !21, metadata !72, metadata !6}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!368 = metadata !{null, metadata !18, metadata !19, metadata !369, metadata !21, metadata !370, metadata !6}
!369 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, false> &"}
!370 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!371 = metadata !{null, metadata !18, metadata !19, metadata !372, metadata !21, metadata !72, metadata !6}
!372 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, false> &"}
!373 = metadata !{null, metadata !18, metadata !19, metadata !374, metadata !21, metadata !370, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong", metadata !"const ap_int_base<52, false> &"}
!375 = metadata !{null, metadata !18, metadata !19, metadata !376, metadata !21, metadata !72, metadata !6}
!376 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<52, false> &"}
!377 = metadata !{null, metadata !26, metadata !2, metadata !30, metadata !4, metadata !378, metadata !6}
!378 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s", metadata !"c"}
!379 = metadata !{null, metadata !10, metadata !11, metadata !76, metadata !13, metadata !111, metadata !6}
!380 = metadata !{null, metadata !96, metadata !19, metadata !381, metadata !21, metadata !131, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<4, false>*", metadata !"int"}
!382 = metadata !{null, metadata !10, metadata !11, metadata !383, metadata !13, metadata !69, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!384 = metadata !{null, metadata !18, metadata !19, metadata !385, metadata !21, metadata !72, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, true> &"}
!386 = metadata !{null, metadata !10, metadata !11, metadata !387, metadata !13, metadata !69, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!388 = metadata !{null, metadata !10, metadata !11, metadata !389, metadata !13, metadata !79, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!390 = metadata !{null, metadata !10, metadata !11, metadata !391, metadata !13, metadata !79, metadata !6}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!392 = metadata !{null, metadata !10, metadata !11, metadata !391, metadata !13, metadata !69, metadata !6}
!393 = metadata !{null, metadata !10, metadata !11, metadata !394, metadata !13, metadata !69, metadata !6}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!395 = metadata !{null, metadata !10, metadata !11, metadata !396, metadata !13, metadata !69, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!397 = metadata !{null, metadata !10, metadata !11, metadata !398, metadata !13, metadata !79, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<13, -2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!399 = metadata !{null, metadata !10, metadata !11, metadata !400, metadata !13, metadata !69, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, -16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!401 = metadata !{null, metadata !10, metadata !11, metadata !402, metadata !13, metadata !79, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<21, -1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!403 = metadata !{null, metadata !10, metadata !11, metadata !404, metadata !13, metadata !69, metadata !6}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<38, -8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!405 = metadata !{null, metadata !10, metadata !11, metadata !406, metadata !13, metadata !69, metadata !6}
!406 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!407 = metadata !{null, metadata !10, metadata !11, metadata !408, metadata !13, metadata !69, metadata !6}
!408 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!409 = metadata !{null, metadata !243, metadata !2, metadata !410, metadata !4, metadata !411, metadata !6}
!410 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<31, 1>", metadata !"float &", metadata !"int"}
!411 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"result", metadata !"prescale"}
!412 = metadata !{null, metadata !18, metadata !19, metadata !413, metadata !21, metadata !82, metadata !6}
!413 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!414 = metadata !{null, metadata !10, metadata !11, metadata !415, metadata !13, metadata !69, metadata !6}
!415 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!416 = metadata !{null, metadata !10, metadata !11, metadata !417, metadata !13, metadata !69, metadata !6}
!417 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!418 = metadata !{null, metadata !10, metadata !11, metadata !419, metadata !13, metadata !420, metadata !6}
!419 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<1 + SIG_BITS, 1>"}
!420 = metadata !{metadata !"kernel_arg_name", metadata !"mantissa"}
!421 = metadata !{null, metadata !106, metadata !2, metadata !422, metadata !4, metadata !108, metadata !6}
!422 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!423 = metadata !{null, metadata !10, metadata !11, metadata !424, metadata !13, metadata !69, metadata !6}
!424 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!425 = metadata !{null, metadata !10, metadata !11, metadata !424, metadata !13, metadata !111, metadata !6}
!426 = metadata !{null, metadata !106, metadata !2, metadata !427, metadata !4, metadata !108, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!428 = metadata !{null, metadata !10, metadata !11, metadata !429, metadata !13, metadata !111, metadata !6}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!430 = metadata !{null, metadata !10, metadata !11, metadata !431, metadata !13, metadata !111, metadata !6}
!431 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!432 = metadata !{null, metadata !10, metadata !11, metadata !433, metadata !13, metadata !69, metadata !6}
!433 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!434 = metadata !{null, metadata !106, metadata !2, metadata !435, metadata !4, metadata !108, metadata !6}
!435 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!436 = metadata !{null, metadata !10, metadata !11, metadata !437, metadata !13, metadata !111, metadata !6}
!437 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!438 = metadata !{null, metadata !10, metadata !11, metadata !431, metadata !13, metadata !69, metadata !6}
!439 = metadata !{null, metadata !10, metadata !11, metadata !417, metadata !13, metadata !79, metadata !6}
!440 = metadata !{null, metadata !10, metadata !11, metadata !441, metadata !13, metadata !69, metadata !6}
!441 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!442 = metadata !{null, metadata !18, metadata !19, metadata !443, metadata !21, metadata !370, metadata !6}
!443 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!444 = metadata !{null, metadata !10, metadata !11, metadata !445, metadata !13, metadata !79, metadata !6}
!445 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!446 = metadata !{null, metadata !10, metadata !11, metadata !445, metadata !13, metadata !69, metadata !6}
!447 = metadata !{null, metadata !10, metadata !11, metadata !448, metadata !13, metadata !69, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!449 = metadata !{null, metadata !10, metadata !11, metadata !450, metadata !13, metadata !79, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!451 = metadata !{null, metadata !10, metadata !11, metadata !452, metadata !13, metadata !69, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, -14, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!453 = metadata !{null, metadata !10, metadata !11, metadata !454, metadata !13, metadata !79, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<23, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!455 = metadata !{null, metadata !10, metadata !11, metadata !456, metadata !13, metadata !69, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, -6, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!457 = metadata !{null, metadata !10, metadata !11, metadata !458, metadata !13, metadata !69, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<29, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!459 = metadata !{null, metadata !10, metadata !11, metadata !460, metadata !13, metadata !69, metadata !6}
!460 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!461 = metadata !{null, metadata !10, metadata !11, metadata !462, metadata !13, metadata !79, metadata !6}
!462 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!463 = metadata !{null, metadata !10, metadata !11, metadata !464, metadata !13, metadata !69, metadata !6}
!464 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<18, -14, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!465 = metadata !{null, metadata !10, metadata !11, metadata !466, metadata !13, metadata !69, metadata !6}
!466 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, -7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!467 = metadata !{null, metadata !10, metadata !11, metadata !468, metadata !13, metadata !69, metadata !6}
!468 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!469 = metadata !{null, metadata !10, metadata !11, metadata !470, metadata !13, metadata !69, metadata !6}
!470 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!471 = metadata !{null, metadata !10, metadata !11, metadata !389, metadata !13, metadata !69, metadata !6}
!472 = metadata !{null, metadata !106, metadata !2, metadata !473, metadata !4, metadata !108, metadata !6}
!473 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!474 = metadata !{null, metadata !10, metadata !11, metadata !475, metadata !13, metadata !69, metadata !6}
!475 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!476 = metadata !{null, metadata !10, metadata !11, metadata !475, metadata !13, metadata !111, metadata !6}
!477 = metadata !{null, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !6}
!478 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!479 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!480 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &"}
!481 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!482 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex"}
!483 = metadata !{null, metadata !10, metadata !11, metadata !387, metadata !13, metadata !79, metadata !6}
!484 = metadata !{null, metadata !10, metadata !11, metadata !485, metadata !13, metadata !79, metadata !6}
!485 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!486 = metadata !{null, metadata !10, metadata !11, metadata !193, metadata !13, metadata !282, metadata !6}
!487 = metadata !{null, metadata !10, metadata !11, metadata !488, metadata !13, metadata !69, metadata !6}
!488 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!489 = metadata !{null, metadata !243, metadata !2, metadata !490, metadata !4, metadata !491, metadata !6}
!490 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!491 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!492 = metadata !{null, metadata !10, metadata !11, metadata !493, metadata !13, metadata !69, metadata !6}
!493 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!494 = metadata !{null, metadata !10, metadata !11, metadata !495, metadata !13, metadata !69, metadata !6}
!495 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!496 = metadata !{null, metadata !10, metadata !11, metadata !497, metadata !13, metadata !14, metadata !6}
!497 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<49, 0>"}
!498 = metadata !{null, metadata !106, metadata !2, metadata !499, metadata !4, metadata !108, metadata !6}
!499 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int", metadata !"int"}
!500 = metadata !{null, metadata !10, metadata !11, metadata !501, metadata !13, metadata !111, metadata !6}
!501 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<19, false> &"}
!502 = metadata !{null, metadata !10, metadata !11, metadata !501, metadata !13, metadata !113, metadata !6}
!503 = metadata !{null, metadata !10, metadata !11, metadata !504, metadata !13, metadata !111, metadata !6}
!504 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, false> &"}
!505 = metadata !{null, metadata !10, metadata !11, metadata !504, metadata !13, metadata !69, metadata !6}
!506 = metadata !{null, metadata !96, metadata !19, metadata !507, metadata !21, metadata !131, metadata !6}
!507 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int"}
!508 = metadata !{null, metadata !106, metadata !2, metadata !509, metadata !4, metadata !108, metadata !6}
!509 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!510 = metadata !{null, metadata !10, metadata !11, metadata !511, metadata !13, metadata !111, metadata !6}
!511 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!512 = metadata !{null, metadata !10, metadata !11, metadata !513, metadata !13, metadata !111, metadata !6}
!513 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &"}
!514 = metadata !{null, metadata !10, metadata !11, metadata !513, metadata !13, metadata !69, metadata !6}
!515 = metadata !{null, metadata !18, metadata !19, metadata !516, metadata !21, metadata !370, metadata !6}
!516 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!517 = metadata !{null, metadata !10, metadata !11, metadata !488, metadata !13, metadata !79, metadata !6}
!518 = metadata !{null, metadata !10, metadata !11, metadata !519, metadata !13, metadata !69, metadata !6}
!519 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<82, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!520 = metadata !{null, metadata !10, metadata !11, metadata !521, metadata !13, metadata !69, metadata !6}
!521 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<49, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!522 = metadata !{null, metadata !96, metadata !19, metadata !523, metadata !21, metadata !131, metadata !6}
!523 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<3, false>*", metadata !"int"}
!524 = metadata !{null, metadata !18, metadata !19, metadata !525, metadata !21, metadata !72, metadata !6}
!525 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<3, false> &", metadata !"int"}
!526 = metadata !{null, metadata !10, metadata !11, metadata !527, metadata !13, metadata !69, metadata !6}
!527 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<95, 27, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!528 = metadata !{null, metadata !10, metadata !11, metadata !529, metadata !13, metadata !69, metadata !6}
!529 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!530 = metadata !{null, metadata !10, metadata !11, metadata !383, metadata !13, metadata !79, metadata !6}
!531 = metadata !{null, metadata !106, metadata !2, metadata !532, metadata !4, metadata !108, metadata !6}
!532 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false>*", metadata !"int", metadata !"int"}
!533 = metadata !{null, metadata !10, metadata !11, metadata !534, metadata !13, metadata !111, metadata !6}
!534 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<95, false> &"}
!535 = metadata !{null, metadata !10, metadata !11, metadata !534, metadata !13, metadata !113, metadata !6}
!536 = metadata !{null, metadata !10, metadata !11, metadata !537, metadata !13, metadata !111, metadata !6}
!537 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<95, false> &"}
!538 = metadata !{null, metadata !106, metadata !2, metadata !539, metadata !4, metadata !108, metadata !6}
!539 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!540 = metadata !{null, metadata !243, metadata !2, metadata !541, metadata !4, metadata !542, metadata !6}
!541 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<71>", metadata !"ap_uint<24>", metadata !"ap_uint<71 + 24> &"}
!542 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"m"}
!543 = metadata !{null, metadata !10, metadata !11, metadata !544, metadata !13, metadata !111, metadata !6}
!544 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &"}
!545 = metadata !{null, metadata !10, metadata !11, metadata !544, metadata !13, metadata !69, metadata !6}
!546 = metadata !{null, metadata !106, metadata !2, metadata !547, metadata !4, metadata !108, metadata !6}
!547 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<41, false>*", metadata !"int", metadata !"int"}
!548 = metadata !{null, metadata !10, metadata !11, metadata !549, metadata !13, metadata !111, metadata !6}
!549 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<41, false> &"}
!550 = metadata !{null, metadata !10, metadata !11, metadata !549, metadata !13, metadata !113, metadata !6}
!551 = metadata !{null, metadata !10, metadata !11, metadata !544, metadata !13, metadata !79, metadata !6}
!552 = metadata !{null, metadata !18, metadata !19, metadata !553, metadata !21, metadata !72, metadata !6}
!553 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &", metadata !"int"}
!554 = metadata !{null, metadata !106, metadata !2, metadata !555, metadata !4, metadata !108, metadata !6}
!555 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<71, false>*", metadata !"int", metadata !"int"}
!556 = metadata !{null, metadata !18, metadata !19, metadata !557, metadata !21, metadata !558, metadata !6}
!557 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &", metadata !"const ap_int_base<24, false> &"}
!558 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!559 = metadata !{null, metadata !10, metadata !11, metadata !560, metadata !13, metadata !113, metadata !6}
!560 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &"}
!561 = metadata !{null, metadata !18, metadata !19, metadata !562, metadata !21, metadata !72, metadata !6}
!562 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &", metadata !"const ap_int_base<24, false> &"}
!563 = metadata !{null, metadata !10, metadata !11, metadata !564, metadata !13, metadata !69, metadata !6}
!564 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!565 = metadata !{null, metadata !10, metadata !11, metadata !566, metadata !13, metadata !69, metadata !6}
!566 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &"}
!567 = metadata !{null, metadata !10, metadata !11, metadata !537, metadata !13, metadata !69, metadata !6}
!568 = metadata !{null, metadata !10, metadata !11, metadata !569, metadata !13, metadata !79, metadata !6}
!569 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<41> &"}
!570 = metadata !{null, metadata !18, metadata !19, metadata !571, metadata !21, metadata !572, metadata !6}
!571 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"float"}
!572 = metadata !{metadata !"kernel_arg_name", metadata !"exp", metadata !"dummy"}
!573 = metadata !{null, metadata !106, metadata !2, metadata !574, metadata !4, metadata !108, metadata !6}
!574 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<100, false>*", metadata !"int", metadata !"int"}
!575 = metadata !{null, metadata !106, metadata !2, metadata !576, metadata !4, metadata !108, metadata !6}
!576 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<9, true>*", metadata !"int", metadata !"int"}
!577 = metadata !{null, metadata !10, metadata !11, metadata !578, metadata !13, metadata !113, metadata !6}
!578 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<9, true> &"}
!579 = metadata !{null, metadata !10, metadata !11, metadata !580, metadata !13, metadata !79, metadata !6}
!580 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!581 = metadata !{null, metadata !10, metadata !11, metadata !582, metadata !13, metadata !113, metadata !6}
!582 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &"}
!583 = metadata !{null, metadata !18, metadata !19, metadata !584, metadata !21, metadata !72, metadata !6}
!584 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"int"}
!585 = metadata !{null, metadata !10, metadata !11, metadata !586, metadata !13, metadata !79, metadata !6}
!586 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<71> &"}
!587 = metadata !{null, metadata !96, metadata !19, metadata !588, metadata !21, metadata !131, metadata !6}
!588 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int"}
!589 = metadata !{null, metadata !106, metadata !2, metadata !590, metadata !4, metadata !108, metadata !6}
!590 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!591 = metadata !{null, metadata !10, metadata !11, metadata !592, metadata !13, metadata !79, metadata !6}
!592 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!593 = metadata !{null, metadata !26, metadata !2, metadata !27, metadata !4, metadata !594, metadata !6}
!594 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s_out", metadata !"c_out"}
!595 = metadata !{null, metadata !243, metadata !2, metadata !596, metadata !4, metadata !594, metadata !6}
!596 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double &", metadata !"double &"}
!597 = metadata !{null, metadata !10, metadata !11, metadata !598, metadata !13, metadata !69, metadata !6}
!598 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<78> &"}
!599 = metadata !{null, metadata !10, metadata !11, metadata !600, metadata !13, metadata !601, metadata !6}
!600 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>"}
!601 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!602 = metadata !{null, metadata !18, metadata !19, metadata !603, metadata !21, metadata !72, metadata !6}
!603 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"int"}
!604 = metadata !{null, metadata !10, metadata !11, metadata !605, metadata !13, metadata !111, metadata !6}
!605 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!606 = metadata !{null, metadata !10, metadata !11, metadata !607, metadata !13, metadata !111, metadata !6}
!607 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &"}
!608 = metadata !{null, metadata !10, metadata !11, metadata !607, metadata !13, metadata !69, metadata !6}
!609 = metadata !{null, metadata !10, metadata !11, metadata !610, metadata !13, metadata !69, metadata !6}
!610 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<78, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!611 = metadata !{null, metadata !10, metadata !11, metadata !612, metadata !13, metadata !69, metadata !6}
!612 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!613 = metadata !{null, metadata !106, metadata !2, metadata !614, metadata !4, metadata !108, metadata !6}
!614 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<78, false>*", metadata !"int", metadata !"int"}
!615 = metadata !{null, metadata !10, metadata !11, metadata !616, metadata !13, metadata !111, metadata !6}
!616 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<78, false> &"}
!617 = metadata !{null, metadata !10, metadata !11, metadata !616, metadata !13, metadata !113, metadata !6}
!618 = metadata !{null, metadata !106, metadata !2, metadata !619, metadata !4, metadata !108, metadata !6}
!619 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!620 = metadata !{null, metadata !18, metadata !19, metadata !621, metadata !21, metadata !72, metadata !6}
!621 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<78, true> &"}
!622 = metadata !{null, metadata !10, metadata !11, metadata !623, metadata !13, metadata !69, metadata !6}
!623 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &"}
!624 = metadata !{null, metadata !10, metadata !11, metadata !625, metadata !13, metadata !69, metadata !6}
!625 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<80, true> &"}
!626 = metadata !{null, metadata !18, metadata !19, metadata !627, metadata !21, metadata !72, metadata !6}
!627 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &", metadata !"int"}
!628 = metadata !{null, metadata !10, metadata !11, metadata !629, metadata !13, metadata !69, metadata !6}
!629 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!630 = metadata !{null, metadata !10, metadata !11, metadata !629, metadata !13, metadata !111, metadata !6}
!631 = metadata !{null, metadata !243, metadata !2, metadata !632, metadata !4, metadata !633, metadata !6}
!632 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &"}
!633 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"z"}
!634 = metadata !{null, metadata !243, metadata !2, metadata !635, metadata !4, metadata !636, metadata !6}
!635 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!636 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"add"}
!637 = metadata !{null, metadata !10, metadata !11, metadata !638, metadata !13, metadata !79, metadata !6}
!638 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!639 = metadata !{null, metadata !10, metadata !11, metadata !638, metadata !13, metadata !69, metadata !6}
!640 = metadata !{null, metadata !10, metadata !11, metadata !641, metadata !13, metadata !69, metadata !6}
!641 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!642 = metadata !{null, metadata !10, metadata !11, metadata !643, metadata !13, metadata !69, metadata !6}
!643 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<80, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!644 = metadata !{null, metadata !10, metadata !11, metadata !645, metadata !13, metadata !69, metadata !6}
!645 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<80, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!646 = metadata !{null, metadata !10, metadata !11, metadata !647, metadata !13, metadata !69, metadata !6}
!647 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!648 = metadata !{null, metadata !10, metadata !11, metadata !649, metadata !13, metadata !69, metadata !6}
!649 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!650 = metadata !{null, metadata !10, metadata !11, metadata !651, metadata !13, metadata !69, metadata !6}
!651 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!652 = metadata !{null, metadata !243, metadata !2, metadata !653, metadata !4, metadata !636, metadata !6}
!653 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"_Bool"}
!654 = metadata !{null, metadata !10, metadata !11, metadata !641, metadata !13, metadata !79, metadata !6}
!655 = metadata !{null, metadata !243, metadata !2, metadata !656, metadata !4, metadata !636, metadata !6}
!656 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!657 = metadata !{null, metadata !96, metadata !19, metadata !658, metadata !21, metadata !131, metadata !6}
!658 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!659 = metadata !{null, metadata !10, metadata !11, metadata !660, metadata !13, metadata !69, metadata !6}
!660 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!661 = metadata !{null, metadata !10, metadata !11, metadata !660, metadata !13, metadata !111, metadata !6}
!662 = metadata !{null, metadata !10, metadata !11, metadata !623, metadata !13, metadata !111, metadata !6}
!663 = metadata !{null, metadata !10, metadata !11, metadata !664, metadata !13, metadata !69, metadata !6}
!664 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!665 = metadata !{null, metadata !18, metadata !19, metadata !666, metadata !21, metadata !72, metadata !6}
!666 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &", metadata !"int"}
!667 = metadata !{null, metadata !18, metadata !19, metadata !668, metadata !21, metadata !72, metadata !6}
!668 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!669 = metadata !{null, metadata !10, metadata !11, metadata !670, metadata !13, metadata !111, metadata !6}
!670 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<100, false> &"}
!671 = metadata !{null, metadata !10, metadata !11, metadata !670, metadata !13, metadata !69, metadata !6}
!672 = metadata !{null, metadata !106, metadata !2, metadata !673, metadata !4, metadata !108, metadata !6}
!673 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!674 = metadata !{null, metadata !10, metadata !11, metadata !598, metadata !13, metadata !79, metadata !6}
!675 = metadata !{null, metadata !243, metadata !2, metadata !676, metadata !4, metadata !677, metadata !6}
!676 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"ap_uint<3> &", metadata !"ap_uint<78> &"}
!677 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout"}
!678 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !601, metadata !6}
!679 = metadata !{null, metadata !18, metadata !19, metadata !680, metadata !21, metadata !72, metadata !6}
!680 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<52, false> &"}
!681 = metadata !{null, metadata !106, metadata !2, metadata !682, metadata !4, metadata !108, metadata !6}
!682 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<79, false>*", metadata !"int", metadata !"int"}
!683 = metadata !{null, metadata !10, metadata !11, metadata !684, metadata !13, metadata !113, metadata !6}
!684 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<79, false> &"}
!685 = metadata !{null, metadata !18, metadata !19, metadata !686, metadata !21, metadata !72, metadata !6}
!686 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"const ap_int_base<79, false> &"}
!687 = metadata !{null, metadata !10, metadata !11, metadata !688, metadata !13, metadata !69, metadata !6}
!688 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!689 = metadata !{null, metadata !106, metadata !2, metadata !690, metadata !4, metadata !108, metadata !6}
!690 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<156, false>*", metadata !"int", metadata !"int"}
!691 = metadata !{null, metadata !10, metadata !11, metadata !692, metadata !13, metadata !113, metadata !6}
!692 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<156, false> &"}
!693 = metadata !{null, metadata !243, metadata !2, metadata !694, metadata !4, metadata !542, metadata !6}
!694 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>", metadata !"ap_uint<78>", metadata !"ap_uint<78 + 78> &"}
!695 = metadata !{null, metadata !10, metadata !11, metadata !696, metadata !13, metadata !69, metadata !6}
!696 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<188> &"}
!697 = metadata !{null, metadata !10, metadata !11, metadata !698, metadata !13, metadata !79, metadata !6}
!698 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<156> &"}
!699 = metadata !{null, metadata !243, metadata !2, metadata !700, metadata !4, metadata !542, metadata !6}
!700 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<94>", metadata !"ap_uint<94>", metadata !"ap_uint<2 * 94> &"}
!701 = metadata !{null, metadata !106, metadata !2, metadata !702, metadata !4, metadata !108, metadata !6}
!702 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, false>*", metadata !"int", metadata !"int"}
!703 = metadata !{null, metadata !10, metadata !11, metadata !704, metadata !13, metadata !111, metadata !6}
!704 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<48, false> &"}
!705 = metadata !{null, metadata !10, metadata !11, metadata !704, metadata !13, metadata !113, metadata !6}
!706 = metadata !{null, metadata !10, metadata !11, metadata !707, metadata !13, metadata !111, metadata !6}
!707 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!708 = metadata !{null, metadata !10, metadata !11, metadata !707, metadata !13, metadata !69, metadata !6}
!709 = metadata !{null, metadata !106, metadata !2, metadata !710, metadata !4, metadata !108, metadata !6}
!710 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<188, false>*", metadata !"int", metadata !"int"}
!711 = metadata !{null, metadata !10, metadata !11, metadata !712, metadata !13, metadata !79, metadata !6}
!712 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, false> &"}
!713 = metadata !{null, metadata !18, metadata !19, metadata !714, metadata !21, metadata !72, metadata !6}
!714 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &", metadata !"int"}
!715 = metadata !{null, metadata !10, metadata !11, metadata !716, metadata !13, metadata !69, metadata !6}
!716 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<34> &"}
!717 = metadata !{null, metadata !10, metadata !11, metadata !718, metadata !13, metadata !79, metadata !6}
!718 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<48> &"}
!719 = metadata !{null, metadata !106, metadata !2, metadata !720, metadata !4, metadata !108, metadata !6}
!720 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<94, false>*", metadata !"int", metadata !"int"}
!721 = metadata !{null, metadata !18, metadata !19, metadata !722, metadata !21, metadata !723, metadata !6}
!722 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &", metadata !"const ap_range_ref<94, false> &"}
!723 = metadata !{metadata !"kernel_arg_name", metadata !"lhs", metadata !"rhs"}
!724 = metadata !{null, metadata !10, metadata !11, metadata !725, metadata !13, metadata !113, metadata !6}
!725 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &"}
!726 = metadata !{null, metadata !18, metadata !19, metadata !727, metadata !21, metadata !72, metadata !6}
!727 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &", metadata !"const ap_int_base<94, false> &"}
!728 = metadata !{null, metadata !10, metadata !11, metadata !729, metadata !13, metadata !69, metadata !6}
!729 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &"}
!730 = metadata !{null, metadata !10, metadata !11, metadata !731, metadata !13, metadata !69, metadata !6}
!731 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<188, false> &"}
!732 = metadata !{null, metadata !10, metadata !11, metadata !716, metadata !13, metadata !79, metadata !6}
!733 = metadata !{null, metadata !10, metadata !11, metadata !734, metadata !13, metadata !69, metadata !6}
!734 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<78> &"}
!735 = metadata !{null, metadata !106, metadata !2, metadata !736, metadata !4, metadata !108, metadata !6}
!736 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<56, false>*", metadata !"int", metadata !"int"}
!737 = metadata !{null, metadata !10, metadata !11, metadata !738, metadata !13, metadata !113, metadata !6}
!738 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<56, false> &"}
!739 = metadata !{null, metadata !106, metadata !2, metadata !740, metadata !4, metadata !108, metadata !6}
!740 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<178, false>*", metadata !"int", metadata !"int"}
!741 = metadata !{null, metadata !10, metadata !11, metadata !742, metadata !13, metadata !113, metadata !6}
!742 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<178, false> &"}
!743 = metadata !{null, metadata !18, metadata !19, metadata !744, metadata !21, metadata !72, metadata !6}
!744 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &", metadata !"int"}
!745 = metadata !{null, metadata !10, metadata !11, metadata !746, metadata !13, metadata !69, metadata !6}
!746 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &"}
!747 = metadata !{null, metadata !10, metadata !11, metadata !748, metadata !13, metadata !79, metadata !6}
!748 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<56> &"}
!749 = metadata !{null, metadata !243, metadata !2, metadata !750, metadata !4, metadata !542, metadata !6}
!750 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<125>", metadata !"ap_uint<53>", metadata !"ap_uint<125 + 53> &"}
!751 = metadata !{null, metadata !10, metadata !11, metadata !752, metadata !13, metadata !111, metadata !6}
!752 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &"}
!753 = metadata !{null, metadata !10, metadata !11, metadata !752, metadata !13, metadata !69, metadata !6}
!754 = metadata !{null, metadata !106, metadata !2, metadata !755, metadata !4, metadata !108, metadata !6}
!755 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<70, false>*", metadata !"int", metadata !"int"}
!756 = metadata !{null, metadata !10, metadata !11, metadata !757, metadata !13, metadata !111, metadata !6}
!757 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<70, false> &"}
!758 = metadata !{null, metadata !10, metadata !11, metadata !757, metadata !13, metadata !113, metadata !6}
!759 = metadata !{null, metadata !10, metadata !11, metadata !752, metadata !13, metadata !79, metadata !6}
!760 = metadata !{null, metadata !18, metadata !19, metadata !761, metadata !21, metadata !72, metadata !6}
!761 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &", metadata !"int"}
!762 = metadata !{null, metadata !106, metadata !2, metadata !763, metadata !4, metadata !108, metadata !6}
!763 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<125, false>*", metadata !"int", metadata !"int"}
!764 = metadata !{null, metadata !18, metadata !19, metadata !765, metadata !21, metadata !558, metadata !6}
!765 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &", metadata !"const ap_int_base<53, false> &"}
!766 = metadata !{null, metadata !10, metadata !11, metadata !767, metadata !13, metadata !113, metadata !6}
!767 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &"}
!768 = metadata !{null, metadata !18, metadata !19, metadata !769, metadata !21, metadata !72, metadata !6}
!769 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &", metadata !"const ap_int_base<53, false> &"}
!770 = metadata !{null, metadata !10, metadata !11, metadata !771, metadata !13, metadata !69, metadata !6}
!771 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!772 = metadata !{null, metadata !10, metadata !11, metadata !773, metadata !13, metadata !69, metadata !6}
!773 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &"}
!774 = metadata !{null, metadata !10, metadata !11, metadata !775, metadata !13, metadata !79, metadata !6}
!775 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<70> &"}
!776 = metadata !{null, metadata !18, metadata !19, metadata !777, metadata !21, metadata !572, metadata !6}
!777 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"double"}
!778 = metadata !{null, metadata !18, metadata !19, metadata !779, metadata !21, metadata !72, metadata !6}
!779 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!780 = metadata !{null, metadata !106, metadata !2, metadata !781, metadata !4, metadata !108, metadata !6}
!781 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, false>*", metadata !"int", metadata !"int"}
!782 = metadata !{null, metadata !10, metadata !11, metadata !783, metadata !13, metadata !113, metadata !6}
!783 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<12, true> &"}
!784 = metadata !{null, metadata !10, metadata !11, metadata !785, metadata !13, metadata !79, metadata !6}
!785 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, false> &"}
!786 = metadata !{null, metadata !10, metadata !11, metadata !787, metadata !13, metadata !113, metadata !6}
!787 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, false> &"}
!788 = metadata !{null, metadata !106, metadata !2, metadata !789, metadata !4, metadata !108, metadata !6}
!789 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<12, true>*", metadata !"int", metadata !"int"}
!790 = metadata !{null, metadata !10, metadata !11, metadata !791, metadata !13, metadata !79, metadata !6}
!791 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<125> &"}
!792 = metadata !{null, metadata !18, metadata !19, metadata !793, metadata !21, metadata !72, metadata !6}
!793 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!794 = metadata !{null, metadata !18, metadata !19, metadata !795, metadata !21, metadata !72, metadata !6}
!795 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"const ap_int_base<52, false> &"}
!796 = metadata !{null, metadata !10, metadata !11, metadata !797, metadata !13, metadata !79, metadata !6}
!797 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<53> &"}
!798 = metadata !{null, metadata !10, metadata !11, metadata !799, metadata !13, metadata !113, metadata !6}
!799 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<400, false> &"}
!800 = metadata !{null, metadata !10, metadata !11, metadata !801, metadata !13, metadata !79, metadata !6}
!801 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<79> &"}
!802 = metadata !{null, metadata !106, metadata !2, metadata !803, metadata !4, metadata !108, metadata !6}
!803 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<400, false>*", metadata !"int", metadata !"int"}
!804 = metadata !{null, metadata !10, metadata !11, metadata !734, metadata !13, metadata !79, metadata !6}
!805 = metadata !{null, metadata !243, metadata !2, metadata !806, metadata !4, metadata !594, metadata !6}
!806 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &", metadata !"float &"}
!807 = metadata !{null, metadata !10, metadata !11, metadata !808, metadata !13, metadata !809, metadata !6}
!808 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t"}
!809 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!810 = metadata !{null, metadata !18, metadata !19, metadata !811, metadata !21, metadata !72, metadata !6}
!811 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, false> &"}
!812 = metadata !{null, metadata !18, metadata !19, metadata !584, metadata !21, metadata !82, metadata !6}
!813 = metadata !{null, metadata !18, metadata !19, metadata !814, metadata !21, metadata !72, metadata !6}
!814 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"const ap_int_base<32, true> &"}
!815 = metadata !{null, metadata !10, metadata !11, metadata !816, metadata !13, metadata !69, metadata !6}
!816 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!817 = metadata !{null, metadata !10, metadata !11, metadata !193, metadata !13, metadata !818, metadata !6}
!818 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!819 = metadata !{null, metadata !18, metadata !19, metadata !820, metadata !21, metadata !72, metadata !6}
!820 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true> &", metadata !"int"}
!821 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !92, metadata !6}
!822 = metadata !{null, metadata !243, metadata !2, metadata !823, metadata !4, metadata !633, metadata !6}
!823 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &"}
!824 = metadata !{null, metadata !243, metadata !2, metadata !825, metadata !4, metadata !636, metadata !6}
!825 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!826 = metadata !{null, metadata !10, metadata !11, metadata !827, metadata !13, metadata !79, metadata !6}
!827 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!828 = metadata !{null, metadata !10, metadata !11, metadata !827, metadata !13, metadata !69, metadata !6}
!829 = metadata !{null, metadata !10, metadata !11, metadata !830, metadata !13, metadata !69, metadata !6}
!830 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!831 = metadata !{null, metadata !10, metadata !11, metadata !832, metadata !13, metadata !69, metadata !6}
!832 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<35, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!833 = metadata !{null, metadata !10, metadata !11, metadata !834, metadata !13, metadata !69, metadata !6}
!834 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!835 = metadata !{null, metadata !10, metadata !11, metadata !836, metadata !13, metadata !69, metadata !6}
!836 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 4, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!837 = metadata !{null, metadata !243, metadata !2, metadata !838, metadata !4, metadata !636, metadata !6}
!838 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"_Bool"}
!839 = metadata !{null, metadata !10, metadata !11, metadata !840, metadata !13, metadata !69, metadata !6}
!840 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<34, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!841 = metadata !{null, metadata !96, metadata !19, metadata !842, metadata !21, metadata !131, metadata !6}
!842 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!843 = metadata !{null, metadata !10, metadata !11, metadata !844, metadata !13, metadata !69, metadata !6}
!844 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!845 = metadata !{null, metadata !10, metadata !11, metadata !844, metadata !13, metadata !111, metadata !6}
!846 = metadata !{null, metadata !10, metadata !11, metadata !847, metadata !13, metadata !69, metadata !6}
!847 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<35, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!848 = metadata !{null, metadata !10, metadata !11, metadata !849, metadata !13, metadata !69, metadata !6}
!849 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!850 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !58, metadata !6}
!851 = metadata !{null, metadata !243, metadata !2, metadata !852, metadata !4, metadata !853, metadata !6}
!852 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<7 + 1> &", metadata !"ap_ufixed<fp_struct<float>::SIG_BITS + 12, 0> &"}
!853 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"k", metadata !"t_out"}
!854 = metadata !{null, metadata !10, metadata !11, metadata !855, metadata !13, metadata !69, metadata !6}
!855 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<70, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!856 = metadata !{null, metadata !10, metadata !11, metadata !857, metadata !13, metadata !69, metadata !6}
!857 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!858 = metadata !{null, metadata !243, metadata !2, metadata !859, metadata !4, metadata !542, metadata !6}
!859 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35 + 35, 0 + 0> &"}
!860 = metadata !{null, metadata !106, metadata !2, metadata !861, metadata !4, metadata !108, metadata !6}
!861 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!862 = metadata !{null, metadata !243, metadata !2, metadata !863, metadata !4, metadata !542, metadata !6}
!863 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<35>", metadata !"ap_uint<35>", metadata !"ap_uint<35 + 35> &"}
!864 = metadata !{null, metadata !10, metadata !11, metadata !149, metadata !13, metadata !79, metadata !6}
!865 = metadata !{null, metadata !18, metadata !19, metadata !866, metadata !21, metadata !558, metadata !6}
!866 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &", metadata !"const ap_int_base<35, false> &"}
!867 = metadata !{null, metadata !10, metadata !11, metadata !868, metadata !13, metadata !113, metadata !6}
!868 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &"}
!869 = metadata !{null, metadata !18, metadata !19, metadata !870, metadata !21, metadata !72, metadata !6}
!870 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &", metadata !"const ap_int_base<35, false> &"}
!871 = metadata !{null, metadata !10, metadata !11, metadata !872, metadata !13, metadata !69, metadata !6}
!872 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &"}
!873 = metadata !{null, metadata !106, metadata !2, metadata !874, metadata !4, metadata !108, metadata !6}
!874 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!875 = metadata !{null, metadata !10, metadata !11, metadata !876, metadata !13, metadata !111, metadata !6}
!876 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!877 = metadata !{null, metadata !10, metadata !11, metadata !872, metadata !13, metadata !111, metadata !6}
!878 = metadata !{null, metadata !106, metadata !2, metadata !879, metadata !4, metadata !108, metadata !6}
!879 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<35, false>*", metadata !"int", metadata !"int"}
!880 = metadata !{null, metadata !10, metadata !11, metadata !881, metadata !13, metadata !69, metadata !6}
!881 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<77, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!882 = metadata !{null, metadata !10, metadata !11, metadata !883, metadata !13, metadata !69, metadata !6}
!883 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!884 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !111, metadata !6}
!885 = metadata !{null, metadata !243, metadata !2, metadata !886, metadata !4, metadata !542, metadata !6}
!886 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<42, 7>", metadata !"ap_ufixed<35, 1>", metadata !"ap_ufixed<42 + 35, 7 + 1> &"}
!887 = metadata !{null, metadata !106, metadata !2, metadata !888, metadata !4, metadata !108, metadata !6}
!888 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<77, false>*", metadata !"int", metadata !"int"}
!889 = metadata !{null, metadata !10, metadata !11, metadata !890, metadata !13, metadata !111, metadata !6}
!890 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<77, false> &"}
!891 = metadata !{null, metadata !10, metadata !11, metadata !890, metadata !13, metadata !113, metadata !6}
!892 = metadata !{null, metadata !10, metadata !11, metadata !893, metadata !13, metadata !111, metadata !6}
!893 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<77, false> &"}
!894 = metadata !{null, metadata !106, metadata !2, metadata !895, metadata !4, metadata !108, metadata !6}
!895 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!896 = metadata !{null, metadata !243, metadata !2, metadata !897, metadata !4, metadata !542, metadata !6}
!897 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<42>", metadata !"ap_uint<35>", metadata !"ap_uint<42 + 35> &"}
!898 = metadata !{null, metadata !18, metadata !19, metadata !899, metadata !21, metadata !558, metadata !6}
!899 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &", metadata !"const ap_int_base<35, false> &"}
!900 = metadata !{null, metadata !10, metadata !11, metadata !901, metadata !13, metadata !113, metadata !6}
!901 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &"}
!902 = metadata !{null, metadata !18, metadata !19, metadata !903, metadata !21, metadata !72, metadata !6}
!903 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &", metadata !"const ap_int_base<35, false> &"}
!904 = metadata !{null, metadata !10, metadata !11, metadata !905, metadata !13, metadata !69, metadata !6}
!905 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &"}
!906 = metadata !{null, metadata !10, metadata !11, metadata !893, metadata !13, metadata !69, metadata !6}
!907 = metadata !{null, metadata !106, metadata !2, metadata !908, metadata !4, metadata !108, metadata !6}
!908 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!909 = metadata !{null, metadata !10, metadata !11, metadata !910, metadata !13, metadata !111, metadata !6}
!910 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!911 = metadata !{null, metadata !10, metadata !11, metadata !912, metadata !13, metadata !111, metadata !6}
!912 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!913 = metadata !{null, metadata !10, metadata !11, metadata !905, metadata !13, metadata !111, metadata !6}
!914 = metadata !{null, metadata !106, metadata !2, metadata !915, metadata !4, metadata !108, metadata !6}
!915 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<42, false>*", metadata !"int", metadata !"int"}
!916 = metadata !{null, metadata !10, metadata !11, metadata !917, metadata !13, metadata !69, metadata !6}
!917 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!918 = metadata !{null, metadata !10, metadata !11, metadata !919, metadata !13, metadata !69, metadata !6}
!919 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<42, 7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!920 = metadata !{null, metadata !96, metadata !19, metadata !921, metadata !21, metadata !131, metadata !6}
!921 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!922 = metadata !{null, metadata !106, metadata !2, metadata !923, metadata !4, metadata !108, metadata !6}
!923 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!924 = metadata !{null, metadata !18, metadata !19, metadata !24, metadata !21, metadata !925, metadata !6}
!925 = metadata !{metadata !"kernel_arg_name", metadata !"y_in", metadata !"x_in"}
!926 = metadata !{null, metadata !243, metadata !2, metadata !927, metadata !4, metadata !633, metadata !6}
!927 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &"}
!928 = metadata !{null, metadata !243, metadata !2, metadata !929, metadata !4, metadata !636, metadata !6}
!929 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!930 = metadata !{null, metadata !10, metadata !11, metadata !931, metadata !13, metadata !79, metadata !6}
!931 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!932 = metadata !{null, metadata !10, metadata !11, metadata !931, metadata !13, metadata !69, metadata !6}
!933 = metadata !{null, metadata !10, metadata !11, metadata !934, metadata !13, metadata !69, metadata !6}
!934 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!935 = metadata !{null, metadata !10, metadata !11, metadata !936, metadata !13, metadata !69, metadata !6}
!936 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!937 = metadata !{null, metadata !10, metadata !11, metadata !938, metadata !13, metadata !69, metadata !6}
!938 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!939 = metadata !{null, metadata !10, metadata !11, metadata !940, metadata !13, metadata !69, metadata !6}
!940 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!941 = metadata !{null, metadata !243, metadata !2, metadata !942, metadata !4, metadata !636, metadata !6}
!942 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"_Bool"}
!943 = metadata !{null, metadata !10, metadata !11, metadata !934, metadata !13, metadata !79, metadata !6}
!944 = metadata !{null, metadata !243, metadata !2, metadata !945, metadata !4, metadata !636, metadata !6}
!945 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!946 = metadata !{null, metadata !10, metadata !11, metadata !247, metadata !13, metadata !111, metadata !6}
!947 = metadata !{null, metadata !96, metadata !19, metadata !948, metadata !21, metadata !131, metadata !6}
!948 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!949 = metadata !{null, metadata !106, metadata !2, metadata !950, metadata !4, metadata !108, metadata !6}
!950 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!951 = metadata !{null, metadata !10, metadata !11, metadata !952, metadata !13, metadata !69, metadata !6}
!952 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!953 = metadata !{null, metadata !18, metadata !19, metadata !954, metadata !21, metadata !72, metadata !6}
!954 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!955 = metadata !{null, metadata !10, metadata !11, metadata !123, metadata !13, metadata !79, metadata !6}
!956 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !925, metadata !6}
!957 = metadata !{null, metadata !10, metadata !11, metadata !133, metadata !13, metadata !818, metadata !6}
!958 = metadata !{null, metadata !106, metadata !2, metadata !959, metadata !4, metadata !108, metadata !6}
!959 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<88, true>*", metadata !"int", metadata !"int"}
!960 = metadata !{null, metadata !10, metadata !11, metadata !961, metadata !13, metadata !111, metadata !6}
!961 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<88, true> &"}
!962 = metadata !{null, metadata !10, metadata !11, metadata !961, metadata !13, metadata !113, metadata !6}
!963 = metadata !{null, metadata !10, metadata !11, metadata !964, metadata !13, metadata !111, metadata !6}
!964 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<88, false> &"}
!965 = metadata !{null, metadata !10, metadata !11, metadata !964, metadata !13, metadata !69, metadata !6}
!966 = metadata !{null, metadata !243, metadata !2, metadata !967, metadata !4, metadata !633, metadata !6}
!967 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &"}
!968 = metadata !{null, metadata !243, metadata !2, metadata !969, metadata !4, metadata !636, metadata !6}
!969 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!970 = metadata !{null, metadata !10, metadata !11, metadata !971, metadata !13, metadata !79, metadata !6}
!971 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!972 = metadata !{null, metadata !10, metadata !11, metadata !971, metadata !13, metadata !69, metadata !6}
!973 = metadata !{null, metadata !10, metadata !11, metadata !974, metadata !13, metadata !69, metadata !6}
!974 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!975 = metadata !{null, metadata !10, metadata !11, metadata !976, metadata !13, metadata !69, metadata !6}
!976 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<88, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!977 = metadata !{null, metadata !10, metadata !11, metadata !978, metadata !13, metadata !69, metadata !6}
!978 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<88, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!979 = metadata !{null, metadata !10, metadata !11, metadata !980, metadata !13, metadata !69, metadata !6}
!980 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!981 = metadata !{null, metadata !243, metadata !2, metadata !982, metadata !4, metadata !636, metadata !6}
!982 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"_Bool"}
!983 = metadata !{null, metadata !10, metadata !11, metadata !974, metadata !13, metadata !79, metadata !6}
!984 = metadata !{null, metadata !243, metadata !2, metadata !985, metadata !4, metadata !636, metadata !6}
!985 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!986 = metadata !{null, metadata !96, metadata !19, metadata !987, metadata !21, metadata !131, metadata !6}
!987 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!988 = metadata !{null, metadata !106, metadata !2, metadata !989, metadata !4, metadata !108, metadata !6}
!989 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!990 = metadata !{null, metadata !10, metadata !11, metadata !991, metadata !13, metadata !69, metadata !6}
!991 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!992 = metadata !{null, metadata !18, metadata !19, metadata !993, metadata !21, metadata !72, metadata !6}
!993 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<11, false> &"}
!994 = metadata !{null, metadata !10, metadata !11, metadata !88, metadata !13, metadata !79, metadata !6}
!995 = metadata !{null, metadata !10, metadata !11, metadata !175, metadata !13, metadata !79, metadata !6}
!996 = metadata !{null, metadata !10, metadata !11, metadata !997, metadata !13, metadata !809, metadata !6}
!997 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t"}
!998 = metadata !{null, metadata !18, metadata !19, metadata !999, metadata !21, metadata !1000, metadata !6}
!999 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &"}
!1000 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"t_out"}
!1001 = metadata !{null, metadata !10, metadata !11, metadata !1002, metadata !13, metadata !69, metadata !6}
!1002 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1003 = metadata !{null, metadata !10, metadata !11, metadata !1004, metadata !13, metadata !69, metadata !6}
!1004 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1005 = metadata !{null, metadata !10, metadata !11, metadata !1006, metadata !13, metadata !601, metadata !6}
!1006 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<40, 3>"}
!1007 = metadata !{null, metadata !10, metadata !11, metadata !1008, metadata !13, metadata !601, metadata !6}
!1008 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<40>"}
!1009 = metadata !{null, metadata !18, metadata !19, metadata !1010, metadata !21, metadata !72, metadata !6}
!1010 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"int"}
!1011 = metadata !{null, metadata !10, metadata !11, metadata !1012, metadata !13, metadata !111, metadata !6}
!1012 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1013 = metadata !{null, metadata !10, metadata !11, metadata !1014, metadata !13, metadata !111, metadata !6}
!1014 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!1015 = metadata !{null, metadata !10, metadata !11, metadata !1014, metadata !13, metadata !69, metadata !6}
!1016 = metadata !{null, metadata !10, metadata !11, metadata !1017, metadata !13, metadata !69, metadata !6}
!1017 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1018 = metadata !{null, metadata !10, metadata !11, metadata !1019, metadata !13, metadata !111, metadata !6}
!1019 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!1020 = metadata !{null, metadata !10, metadata !11, metadata !1019, metadata !13, metadata !113, metadata !6}
!1021 = metadata !{null, metadata !106, metadata !2, metadata !1022, metadata !4, metadata !108, metadata !6}
!1022 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1023 = metadata !{null, metadata !106, metadata !2, metadata !1024, metadata !4, metadata !108, metadata !6}
!1024 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!1025 = metadata !{null, metadata !10, metadata !11, metadata !1026, metadata !13, metadata !69, metadata !6}
!1026 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1027 = metadata !{null, metadata !10, metadata !11, metadata !1028, metadata !13, metadata !69, metadata !6}
!1028 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1029 = metadata !{null, metadata !10, metadata !11, metadata !1030, metadata !13, metadata !69, metadata !6}
!1030 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1031 = metadata !{null, metadata !243, metadata !2, metadata !1032, metadata !4, metadata !633, metadata !6}
!1032 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &"}
!1033 = metadata !{null, metadata !243, metadata !2, metadata !1034, metadata !4, metadata !636, metadata !6}
!1034 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!1035 = metadata !{null, metadata !10, metadata !11, metadata !1036, metadata !13, metadata !79, metadata !6}
!1036 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1037 = metadata !{null, metadata !10, metadata !11, metadata !1036, metadata !13, metadata !69, metadata !6}
!1038 = metadata !{null, metadata !10, metadata !11, metadata !1039, metadata !13, metadata !69, metadata !6}
!1039 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1040 = metadata !{null, metadata !10, metadata !11, metadata !1041, metadata !13, metadata !69, metadata !6}
!1041 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1042 = metadata !{null, metadata !10, metadata !11, metadata !1043, metadata !13, metadata !69, metadata !6}
!1043 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1044 = metadata !{null, metadata !243, metadata !2, metadata !1045, metadata !4, metadata !636, metadata !6}
!1045 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"_Bool"}
!1046 = metadata !{null, metadata !10, metadata !11, metadata !1004, metadata !13, metadata !79, metadata !6}
!1047 = metadata !{null, metadata !243, metadata !2, metadata !1048, metadata !4, metadata !636, metadata !6}
!1048 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1049 = metadata !{null, metadata !96, metadata !19, metadata !1050, metadata !21, metadata !131, metadata !6}
!1050 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1051 = metadata !{null, metadata !106, metadata !2, metadata !1052, metadata !4, metadata !108, metadata !6}
!1052 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1053 = metadata !{null, metadata !10, metadata !11, metadata !1054, metadata !13, metadata !113, metadata !6}
!1054 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<66, false> &"}
!1055 = metadata !{null, metadata !10, metadata !11, metadata !1056, metadata !13, metadata !79, metadata !6}
!1056 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!1057 = metadata !{null, metadata !18, metadata !19, metadata !1058, metadata !21, metadata !72, metadata !6}
!1058 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &", metadata !"int"}
!1059 = metadata !{null, metadata !10, metadata !11, metadata !1060, metadata !13, metadata !69, metadata !6}
!1060 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &"}
!1061 = metadata !{null, metadata !10, metadata !11, metadata !564, metadata !13, metadata !111, metadata !6}
!1062 = metadata !{null, metadata !106, metadata !2, metadata !1063, metadata !4, metadata !108, metadata !6}
!1063 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<66, false>*", metadata !"int", metadata !"int"}
!1064 = metadata !{null, metadata !10, metadata !11, metadata !1065, metadata !13, metadata !79, metadata !6}
!1065 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<66> &"}
!1066 = metadata !{null, metadata !18, metadata !19, metadata !1067, metadata !21, metadata !72, metadata !6}
!1067 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!1068 = metadata !{null, metadata !18, metadata !19, metadata !1069, metadata !21, metadata !72, metadata !6}
!1069 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<23, false> &"}
!1070 = metadata !{null, metadata !18, metadata !19, metadata !1071, metadata !21, metadata !370, metadata !6}
!1071 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<8, false> &"}
!1072 = metadata !{null, metadata !18, metadata !19, metadata !1073, metadata !21, metadata !72, metadata !6}
!1073 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<8, false> &"}
!1074 = metadata !{null, metadata !243, metadata !2, metadata !1075, metadata !4, metadata !1076, metadata !6}
!1075 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"_Bool"}
!1076 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"do_cos", metadata !"do_pi"}
!1077 = metadata !{null, metadata !10, metadata !11, metadata !1078, metadata !13, metadata !69, metadata !6}
!1078 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1079 = metadata !{null, metadata !10, metadata !11, metadata !1080, metadata !13, metadata !69, metadata !6}
!1080 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1081 = metadata !{null, metadata !18, metadata !19, metadata !1082, metadata !21, metadata !72, metadata !6}
!1082 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!1083 = metadata !{null, metadata !10, metadata !11, metadata !1084, metadata !13, metadata !69, metadata !6}
!1084 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1085 = metadata !{null, metadata !10, metadata !11, metadata !1086, metadata !13, metadata !69, metadata !6}
!1086 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1087 = metadata !{null, metadata !96, metadata !19, metadata !1088, metadata !21, metadata !131, metadata !6}
!1088 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!1089 = metadata !{null, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !6}
!1090 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!1091 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!1092 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &", metadata !"int &"}
!1093 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!1094 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex", metadata !"exactly_pi_over_2"}
!1095 = metadata !{null, metadata !18, metadata !19, metadata !1096, metadata !21, metadata !82, metadata !6}
!1096 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!1097 = metadata !{null, metadata !18, metadata !19, metadata !1098, metadata !21, metadata !72, metadata !6}
!1098 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false> &", metadata !"int"}
!1099 = metadata !{null, metadata !10, metadata !11, metadata !1100, metadata !13, metadata !69, metadata !6}
!1100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!1101 = metadata !{null, metadata !10, metadata !11, metadata !1102, metadata !13, metadata !79, metadata !6}
!1102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<95> &"}
!1103 = metadata !{null, metadata !243, metadata !2, metadata !1104, metadata !4, metadata !245, metadata !6}
!1104 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!1105 = metadata !{null, metadata !243, metadata !2, metadata !1106, metadata !4, metadata !245, metadata !6}
!1106 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1107 = metadata !{null, metadata !243, metadata !2, metadata !1108, metadata !4, metadata !245, metadata !6}
!1108 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1109 = metadata !{null, metadata !18, metadata !19, metadata !1110, metadata !21, metadata !82, metadata !6}
!1110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1111 = metadata !{null, metadata !10, metadata !11, metadata !1112, metadata !13, metadata !69, metadata !6}
!1112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1113 = metadata !{null, metadata !10, metadata !11, metadata !1114, metadata !13, metadata !69, metadata !6}
!1114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1115 = metadata !{null, metadata !10, metadata !11, metadata !1116, metadata !13, metadata !69, metadata !6}
!1116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1117 = metadata !{null, metadata !18, metadata !19, metadata !1118, metadata !21, metadata !72, metadata !6}
!1118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!1119 = metadata !{null, metadata !10, metadata !11, metadata !1120, metadata !13, metadata !79, metadata !6}
!1120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!1121 = metadata !{null, metadata !10, metadata !11, metadata !1122, metadata !13, metadata !69, metadata !6}
!1122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1123 = metadata !{null, metadata !243, metadata !2, metadata !1124, metadata !4, metadata !245, metadata !6}
!1124 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1125 = metadata !{null, metadata !18, metadata !19, metadata !1126, metadata !21, metadata !82, metadata !6}
!1126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1127 = metadata !{null, metadata !10, metadata !11, metadata !1128, metadata !13, metadata !69, metadata !6}
!1128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1129 = metadata !{null, metadata !10, metadata !11, metadata !1130, metadata !13, metadata !69, metadata !6}
!1130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1131 = metadata !{null, metadata !10, metadata !11, metadata !1132, metadata !13, metadata !69, metadata !6}
!1132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1133 = metadata !{null, metadata !18, metadata !19, metadata !1134, metadata !21, metadata !72, metadata !6}
!1134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!1135 = metadata !{null, metadata !10, metadata !11, metadata !1136, metadata !13, metadata !79, metadata !6}
!1136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!1137 = metadata !{null, metadata !10, metadata !11, metadata !1138, metadata !13, metadata !69, metadata !6}
!1138 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1139 = metadata !{null, metadata !243, metadata !2, metadata !1140, metadata !4, metadata !245, metadata !6}
!1140 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!1141 = metadata !{null, metadata !243, metadata !2, metadata !1142, metadata !4, metadata !245, metadata !6}
!1142 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1143 = metadata !{null, metadata !243, metadata !2, metadata !1144, metadata !4, metadata !245, metadata !6}
!1144 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1145 = metadata !{null, metadata !10, metadata !11, metadata !1146, metadata !13, metadata !69, metadata !6}
!1146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1147 = metadata !{null, metadata !10, metadata !11, metadata !1148, metadata !13, metadata !69, metadata !6}
!1148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1149 = metadata !{null, metadata !18, metadata !19, metadata !1150, metadata !21, metadata !72, metadata !6}
!1150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!1151 = metadata !{null, metadata !10, metadata !11, metadata !1152, metadata !13, metadata !79, metadata !6}
!1152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!1153 = metadata !{null, metadata !10, metadata !11, metadata !1154, metadata !13, metadata !69, metadata !6}
!1154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1155 = metadata !{null, metadata !243, metadata !2, metadata !1156, metadata !4, metadata !245, metadata !6}
!1156 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1157 = metadata !{null, metadata !10, metadata !11, metadata !1158, metadata !13, metadata !69, metadata !6}
!1158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1159 = metadata !{null, metadata !10, metadata !11, metadata !1160, metadata !13, metadata !69, metadata !6}
!1160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1161 = metadata !{null, metadata !18, metadata !19, metadata !1162, metadata !21, metadata !72, metadata !6}
!1162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!1163 = metadata !{null, metadata !10, metadata !11, metadata !431, metadata !13, metadata !79, metadata !6}
!1164 = metadata !{null, metadata !10, metadata !11, metadata !1165, metadata !13, metadata !69, metadata !6}
!1165 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1166 = metadata !{null, metadata !243, metadata !2, metadata !1167, metadata !4, metadata !245, metadata !6}
!1167 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1168 = metadata !{null, metadata !243, metadata !2, metadata !1169, metadata !4, metadata !245, metadata !6}
!1169 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1170 = metadata !{null, metadata !10, metadata !11, metadata !1171, metadata !13, metadata !69, metadata !6}
!1171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1172 = metadata !{null, metadata !10, metadata !11, metadata !1173, metadata !13, metadata !69, metadata !6}
!1173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1174 = metadata !{null, metadata !10, metadata !11, metadata !1175, metadata !13, metadata !69, metadata !6}
!1175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1176 = metadata !{null, metadata !10, metadata !11, metadata !1177, metadata !13, metadata !69, metadata !6}
!1177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1178 = metadata !{null, metadata !96, metadata !19, metadata !1179, metadata !21, metadata !131, metadata !6}
!1179 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!1180 = metadata !{null, metadata !243, metadata !2, metadata !1181, metadata !4, metadata !245, metadata !6}
!1181 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1182 = metadata !{null, metadata !10, metadata !11, metadata !1183, metadata !13, metadata !69, metadata !6}
!1183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1184 = metadata !{null, metadata !10, metadata !11, metadata !1185, metadata !13, metadata !69, metadata !6}
!1185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1186 = metadata !{null, metadata !10, metadata !11, metadata !1187, metadata !13, metadata !69, metadata !6}
!1187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1188 = metadata !{null, metadata !10, metadata !11, metadata !1189, metadata !13, metadata !69, metadata !6}
!1189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1190 = metadata !{null, metadata !96, metadata !19, metadata !1191, metadata !21, metadata !131, metadata !6}
!1191 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!1192 = metadata !{null, metadata !243, metadata !2, metadata !1193, metadata !4, metadata !245, metadata !6}
!1193 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1194 = metadata !{null, metadata !243, metadata !2, metadata !1195, metadata !4, metadata !245, metadata !6}
!1195 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1196 = metadata !{null, metadata !243, metadata !2, metadata !1197, metadata !4, metadata !245, metadata !6}
!1197 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1198 = metadata !{metadata !1199, [2 x i32]* @llvm_global_ctors_0}
!1199 = metadata !{metadata !1200}
!1200 = metadata !{i32 0, i32 31, metadata !1201}
!1201 = metadata !{metadata !1202}
!1202 = metadata !{metadata !"llvm.global_ctors.0", metadata !1203, metadata !"", i32 0, i32 31}
!1203 = metadata !{metadata !1204}
!1204 = metadata !{i32 0, i32 1, i32 1}
!1205 = metadata !{metadata !1206}
!1206 = metadata !{i32 0, i32 15, metadata !1207}
!1207 = metadata !{metadata !1208}
!1208 = metadata !{metadata !"Layer3_Neurons_CPU_hls", metadata !1209, metadata !"unsigned short", i32 0, i32 15}
!1209 = metadata !{metadata !1210}
!1210 = metadata !{i32 0, i32 1249, i32 1}
!1211 = metadata !{metadata !1212}
!1212 = metadata !{i32 0, i32 15, metadata !1213}
!1213 = metadata !{metadata !1214}
!1214 = metadata !{metadata !"Layer3_Weights_CPU_hls", metadata !1209, metadata !"unsigned short", i32 0, i32 15}
!1215 = metadata !{metadata !1216}
!1216 = metadata !{i32 0, i32 15, metadata !1217}
!1217 = metadata !{metadata !1218}
!1218 = metadata !{metadata !"Layer4_Neurons_CPU_hls", metadata !1219, metadata !"unsigned short", i32 0, i32 15}
!1219 = metadata !{metadata !1220}
!1220 = metadata !{i32 0, i32 99, i32 1}

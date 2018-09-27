; ModuleID = 'D:/Xilinx/Assignment_2/EQ_HLS/HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@y2_fix = internal unnamed_addr global [7 x i17] zeroinitializer
@y1_fix = internal unnamed_addr global [7 x i17] zeroinitializer
@x2_fix = internal unnamed_addr global [7 x i16] zeroinitializer
@x1_fix = internal unnamed_addr global [7 x i16] zeroinitializer
@eq_str = internal unnamed_addr constant [3 x i8] c"eq\00"
@coeff = internal unnamed_addr global [35 x i32] zeroinitializer, align 4
@p_str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"eqio\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @eq(i32 %b0, i32 %b1, i32 %b2, i32 %a1, i32 %a2, i16 signext %band, i16 signext %sampleIn, i16* %sampleOut) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b0) nounwind, !map !9
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b1) nounwind, !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b2) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a1) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a2) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %band) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %sampleIn) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %sampleOut) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecTopModule([3 x i8]* @eq_str) nounwind
  %sampleIn_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %sampleIn) nounwind
  %band_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %band) nounwind
  %a2_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %a2) nounwind
  %a1_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %a1) nounwind
  %b2_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b2) nounwind
  %b1_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b1) nounwind
  %b0_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b0) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %a1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %a2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %band, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %sampleIn, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16* %sampleOut, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_s = icmp slt i16 %band_read, 7
  br i1 %tmp_s, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %0
  br label %.preheader

; <label>:1                                       ; preds = %0
  %tmp_13 = shl i16 %band_read, 2
  %i = add i16 %band_read, %tmp_13
  %i_1 = add i16 1, %i
  %tmp_1 = sext i16 %i to i32
  %coeff_addr = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_1
  store i32 %b0_read, i32* %coeff_addr, align 4
  %i_2 = add i16 2, %i
  %tmp_2 = sext i16 %i_1 to i32
  %coeff_addr_1 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_2
  store i32 %b1_read, i32* %coeff_addr_1, align 4
  %i_3 = add i16 3, %i
  %tmp_3 = sext i16 %i_2 to i32
  %coeff_addr_2 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_3
  store i32 %b2_read, i32* %coeff_addr_2, align 4
  %i_4 = add i16 4, %i
  %tmp_4 = sext i16 %i_3 to i32
  %coeff_addr_3 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_4
  store i32 %a1_read, i32* %coeff_addr_3, align 4
  %tmp_5 = sext i16 %i_4 to i32
  %coeff_addr_4 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_5
  store i32 %a2_read, i32* %coeff_addr_4, align 4
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %2
  %tmp_6 = phi i16 [ %input, %2 ], [ 0, %.preheader.preheader ]
  %i5 = phi i6 [ %i_5, %2 ], [ 0, %.preheader.preheader ]
  %band_assign = phi i3 [ %b, %2 ], [ 0, %.preheader.preheader ]
  %sample_assign = phi i16 [ %input, %2 ], [ %sampleIn_read, %.preheader.preheader ]
  %exitcond = icmp eq i3 %band_assign, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  %b = add i3 %band_assign, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %2

; <label>:2                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str3) nounwind
  %tmp_7 = zext i6 %i5 to i32
  %tmp_14 = trunc i6 %i5 to i5
  %coeff_addr_5 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_7
  %coeff_load = load i32* %coeff_addr_5, align 4
  %tmp_8 = add i5 1, %tmp_14
  %tmp_8_cast = zext i5 %tmp_8 to i32
  %coeff_addr_6 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_8_cast
  %coeff_load_1 = load i32* %coeff_addr_6, align 4
  %tmp_9 = add i6 2, %i5
  %tmp_9_cast = zext i6 %tmp_9 to i32
  %coeff_addr_7 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_9_cast
  %coeff_load_2 = load i32* %coeff_addr_7, align 4
  %tmp_10 = add i6 3, %i5
  %tmp_10_cast = zext i6 %tmp_10 to i32
  %coeff_addr_8 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_10_cast
  %coeff_load_3 = load i32* %coeff_addr_8, align 4
  %tmp_11 = add i6 4, %i5
  %tmp_11_cast = zext i6 %tmp_11 to i32
  %coeff_addr_9 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_11_cast
  %coeff_load_4 = load i32* %coeff_addr_9, align 4
  %in = sext i16 %sample_assign to i32
  %tmp_i = mul nsw i32 %in, %coeff_load
  %tmp_1_i = zext i3 %band_assign to i32
  %x1_fix_addr = getelementptr [7 x i16]* @x1_fix, i32 0, i32 %tmp_1_i
  %x1_fix_load = load i16* %x1_fix_addr, align 2
  %extLd = sext i16 %x1_fix_load to i32
  %tmp_2_i = mul nsw i32 %extLd, %coeff_load_1
  %x2_fix_addr = getelementptr [7 x i16]* @x2_fix, i32 0, i32 %tmp_1_i
  %x2_fix_load = load i16* %x2_fix_addr, align 2
  %extLd1 = sext i16 %x2_fix_load to i32
  %tmp_3_i = mul nsw i32 %extLd1, %coeff_load_2
  %y1_fix_addr = getelementptr [7 x i17]* @y1_fix, i32 0, i32 %tmp_1_i
  %y1_fix_load = load i17* %y1_fix_addr, align 4
  %extLd7 = sext i17 %y1_fix_load to i32
  %tmp_4_i = mul nsw i32 %extLd7, %coeff_load_3
  %y2_fix_addr = getelementptr [7 x i17]* @y2_fix, i32 0, i32 %tmp_1_i
  %y2_fix_load = load i17* %y2_fix_addr, align 4
  %extLd2 = sext i17 %y2_fix_load to i32
  %tmp_5_i = mul nsw i32 %extLd2, %coeff_load_4
  %tmp = add i32 %tmp_3_i, %tmp_i
  %tmp_7_i = add i32 %tmp_2_i, %tmp
  %tmp_8_i = sub i32 %tmp_7_i, %tmp_4_i
  %out = sub i32 %tmp_8_i, %tmp_5_i
  %tmp_10_i = call i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32 %out, i32 15, i32 31)
  store i16 %x1_fix_load, i16* %x2_fix_addr, align 2
  store i16 %sample_assign, i16* %x1_fix_addr, align 2
  store i17 %y1_fix_load, i17* %y2_fix_addr, align 4
  store i17 %tmp_10_i, i17* %y1_fix_addr, align 4
  %input = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %out, i32 15, i32 30)
  %i_5 = add i6 5, %i5
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  %tmp_12 = phi i16 [ 0, %1 ], [ %tmp_6, %.loopexit.loopexit ]
  call void @_ssdm_op_Write.s_axilite.i16P(i16* %sampleOut, i16 %tmp_12) nounwind
  ret void
}

define weak void @_ssdm_op_Write.s_axilite.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
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

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i16 @_ssdm_op_Read.s_axilite.i16(i16) {
entry:
  ret i16 %0
}

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

define weak i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i17
  ret i17 %empty_4
}

define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i16
  ret i16 %empty_5
}

declare i14 @_ssdm_op_PartSelect.i14.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i16 @_ssdm_op_BitConcatenate.i16.i14.i2(i14, i2) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"short", metadata !"short", metadata !"short*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"b0", metadata !"b1", metadata !"b2", metadata !"a1", metadata !"a2", metadata !"band", metadata !"sample", metadata !"result"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{void (i32, i32, i32, i32, i32, i16, i16, i16*)* @eq, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"b0", metadata !"b1", metadata !"b2", metadata !"a1", metadata !"a2", metadata !"band", metadata !"sampleIn", metadata !"sampleOut"}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 0, i32 31, metadata !11}
!11 = metadata !{metadata !12}
!12 = metadata !{metadata !"b0", metadata !13, metadata !"int", i32 0, i32 31}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 0, i32 0}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"b1", metadata !13, metadata !"int", i32 0, i32 31}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"b2", metadata !13, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"a1", metadata !13, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"a2", metadata !13, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 15, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"band", metadata !13, metadata !"short", i32 0, i32 15}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 15, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"sampleIn", metadata !13, metadata !"short", i32 0, i32 15}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 15, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"sampleOut", metadata !43, metadata !"short", i32 0, i32 15}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, i32 1}

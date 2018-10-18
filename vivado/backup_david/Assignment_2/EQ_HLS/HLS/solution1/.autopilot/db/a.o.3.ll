; ModuleID = 'D:/Xilinx/Assignment_2/EQ_HLS/HLS/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@y2_fix = internal unnamed_addr global [7 x i17] zeroinitializer ; [#uses=1 type=[7 x i17]*]
@y1_fix = internal unnamed_addr global [7 x i17] zeroinitializer ; [#uses=1 type=[7 x i17]*]
@x2_fix = internal unnamed_addr global [7 x i16] zeroinitializer ; [#uses=1 type=[7 x i16]*]
@x1_fix = internal unnamed_addr global [7 x i16] zeroinitializer ; [#uses=1 type=[7 x i16]*]
@eq_str = internal unnamed_addr constant [3 x i8] c"eq\00" ; [#uses=1 type=[3 x i8]*]
@coeff = internal unnamed_addr global [35 x i32] zeroinitializer, align 4 ; [#uses=10 type=[35 x i32]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"eqio\00", align 1 ; [#uses=9 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=45 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=9 type=[10 x i8]*]

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=35]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
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
  %sampleIn_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %sampleIn) nounwind ; [#uses=1 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %sampleIn_read}, i64 0, metadata !45), !dbg !55 ; [debug line = 29:10] [debug variable = sampleIn]
  %band_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %band) nounwind ; [#uses=3 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %band_read}, i64 0, metadata !56), !dbg !57 ; [debug line = 28:10] [debug variable = band]
  %a2_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %a2) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %a2_read}, i64 0, metadata !58), !dbg !59 ; [debug line = 27:46] [debug variable = a2]
  %a1_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %a1) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %a1_read}, i64 0, metadata !60), !dbg !61 ; [debug line = 27:38] [debug variable = a1]
  %b2_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b2) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b2_read}, i64 0, metadata !62), !dbg !63 ; [debug line = 27:30] [debug variable = b2]
  %b1_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b1) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b1_read}, i64 0, metadata !64), !dbg !65 ; [debug line = 27:22] [debug variable = b1]
  %b0_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b0) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b0_read}, i64 0, metadata !66), !dbg !67 ; [debug line = 27:14] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{i32 %b0}, i64 0, metadata !66), !dbg !67 ; [debug line = 27:14] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{i32 %b1}, i64 0, metadata !64), !dbg !65 ; [debug line = 27:22] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32 %b2}, i64 0, metadata !62), !dbg !63 ; [debug line = 27:30] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32 %a1}, i64 0, metadata !60), !dbg !61 ; [debug line = 27:38] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{i32 %a2}, i64 0, metadata !58), !dbg !59 ; [debug line = 27:46] [debug variable = a2]
  call void @llvm.dbg.value(metadata !{i16 %band}, i64 0, metadata !56), !dbg !57 ; [debug line = 28:10] [debug variable = band]
  call void @llvm.dbg.value(metadata !{i16 %sampleIn}, i64 0, metadata !45), !dbg !55 ; [debug line = 29:10] [debug variable = sampleIn]
  call void @llvm.dbg.value(metadata !{i16* %sampleOut}, i64 0, metadata !68), !dbg !69 ; [debug line = 30:17] [debug variable = sampleOut]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %a1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %a2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i16 %band, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i16 %sampleIn, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i16* %sampleOut, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [5 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 32:1]
  call void @llvm.dbg.value(metadata !{i16 %sampleIn}, i64 0, metadata !72), !dbg !73 ; [debug line = 36:24] [debug variable = input]
  %tmp_s = icmp slt i16 %band_read, 7, !dbg !74   ; [#uses=1 type=i1] [debug line = 38:5]
  br i1 %tmp_s, label %1, label %.preheader.preheader, !dbg !74 ; [debug line = 38:5]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !75                  ; [debug line = 49:14]

; <label>:1                                       ; preds = %0
  %tmp_13 = shl i16 %band_read, 2, !dbg !78       ; [#uses=1 type=i16] [debug line = 40:6]
  %i = add i16 %band_read, %tmp_13, !dbg !78      ; [#uses=5 type=i16] [debug line = 40:6]
  call void @llvm.dbg.value(metadata !{i16 %i}, i64 0, metadata !80), !dbg !78 ; [debug line = 40:6] [debug variable = i]
  %i_1 = add i16 1, %i, !dbg !81                  ; [#uses=1 type=i16] [debug line = 41:9]
  call void @llvm.dbg.value(metadata !{i16 %i_1}, i64 0, metadata !80), !dbg !81 ; [debug line = 41:9] [debug variable = i]
  %tmp_1 = sext i16 %i to i32, !dbg !81           ; [#uses=1 type=i32] [debug line = 41:9]
  %coeff_addr = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_1, !dbg !81 ; [#uses=1 type=i32*] [debug line = 41:9]
  store i32 %b0_read, i32* %coeff_addr, align 4, !dbg !81 ; [debug line = 41:9]
  %i_2 = add i16 2, %i, !dbg !82                  ; [#uses=1 type=i16] [debug line = 42:9]
  call void @llvm.dbg.value(metadata !{i16 %i_2}, i64 0, metadata !80), !dbg !82 ; [debug line = 42:9] [debug variable = i]
  %tmp_2 = sext i16 %i_1 to i32, !dbg !82         ; [#uses=1 type=i32] [debug line = 42:9]
  %coeff_addr_1 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_2, !dbg !82 ; [#uses=1 type=i32*] [debug line = 42:9]
  store i32 %b1_read, i32* %coeff_addr_1, align 4, !dbg !82 ; [debug line = 42:9]
  %i_3 = add i16 3, %i, !dbg !83                  ; [#uses=1 type=i16] [debug line = 43:9]
  call void @llvm.dbg.value(metadata !{i16 %i_3}, i64 0, metadata !80), !dbg !83 ; [debug line = 43:9] [debug variable = i]
  %tmp_3 = sext i16 %i_2 to i32, !dbg !83         ; [#uses=1 type=i32] [debug line = 43:9]
  %coeff_addr_2 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_3, !dbg !83 ; [#uses=1 type=i32*] [debug line = 43:9]
  store i32 %b2_read, i32* %coeff_addr_2, align 4, !dbg !83 ; [debug line = 43:9]
  %i_4 = add i16 4, %i, !dbg !84                  ; [#uses=1 type=i16] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{i16 %i_4}, i64 0, metadata !80), !dbg !84 ; [debug line = 44:9] [debug variable = i]
  %tmp_4 = sext i16 %i_3 to i32, !dbg !84         ; [#uses=1 type=i32] [debug line = 44:9]
  %coeff_addr_3 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_4, !dbg !84 ; [#uses=1 type=i32*] [debug line = 44:9]
  store i32 %a1_read, i32* %coeff_addr_3, align 4, !dbg !84 ; [debug line = 44:9]
  %tmp_5 = sext i16 %i_4 to i32, !dbg !85         ; [#uses=1 type=i32] [debug line = 45:9]
  %coeff_addr_4 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_5, !dbg !85 ; [#uses=1 type=i32*] [debug line = 45:9]
  store i32 %a2_read, i32* %coeff_addr_4, align 4, !dbg !85 ; [debug line = 45:9]
  br label %.loopexit, !dbg !86                   ; [debug line = 46:5]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %tmp_6 = phi i16 [ %input, %2 ], [ 0, %.preheader.preheader ] ; [#uses=1 type=i16]
  %i5 = phi i6 [ %i_5, %2 ], [ 0, %.preheader.preheader ] ; [#uses=6 type=i6]
  %band_assign = phi i3 [ %b, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %sample_assign = phi i16 [ %input, %2 ], [ %sampleIn_read, %.preheader.preheader ] ; [#uses=2 type=i16]
  %exitcond = icmp eq i3 %band_assign, -1, !dbg !75 ; [#uses=1 type=i1] [debug line = 49:14]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  %b = add i3 %band_assign, 1, !dbg !87           ; [#uses=1 type=i3] [debug line = 54:4]
  br i1 %exitcond, label %.loopexit.loopexit, label %2, !dbg !75 ; [debug line = 49:14]

; <label>:2                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str3) nounwind, !dbg !89 ; [debug line = 49:39]
  %tmp_7 = zext i6 %i5 to i32, !dbg !90           ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp_14 = trunc i6 %i5 to i5, !dbg !90          ; [#uses=1 type=i5] [debug line = 50:4]
  %coeff_addr_5 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_7, !dbg !90 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff_load = load i32* %coeff_addr_5, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp_8 = add i5 1, %tmp_14, !dbg !90            ; [#uses=1 type=i5] [debug line = 50:4]
  %tmp_8_cast = zext i5 %tmp_8 to i32, !dbg !90   ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff_addr_6 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_8_cast, !dbg !90 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff_load_1 = load i32* %coeff_addr_6, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp_9 = add i6 2, %i5, !dbg !90                ; [#uses=1 type=i6] [debug line = 50:4]
  %tmp_9_cast = zext i6 %tmp_9 to i32, !dbg !90   ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff_addr_7 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_9_cast, !dbg !90 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff_load_2 = load i32* %coeff_addr_7, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp_10 = add i6 3, %i5, !dbg !90               ; [#uses=1 type=i6] [debug line = 50:4]
  %tmp_10_cast = zext i6 %tmp_10 to i32, !dbg !90 ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff_addr_8 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_10_cast, !dbg !90 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff_load_3 = load i32* %coeff_addr_8, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp_11 = add i6 4, %i5, !dbg !90               ; [#uses=1 type=i6] [debug line = 50:4]
  %tmp_11_cast = zext i6 %tmp_11 to i32, !dbg !90 ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff_addr_9 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp_11_cast, !dbg !90 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff_load_4 = load i32* %coeff_addr_9, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 50:4]
  call void @llvm.dbg.value(metadata !{i32 %coeff_load}, i64 0, metadata !91) nounwind, !dbg !93 ; [debug line = 5:15@50:4] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{i32 %coeff_load_1}, i64 0, metadata !94) nounwind, !dbg !95 ; [debug line = 5:23@50:4] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32 %coeff_load_2}, i64 0, metadata !96) nounwind, !dbg !97 ; [debug line = 5:31@50:4] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32 %coeff_load_3}, i64 0, metadata !98) nounwind, !dbg !99 ; [debug line = 5:39@50:4] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{i32 %coeff_load_4}, i64 0, metadata !100) nounwind, !dbg !101 ; [debug line = 5:47@50:4] [debug variable = a2]
  call void @llvm.dbg.value(metadata !{i3 %band_assign}, i64 0, metadata !102) nounwind, !dbg !103 ; [debug line = 5:57@50:4] [debug variable = band]
  call void @llvm.dbg.value(metadata !{i16 %sample_assign}, i64 0, metadata !104) nounwind, !dbg !105 ; [debug line = 5:69@50:4] [debug variable = sample]
  %in = sext i16 %sample_assign to i32, !dbg !106 ; [#uses=1 type=i32] [debug line = 8:17@50:4]
  call void @llvm.dbg.value(metadata !{i32 %in}, i64 0, metadata !108) nounwind, !dbg !106 ; [debug line = 8:17@50:4] [debug variable = in]
  %tmp_i = mul nsw i32 %in, %coeff_load, !dbg !109 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp_1_i = zext i3 %band_assign to i32, !dbg !109 ; [#uses=4 type=i32] [debug line = 13:24@50:4]
  %x1_fix_addr = getelementptr [7 x i16]* @x1_fix, i32 0, i32 %tmp_1_i, !dbg !109 ; [#uses=2 type=i16*] [debug line = 13:24@50:4]
  %x1_fix_load = load i16* %x1_fix_addr, align 2  ; [#uses=2 type=i16]
  %extLd = sext i16 %x1_fix_load to i32           ; [#uses=1 type=i32]
  %tmp_2_i = mul nsw i32 %extLd, %coeff_load_1, !dbg !109 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %x2_fix_addr = getelementptr [7 x i16]* @x2_fix, i32 0, i32 %tmp_1_i, !dbg !109 ; [#uses=2 type=i16*] [debug line = 13:24@50:4]
  %x2_fix_load = load i16* %x2_fix_addr, align 2  ; [#uses=1 type=i16]
  %extLd1 = sext i16 %x2_fix_load to i32          ; [#uses=1 type=i32]
  %tmp_3_i = mul nsw i32 %extLd1, %coeff_load_2, !dbg !109 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %y1_fix_addr = getelementptr [7 x i17]* @y1_fix, i32 0, i32 %tmp_1_i, !dbg !109 ; [#uses=2 type=i17*] [debug line = 13:24@50:4]
  %y1_fix_load = load i17* %y1_fix_addr, align 4  ; [#uses=2 type=i17]
  %extLd7 = sext i17 %y1_fix_load to i32          ; [#uses=1 type=i32]
  %tmp_4_i = mul nsw i32 %extLd7, %coeff_load_3, !dbg !109 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %y2_fix_addr = getelementptr [7 x i17]* @y2_fix, i32 0, i32 %tmp_1_i, !dbg !109 ; [#uses=2 type=i17*] [debug line = 13:24@50:4]
  %y2_fix_load = load i17* %y2_fix_addr, align 4  ; [#uses=1 type=i17]
  %extLd2 = sext i17 %y2_fix_load to i32          ; [#uses=1 type=i32]
  %tmp_5_i = mul nsw i32 %extLd2, %coeff_load_4, !dbg !109 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp = add i32 %tmp_3_i, %tmp_i, !dbg !109      ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp_7_i = add i32 %tmp_2_i, %tmp, !dbg !109    ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp_8_i = sub i32 %tmp_7_i, %tmp_4_i, !dbg !109 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %out = sub i32 %tmp_8_i, %tmp_5_i, !dbg !109    ; [#uses=2 type=i32] [debug line = 13:24@50:4]
  call void @llvm.dbg.value(metadata !{i32 %out}, i64 0, metadata !110) nounwind, !dbg !109 ; [debug line = 13:24@50:4] [debug variable = out]
  %tmp_10_i = call i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32 %out, i32 15, i32 31), !dbg !111 ; [#uses=1 type=i17] [debug line = 16:2@50:4]
  store i16 %x1_fix_load, i16* %x2_fix_addr, align 2, !dbg !112 ; [debug line = 18:2@50:4]
  store i16 %sample_assign, i16* %x1_fix_addr, align 2, !dbg !113 ; [debug line = 19:2@50:4]
  store i17 %y1_fix_load, i17* %y2_fix_addr, align 4, !dbg !114 ; [debug line = 20:2@50:4]
  store i17 %tmp_10_i, i17* %y1_fix_addr, align 4, !dbg !115 ; [debug line = 21:2@50:4]
  %input = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %out, i32 15, i32 30), !dbg !116 ; [#uses=2 type=i16] [debug line = 23:2@50:4]
  call void @llvm.dbg.value(metadata !{i16 %input}, i64 0, metadata !117) nounwind, !dbg !118 ; [debug line = 5:84@50:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16 %input}, i64 0, metadata !119), !dbg !90 ; [debug line = 50:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16 %input}, i64 0, metadata !72), !dbg !120 ; [debug line = 53:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i3 %b}, i64 0, metadata !121), !dbg !87 ; [debug line = 54:4] [debug variable = b]
  %i_5 = add i6 5, %i5, !dbg !122                 ; [#uses=1 type=i6] [debug line = 49:30]
  call void @llvm.dbg.value(metadata !{i6 %i_5}, i64 0, metadata !80), !dbg !122 ; [debug line = 49:30] [debug variable = i]
  br label %.preheader, !dbg !122                 ; [debug line = 49:30]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  %tmp_12 = phi i16 [ 0, %1 ], [ %tmp_6, %.loopexit.loopexit ] ; [#uses=1 type=i16]
  call void @_ssdm_op_Write.s_axilite.i16P(i16* %sampleOut, i16 %tmp_12) nounwind, !dbg !123 ; [debug line = 57:2]
  ret void, !dbg !124                             ; [debug line = 58:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.s_axilite.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=2]
define weak i16 @_ssdm_op_Read.s_axilite.i16(i16) {
entry:
  ret i16 %0
}

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=1]
define weak i17 @_ssdm_op_PartSelect.i17.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i17              ; [#uses=1 type=i17]
  ret i17 %empty_4
}

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i16              ; [#uses=1 type=i16]
  ret i16 %empty_5
}

; [#uses=0]
declare i14 @_ssdm_op_PartSelect.i14.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=0]
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
!45 = metadata !{i32 786689, metadata !46, metadata !"sampleIn", metadata !47, i32 117440541, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786478, i32 0, metadata !47, metadata !"eq", metadata !"eq", metadata !"", metadata !47, i32 27, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32, i32, i16, i16, i16*)* @eq, null, null, metadata !53, i32 31} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786473, metadata !"EQ.c", metadata !"D:\5CXilinx\5CAssignment_2\5CEQ_HLS", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !50, metadata !50, metadata !50, metadata !50, metadata !50, metadata !51, metadata !51, metadata !52}
!50 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!55 = metadata !{i32 29, i32 10, metadata !46, null}
!56 = metadata !{i32 786689, metadata !46, metadata !"band", metadata !47, i32 100663324, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 28, i32 10, metadata !46, null}
!58 = metadata !{i32 786689, metadata !46, metadata !"a2", metadata !47, i32 83886107, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 27, i32 46, metadata !46, null}
!60 = metadata !{i32 786689, metadata !46, metadata !"a1", metadata !47, i32 67108891, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 27, i32 38, metadata !46, null}
!62 = metadata !{i32 786689, metadata !46, metadata !"b2", metadata !47, i32 50331675, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 27, i32 30, metadata !46, null}
!64 = metadata !{i32 786689, metadata !46, metadata !"b1", metadata !47, i32 33554459, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 27, i32 22, metadata !46, null}
!66 = metadata !{i32 786689, metadata !46, metadata !"b0", metadata !47, i32 16777243, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 27, i32 14, metadata !46, null}
!68 = metadata !{i32 786689, metadata !46, metadata !"sampleOut", metadata !47, i32 134217758, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 30, i32 17, metadata !46, null}
!70 = metadata !{i32 32, i32 1, metadata !71, null}
!71 = metadata !{i32 786443, metadata !46, i32 31, i32 1, metadata !47, i32 1} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786688, metadata !71, metadata !"input", metadata !47, i32 36, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 36, i32 24, metadata !71, null}
!74 = metadata !{i32 38, i32 5, metadata !71, null}
!75 = metadata !{i32 49, i32 14, metadata !76, null}
!76 = metadata !{i32 786443, metadata !77, i32 49, i32 9, metadata !47, i32 4} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !71, i32 48, i32 5, metadata !47, i32 3} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 40, i32 6, metadata !79, null}
!79 = metadata !{i32 786443, metadata !71, i32 39, i32 5, metadata !47, i32 2} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !47, i32 33, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 41, i32 9, metadata !79, null}
!82 = metadata !{i32 42, i32 9, metadata !79, null}
!83 = metadata !{i32 43, i32 9, metadata !79, null}
!84 = metadata !{i32 44, i32 9, metadata !79, null}
!85 = metadata !{i32 45, i32 9, metadata !79, null}
!86 = metadata !{i32 46, i32 5, metadata !79, null}
!87 = metadata !{i32 54, i32 4, metadata !88, null}
!88 = metadata !{i32 786443, metadata !76, i32 49, i32 38, metadata !47, i32 5} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 49, i32 39, metadata !88, null}
!90 = metadata !{i32 50, i32 4, metadata !88, null}
!91 = metadata !{i32 786689, metadata !92, metadata !"b0", metadata !47, i32 16777221, metadata !50, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 786478, i32 0, metadata !47, metadata !"iir", metadata !"iir", metadata !"", metadata !47, i32 5, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !53, i32 6} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 5, i32 15, metadata !92, metadata !90}
!94 = metadata !{i32 786689, metadata !92, metadata !"b1", metadata !47, i32 33554437, metadata !50, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 5, i32 23, metadata !92, metadata !90}
!96 = metadata !{i32 786689, metadata !92, metadata !"b2", metadata !47, i32 50331653, metadata !50, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 5, i32 31, metadata !92, metadata !90}
!98 = metadata !{i32 786689, metadata !92, metadata !"a1", metadata !47, i32 67108869, metadata !50, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 5, i32 39, metadata !92, metadata !90}
!100 = metadata !{i32 786689, metadata !92, metadata !"a2", metadata !47, i32 83886085, metadata !50, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 5, i32 47, metadata !92, metadata !90}
!102 = metadata !{i32 786689, metadata !92, metadata !"band", metadata !47, i32 100663301, metadata !51, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 5, i32 57, metadata !92, metadata !90}
!104 = metadata !{i32 786689, metadata !92, metadata !"sample", metadata !47, i32 117440517, metadata !51, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 5, i32 69, metadata !92, metadata !90}
!106 = metadata !{i32 8, i32 17, metadata !107, metadata !90}
!107 = metadata !{i32 786443, metadata !92, i32 6, i32 1, metadata !47, i32 0} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786688, metadata !107, metadata !"in", metadata !47, i32 8, metadata !50, i32 0, metadata !90} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 13, i32 24, metadata !107, metadata !90}
!110 = metadata !{i32 786688, metadata !107, metadata !"out", metadata !47, i32 9, metadata !50, i32 0, metadata !90} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 16, i32 2, metadata !107, metadata !90}
!112 = metadata !{i32 18, i32 2, metadata !107, metadata !90}
!113 = metadata !{i32 19, i32 2, metadata !107, metadata !90}
!114 = metadata !{i32 20, i32 2, metadata !107, metadata !90}
!115 = metadata !{i32 21, i32 2, metadata !107, metadata !90}
!116 = metadata !{i32 23, i32 2, metadata !107, metadata !90}
!117 = metadata !{i32 790534, metadata !92, metadata !"result", null, i32 5, metadata !52, i32 0, metadata !90} ; [ DW_TAG_arg_variable_wo ]
!118 = metadata !{i32 5, i32 84, metadata !92, metadata !90}
!119 = metadata !{i32 786688, metadata !71, metadata !"result", metadata !47, i32 34, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 53, i32 4, metadata !88, null}
!121 = metadata !{i32 786688, metadata !71, metadata !"b", metadata !47, i32 35, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 49, i32 30, metadata !76, null}
!123 = metadata !{i32 57, i32 2, metadata !71, null}
!124 = metadata !{i32 58, i32 1, metadata !71, null}

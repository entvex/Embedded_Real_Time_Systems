; ModuleID = 'D:/Xilinx/Assignment_2/EQ_HLS/HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@y2_fix = internal unnamed_addr global [7 x i17] zeroinitializer ; [#uses=1 type=[7 x i17]*]
@y1_fix = internal unnamed_addr global [7 x i17] zeroinitializer ; [#uses=1 type=[7 x i17]*]
@x2_fix = internal unnamed_addr global [7 x i16] zeroinitializer ; [#uses=1 type=[7 x i16]*]
@x1_fix = internal unnamed_addr global [7 x i16] zeroinitializer ; [#uses=1 type=[7 x i16]*]
@eq.str = internal unnamed_addr constant [3 x i8] c"eq\00" ; [#uses=1 type=[3 x i8]*]
@coeff = internal unnamed_addr global [35 x i32] zeroinitializer, align 4 ; [#uses=10 type=[35 x i32]*]
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"eqio\00", align 1 ; [#uses=9 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=45 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=9 type=[10 x i8]*]

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @eq(i32 %b0, i32 %b1, i32 %b2, i32 %a1, i32 %a2, i16 signext %band, i16 signext %sampleIn, i16* %sampleOut) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b0) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b1) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b2) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a1) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a2) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %band) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %sampleIn) nounwind, !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %sampleOut) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecTopModule([3 x i8]* @eq.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %b0}, i64 0, metadata !68), !dbg !69 ; [debug line = 27:14] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{i32 %b1}, i64 0, metadata !70), !dbg !71 ; [debug line = 27:22] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32 %b2}, i64 0, metadata !72), !dbg !73 ; [debug line = 27:30] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32 %a1}, i64 0, metadata !74), !dbg !75 ; [debug line = 27:38] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{i32 %a2}, i64 0, metadata !76), !dbg !77 ; [debug line = 27:46] [debug variable = a2]
  call void @llvm.dbg.value(metadata !{i16 %band}, i64 0, metadata !78), !dbg !79 ; [debug line = 28:10] [debug variable = band]
  call void @llvm.dbg.value(metadata !{i16 %sampleIn}, i64 0, metadata !80), !dbg !81 ; [debug line = 29:10] [debug variable = sampleIn]
  call void @llvm.dbg.value(metadata !{i16* %sampleOut}, i64 0, metadata !82), !dbg !83 ; [debug line = 30:17] [debug variable = sampleOut]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b1, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b2, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %a1, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %a2, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i16 %band, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i16 %sampleIn, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i16* %sampleOut, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [5 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !84 ; [debug line = 32:1]
  call void @llvm.dbg.value(metadata !{i16 %sampleIn}, i64 0, metadata !86), !dbg !87 ; [debug line = 36:24] [debug variable = input]
  %tmp. = icmp slt i16 %band, 7, !dbg !88         ; [#uses=1 type=i1] [debug line = 38:5]
  br i1 %tmp., label %1, label %.preheader.preheader, !dbg !88 ; [debug line = 38:5]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !89                  ; [debug line = 49:14]

; <label>:1                                       ; preds = %0
  %_shl = shl i16 %band, 2, !dbg !92              ; [#uses=1 type=i16] [debug line = 40:6]
  %i = add i16 %_shl, %band, !dbg !92             ; [#uses=5 type=i16] [debug line = 40:6]
  call void @llvm.dbg.value(metadata !{i16 %i}, i64 0, metadata !94), !dbg !92 ; [debug line = 40:6] [debug variable = i]
  %i.1 = add i16 %i, 1, !dbg !95                  ; [#uses=1 type=i16] [debug line = 41:9]
  call void @llvm.dbg.value(metadata !{i16 %i.1}, i64 0, metadata !94), !dbg !95 ; [debug line = 41:9] [debug variable = i]
  %tmp.1 = sext i16 %i to i32, !dbg !95           ; [#uses=1 type=i32] [debug line = 41:9]
  %coeff.addr = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.1, !dbg !95 ; [#uses=1 type=i32*] [debug line = 41:9]
  store i32 %b0, i32* %coeff.addr, align 4, !dbg !95 ; [debug line = 41:9]
  %i.2 = add i16 %i, 2, !dbg !96                  ; [#uses=1 type=i16] [debug line = 42:9]
  call void @llvm.dbg.value(metadata !{i16 %i.2}, i64 0, metadata !94), !dbg !96 ; [debug line = 42:9] [debug variable = i]
  %tmp.2 = sext i16 %i.1 to i32, !dbg !96         ; [#uses=1 type=i32] [debug line = 42:9]
  %coeff.addr.1 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.2, !dbg !96 ; [#uses=1 type=i32*] [debug line = 42:9]
  store i32 %b1, i32* %coeff.addr.1, align 4, !dbg !96 ; [debug line = 42:9]
  %i.3 = add i16 %i, 3, !dbg !97                  ; [#uses=1 type=i16] [debug line = 43:9]
  call void @llvm.dbg.value(metadata !{i16 %i.3}, i64 0, metadata !94), !dbg !97 ; [debug line = 43:9] [debug variable = i]
  %tmp.3 = sext i16 %i.2 to i32, !dbg !97         ; [#uses=1 type=i32] [debug line = 43:9]
  %coeff.addr.2 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.3, !dbg !97 ; [#uses=1 type=i32*] [debug line = 43:9]
  store i32 %b2, i32* %coeff.addr.2, align 4, !dbg !97 ; [debug line = 43:9]
  %i.4 = add i16 %i, 4, !dbg !98                  ; [#uses=1 type=i16] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{i16 %i.4}, i64 0, metadata !94), !dbg !98 ; [debug line = 44:9] [debug variable = i]
  %tmp.4 = sext i16 %i.3 to i32, !dbg !98         ; [#uses=1 type=i32] [debug line = 44:9]
  %coeff.addr.3 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.4, !dbg !98 ; [#uses=1 type=i32*] [debug line = 44:9]
  store i32 %a1, i32* %coeff.addr.3, align 4, !dbg !98 ; [debug line = 44:9]
  %tmp.5 = sext i16 %i.4 to i32, !dbg !99         ; [#uses=1 type=i32] [debug line = 45:9]
  %coeff.addr.4 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.5, !dbg !99 ; [#uses=1 type=i32*] [debug line = 45:9]
  store i32 %a2, i32* %coeff.addr.4, align 4, !dbg !99 ; [debug line = 45:9]
  br label %.loopexit, !dbg !100                  ; [debug line = 46:5]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %tmp.6 = phi i16 [ %result.write.assign, %3 ], [ 0, %.preheader.preheader ] ; [#uses=1 type=i16]
  %i5 = phi i6 [ %i.5, %3 ], [ 0, %.preheader.preheader ] ; [#uses=6 type=i6]
  %band.assign = phi i3 [ %b, %3 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %sample.assign = phi i16 [ %result.write.assign, %3 ], [ %sampleIn, %.preheader.preheader ] ; [#uses=2 type=i16]
  %exitcond = icmp eq i3 %band.assign, -1, !dbg !89 ; [#uses=1 type=i1] [debug line = 49:14]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %.loopexit.loopexit, label %3, !dbg !89 ; [debug line = 49:14]

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str3) nounwind, !dbg !101 ; [debug line = 49:39]
  %tmp.7 = zext i6 %i5 to i32, !dbg !103          ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp.7.cast = trunc i6 %i5 to i5, !dbg !103     ; [#uses=1 type=i5] [debug line = 50:4]
  %coeff.addr.5 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.7, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %b0.assign = load i32* %coeff.addr.5, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp.8 = add i5 %tmp.7.cast, 1, !dbg !103       ; [#uses=1 type=i5] [debug line = 50:4]
  %tmp.8.cast = zext i5 %tmp.8 to i32, !dbg !103  ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.6 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.8.cast, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %b1.assign = load i32* %coeff.addr.6, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp.9 = add i6 %i5, 2, !dbg !103               ; [#uses=1 type=i6] [debug line = 50:4]
  %tmp.9.cast = zext i6 %tmp.9 to i32, !dbg !103  ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.7 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.9.cast, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %b2.assign = load i32* %coeff.addr.7, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp.10 = add i6 %i5, 3, !dbg !103              ; [#uses=1 type=i6] [debug line = 50:4]
  %tmp.10.cast = zext i6 %tmp.10 to i32, !dbg !103 ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.8 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.10.cast, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %a1.assign = load i32* %coeff.addr.8, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp.11 = add i6 %i5, 4, !dbg !103              ; [#uses=1 type=i6] [debug line = 50:4]
  %tmp.11.cast = zext i6 %tmp.11 to i32, !dbg !103 ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.9 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.11.cast, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %a2.assign = load i32* %coeff.addr.9, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 50:4]
  call void @llvm.dbg.value(metadata !{i32 %b0.assign}, i64 0, metadata !104) nounwind, !dbg !106 ; [debug line = 5:15@50:4] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{i32 %b1.assign}, i64 0, metadata !107) nounwind, !dbg !108 ; [debug line = 5:23@50:4] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32 %b2.assign}, i64 0, metadata !109) nounwind, !dbg !110 ; [debug line = 5:31@50:4] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32 %a1.assign}, i64 0, metadata !111) nounwind, !dbg !112 ; [debug line = 5:39@50:4] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{i32 %a2.assign}, i64 0, metadata !113) nounwind, !dbg !114 ; [debug line = 5:47@50:4] [debug variable = a2]
  call void @llvm.dbg.value(metadata !{i3 %band.assign}, i64 0, metadata !115) nounwind, !dbg !116 ; [debug line = 5:57@50:4] [debug variable = band]
  call void @llvm.dbg.value(metadata !{i16 %sample.assign}, i64 0, metadata !117) nounwind, !dbg !118 ; [debug line = 5:69@50:4] [debug variable = sample]
  %in = sext i16 %sample.assign to i32, !dbg !119 ; [#uses=1 type=i32] [debug line = 8:17@50:4]
  call void @llvm.dbg.value(metadata !{i32 %in}, i64 0, metadata !121) nounwind, !dbg !119 ; [debug line = 8:17@50:4] [debug variable = in]
  %tmp.i = mul nsw i32 %in, %b0.assign, !dbg !122 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp.1.i = zext i3 %band.assign to i32, !dbg !122 ; [#uses=4 type=i32] [debug line = 13:24@50:4]
  %x1_fix.addr = getelementptr [7 x i16]* @x1_fix, i32 0, i32 %tmp.1.i, !dbg !122 ; [#uses=2 type=i16*] [debug line = 13:24@50:4]
  %x1_fix.load = load i16* %x1_fix.addr, align 2  ; [#uses=2 type=i16]
  %extLd = sext i16 %x1_fix.load to i32           ; [#uses=1 type=i32]
  %tmp.2.i = mul nsw i32 %extLd, %b1.assign, !dbg !122 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %x2_fix.addr = getelementptr [7 x i16]* @x2_fix, i32 0, i32 %tmp.1.i, !dbg !122 ; [#uses=2 type=i16*] [debug line = 13:24@50:4]
  %x2_fix.load = load i16* %x2_fix.addr, align 2  ; [#uses=1 type=i16]
  %extLd1 = sext i16 %x2_fix.load to i32          ; [#uses=1 type=i32]
  %tmp.3.i = mul nsw i32 %extLd1, %b2.assign, !dbg !122 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %y1_fix.addr = getelementptr [7 x i17]* @y1_fix, i32 0, i32 %tmp.1.i, !dbg !122 ; [#uses=2 type=i17*] [debug line = 13:24@50:4]
  %y1_fix.load = load i17* %y1_fix.addr, align 4  ; [#uses=2 type=i17]
  %extLd7 = sext i17 %y1_fix.load to i32          ; [#uses=1 type=i32]
  %tmp.4.i = mul nsw i32 %extLd7, %a1.assign, !dbg !122 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %y2_fix.addr = getelementptr [7 x i17]* @y2_fix, i32 0, i32 %tmp.1.i, !dbg !122 ; [#uses=2 type=i17*] [debug line = 13:24@50:4]
  %y2_fix.load = load i17* %y2_fix.addr, align 4  ; [#uses=1 type=i17]
  %extLd2 = sext i17 %y2_fix.load to i32          ; [#uses=1 type=i32]
  %tmp.5.i = mul nsw i32 %extLd2, %a2.assign, !dbg !122 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp = add i32 %tmp.3.i, %tmp.i, !dbg !122      ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp.7.i = add i32 %tmp.2.i, %tmp, !dbg !122    ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %tmp.8.i = sub i32 %tmp.7.i, %tmp.4.i, !dbg !122 ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  %out = sub i32 %tmp.8.i, %tmp.5.i, !dbg !122    ; [#uses=1 type=i32] [debug line = 13:24@50:4]
  call void @llvm.dbg.value(metadata !{i32 %out}, i64 0, metadata !123) nounwind, !dbg !122 ; [debug line = 13:24@50:4] [debug variable = out]
  %tmp.9.i = lshr i32 %out, 15, !dbg !124         ; [#uses=2 type=i32] [debug line = 16:2@50:4]
  %tmp.10.i = trunc i32 %tmp.9.i to i17, !dbg !124 ; [#uses=1 type=i17] [debug line = 16:2@50:4]
  store i16 %x1_fix.load, i16* %x2_fix.addr, align 2, !dbg !125 ; [debug line = 18:2@50:4]
  store i16 %sample.assign, i16* %x1_fix.addr, align 2, !dbg !126 ; [debug line = 19:2@50:4]
  store i17 %y1_fix.load, i17* %y2_fix.addr, align 4, !dbg !127 ; [debug line = 20:2@50:4]
  store i17 %tmp.10.i, i17* %y1_fix.addr, align 4, !dbg !128 ; [debug line = 21:2@50:4]
  %result.write.assign = trunc i32 %tmp.9.i to i16, !dbg !129 ; [#uses=2 type=i16] [debug line = 23:2@50:4]
  call void @llvm.dbg.value(metadata !{i16 %result.write.assign}, i64 0, metadata !130) nounwind, !dbg !131 ; [debug line = 5:84@50:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16 %result.write.assign}, i64 0, metadata !132), !dbg !103 ; [debug line = 50:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16 %result.write.assign}, i64 0, metadata !86), !dbg !133 ; [debug line = 53:4] [debug variable = input]
  %b = add i3 %band.assign, 1, !dbg !134          ; [#uses=1 type=i3] [debug line = 54:4]
  call void @llvm.dbg.value(metadata !{i3 %b}, i64 0, metadata !135), !dbg !134 ; [debug line = 54:4] [debug variable = b]
  %i.5 = add i6 %i5, 5, !dbg !136                 ; [#uses=1 type=i6] [debug line = 49:30]
  call void @llvm.dbg.value(metadata !{i6 %i.5}, i64 0, metadata !94), !dbg !136 ; [debug line = 49:30] [debug variable = i]
  br label %.preheader, !dbg !136                 ; [debug line = 49:30]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  %tmp.12 = phi i16 [ 0, %1 ], [ %tmp.6, %.loopexit.loopexit ] ; [#uses=1 type=i16]
  store i16 %tmp.12, i16* %sampleOut, align 2, !dbg !137 ; [debug line = 57:2]
  ret void, !dbg !138                             ; [debug line = 58:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=9]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=8]
declare void @_ssdm_op_SpecBitsMap(...)

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!9}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"short", metadata !"short", metadata !"short*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"b0", metadata !"b1", metadata !"b2", metadata !"a1", metadata !"a2", metadata !"band", metadata !"sample", metadata !"result"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{void (i32, i32, i32, i32, i32, i16, i16, i16*)* @eq, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"b0", metadata !"b1", metadata !"b2", metadata !"a1", metadata !"a2", metadata !"band", metadata !"sampleIn", metadata !"sampleOut"}
!9 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/Xilinx/Assignment_2/EQ_HLS/HLS/solution1/.autopilot/db/EQ.pragma.2.c", metadata !"D:\5CXilinx\5CAssignment_2\5CEQ_HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !10} ; [ DW_TAG_compile_unit ]
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !12, metadata !18, metadata !19, metadata !20, metadata !21}
!12 = metadata !{i32 786484, i32 0, null, metadata !"x1_fix", metadata !"x1_fix", metadata !"x1_fix", metadata !13, i32 7, metadata !14, i32 1, i32 1, [7 x i16]* @x1_fix} ; [ DW_TAG_variable ]
!13 = metadata !{i32 786473, metadata !"EQ.c", metadata !"D:\5CXilinx\5CAssignment_2\5CEQ_HLS", null} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 224, i64 32, i32 0, i32 0, metadata !15, metadata !16, i32 0, i32 0} ; [ DW_TAG_array_type ]
!15 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"x2_fix", metadata !"x2_fix", metadata !"x2_fix", metadata !13, i32 7, metadata !14, i32 1, i32 1, [7 x i16]* @x2_fix} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"y1_fix", metadata !"y1_fix", metadata !"y1_fix", metadata !13, i32 7, metadata !14, i32 1, i32 1, [7 x i17]* @y1_fix} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"y2_fix", metadata !"y2_fix", metadata !"y2_fix", metadata !13, i32 7, metadata !14, i32 1, i32 1, [7 x i17]* @y2_fix} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786484, i32 0, metadata !22, metadata !"coeff", metadata !"coeff", metadata !"", metadata !13, i32 32, metadata !29, i32 1, i32 1, [35 x i32]* @coeff} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786478, i32 0, metadata !13, metadata !"eq", metadata !"eq", metadata !"", metadata !13, i32 27, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32, i32, i16, i16, i16*)* @eq, null, null, metadata !27, i32 31} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !15, metadata !15, metadata !15, metadata !15, metadata !15, metadata !25, metadata !25, metadata !26}
!25 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1120, i64 32, i32 0, i32 0, metadata !15, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 34}       ; [ DW_TAG_subrange_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"b0", metadata !36, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 0, i32 0}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"b1", metadata !36, metadata !"int", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"b2", metadata !36, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"a1", metadata !36, metadata !"int", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"a2", metadata !36, metadata !"int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 15, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"band", metadata !36, metadata !"short", i32 0, i32 15}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 15, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"sampleIn", metadata !36, metadata !"short", i32 0, i32 15}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 15, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"sampleOut", metadata !66, metadata !"short", i32 0, i32 15}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 0, i32 1}
!68 = metadata !{i32 786689, metadata !22, metadata !"b0", metadata !13, i32 16777243, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 27, i32 14, metadata !22, null}
!70 = metadata !{i32 786689, metadata !22, metadata !"b1", metadata !13, i32 33554459, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 27, i32 22, metadata !22, null}
!72 = metadata !{i32 786689, metadata !22, metadata !"b2", metadata !13, i32 50331675, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 27, i32 30, metadata !22, null}
!74 = metadata !{i32 786689, metadata !22, metadata !"a1", metadata !13, i32 67108891, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 27, i32 38, metadata !22, null}
!76 = metadata !{i32 786689, metadata !22, metadata !"a2", metadata !13, i32 83886107, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 27, i32 46, metadata !22, null}
!78 = metadata !{i32 786689, metadata !22, metadata !"band", metadata !13, i32 100663324, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 28, i32 10, metadata !22, null}
!80 = metadata !{i32 786689, metadata !22, metadata !"sampleIn", metadata !13, i32 117440541, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 29, i32 10, metadata !22, null}
!82 = metadata !{i32 786689, metadata !22, metadata !"sampleOut", metadata !13, i32 134217758, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 30, i32 17, metadata !22, null}
!84 = metadata !{i32 32, i32 1, metadata !85, null}
!85 = metadata !{i32 786443, metadata !22, i32 31, i32 1, metadata !13, i32 1} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786688, metadata !85, metadata !"input", metadata !13, i32 36, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 36, i32 24, metadata !85, null}
!88 = metadata !{i32 38, i32 5, metadata !85, null}
!89 = metadata !{i32 49, i32 14, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 49, i32 9, metadata !13, i32 4} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !85, i32 48, i32 5, metadata !13, i32 3} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 40, i32 6, metadata !93, null}
!93 = metadata !{i32 786443, metadata !85, i32 39, i32 5, metadata !13, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !13, i32 33, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 41, i32 9, metadata !93, null}
!96 = metadata !{i32 42, i32 9, metadata !93, null}
!97 = metadata !{i32 43, i32 9, metadata !93, null}
!98 = metadata !{i32 44, i32 9, metadata !93, null}
!99 = metadata !{i32 45, i32 9, metadata !93, null}
!100 = metadata !{i32 46, i32 5, metadata !93, null}
!101 = metadata !{i32 49, i32 39, metadata !102, null}
!102 = metadata !{i32 786443, metadata !90, i32 49, i32 38, metadata !13, i32 5} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 50, i32 4, metadata !102, null}
!104 = metadata !{i32 786689, metadata !105, metadata !"b0", metadata !13, i32 16777221, metadata !15, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 786478, i32 0, metadata !13, metadata !"iir", metadata !"iir", metadata !"", metadata !13, i32 5, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 6} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 5, i32 15, metadata !105, metadata !103}
!107 = metadata !{i32 786689, metadata !105, metadata !"b1", metadata !13, i32 33554437, metadata !15, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 5, i32 23, metadata !105, metadata !103}
!109 = metadata !{i32 786689, metadata !105, metadata !"b2", metadata !13, i32 50331653, metadata !15, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 5, i32 31, metadata !105, metadata !103}
!111 = metadata !{i32 786689, metadata !105, metadata !"a1", metadata !13, i32 67108869, metadata !15, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 5, i32 39, metadata !105, metadata !103}
!113 = metadata !{i32 786689, metadata !105, metadata !"a2", metadata !13, i32 83886085, metadata !15, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 5, i32 47, metadata !105, metadata !103}
!115 = metadata !{i32 786689, metadata !105, metadata !"band", metadata !13, i32 100663301, metadata !25, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 5, i32 57, metadata !105, metadata !103}
!117 = metadata !{i32 786689, metadata !105, metadata !"sample", metadata !13, i32 117440517, metadata !25, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 5, i32 69, metadata !105, metadata !103}
!119 = metadata !{i32 8, i32 17, metadata !120, metadata !103}
!120 = metadata !{i32 786443, metadata !105, i32 6, i32 1, metadata !13, i32 0} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786688, metadata !120, metadata !"in", metadata !13, i32 8, metadata !15, i32 0, metadata !103} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 13, i32 24, metadata !120, metadata !103}
!123 = metadata !{i32 786688, metadata !120, metadata !"out", metadata !13, i32 9, metadata !15, i32 0, metadata !103} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 16, i32 2, metadata !120, metadata !103}
!125 = metadata !{i32 18, i32 2, metadata !120, metadata !103}
!126 = metadata !{i32 19, i32 2, metadata !120, metadata !103}
!127 = metadata !{i32 20, i32 2, metadata !120, metadata !103}
!128 = metadata !{i32 21, i32 2, metadata !120, metadata !103}
!129 = metadata !{i32 23, i32 2, metadata !120, metadata !103}
!130 = metadata !{i32 790534, metadata !105, metadata !"result", null, i32 5, metadata !26, i32 0, metadata !103} ; [ DW_TAG_arg_variable_wo ]
!131 = metadata !{i32 5, i32 84, metadata !105, metadata !103}
!132 = metadata !{i32 786688, metadata !85, metadata !"result", metadata !13, i32 34, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 53, i32 4, metadata !102, null}
!134 = metadata !{i32 54, i32 4, metadata !102, null}
!135 = metadata !{i32 786688, metadata !85, metadata !"b", metadata !13, i32 35, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 49, i32 30, metadata !90, null}
!137 = metadata !{i32 57, i32 2, metadata !85, null}
!138 = metadata !{i32 58, i32 1, metadata !85, null}

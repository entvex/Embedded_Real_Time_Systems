; ModuleID = 'D:/Xilinx/Assignment_2/EQ_HLS/HLS/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@y2_fix = internal unnamed_addr global [7 x i32] zeroinitializer, align 4 ; [#uses=1 type=[7 x i32]*]
@y1_fix = internal unnamed_addr global [7 x i32] zeroinitializer, align 4 ; [#uses=1 type=[7 x i32]*]
@x2_fix = internal unnamed_addr global [7 x i32] zeroinitializer, align 4 ; [#uses=1 type=[7 x i32]*]
@x1_fix = internal unnamed_addr global [7 x i32] zeroinitializer, align 4 ; [#uses=1 type=[7 x i32]*]
@eq.str = internal unnamed_addr constant [3 x i8] c"eq\00" ; [#uses=1 type=[3 x i8]*]
@coeff = internal unnamed_addr global [35 x i32] zeroinitializer, align 4 ; [#uses=10 type=[35 x i32]*]
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"eqio\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @iir(i32 %b0, i32 %b1, i32 %b2, i32 %a1, i32 %a2, i16 signext %band, i16 signext %sample, i16* %result) nounwind {
  call void @llvm.dbg.value(metadata !{i32 %b0}, i64 0, metadata !37), !dbg !38 ; [debug line = 5:15] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{i32 %b1}, i64 0, metadata !39), !dbg !40 ; [debug line = 5:23] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32 %b2}, i64 0, metadata !41), !dbg !42 ; [debug line = 5:31] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32 %a1}, i64 0, metadata !43), !dbg !44 ; [debug line = 5:39] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{i32 %a2}, i64 0, metadata !45), !dbg !46 ; [debug line = 5:47] [debug variable = a2]
  call void @llvm.dbg.value(metadata !{i16 %band}, i64 0, metadata !47), !dbg !48 ; [debug line = 5:57] [debug variable = band]
  call void @llvm.dbg.value(metadata !{i16 %sample}, i64 0, metadata !49), !dbg !50 ; [debug line = 5:69] [debug variable = sample]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !51), !dbg !52 ; [debug line = 5:84] [debug variable = result]
  %in = sext i16 %sample to i32, !dbg !53         ; [#uses=2 type=i32] [debug line = 8:17]
  call void @llvm.dbg.value(metadata !{i32 %in}, i64 0, metadata !55), !dbg !53 ; [debug line = 8:17] [debug variable = in]
  %tmp = mul nsw i32 %in, %b0, !dbg !56           ; [#uses=1 type=i32] [debug line = 13:24]
  %tmp.1 = sext i16 %band to i32, !dbg !56        ; [#uses=4 type=i32] [debug line = 13:24]
  %x1_fix.addr = getelementptr inbounds [7 x i32]* @x1_fix, i32 0, i32 %tmp.1, !dbg !56 ; [#uses=2 type=i32*] [debug line = 13:24]
  %x1_fix.load = load i32* %x1_fix.addr, align 4, !dbg !56 ; [#uses=4 type=i32] [debug line = 13:24]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x1_fix.load) nounwind
  %tmp.2 = mul nsw i32 %x1_fix.load, %b1, !dbg !56 ; [#uses=1 type=i32] [debug line = 13:24]
  %x2_fix.addr = getelementptr inbounds [7 x i32]* @x2_fix, i32 0, i32 %tmp.1, !dbg !56 ; [#uses=2 type=i32*] [debug line = 13:24]
  %x2_fix.load = load i32* %x2_fix.addr, align 4, !dbg !56 ; [#uses=2 type=i32] [debug line = 13:24]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x2_fix.load) nounwind
  %tmp.3 = mul nsw i32 %x2_fix.load, %b2, !dbg !56 ; [#uses=1 type=i32] [debug line = 13:24]
  %y1_fix.addr = getelementptr inbounds [7 x i32]* @y1_fix, i32 0, i32 %tmp.1, !dbg !56 ; [#uses=2 type=i32*] [debug line = 13:24]
  %y1_fix.load = load i32* %y1_fix.addr, align 4, !dbg !56 ; [#uses=4 type=i32] [debug line = 13:24]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %y1_fix.load) nounwind
  %tmp.4 = mul nsw i32 %y1_fix.load, %a1, !dbg !56 ; [#uses=1 type=i32] [debug line = 13:24]
  %y2_fix.addr = getelementptr inbounds [7 x i32]* @y2_fix, i32 0, i32 %tmp.1, !dbg !56 ; [#uses=2 type=i32*] [debug line = 13:24]
  %y2_fix.load = load i32* %y2_fix.addr, align 4, !dbg !56 ; [#uses=2 type=i32] [debug line = 13:24]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %y2_fix.load) nounwind
  %tmp.5 = mul nsw i32 %y2_fix.load, %a2, !dbg !56 ; [#uses=1 type=i32] [debug line = 13:24]
  %.neg = sub i32 0, %tmp.4                       ; [#uses=1 type=i32]
  %.neg2 = sub i32 0, %tmp.5                      ; [#uses=1 type=i32]
  %tmp.6 = add i32 %tmp.2, %tmp, !dbg !56         ; [#uses=1 type=i32] [debug line = 13:24]
  %tmp.7 = add i32 %tmp.6, %tmp.3, !dbg !56       ; [#uses=1 type=i32] [debug line = 13:24]
  %tmp.8 = add i32 %tmp.7, %.neg, !dbg !56        ; [#uses=1 type=i32] [debug line = 13:24]
  %out = add i32 %tmp.8, %.neg2, !dbg !56         ; [#uses=1 type=i32] [debug line = 13:24]
  call void @llvm.dbg.value(metadata !{i32 %out}, i64 0, metadata !57), !dbg !56 ; [debug line = 13:24] [debug variable = out]
  %out.1 = ashr i32 %out, 15, !dbg !58            ; [#uses=2 type=i32] [debug line = 16:2]
  call void @llvm.dbg.value(metadata !{i32 %out.1}, i64 0, metadata !57), !dbg !58 ; [debug line = 16:2] [debug variable = out]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x1_fix.load) nounwind
  store i32 %x1_fix.load, i32* %x2_fix.addr, align 4, !dbg !59 ; [debug line = 18:2]
  store i32 %in, i32* %x1_fix.addr, align 4, !dbg !60 ; [debug line = 19:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %y1_fix.load) nounwind
  store i32 %y1_fix.load, i32* %y2_fix.addr, align 4, !dbg !61 ; [debug line = 20:2]
  store i32 %out.1, i32* %y1_fix.addr, align 4, !dbg !62 ; [debug line = 21:2]
  %tmp.9 = trunc i32 %out.1 to i16, !dbg !63      ; [#uses=1 type=i16] [debug line = 23:2]
  store i16 %tmp.9, i16* %result, align 2, !dbg !63 ; [debug line = 23:2]
  ret void, !dbg !64                              ; [debug line = 24:1]
}

; [#uses=0]
define void @eq(i32 %b0, i32 %b1, i32 %b2, i32 %a1, i32 %a2, i16 signext %band, i16 signext %sampleIn, i16* %sampleOut) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([3 x i8]* @eq.str) nounwind
  %result = alloca i16, align 2                   ; [#uses=3 type=i16*]
  call void @llvm.dbg.value(metadata !{i32 %b0}, i64 0, metadata !65), !dbg !66 ; [debug line = 27:14] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{i32 %b1}, i64 0, metadata !67), !dbg !68 ; [debug line = 27:22] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{i32 %b2}, i64 0, metadata !69), !dbg !70 ; [debug line = 27:30] [debug variable = b2]
  call void @llvm.dbg.value(metadata !{i32 %a1}, i64 0, metadata !71), !dbg !72 ; [debug line = 27:38] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{i32 %a2}, i64 0, metadata !73), !dbg !74 ; [debug line = 27:46] [debug variable = a2]
  call void @llvm.dbg.value(metadata !{i16 %band}, i64 0, metadata !75), !dbg !76 ; [debug line = 28:10] [debug variable = band]
  call void @llvm.dbg.value(metadata !{i16 %sampleIn}, i64 0, metadata !77), !dbg !78 ; [debug line = 29:10] [debug variable = sampleIn]
  call void @llvm.dbg.value(metadata !{i16* %sampleOut}, i64 0, metadata !79), !dbg !80 ; [debug line = 30:17] [debug variable = sampleOut]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b1, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b2, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %a1, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %a2, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  %tmp = sext i16 %band to i32, !dbg !81          ; [#uses=1 type=i32] [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  %tmp.10 = sext i16 %sampleIn to i32, !dbg !81   ; [#uses=1 type=i32] [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.10, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i16* %sampleOut, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !81 ; [debug line = 32:1]
  call void @llvm.dbg.declare(metadata !{i16* %result}, metadata !83), !dbg !84 ; [debug line = 34:8] [debug variable = result]
  store i16 0, i16* %result, align 2, !dbg !85    ; [debug line = 34:18]
  call void @llvm.dbg.value(metadata !{i16 %sampleIn}, i64 0, metadata !86), !dbg !87 ; [debug line = 36:24] [debug variable = input]
  %tmp.11 = icmp slt i16 %band, 7, !dbg !88       ; [#uses=1 type=i1] [debug line = 38:5]
  br i1 %tmp.11, label %1, label %.preheader.preheader, !dbg !88 ; [debug line = 38:5]

.preheader.preheader:                             ; preds = %0
  br label %.preheader, !dbg !89                  ; [debug line = 49:14]

; <label>:1                                       ; preds = %0
  %i = mul i16 %band, 5, !dbg !92                 ; [#uses=5 type=i16] [debug line = 40:6]
  call void @llvm.dbg.value(metadata !{i16 %i}, i64 0, metadata !94), !dbg !92 ; [debug line = 40:6] [debug variable = i]
  %i.1 = add i16 %i, 1, !dbg !95                  ; [#uses=1 type=i16] [debug line = 41:9]
  call void @llvm.dbg.value(metadata !{i16 %i.1}, i64 0, metadata !94), !dbg !95 ; [debug line = 41:9] [debug variable = i]
  %tmp.14 = sext i16 %i to i32, !dbg !95          ; [#uses=1 type=i32] [debug line = 41:9]
  %coeff.addr = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.14, !dbg !95 ; [#uses=1 type=i32*] [debug line = 41:9]
  store i32 %b0, i32* %coeff.addr, align 4, !dbg !95 ; [debug line = 41:9]
  %i.2 = add i16 %i, 2, !dbg !96                  ; [#uses=1 type=i16] [debug line = 42:9]
  call void @llvm.dbg.value(metadata !{i16 %i.2}, i64 0, metadata !94), !dbg !96 ; [debug line = 42:9] [debug variable = i]
  %tmp.16 = sext i16 %i.1 to i32, !dbg !96        ; [#uses=1 type=i32] [debug line = 42:9]
  %coeff.addr.1 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.16, !dbg !96 ; [#uses=1 type=i32*] [debug line = 42:9]
  store i32 %b1, i32* %coeff.addr.1, align 4, !dbg !96 ; [debug line = 42:9]
  %i.3 = add i16 %i, 3, !dbg !97                  ; [#uses=1 type=i16] [debug line = 43:9]
  call void @llvm.dbg.value(metadata !{i16 %i.3}, i64 0, metadata !94), !dbg !97 ; [debug line = 43:9] [debug variable = i]
  %tmp.18 = sext i16 %i.2 to i32, !dbg !97        ; [#uses=1 type=i32] [debug line = 43:9]
  %coeff.addr.2 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.18, !dbg !97 ; [#uses=1 type=i32*] [debug line = 43:9]
  store i32 %b2, i32* %coeff.addr.2, align 4, !dbg !97 ; [debug line = 43:9]
  %i.4 = add i16 %i, 4, !dbg !98                  ; [#uses=1 type=i16] [debug line = 44:9]
  call void @llvm.dbg.value(metadata !{i16 %i.4}, i64 0, metadata !94), !dbg !98 ; [debug line = 44:9] [debug variable = i]
  %tmp.20 = sext i16 %i.3 to i32, !dbg !98        ; [#uses=1 type=i32] [debug line = 44:9]
  %coeff.addr.3 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.20, !dbg !98 ; [#uses=1 type=i32*] [debug line = 44:9]
  store i32 %a1, i32* %coeff.addr.3, align 4, !dbg !98 ; [debug line = 44:9]
  %tmp.21 = sext i16 %i.4 to i32, !dbg !99        ; [#uses=1 type=i32] [debug line = 45:9]
  %coeff.addr.4 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.21, !dbg !99 ; [#uses=1 type=i32*] [debug line = 45:9]
  store i32 %a2, i32* %coeff.addr.4, align 4, !dbg !99 ; [debug line = 45:9]
  br label %.loopexit, !dbg !100                  ; [debug line = 46:5]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %tmp.22 = phi i16 [ %input.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=1 type=i16]
  %i5 = phi i16 [ %i.6, %2 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i16]
  %b = phi i16 [ %b.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i16]
  %input = phi i16 [ %input.1, %2 ], [ %sampleIn, %.preheader.preheader ] ; [#uses=1 type=i16]
  %exitcond = icmp eq i16 %b, 7, !dbg !89         ; [#uses=1 type=i1] [debug line = 49:14]
  br i1 %exitcond, label %.loopexit.loopexit, label %2, !dbg !89 ; [debug line = 49:14]

; <label>:2                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)), !dbg !101 ; [debug line = 49:39]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !101 ; [#uses=1 type=i32] [debug line = 49:39]
  %tmp.23 = sext i16 %i5 to i32, !dbg !103        ; [#uses=5 type=i32] [debug line = 50:4]
  %coeff.addr.5 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.23, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff.load = load i32* %coeff.addr.5, align 4, !dbg !103 ; [#uses=2 type=i32] [debug line = 50:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %coeff.load) nounwind
  %tmp.24 = add nsw i32 %tmp.23, 1, !dbg !103     ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.6 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.24, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff.load.1 = load i32* %coeff.addr.6, align 4, !dbg !103 ; [#uses=2 type=i32] [debug line = 50:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %coeff.load.1) nounwind
  %tmp.25 = add nsw i32 %tmp.23, 2, !dbg !103     ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.7 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.25, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff.load.2 = load i32* %coeff.addr.7, align 4, !dbg !103 ; [#uses=2 type=i32] [debug line = 50:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %coeff.load.2) nounwind
  %tmp.26 = add nsw i32 %tmp.23, 3, !dbg !103     ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.8 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.26, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff.load.3 = load i32* %coeff.addr.8, align 4, !dbg !103 ; [#uses=2 type=i32] [debug line = 50:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %coeff.load.3) nounwind
  %tmp.27 = add nsw i32 %tmp.23, 4, !dbg !103     ; [#uses=1 type=i32] [debug line = 50:4]
  %coeff.addr.9 = getelementptr inbounds [35 x i32]* @coeff, i32 0, i32 %tmp.27, !dbg !103 ; [#uses=1 type=i32*] [debug line = 50:4]
  %coeff.load.4 = load i32* %coeff.addr.9, align 4, !dbg !103 ; [#uses=2 type=i32] [debug line = 50:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %coeff.load.4) nounwind
  call fastcc void @iir(i32 %coeff.load, i32 %coeff.load.1, i32 %coeff.load.2, i32 %coeff.load.3, i32 %coeff.load.4, i16 signext %b, i16 signext %input, i16* %result), !dbg !103 ; [debug line = 50:4]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !104 ; [debug line = 53:4] [debug variable = result]
  %input.1 = load i16* %result, align 2, !dbg !104 ; [#uses=2 type=i16] [debug line = 53:4]
  call void @llvm.dbg.value(metadata !{i16 %input.1}, i64 0, metadata !86), !dbg !104 ; [debug line = 53:4] [debug variable = input]
  %b.1 = add i16 %b, 1, !dbg !105                 ; [#uses=1 type=i16] [debug line = 54:4]
  call void @llvm.dbg.value(metadata !{i16 %b.1}, i64 0, metadata !106), !dbg !105 ; [debug line = 54:4] [debug variable = b]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !107 ; [#uses=0 type=i32] [debug line = 55:3]
  %i.6 = add i16 %i5, 5, !dbg !108                ; [#uses=1 type=i16] [debug line = 49:30]
  call void @llvm.dbg.value(metadata !{i16 %i.6}, i64 0, metadata !94), !dbg !108 ; [debug line = 49:30] [debug variable = i]
  br label %.preheader, !dbg !108                 ; [debug line = 49:30]

.loopexit.loopexit:                               ; preds = %.preheader
  %.lcssa = phi i16 [ %tmp.22, %.preheader ]      ; [#uses=1 type=i16]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  %tmp.30 = phi i16 [ 0, %1 ], [ %.lcssa, %.loopexit.loopexit ] ; [#uses=1 type=i16]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !109 ; [debug line = 57:2] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !109 ; [debug line = 57:2] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !109 ; [debug line = 57:2] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !109 ; [debug line = 57:2] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !109 ; [debug line = 57:2] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i16* %result}, i64 0, metadata !83), !dbg !109 ; [debug line = 57:2] [debug variable = result]
  store i16 %tmp.30, i16* %sampleOut, align 2, !dbg !109 ; [debug line = 57:2]
  ret void, !dbg !110                             ; [debug line = 58:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=9]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=11]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!28, !35}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/Xilinx/Assignment_2/EQ_HLS/HLS/solution1/.autopilot/db/EQ.pragma.2.c", metadata !"D:\5CXilinx\5CAssignment_2\5CEQ_HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !15} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"iir", metadata !"iir", metadata !"", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32, i32, i16, i16, i16*)* @iir, null, null, metadata !12, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"EQ.c", metadata !"D:\5CXilinx\5CAssignment_2\5CEQ_HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !10, metadata !10, metadata !11}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"eq", metadata !"eq", metadata !"", metadata !6, i32 27, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32, i32, i16, i16, i16*)* @eq, null, null, metadata !12, i32 31} ; [ DW_TAG_subprogram ]
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !17, metadata !21, metadata !22, metadata !23, metadata !24}
!17 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x1_fix", metadata !"x1_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @x1_fix} ; [ DW_TAG_variable ]
!18 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 224, i64 32, i32 0, i32 0, metadata !9, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ]
!21 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x2_fix", metadata !"x2_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @x2_fix} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y1_fix", metadata !"y1_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @y1_fix} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y2_fix", metadata !"y2_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @y2_fix} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, metadata !14, metadata !"coeff", metadata !"coeff", metadata !"", metadata !6, i32 32, metadata !25, i32 1, i32 1, [35 x i32]* @coeff} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1120, i64 32, i32 0, i32 0, metadata !9, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 34}       ; [ DW_TAG_subrange_type ]
!28 = metadata !{void (i32, i32, i32, i32, i32, i16, i16, i16*)* @iir, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"short", metadata !"short", metadata !"short*"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"b0", metadata !"b1", metadata !"b2", metadata !"a1", metadata !"a2", metadata !"band", metadata !"sample", metadata !"result"}
!34 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!35 = metadata !{void (i32, i32, i32, i32, i32, i16, i16, i16*)* @eq, metadata !29, metadata !30, metadata !31, metadata !32, metadata !36, metadata !34}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"b0", metadata !"b1", metadata !"b2", metadata !"a1", metadata !"a2", metadata !"band", metadata !"sampleIn", metadata !"sampleOut"}
!37 = metadata !{i32 786689, metadata !5, metadata !"b0", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 5, i32 15, metadata !5, null}
!39 = metadata !{i32 786689, metadata !5, metadata !"b1", metadata !6, i32 33554437, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 5, i32 23, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"b2", metadata !6, i32 50331653, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 5, i32 31, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"a1", metadata !6, i32 67108869, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 5, i32 39, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"a2", metadata !6, i32 83886085, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 5, i32 47, metadata !5, null}
!47 = metadata !{i32 786689, metadata !5, metadata !"band", metadata !6, i32 100663301, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 5, i32 57, metadata !5, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"sample", metadata !6, i32 117440517, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 5, i32 69, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"result", metadata !6, i32 134217733, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 5, i32 84, metadata !5, null}
!53 = metadata !{i32 8, i32 17, metadata !54, null}
!54 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786688, metadata !54, metadata !"in", metadata !6, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 13, i32 24, metadata !54, null}
!57 = metadata !{i32 786688, metadata !54, metadata !"out", metadata !6, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 16, i32 2, metadata !54, null}
!59 = metadata !{i32 18, i32 2, metadata !54, null}
!60 = metadata !{i32 19, i32 2, metadata !54, null}
!61 = metadata !{i32 20, i32 2, metadata !54, null}
!62 = metadata !{i32 21, i32 2, metadata !54, null}
!63 = metadata !{i32 23, i32 2, metadata !54, null}
!64 = metadata !{i32 24, i32 1, metadata !54, null}
!65 = metadata !{i32 786689, metadata !14, metadata !"b0", metadata !6, i32 16777243, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 27, i32 14, metadata !14, null}
!67 = metadata !{i32 786689, metadata !14, metadata !"b1", metadata !6, i32 33554459, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 27, i32 22, metadata !14, null}
!69 = metadata !{i32 786689, metadata !14, metadata !"b2", metadata !6, i32 50331675, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 27, i32 30, metadata !14, null}
!71 = metadata !{i32 786689, metadata !14, metadata !"a1", metadata !6, i32 67108891, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 27, i32 38, metadata !14, null}
!73 = metadata !{i32 786689, metadata !14, metadata !"a2", metadata !6, i32 83886107, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 27, i32 46, metadata !14, null}
!75 = metadata !{i32 786689, metadata !14, metadata !"band", metadata !6, i32 100663324, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 28, i32 10, metadata !14, null}
!77 = metadata !{i32 786689, metadata !14, metadata !"sampleIn", metadata !6, i32 117440541, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 29, i32 10, metadata !14, null}
!79 = metadata !{i32 786689, metadata !14, metadata !"sampleOut", metadata !6, i32 134217758, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 30, i32 17, metadata !14, null}
!81 = metadata !{i32 32, i32 1, metadata !82, null}
!82 = metadata !{i32 786443, metadata !14, i32 31, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786688, metadata !82, metadata !"result", metadata !6, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 34, i32 8, metadata !82, null}
!85 = metadata !{i32 34, i32 18, metadata !82, null}
!86 = metadata !{i32 786688, metadata !82, metadata !"input", metadata !6, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 36, i32 24, metadata !82, null}
!88 = metadata !{i32 38, i32 5, metadata !82, null}
!89 = metadata !{i32 49, i32 14, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 49, i32 9, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !82, i32 48, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 40, i32 6, metadata !93, null}
!93 = metadata !{i32 786443, metadata !82, i32 39, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786688, metadata !82, metadata !"i", metadata !6, i32 33, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 41, i32 9, metadata !93, null}
!96 = metadata !{i32 42, i32 9, metadata !93, null}
!97 = metadata !{i32 43, i32 9, metadata !93, null}
!98 = metadata !{i32 44, i32 9, metadata !93, null}
!99 = metadata !{i32 45, i32 9, metadata !93, null}
!100 = metadata !{i32 46, i32 5, metadata !93, null}
!101 = metadata !{i32 49, i32 39, metadata !102, null}
!102 = metadata !{i32 786443, metadata !90, i32 49, i32 38, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 50, i32 4, metadata !102, null}
!104 = metadata !{i32 53, i32 4, metadata !102, null}
!105 = metadata !{i32 54, i32 4, metadata !102, null}
!106 = metadata !{i32 786688, metadata !82, metadata !"b", metadata !6, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 55, i32 3, metadata !102, null}
!108 = metadata !{i32 49, i32 30, metadata !90, null}
!109 = metadata !{i32 57, i32 2, metadata !82, null}
!110 = metadata !{i32 58, i32 1, metadata !82, null}

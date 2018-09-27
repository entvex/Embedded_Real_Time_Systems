; ModuleID = 'D:/Xilinx/Assignment_2/EQ_HLS/HLS/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@iir.x1_fix = internal global [7 x i32] zeroinitializer, align 4 ; [#uses=3 type=[7 x i32]*]
@iir.x2_fix = internal global [7 x i32] zeroinitializer, align 4 ; [#uses=2 type=[7 x i32]*]
@iir.y1_fix = internal global [7 x i32] zeroinitializer, align 4 ; [#uses=3 type=[7 x i32]*]
@iir.y2_fix = internal global [7 x i32] zeroinitializer, align 4 ; [#uses=2 type=[7 x i32]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"eqio\00", align 1 ; [#uses=1 type=[5 x i8]*]
@eq.coeff = internal global [35 x i32] zeroinitializer, align 4 ; [#uses=10 type=[35 x i32]*]
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=1]
define void @iir(i32 %b0, i32 %b1, i32 %b2, i32 %a1, i32 %a2, i16 signext %band, i16 signext %sample, i16* %result) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %6 = alloca i16, align 2                        ; [#uses=11 type=i16*]
  %7 = alloca i16, align 2                        ; [#uses=2 type=i16*]
  %8 = alloca i16*, align 4                       ; [#uses=2 type=i16**]
  %in = alloca i32, align 4                       ; [#uses=3 type=i32*]
  %out = alloca i32, align 4                      ; [#uses=5 type=i32*]
  store i32 %b0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !37), !dbg !38 ; [debug line = 5:15] [debug variable = b0]
  store i32 %b1, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !39), !dbg !40 ; [debug line = 5:23] [debug variable = b1]
  store i32 %b2, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !41), !dbg !42 ; [debug line = 5:31] [debug variable = b2]
  store i32 %a1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !43), !dbg !44 ; [debug line = 5:39] [debug variable = a1]
  store i32 %a2, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !45), !dbg !46 ; [debug line = 5:47] [debug variable = a2]
  store i16 %band, i16* %6, align 2
  call void @llvm.dbg.declare(metadata !{i16* %6}, metadata !47), !dbg !48 ; [debug line = 5:57] [debug variable = band]
  store i16 %sample, i16* %7, align 2
  call void @llvm.dbg.declare(metadata !{i16* %7}, metadata !49), !dbg !50 ; [debug line = 5:69] [debug variable = sample]
  store i16* %result, i16** %8, align 4
  call void @llvm.dbg.declare(metadata !{i16** %8}, metadata !51), !dbg !52 ; [debug line = 5:84] [debug variable = result]
  call void @llvm.dbg.declare(metadata !{i32* %in}, metadata !53), !dbg !55 ; [debug line = 8:6] [debug variable = in]
  %9 = load i16* %7, align 2, !dbg !56            ; [#uses=1 type=i16] [debug line = 8:17]
  %10 = sext i16 %9 to i32, !dbg !56              ; [#uses=1 type=i32] [debug line = 8:17]
  store i32 %10, i32* %in, align 4, !dbg !56      ; [debug line = 8:17]
  call void @llvm.dbg.declare(metadata !{i32* %out}, metadata !57), !dbg !58 ; [debug line = 9:6] [debug variable = out]
  %11 = load i32* %1, align 4, !dbg !59           ; [#uses=1 type=i32] [debug line = 13:24]
  %12 = load i32* %in, align 4, !dbg !59          ; [#uses=1 type=i32] [debug line = 13:24]
  %13 = mul nsw i32 %11, %12, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %14 = load i32* %2, align 4, !dbg !59           ; [#uses=1 type=i32] [debug line = 13:24]
  %15 = load i16* %6, align 2, !dbg !59           ; [#uses=1 type=i16] [debug line = 13:24]
  %16 = sext i16 %15 to i32, !dbg !59             ; [#uses=1 type=i32] [debug line = 13:24]
  %17 = getelementptr inbounds [7 x i32]* @iir.x1_fix, i32 0, i32 %16, !dbg !59 ; [#uses=1 type=i32*] [debug line = 13:24]
  %18 = load i32* %17, align 4, !dbg !59          ; [#uses=1 type=i32] [debug line = 13:24]
  %19 = mul nsw i32 %14, %18, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %20 = add nsw i32 %13, %19, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %21 = load i32* %3, align 4, !dbg !59           ; [#uses=1 type=i32] [debug line = 13:24]
  %22 = load i16* %6, align 2, !dbg !59           ; [#uses=1 type=i16] [debug line = 13:24]
  %23 = sext i16 %22 to i32, !dbg !59             ; [#uses=1 type=i32] [debug line = 13:24]
  %24 = getelementptr inbounds [7 x i32]* @iir.x2_fix, i32 0, i32 %23, !dbg !59 ; [#uses=1 type=i32*] [debug line = 13:24]
  %25 = load i32* %24, align 4, !dbg !59          ; [#uses=1 type=i32] [debug line = 13:24]
  %26 = mul nsw i32 %21, %25, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %27 = add nsw i32 %20, %26, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %28 = load i32* %4, align 4, !dbg !59           ; [#uses=1 type=i32] [debug line = 13:24]
  %29 = load i16* %6, align 2, !dbg !59           ; [#uses=1 type=i16] [debug line = 13:24]
  %30 = sext i16 %29 to i32, !dbg !59             ; [#uses=1 type=i32] [debug line = 13:24]
  %31 = getelementptr inbounds [7 x i32]* @iir.y1_fix, i32 0, i32 %30, !dbg !59 ; [#uses=1 type=i32*] [debug line = 13:24]
  %32 = load i32* %31, align 4, !dbg !59          ; [#uses=1 type=i32] [debug line = 13:24]
  %33 = mul nsw i32 %28, %32, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %34 = sub nsw i32 %27, %33, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %35 = load i32* %5, align 4, !dbg !59           ; [#uses=1 type=i32] [debug line = 13:24]
  %36 = load i16* %6, align 2, !dbg !59           ; [#uses=1 type=i16] [debug line = 13:24]
  %37 = sext i16 %36 to i32, !dbg !59             ; [#uses=1 type=i32] [debug line = 13:24]
  %38 = getelementptr inbounds [7 x i32]* @iir.y2_fix, i32 0, i32 %37, !dbg !59 ; [#uses=1 type=i32*] [debug line = 13:24]
  %39 = load i32* %38, align 4, !dbg !59          ; [#uses=1 type=i32] [debug line = 13:24]
  %40 = mul nsw i32 %35, %39, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  %41 = sub nsw i32 %34, %40, !dbg !59            ; [#uses=1 type=i32] [debug line = 13:24]
  store i32 %41, i32* %out, align 4, !dbg !59     ; [debug line = 13:24]
  %42 = load i32* %out, align 4, !dbg !60         ; [#uses=1 type=i32] [debug line = 16:2]
  %43 = ashr i32 %42, 15, !dbg !60                ; [#uses=1 type=i32] [debug line = 16:2]
  store i32 %43, i32* %out, align 4, !dbg !60     ; [debug line = 16:2]
  %44 = load i16* %6, align 2, !dbg !61           ; [#uses=1 type=i16] [debug line = 18:2]
  %45 = sext i16 %44 to i32, !dbg !61             ; [#uses=1 type=i32] [debug line = 18:2]
  %46 = getelementptr inbounds [7 x i32]* @iir.x1_fix, i32 0, i32 %45, !dbg !61 ; [#uses=1 type=i32*] [debug line = 18:2]
  %47 = load i32* %46, align 4, !dbg !61          ; [#uses=1 type=i32] [debug line = 18:2]
  %48 = load i16* %6, align 2, !dbg !61           ; [#uses=1 type=i16] [debug line = 18:2]
  %49 = sext i16 %48 to i32, !dbg !61             ; [#uses=1 type=i32] [debug line = 18:2]
  %50 = getelementptr inbounds [7 x i32]* @iir.x2_fix, i32 0, i32 %49, !dbg !61 ; [#uses=1 type=i32*] [debug line = 18:2]
  store i32 %47, i32* %50, align 4, !dbg !61      ; [debug line = 18:2]
  %51 = load i32* %in, align 4, !dbg !62          ; [#uses=1 type=i32] [debug line = 19:2]
  %52 = load i16* %6, align 2, !dbg !62           ; [#uses=1 type=i16] [debug line = 19:2]
  %53 = sext i16 %52 to i32, !dbg !62             ; [#uses=1 type=i32] [debug line = 19:2]
  %54 = getelementptr inbounds [7 x i32]* @iir.x1_fix, i32 0, i32 %53, !dbg !62 ; [#uses=1 type=i32*] [debug line = 19:2]
  store i32 %51, i32* %54, align 4, !dbg !62      ; [debug line = 19:2]
  %55 = load i16* %6, align 2, !dbg !63           ; [#uses=1 type=i16] [debug line = 20:2]
  %56 = sext i16 %55 to i32, !dbg !63             ; [#uses=1 type=i32] [debug line = 20:2]
  %57 = getelementptr inbounds [7 x i32]* @iir.y1_fix, i32 0, i32 %56, !dbg !63 ; [#uses=1 type=i32*] [debug line = 20:2]
  %58 = load i32* %57, align 4, !dbg !63          ; [#uses=1 type=i32] [debug line = 20:2]
  %59 = load i16* %6, align 2, !dbg !63           ; [#uses=1 type=i16] [debug line = 20:2]
  %60 = sext i16 %59 to i32, !dbg !63             ; [#uses=1 type=i32] [debug line = 20:2]
  %61 = getelementptr inbounds [7 x i32]* @iir.y2_fix, i32 0, i32 %60, !dbg !63 ; [#uses=1 type=i32*] [debug line = 20:2]
  store i32 %58, i32* %61, align 4, !dbg !63      ; [debug line = 20:2]
  %62 = load i32* %out, align 4, !dbg !64         ; [#uses=1 type=i32] [debug line = 21:2]
  %63 = load i16* %6, align 2, !dbg !64           ; [#uses=1 type=i16] [debug line = 21:2]
  %64 = sext i16 %63 to i32, !dbg !64             ; [#uses=1 type=i32] [debug line = 21:2]
  %65 = getelementptr inbounds [7 x i32]* @iir.y1_fix, i32 0, i32 %64, !dbg !64 ; [#uses=1 type=i32*] [debug line = 21:2]
  store i32 %62, i32* %65, align 4, !dbg !64      ; [debug line = 21:2]
  %66 = load i32* %out, align 4, !dbg !65         ; [#uses=1 type=i32] [debug line = 23:2]
  %67 = trunc i32 %66 to i16, !dbg !65            ; [#uses=1 type=i16] [debug line = 23:2]
  %68 = load i16** %8, align 4, !dbg !65          ; [#uses=1 type=i16*] [debug line = 23:2]
  store i16 %67, i16* %68, align 2, !dbg !65      ; [debug line = 23:2]
  ret void, !dbg !66                              ; [debug line = 24:1]
}

; [#uses=22]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @eq(i32 %b0, i32 %b1, i32 %b2, i32 %a1, i32 %a2, i16 signext %band, i16 signext %sampleIn, i16* %sampleOut) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %6 = alloca i16, align 2                        ; [#uses=4 type=i16*]
  %7 = alloca i16, align 2                        ; [#uses=3 type=i16*]
  %8 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %i = alloca i16, align 2                        ; [#uses=19 type=i16*]
  %result = alloca i16, align 2                   ; [#uses=4 type=i16*]
  %b = alloca i16, align 2                        ; [#uses=4 type=i16*]
  %input = alloca i16, align 2                    ; [#uses=3 type=i16*]
  store i32 %b0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !67), !dbg !68 ; [debug line = 27:14] [debug variable = b0]
  store i32 %b1, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !69), !dbg !70 ; [debug line = 27:22] [debug variable = b1]
  store i32 %b2, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !71), !dbg !72 ; [debug line = 27:30] [debug variable = b2]
  store i32 %a1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !73), !dbg !74 ; [debug line = 27:38] [debug variable = a1]
  store i32 %a2, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !75), !dbg !76 ; [debug line = 27:46] [debug variable = a2]
  store i16 %band, i16* %6, align 2
  call void @llvm.dbg.declare(metadata !{i16* %6}, metadata !77), !dbg !78 ; [debug line = 28:10] [debug variable = band]
  store i16 %sampleIn, i16* %7, align 2
  call void @llvm.dbg.declare(metadata !{i16* %7}, metadata !79), !dbg !80 ; [debug line = 29:10] [debug variable = sampleIn]
  store i16* %sampleOut, i16** %8, align 4
  call void @llvm.dbg.declare(metadata !{i16** %8}, metadata !81), !dbg !82 ; [debug line = 30:17] [debug variable = sampleOut]
  %9 = load i32* %1, align 4, !dbg !83            ; [#uses=1 type=i32] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %9, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  %10 = load i32* %2, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %10, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  %11 = load i32* %3, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %11, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  %12 = load i32* %4, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %12, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  %13 = load i32* %5, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %13, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  %14 = load i16* %6, align 2, !dbg !83           ; [#uses=1 type=i16] [debug line = 32:1]
  %15 = sext i16 %14 to i32, !dbg !83             ; [#uses=1 type=i32] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  %16 = load i16* %7, align 2, !dbg !83           ; [#uses=1 type=i16] [debug line = 32:1]
  %17 = sext i16 %16 to i32, !dbg !83             ; [#uses=1 type=i32] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %17, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  %18 = load i16** %8, align 4, !dbg !83          ; [#uses=1 type=i16*] [debug line = 32:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i16*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i16* %18, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 32:1]
  call void @llvm.dbg.declare(metadata !{i16* %i}, metadata !85), !dbg !86 ; [debug line = 33:11] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i16* %result}, metadata !87), !dbg !88 ; [debug line = 34:8] [debug variable = result]
  store i16 0, i16* %result, align 2, !dbg !89    ; [debug line = 34:18]
  call void @llvm.dbg.declare(metadata !{i16* %b}, metadata !90), !dbg !91 ; [debug line = 35:8] [debug variable = b]
  store i16 0, i16* %b, align 2, !dbg !92         ; [debug line = 35:13]
  call void @llvm.dbg.declare(metadata !{i16* %input}, metadata !93), !dbg !94 ; [debug line = 36:8] [debug variable = input]
  %19 = load i16* %7, align 2, !dbg !95           ; [#uses=1 type=i16] [debug line = 36:24]
  store i16 %19, i16* %input, align 2, !dbg !95   ; [debug line = 36:24]
  %20 = load i16* %6, align 2, !dbg !96           ; [#uses=1 type=i16] [debug line = 38:5]
  %21 = sext i16 %20 to i32, !dbg !96             ; [#uses=1 type=i32] [debug line = 38:5]
  %22 = icmp slt i32 %21, 7, !dbg !96             ; [#uses=1 type=i1] [debug line = 38:5]
  br i1 %22, label %23, label %52, !dbg !96       ; [debug line = 38:5]

; <label>:23                                      ; preds = %0
  %24 = load i16* %6, align 2, !dbg !97           ; [#uses=1 type=i16] [debug line = 40:6]
  %25 = sext i16 %24 to i32, !dbg !97             ; [#uses=1 type=i32] [debug line = 40:6]
  %26 = mul nsw i32 %25, 5, !dbg !97              ; [#uses=1 type=i32] [debug line = 40:6]
  %27 = trunc i32 %26 to i16, !dbg !97            ; [#uses=1 type=i16] [debug line = 40:6]
  store i16 %27, i16* %i, align 2, !dbg !97       ; [debug line = 40:6]
  %28 = load i32* %1, align 4, !dbg !99           ; [#uses=1 type=i32] [debug line = 41:9]
  %29 = load i16* %i, align 2, !dbg !99           ; [#uses=2 type=i16] [debug line = 41:9]
  %30 = add i16 %29, 1, !dbg !99                  ; [#uses=1 type=i16] [debug line = 41:9]
  store i16 %30, i16* %i, align 2, !dbg !99       ; [debug line = 41:9]
  %31 = sext i16 %29 to i32, !dbg !99             ; [#uses=1 type=i32] [debug line = 41:9]
  %32 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %31, !dbg !99 ; [#uses=1 type=i32*] [debug line = 41:9]
  store i32 %28, i32* %32, align 4, !dbg !99      ; [debug line = 41:9]
  %33 = load i32* %2, align 4, !dbg !100          ; [#uses=1 type=i32] [debug line = 42:9]
  %34 = load i16* %i, align 2, !dbg !100          ; [#uses=2 type=i16] [debug line = 42:9]
  %35 = add i16 %34, 1, !dbg !100                 ; [#uses=1 type=i16] [debug line = 42:9]
  store i16 %35, i16* %i, align 2, !dbg !100      ; [debug line = 42:9]
  %36 = sext i16 %34 to i32, !dbg !100            ; [#uses=1 type=i32] [debug line = 42:9]
  %37 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %36, !dbg !100 ; [#uses=1 type=i32*] [debug line = 42:9]
  store i32 %33, i32* %37, align 4, !dbg !100     ; [debug line = 42:9]
  %38 = load i32* %3, align 4, !dbg !101          ; [#uses=1 type=i32] [debug line = 43:9]
  %39 = load i16* %i, align 2, !dbg !101          ; [#uses=2 type=i16] [debug line = 43:9]
  %40 = add i16 %39, 1, !dbg !101                 ; [#uses=1 type=i16] [debug line = 43:9]
  store i16 %40, i16* %i, align 2, !dbg !101      ; [debug line = 43:9]
  %41 = sext i16 %39 to i32, !dbg !101            ; [#uses=1 type=i32] [debug line = 43:9]
  %42 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %41, !dbg !101 ; [#uses=1 type=i32*] [debug line = 43:9]
  store i32 %38, i32* %42, align 4, !dbg !101     ; [debug line = 43:9]
  %43 = load i32* %4, align 4, !dbg !102          ; [#uses=1 type=i32] [debug line = 44:9]
  %44 = load i16* %i, align 2, !dbg !102          ; [#uses=2 type=i16] [debug line = 44:9]
  %45 = add i16 %44, 1, !dbg !102                 ; [#uses=1 type=i16] [debug line = 44:9]
  store i16 %45, i16* %i, align 2, !dbg !102      ; [debug line = 44:9]
  %46 = sext i16 %44 to i32, !dbg !102            ; [#uses=1 type=i32] [debug line = 44:9]
  %47 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %46, !dbg !102 ; [#uses=1 type=i32*] [debug line = 44:9]
  store i32 %43, i32* %47, align 4, !dbg !102     ; [debug line = 44:9]
  %48 = load i32* %5, align 4, !dbg !103          ; [#uses=1 type=i32] [debug line = 45:9]
  %49 = load i16* %i, align 2, !dbg !103          ; [#uses=1 type=i16] [debug line = 45:9]
  %50 = sext i16 %49 to i32, !dbg !103            ; [#uses=1 type=i32] [debug line = 45:9]
  %51 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %50, !dbg !103 ; [#uses=1 type=i32*] [debug line = 45:9]
  store i32 %48, i32* %51, align 4, !dbg !103     ; [debug line = 45:9]
  br label %94, !dbg !104                         ; [debug line = 46:5]

; <label>:52                                      ; preds = %0
  br label %53, !dbg !105                         ; [debug line = 48:5]

; <label>:53                                      ; preds = %52
  store i16 0, i16* %i, align 2, !dbg !107        ; [debug line = 49:14]
  br label %54, !dbg !107                         ; [debug line = 49:14]

; <label>:54                                      ; preds = %88, %53
  %55 = load i16* %i, align 2, !dbg !107          ; [#uses=1 type=i16] [debug line = 49:14]
  %56 = sext i16 %55 to i32, !dbg !107            ; [#uses=1 type=i32] [debug line = 49:14]
  %57 = icmp slt i32 %56, 35, !dbg !107           ; [#uses=1 type=i1] [debug line = 49:14]
  br i1 %57, label %58, label %93, !dbg !107      ; [debug line = 49:14]

; <label>:58                                      ; preds = %54
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !109 ; [debug line = 49:39]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !109 ; [debug line = 49:39]
  %59 = load i16* %i, align 2, !dbg !111          ; [#uses=1 type=i16] [debug line = 50:4]
  %60 = sext i16 %59 to i32, !dbg !111            ; [#uses=1 type=i32] [debug line = 50:4]
  %61 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %60, !dbg !111 ; [#uses=1 type=i32*] [debug line = 50:4]
  %62 = load i32* %61, align 4, !dbg !111         ; [#uses=1 type=i32] [debug line = 50:4]
  %63 = load i16* %i, align 2, !dbg !111          ; [#uses=1 type=i16] [debug line = 50:4]
  %64 = sext i16 %63 to i32, !dbg !111            ; [#uses=1 type=i32] [debug line = 50:4]
  %65 = add nsw i32 %64, 1, !dbg !111             ; [#uses=1 type=i32] [debug line = 50:4]
  %66 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %65, !dbg !111 ; [#uses=1 type=i32*] [debug line = 50:4]
  %67 = load i32* %66, align 4, !dbg !111         ; [#uses=1 type=i32] [debug line = 50:4]
  %68 = load i16* %i, align 2, !dbg !111          ; [#uses=1 type=i16] [debug line = 50:4]
  %69 = sext i16 %68 to i32, !dbg !111            ; [#uses=1 type=i32] [debug line = 50:4]
  %70 = add nsw i32 %69, 2, !dbg !111             ; [#uses=1 type=i32] [debug line = 50:4]
  %71 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %70, !dbg !111 ; [#uses=1 type=i32*] [debug line = 50:4]
  %72 = load i32* %71, align 4, !dbg !111         ; [#uses=1 type=i32] [debug line = 50:4]
  %73 = load i16* %i, align 2, !dbg !111          ; [#uses=1 type=i16] [debug line = 50:4]
  %74 = sext i16 %73 to i32, !dbg !111            ; [#uses=1 type=i32] [debug line = 50:4]
  %75 = add nsw i32 %74, 3, !dbg !111             ; [#uses=1 type=i32] [debug line = 50:4]
  %76 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %75, !dbg !111 ; [#uses=1 type=i32*] [debug line = 50:4]
  %77 = load i32* %76, align 4, !dbg !111         ; [#uses=1 type=i32] [debug line = 50:4]
  %78 = load i16* %i, align 2, !dbg !111          ; [#uses=1 type=i16] [debug line = 50:4]
  %79 = sext i16 %78 to i32, !dbg !111            ; [#uses=1 type=i32] [debug line = 50:4]
  %80 = add nsw i32 %79, 4, !dbg !111             ; [#uses=1 type=i32] [debug line = 50:4]
  %81 = getelementptr inbounds [35 x i32]* @eq.coeff, i32 0, i32 %80, !dbg !111 ; [#uses=1 type=i32*] [debug line = 50:4]
  %82 = load i32* %81, align 4, !dbg !111         ; [#uses=1 type=i32] [debug line = 50:4]
  %83 = load i16* %b, align 2, !dbg !111          ; [#uses=1 type=i16] [debug line = 50:4]
  %84 = load i16* %input, align 2, !dbg !111      ; [#uses=1 type=i16] [debug line = 50:4]
  call void @iir(i32 %62, i32 %67, i32 %72, i32 %77, i32 %82, i16 signext %83, i16 signext %84, i16* %result), !dbg !111 ; [debug line = 50:4]
  %85 = load i16* %result, align 2, !dbg !112     ; [#uses=1 type=i16] [debug line = 53:4]
  store i16 %85, i16* %input, align 2, !dbg !112  ; [debug line = 53:4]
  %86 = load i16* %b, align 2, !dbg !113          ; [#uses=1 type=i16] [debug line = 54:4]
  %87 = add i16 %86, 1, !dbg !113                 ; [#uses=1 type=i16] [debug line = 54:4]
  store i16 %87, i16* %b, align 2, !dbg !113      ; [debug line = 54:4]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 55:3]
  br label %88, !dbg !114                         ; [debug line = 55:3]

; <label>:88                                      ; preds = %58
  %89 = load i16* %i, align 2, !dbg !115          ; [#uses=1 type=i16] [debug line = 49:30]
  %90 = sext i16 %89 to i32, !dbg !115            ; [#uses=1 type=i32] [debug line = 49:30]
  %91 = add nsw i32 %90, 5, !dbg !115             ; [#uses=1 type=i32] [debug line = 49:30]
  %92 = trunc i32 %91 to i16, !dbg !115           ; [#uses=1 type=i16] [debug line = 49:30]
  store i16 %92, i16* %i, align 2, !dbg !115      ; [debug line = 49:30]
  br label %54, !dbg !115                         ; [debug line = 49:30]

; <label>:93                                      ; preds = %54
  br label %94

; <label>:94                                      ; preds = %93, %23
  %95 = load i16* %result, align 2, !dbg !116     ; [#uses=1 type=i16] [debug line = 57:2]
  %96 = load i16** %8, align 4, !dbg !116         ; [#uses=1 type=i16*] [debug line = 57:2]
  store i16 %95, i16* %96, align 2, !dbg !116     ; [debug line = 57:2]
  ret void, !dbg !117                             ; [debug line = 58:1]
}

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

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
!17 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x1_fix", metadata !"x1_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @iir.x1_fix} ; [ DW_TAG_variable ]
!18 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 224, i64 32, i32 0, i32 0, metadata !9, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ]
!21 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x2_fix", metadata !"x2_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @iir.x2_fix} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y1_fix", metadata !"y1_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @iir.y1_fix} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y2_fix", metadata !"y2_fix", metadata !"", metadata !6, i32 7, metadata !18, i32 1, i32 1, [7 x i32]* @iir.y2_fix} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, metadata !14, metadata !"coeff", metadata !"coeff", metadata !"", metadata !6, i32 32, metadata !25, i32 1, i32 1, [35 x i32]* @eq.coeff} ; [ DW_TAG_variable ]
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
!53 = metadata !{i32 786688, metadata !54, metadata !"in", metadata !6, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 8, i32 6, metadata !54, null}
!56 = metadata !{i32 8, i32 17, metadata !54, null}
!57 = metadata !{i32 786688, metadata !54, metadata !"out", metadata !6, i32 9, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 9, i32 6, metadata !54, null}
!59 = metadata !{i32 13, i32 24, metadata !54, null}
!60 = metadata !{i32 16, i32 2, metadata !54, null}
!61 = metadata !{i32 18, i32 2, metadata !54, null}
!62 = metadata !{i32 19, i32 2, metadata !54, null}
!63 = metadata !{i32 20, i32 2, metadata !54, null}
!64 = metadata !{i32 21, i32 2, metadata !54, null}
!65 = metadata !{i32 23, i32 2, metadata !54, null}
!66 = metadata !{i32 24, i32 1, metadata !54, null}
!67 = metadata !{i32 786689, metadata !14, metadata !"b0", metadata !6, i32 16777243, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 27, i32 14, metadata !14, null}
!69 = metadata !{i32 786689, metadata !14, metadata !"b1", metadata !6, i32 33554459, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 27, i32 22, metadata !14, null}
!71 = metadata !{i32 786689, metadata !14, metadata !"b2", metadata !6, i32 50331675, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 27, i32 30, metadata !14, null}
!73 = metadata !{i32 786689, metadata !14, metadata !"a1", metadata !6, i32 67108891, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 27, i32 38, metadata !14, null}
!75 = metadata !{i32 786689, metadata !14, metadata !"a2", metadata !6, i32 83886107, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 27, i32 46, metadata !14, null}
!77 = metadata !{i32 786689, metadata !14, metadata !"band", metadata !6, i32 100663324, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 28, i32 10, metadata !14, null}
!79 = metadata !{i32 786689, metadata !14, metadata !"sampleIn", metadata !6, i32 117440541, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 29, i32 10, metadata !14, null}
!81 = metadata !{i32 786689, metadata !14, metadata !"sampleOut", metadata !6, i32 134217758, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 30, i32 17, metadata !14, null}
!83 = metadata !{i32 32, i32 1, metadata !84, null}
!84 = metadata !{i32 786443, metadata !14, i32 31, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !6, i32 33, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 33, i32 11, metadata !84, null}
!87 = metadata !{i32 786688, metadata !84, metadata !"result", metadata !6, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 34, i32 8, metadata !84, null}
!89 = metadata !{i32 34, i32 18, metadata !84, null}
!90 = metadata !{i32 786688, metadata !84, metadata !"b", metadata !6, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 35, i32 8, metadata !84, null}
!92 = metadata !{i32 35, i32 13, metadata !84, null}
!93 = metadata !{i32 786688, metadata !84, metadata !"input", metadata !6, i32 36, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 36, i32 8, metadata !84, null}
!95 = metadata !{i32 36, i32 24, metadata !84, null}
!96 = metadata !{i32 38, i32 5, metadata !84, null}
!97 = metadata !{i32 40, i32 6, metadata !98, null}
!98 = metadata !{i32 786443, metadata !84, i32 39, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 41, i32 9, metadata !98, null}
!100 = metadata !{i32 42, i32 9, metadata !98, null}
!101 = metadata !{i32 43, i32 9, metadata !98, null}
!102 = metadata !{i32 44, i32 9, metadata !98, null}
!103 = metadata !{i32 45, i32 9, metadata !98, null}
!104 = metadata !{i32 46, i32 5, metadata !98, null}
!105 = metadata !{i32 48, i32 5, metadata !106, null}
!106 = metadata !{i32 786443, metadata !84, i32 48, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 49, i32 14, metadata !108, null}
!108 = metadata !{i32 786443, metadata !106, i32 49, i32 9, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 49, i32 39, metadata !110, null}
!110 = metadata !{i32 786443, metadata !108, i32 49, i32 38, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 50, i32 4, metadata !110, null}
!112 = metadata !{i32 53, i32 4, metadata !110, null}
!113 = metadata !{i32 54, i32 4, metadata !110, null}
!114 = metadata !{i32 55, i32 3, metadata !110, null}
!115 = metadata !{i32 49, i32 30, metadata !108, null}
!116 = metadata !{i32 57, i32 2, metadata !84, null}
!117 = metadata !{i32 58, i32 1, metadata !84, null}

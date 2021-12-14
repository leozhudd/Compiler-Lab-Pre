; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

define dso_local i32 @exgcd(i32 %r1, i32 %r2, i32* %r3, i32* %r4) {
  %r5 = alloca i32, align 4
  store i32 %r2, i32* %r5, align 4
  %r6 = alloca i32, align 4
  store i32 %r1, i32* %r6, align 4
  %r7 = load i32, i32* %r5, align 4
  %r8 = icmp eq i32 %r7, 0
  %r9 = zext i1 %r8 to i32
  %r10 = icmp ne i32 %r9, 0
  br i1 %r10, label %r11, label %r12

r11:                                              ; preds = %0
  %r14 = getelementptr i32, i32* %r3, i32 0
  store i32 1, i32* %r14, align 4
  %r15 = getelementptr i32, i32* %r4, i32 0
  store i32 0, i32* %r15, align 4
  %r16 = load i32, i32* %r6, align 4
  ret i32 %r16

1:                                                ; No predecessors!
  br label %r13

r12:                                              ; preds = %0
  %r17 = alloca i32, align 4
  %r19 = load i32, i32* %r5, align 4
  %r20 = load i32, i32* %r6, align 4
  %r21 = load i32, i32* %r5, align 4
  %r22 = srem i32 %r20, %r21
  %r23 = getelementptr i32, i32* %r3, i32 0
  %r24 = getelementptr i32, i32* %r4, i32 0
  %r18 = call i32 @exgcd(i32 %r19, i32 %r22, i32* %r23, i32* %r24)
  store i32 %r18, i32* %r17, align 4
  %r25 = alloca i32, align 4
  %r26 = getelementptr i32, i32* %r3, i32 0
  %r27 = load i32, i32* %r26, align 4
  store i32 %r27, i32* %r25, align 4
  %r28 = getelementptr i32, i32* %r3, i32 0
  %r29 = getelementptr i32, i32* %r4, i32 0
  %r30 = load i32, i32* %r29, align 4
  store i32 %r30, i32* %r28, align 4
  %r31 = getelementptr i32, i32* %r4, i32 0
  %r32 = load i32, i32* %r25, align 4
  %r33 = load i32, i32* %r6, align 4
  %r34 = load i32, i32* %r5, align 4
  %r35 = sdiv i32 %r33, %r34
  %r36 = getelementptr i32, i32* %r4, i32 0
  %r37 = load i32, i32* %r36, align 4
  %r38 = mul i32 %r35, %r37
  %r39 = sub i32 %r32, %r38
  store i32 %r39, i32* %r31, align 4
  %r40 = load i32, i32* %r17, align 4
  ret i32 %r40

2:                                                ; No predecessors!
  br label %r13

r13:                                              ; preds = %2, %1
  ret i32 0
}

define dso_local i32 @main() {
  %r41 = alloca i32, align 4
  store i32 7, i32* %r41, align 4
  %r42 = alloca i32, align 4
  store i32 15, i32* %r42, align 4
  %r43 = alloca [1 x i32], align 4
  %r_for_memset44 = getelementptr [1 x i32], [1 x i32]* %r43, i32 0, i32 0
  call void @memset(i32* %r_for_memset44, i32 0, i32 4)
  %r45 = getelementptr [1 x i32], [1 x i32]* %r43, i32 0, i32 0
  store i32 1, i32* %r45, align 4
  %r46 = alloca [1 x i32], align 4
  %r_for_memset47 = getelementptr [1 x i32], [1 x i32]* %r46, i32 0, i32 0
  call void @memset(i32* %r_for_memset47, i32 0, i32 4)
  %r48 = getelementptr [1 x i32], [1 x i32]* %r46, i32 0, i32 0
  store i32 1, i32* %r48, align 4
  %r50 = load i32, i32* %r41, align 4
  %r51 = load i32, i32* %r42, align 4
  %r52 = getelementptr [1 x i32], [1 x i32]* %r43, i32 0, i32 0
  %r53 = getelementptr [1 x i32], [1 x i32]* %r46, i32 0, i32 0
  %r49 = call i32 @exgcd(i32 %r50, i32 %r51, i32* %r52, i32* %r53)
  %r54 = getelementptr [1 x i32], [1 x i32]* %r43, i32 0, i32 0
  %r55 = getelementptr [1 x i32], [1 x i32]* %r43, i32 0, i32 0
  %r56 = load i32, i32* %r55, align 4
  %r57 = load i32, i32* %r42, align 4
  %r58 = srem i32 %r56, %r57
  %r59 = load i32, i32* %r42, align 4
  %r60 = add i32 %r58, %r59
  %r61 = load i32, i32* %r42, align 4
  %r62 = srem i32 %r60, %r61
  store i32 %r62, i32* %r54, align 4
  %r63 = getelementptr [1 x i32], [1 x i32]* %r43, i32 0, i32 0
  %r64 = load i32, i32* %r63, align 4
  call void @putint(i32 %r64)
  ret i32 0

1:                                                ; No predecessors!
  ret i32 0
}

declare void @memset(i32*, i32, i32)

; Function Attrs: noinline nounwind optnone ssp uwtable
define dso_local i32 @getint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define dso_local i32 @getch() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1)
  %3 = load i8, i8* %1, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define dso_local i32 @getarray(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %3)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %6, !llvm.loop !3

19:                                               ; preds = %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define dso_local void @putint(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define dso_local void @putch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define dso_local void @putarray(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %8, !llvm.loop !5

22:                                               ; preds = %8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"Homebrew clang version 12.0.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}

.class public final Landroidx/compose/foundation/text/LongPressTextDragObserverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt;->e(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt;->f(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/TextDragObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/foundation/text/TextDragObserver;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p2}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/TextDragObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/foundation/text/TextDragObserver;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v1, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$2;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 6
    .line 7
    new-instance v2, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$3;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$3;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 11
    .line 12
    new-instance v3, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$4;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$4;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 16
    .line 17
    new-instance v4, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$5;

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$5;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 21
    move-object v0, p0

    .line 22
    move-object v5, p2

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->m(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/l;Le8/a;Le8/a;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-ne p0, p1, :cond_0

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 36
    return-object p0
.end method

.method private static final e(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/foundation/text/TextDragObserver;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$2;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 6
    .line 7
    new-instance v2, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$3;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$3;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 11
    .line 12
    new-instance v3, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$4;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$4;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 16
    .line 17
    new-instance v4, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$5;

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectDragGesturesWithObserver$5;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    .line 21
    move-object v0, p0

    .line 22
    move-object v5, p2

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->l(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/l;Le8/a;Le8/a;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-ne p0, p1, :cond_0

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 36
    return-object p0
.end method

.method private static final f(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/foundation/text/TextDragObserver;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0, p2}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->d(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p0
.end method

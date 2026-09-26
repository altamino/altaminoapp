.class public final Landroidx/compose/foundation/gestures/ForEachGestureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForEachGesture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForEachGesture.kt\nandroidx/compose/foundation/gestures/ForEachGestureKt\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,82:1\n329#2:83\n79#3,2:84\n32#3,6:86\n81#3:92\n79#3,2:93\n32#3,6:95\n81#3:101\n*S KotlinDebug\n*F\n+ 1 ForEachGesture.kt\nandroidx/compose/foundation/gestures/ForEachGestureKt\n*L\n38#1:83\n64#1:84,2\n64#1:86,6\n64#1:92\n80#1:93,2\n80#1:95,6\n80#1:101\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)Z
    .locals 5
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->v0()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    const/4 v3, 0x1

    .line 21
    .line 22
    if-ge v2, v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    move v1, v3

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    :goto_1
    xor-int/lit8 p0, v1, 0x1

    .line 42
    return p0
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
    instance-of v0, p1, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    :goto_1
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 65
    .line 66
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->u0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    if-ne p1, v1, :cond_3

    .line 75
    return-object v1

    .line 76
    .line 77
    :cond_3
    :goto_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 85
    move-result v2

    .line 86
    const/4 v4, 0x0

    .line 87
    .line 88
    :goto_3
    if-ge v4, v2, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 98
    move-result v5

    .line 99
    .line 100
    if-eqz v5, :cond_4

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 104
    goto :goto_3

    .line 105
    .line 106
    :cond_5
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 107
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
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
    new-instance v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$2;-><init>(Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0, p1}, Landroidx/compose/ui/input/pointer/PointerInputScope;->J(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

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

.method public static final d(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
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
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
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
    instance-of v0, p2, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    .line 37
    if-eqz v2, :cond_5

    .line 38
    .line 39
    if-eq v2, v5, :cond_4

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lkotlin/coroutines/g;

    .line 48
    .line 49
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Le8/p;

    .line 52
    .line 53
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 68
    .line 69
    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lkotlin/coroutines/g;

    .line 72
    .line 73
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Le8/p;

    .line 76
    .line 77
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 80
    .line 81
    .line 82
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_3
    :goto_1
    move-object p2, p0

    .line 84
    move-object p0, v2

    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception p2

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_4
    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Lkotlin/coroutines/g;

    .line 92
    .line 93
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Le8/p;

    .line 96
    .line 97
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 100
    .line 101
    .line 102
    :try_start_1
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    goto :goto_3

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-static {p2}, Lkotlinx/coroutines/f2;->m(Lkotlin/coroutines/g;)Z

    .line 114
    move-result v2

    .line 115
    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    :try_start_2
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    .line 123
    .line 124
    iput v5, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, p0, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v2
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    .line 130
    if-ne v2, v1, :cond_6

    .line 131
    return-object v1

    .line 132
    :cond_6
    move-object v2, p0

    .line 133
    move-object p0, p2

    .line 134
    .line 135
    :goto_3
    :try_start_3
    iput-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    .line 140
    .line 141
    iput v4, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->c(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 145
    move-result-object p2
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 146
    .line 147
    if-ne p2, v1, :cond_3

    .line 148
    return-object v1

    .line 149
    :catch_1
    move-exception v2

    .line 150
    move-object v7, v2

    .line 151
    move-object v2, p0

    .line 152
    move-object p0, p2

    .line 153
    move-object p2, v7

    .line 154
    .line 155
    .line 156
    :goto_4
    invoke-static {p0}, Lkotlinx/coroutines/f2;->m(Lkotlin/coroutines/g;)Z

    .line 157
    move-result v6

    .line 158
    .line 159
    if-eqz v6, :cond_7

    .line 160
    .line 161
    iput-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    .line 166
    .line 167
    iput v3, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->c(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    if-ne p2, v1, :cond_3

    .line 174
    return-object v1

    .line 175
    :cond_7
    throw p2

    .line 176
    .line 177
    :cond_8
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 178
    return-object p0
.end method

.class final Landroidx/compose/foundation/gestures/ScrollingLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nestedScrollDispatcher:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final reverseDirection:Z

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/gestures/ScrollableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/OverscrollEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            ">;",
            "Landroidx/compose/foundation/gestures/ScrollableState;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "orientation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "nestedScrollDispatcher"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "scrollableState"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "flingBehavior"

    .line 18
    .line 19
    .line 20
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 26
    .line 27
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 28
    .line 29
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 30
    .line 31
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 32
    .line 33
    iput-object p5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 34
    .line 35
    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/gestures/ScrollScope;JLandroidx/compose/ui/geometry/Offset;I)J
    .locals 13
    .param p1    # Landroidx/compose/foundation/gestures/ScrollScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-wide v2, p2

    .line 4
    .line 5
    move/from16 v7, p5

    .line 6
    .line 7
    const-string v4, "$this$dispatchScroll"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v4}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 18
    move-result v4

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 23
    .line 24
    move-object/from16 v8, p4

    .line 25
    .line 26
    .line 27
    invoke-interface {v4, v2, v3, v8, v7}, Landroidx/compose/foundation/OverscrollEffect;->d(JLandroidx/compose/ui/geometry/Offset;I)J

    .line 28
    move-result-wide v4

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    move-object/from16 v8, p4

    .line 32
    .line 33
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 41
    move-result-wide v2

    .line 42
    .line 43
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 44
    .line 45
    .line 46
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    check-cast v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2, v3, v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->d(JI)J

    .line 53
    move-result-wide v5

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 57
    move-result-wide v9

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v9, v10}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)J

    .line 61
    move-result-wide v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->k(J)F

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v2}, Landroidx/compose/foundation/gestures/ScrollScope;->a(F)F

    .line 69
    move-result v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->l(F)J

    .line 73
    move-result-wide v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)J

    .line 77
    move-result-wide v2

    .line 78
    .line 79
    .line 80
    invoke-static {v9, v10, v2, v3}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 81
    move-result-wide v11

    .line 82
    move-object v1, v4

    .line 83
    move-wide v4, v11

    .line 84
    .line 85
    move/from16 v6, p5

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->b(JJI)J

    .line 89
    move-result-wide v1

    .line 90
    .line 91
    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 92
    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-interface {v3}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 97
    move-result v3

    .line 98
    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 102
    .line 103
    .line 104
    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 105
    move-result-wide v4

    .line 106
    move-object v1, v3

    .line 107
    move-wide v2, v9

    .line 108
    .line 109
    move-object/from16 v6, p4

    .line 110
    .line 111
    move/from16 v7, p5

    .line 112
    .line 113
    .line 114
    invoke-interface/range {v1 .. v7}, Landroidx/compose/foundation/OverscrollEffect;->e(JJLandroidx/compose/ui/geometry/Offset;I)V

    .line 115
    :cond_1
    return-wide v11
.end method

.method public final b(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 12
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/d;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :goto_1
    iget-object p3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget v1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    iget-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lkotlin/jvm/internal/o0;

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    new-instance p3, Lkotlin/jvm/internal/o0;

    .line 61
    .line 62
    .line 63
    invoke-direct {p3}, Lkotlin/jvm/internal/o0;-><init>()V

    .line 64
    .line 65
    iput-wide p1, p3, Lkotlin/jvm/internal/o0;->element:J

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 68
    const/4 v3, 0x0

    .line 69
    .line 70
    new-instance v11, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;

    .line 71
    const/4 v10, 0x0

    .line 72
    move-object v5, v11

    .line 73
    move-object v6, p0

    .line 74
    move-object v7, p3

    .line 75
    move-wide v8, p1

    .line 76
    .line 77
    .line 78
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/o0;JLkotlin/coroutines/d;)V

    .line 79
    const/4 v5, 0x1

    .line 80
    const/4 v6, 0x0

    .line 81
    .line 82
    iput-object p3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput v2, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    .line 85
    move-object v2, v3

    .line 86
    move-object v3, v11

    .line 87
    .line 88
    .line 89
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/b;->a(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    if-ne p1, v0, :cond_3

    .line 93
    return-object v0

    .line 94
    :cond_3
    move-object p1, p3

    .line 95
    .line 96
    :goto_2
    iget-wide p1, p1, Lkotlin/jvm/internal/o0;->element:J

    .line 97
    .line 98
    .line 99
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method

.method public final c()Landroidx/compose/foundation/gestures/FlingBehavior;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    return-object v0
.end method

.method public final d()Landroidx/compose/foundation/gestures/ScrollableState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    return-object v0
.end method

.method public final e(FLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 12
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
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
    instance-of v0, p2, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v7

    .line 31
    .line 32
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x5

    .line 35
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    .line 40
    if-eqz v1, :cond_6

    .line 41
    .line 42
    if-eq v1, v5, :cond_5

    .line 43
    .line 44
    if-eq v1, v4, :cond_4

    .line 45
    .line 46
    if-eq v1, v3, :cond_3

    .line 47
    .line 48
    if-eq v1, v2, :cond_2

    .line 49
    .line 50
    if-ne v1, v9, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 64
    .line 65
    :cond_2
    iget-wide v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 66
    .line 67
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_3
    iget-wide v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 77
    .line 78
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_4
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 88
    .line 89
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 92
    .line 93
    .line 94
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 95
    goto :goto_3

    .line 96
    .line 97
    :cond_5
    iget p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->F$0:F

    .line 98
    .line 99
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 102
    .line 103
    iget-object v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 106
    .line 107
    .line 108
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :cond_6
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 115
    .line 116
    if-eqz p2, :cond_8

    .line 117
    .line 118
    .line 119
    invoke-interface {p2}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 120
    move-result p2

    .line 121
    .line 122
    if-eqz p2, :cond_8

    .line 123
    .line 124
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->m(F)J

    .line 128
    move-result-wide v10

    .line 129
    .line 130
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$1:Ljava/lang/Object;

    .line 133
    .line 134
    iput p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->F$0:F

    .line 135
    .line 136
    iput v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 137
    .line 138
    .line 139
    invoke-interface {p2, v10, v11, v0}, Landroidx/compose/foundation/OverscrollEffect;->f(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    if-ne p2, v7, :cond_7

    .line 143
    return-object v7

    .line 144
    :cond_7
    move-object v1, p0

    .line 145
    move-object v5, v1

    .line 146
    .line 147
    :goto_1
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 151
    move-result-wide v10

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 155
    move-result p2

    .line 156
    move v1, p2

    .line 157
    move p2, p1

    .line 158
    move-object p1, v5

    .line 159
    goto :goto_2

    .line 160
    :cond_8
    const/4 p2, 0x0

    .line 161
    move v1, p2

    .line 162
    move p2, p1

    .line 163
    move-object p1, p0

    .line 164
    :goto_2
    sub-float/2addr p2, v1

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->m(F)J

    .line 168
    move-result-wide v5

    .line 169
    .line 170
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 171
    .line 172
    .line 173
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 174
    move-result-object p2

    .line 175
    .line 176
    check-cast p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 177
    .line 178
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$1:Ljava/lang/Object;

    .line 181
    .line 182
    iput-wide v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 183
    .line 184
    iput v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v5, v6, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->c(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 188
    move-result-object p2

    .line 189
    .line 190
    if-ne p2, v7, :cond_9

    .line 191
    return-object v7

    .line 192
    :cond_9
    move-wide v4, v5

    .line 193
    .line 194
    :goto_3
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 198
    move-result-wide v10

    .line 199
    .line 200
    .line 201
    invoke-static {v4, v5, v10, v11}, Landroidx/compose/ui/unit/Velocity;->k(JJ)J

    .line 202
    move-result-wide v4

    .line 203
    .line 204
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 207
    .line 208
    iput v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v4, v5, v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->b(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 212
    move-result-object p2

    .line 213
    .line 214
    if-ne p2, v7, :cond_a

    .line 215
    return-object v7

    .line 216
    :cond_a
    move-wide v3, v4

    .line 217
    .line 218
    :goto_4
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 222
    move-result-wide v10

    .line 223
    .line 224
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/runtime/State;

    .line 225
    .line 226
    .line 227
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 228
    move-result-object p2

    .line 229
    move-object v1, p2

    .line 230
    .line 231
    check-cast v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 232
    .line 233
    .line 234
    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/unit/Velocity;->k(JJ)J

    .line 235
    move-result-wide v3

    .line 236
    .line 237
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 238
    .line 239
    iput-wide v10, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->J$0:J

    .line 240
    .line 241
    iput v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 242
    move-wide v2, v3

    .line 243
    move-wide v4, v10

    .line 244
    move-object v6, v0

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->a(JJLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 248
    move-result-object p2

    .line 249
    .line 250
    if-ne p2, v7, :cond_b

    .line 251
    return-object v7

    .line 252
    :cond_b
    move-wide v1, v10

    .line 253
    .line 254
    :goto_5
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->n()J

    .line 258
    move-result-wide v3

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/Velocity;->k(JJ)J

    .line 262
    move-result-wide v1

    .line 263
    .line 264
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 265
    .line 266
    if-eqz p2, :cond_d

    .line 267
    .line 268
    .line 269
    invoke-interface {p2}, Landroidx/compose/foundation/OverscrollEffect;->isEnabled()Z

    .line 270
    move-result p2

    .line 271
    .line 272
    if-eqz p2, :cond_d

    .line 273
    .line 274
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 278
    move-result v1

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->m(F)J

    .line 282
    move-result-wide v1

    .line 283
    .line 284
    iput-object v8, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->L$0:Ljava/lang/Object;

    .line 285
    .line 286
    iput v9, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$1;->label:I

    .line 287
    .line 288
    .line 289
    invoke-interface {p2, v1, v2, v0}, Landroidx/compose/foundation/OverscrollEffect;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 290
    move-result-object p1

    .line 291
    .line 292
    if-ne p1, v7, :cond_c

    .line 293
    return-object v7

    .line 294
    .line 295
    :cond_c
    :goto_6
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 296
    return-object p1

    .line 297
    .line 298
    :cond_d
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 299
    return-object p1
.end method

.method public final f(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->c()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 14
    move-result-wide p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->k(J)F

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(F)F

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->a(F)F

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(F)F

    .line 33
    move-result p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->l(F)J

    .line 37
    move-result-wide p1

    .line 38
    :goto_0
    return-wide p1
.end method

.method public final g(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public final h(J)J
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/geometry/Offset;->s(JF)J

    .line 10
    move-result-wide p1

    .line 11
    :cond_0
    return-wide p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->c()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/compose/foundation/OverscrollEffect;->b()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public final j(J)F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public final k(J)F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public final l(F)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 11
    move-result-wide v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 22
    move-result-wide v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    return-wide v0
.end method

.method public final m(F)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v2}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 11
    move-result-wide v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {v2, p1}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 16
    move-result-wide v0

    .line 17
    :goto_0
    return-wide v0
.end method

.method public final n(JF)J
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x0

    .line 10
    move-wide v2, p1

    .line 11
    move v4, p3

    .line 12
    .line 13
    .line 14
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/Velocity;->e(JFFILjava/lang/Object;)J

    .line 15
    move-result-wide p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    move-wide v0, p1

    .line 21
    move v3, p3

    .line 22
    .line 23
    .line 24
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/Velocity;->e(JFFILjava/lang/Object;)J

    .line 25
    move-result-wide p1

    .line 26
    :goto_0
    return-wide p1
.end method

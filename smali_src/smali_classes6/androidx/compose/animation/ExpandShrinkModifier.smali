.class final Landroidx/compose/animation/ExpandShrinkModifier;
.super Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/ExpandShrinkModifier$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterExitTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/ExpandShrinkModifier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,1154:1\n1#2:1155\n79#3:1156\n*S KotlinDebug\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/ExpandShrinkModifier\n*L\n1126#1:1156\n*E\n"
.end annotation


# instance fields
.field private final alignment:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/Alignment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentAlignment:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final expand:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shrink:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sizeTransitionSpec:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/ui/Alignment;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "sizeAnimation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "offsetAnimation"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "expand"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "shrink"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "alignment"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;-><init>()V

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 31
    .line 32
    iput-object p2, p0, Landroidx/compose/animation/ExpandShrinkModifier;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 33
    .line 34
    iput-object p3, p0, Landroidx/compose/animation/ExpandShrinkModifier;->expand:Landroidx/compose/runtime/State;

    .line 35
    .line 36
    iput-object p4, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    .line 37
    .line 38
    iput-object p5, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    .line 39
    .line 40
    new-instance p1, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0}, Landroidx/compose/animation/ExpandShrinkModifier$sizeTransitionSpec$1;-><init>(Landroidx/compose/animation/ExpandShrinkModifier;)V

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeTransitionSpec:Le8/l;

    .line 46
    return-void
.end method


# virtual methods
.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "$this$measure"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    const-string v1, "measurable"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    .line 15
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 31
    move-result-wide v6

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 34
    .line 35
    iget-object v3, v0, Landroidx/compose/animation/ExpandShrinkModifier;->sizeTransitionSpec:Le8/l;

    .line 36
    .line 37
    new-instance v5, Landroidx/compose/animation/ExpandShrinkModifier$measure$currentSize$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v5, p0, v6, v7}, Landroidx/compose/animation/ExpandShrinkModifier$measure$currentSize$1;-><init>(Landroidx/compose/animation/ExpandShrinkModifier;J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3, v5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Le8/l;Le8/l;)Landroidx/compose/runtime/State;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 54
    move-result-wide v11

    .line 55
    .line 56
    iget-object v1, v0, Landroidx/compose/animation/ExpandShrinkModifier;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 57
    .line 58
    sget-object v3, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$1;->INSTANCE:Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$1;

    .line 59
    .line 60
    new-instance v5, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, p0, v6, v7}, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;-><init>(Landroidx/compose/animation/ExpandShrinkModifier;J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3, v5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Le8/l;Le8/l;)Landroidx/compose/runtime/State;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    check-cast v1, Landroidx/compose/ui/unit/IntOffset;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset;->n()J

    .line 77
    move-result-wide v13

    .line 78
    .line 79
    iget-object v5, v0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 80
    .line 81
    if-eqz v5, :cond_0

    .line 82
    .line 83
    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 84
    move-wide v8, v11

    .line 85
    .line 86
    .line 87
    invoke-interface/range {v5 .. v10}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 88
    move-result-wide v5

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_0
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 95
    move-result-wide v5

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 99
    move-result v1

    .line 100
    .line 101
    .line 102
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 103
    move-result v9

    .line 104
    const/4 v10, 0x0

    .line 105
    .line 106
    new-instance v11, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;

    .line 107
    move-object v3, v11

    .line 108
    move-wide v7, v13

    .line 109
    .line 110
    .line 111
    invoke-direct/range {v3 .. v8}, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;JJ)V

    .line 112
    const/4 v7, 0x4

    .line 113
    const/4 v8, 0x0

    .line 114
    .line 115
    move-object/from16 v2, p1

    .line 116
    move v3, v1

    .line 117
    move v4, v9

    .line 118
    move-object v5, v10

    .line 119
    move-object v6, v11

    .line 120
    .line 121
    .line 122
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 123
    move-result-object v1

    .line 124
    return-object v1
.end method

.method public final a()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final b()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->expand:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final c()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final d(Landroidx/compose/ui/Alignment;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    return-void
.end method

.method public final f(Landroidx/compose/animation/EnterExitState;J)J
    .locals 5
    .param p1    # Landroidx/compose/animation/EnterExitState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "targetState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->expand:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/animation/ChangeSize;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/animation/ChangeSize;->d()Le8/l;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 33
    move-result-wide v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-wide v0, p2

    .line 36
    .line 37
    :goto_0
    iget-object v2, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Landroidx/compose/animation/ChangeSize;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->d()Le8/l;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 63
    move-result-wide v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-wide v2, p2

    .line 66
    .line 67
    :goto_1
    sget-object v4, Landroidx/compose/animation/ExpandShrinkModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result p1

    .line 72
    .line 73
    aget p1, v4, p1

    .line 74
    const/4 v4, 0x1

    .line 75
    .line 76
    if-eq p1, v4, :cond_4

    .line 77
    const/4 p2, 0x2

    .line 78
    .line 79
    if-eq p1, p2, :cond_3

    .line 80
    const/4 p2, 0x3

    .line 81
    .line 82
    if-ne p1, p2, :cond_2

    .line 83
    move-wide p2, v2

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_2
    new-instance p1, Lw7/s;

    .line 87
    .line 88
    .line 89
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 90
    throw p1

    .line 91
    :cond_3
    move-wide p2, v0

    .line 92
    :cond_4
    :goto_2
    return-wide p2
.end method

.method public final g(Landroidx/compose/animation/EnterExitState;J)J
    .locals 10
    .param p1    # Landroidx/compose/animation/EnterExitState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "targetState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 31
    move-result-wide p1

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 53
    move-result-wide p1

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_2
    sget-object v0, Landroidx/compose/animation/ExpandShrinkModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    move-result p1

    .line 62
    .line 63
    aget p1, v0, p1

    .line 64
    const/4 v0, 0x1

    .line 65
    .line 66
    if-eq p1, v0, :cond_6

    .line 67
    const/4 v0, 0x2

    .line 68
    .line 69
    if-eq p1, v0, :cond_5

    .line 70
    const/4 v0, 0x3

    .line 71
    .line 72
    if-ne p1, v0, :cond_4

    .line 73
    .line 74
    iget-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->shrink:Landroidx/compose/runtime/State;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Landroidx/compose/animation/ChangeSize;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/compose/animation/ChangeSize;->d()Le8/l;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 100
    move-result-wide v6

    .line 101
    .line 102
    iget-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier;->alignment:Landroidx/compose/runtime/State;

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 110
    move-object v0, p1

    .line 111
    .line 112
    check-cast v0, Landroidx/compose/ui/Alignment;

    .line 113
    .line 114
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 115
    move-wide v1, p2

    .line 116
    move-wide v3, v6

    .line 117
    move-object v5, p1

    .line 118
    .line 119
    .line 120
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 121
    move-result-wide v8

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 130
    move-result-wide p1

    .line 131
    .line 132
    .line 133
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 134
    move-result p3

    .line 135
    .line 136
    .line 137
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 138
    move-result v0

    .line 139
    sub-int/2addr p3, v0

    .line 140
    .line 141
    .line 142
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 143
    move-result v0

    .line 144
    .line 145
    .line 146
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 147
    move-result p1

    .line 148
    sub-int/2addr v0, p1

    .line 149
    .line 150
    .line 151
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 152
    move-result-wide p1

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :cond_3
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 159
    move-result-wide p1

    .line 160
    goto :goto_0

    .line 161
    .line 162
    :cond_4
    new-instance p1, Lw7/s;

    .line 163
    .line 164
    .line 165
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 166
    throw p1

    .line 167
    .line 168
    :cond_5
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 172
    move-result-wide p1

    .line 173
    goto :goto_0

    .line 174
    .line 175
    :cond_6
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 179
    move-result-wide p1

    .line 180
    :goto_0
    return-wide p1
.end method

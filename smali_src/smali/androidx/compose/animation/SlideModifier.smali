.class final Landroidx/compose/animation/SlideModifier;
.super Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SlideModifier$WhenMappings;
    }
.end annotation


# instance fields
.field private final lazyAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
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

.field private final slideIn:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final slideOut:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transitionSpec:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "lazyAnimation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "slideIn"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "slideOut"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/animation/SlideModifier;->lazyAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/animation/SlideModifier;->slideIn:Landroidx/compose/runtime/State;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/animation/SlideModifier;->slideOut:Landroidx/compose/runtime/State;

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/animation/SlideModifier$transitionSpec$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Landroidx/compose/animation/SlideModifier$transitionSpec$1;-><init>(Landroidx/compose/animation/SlideModifier;)V

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/animation/SlideModifier;->transitionSpec:Le8/l;

    .line 32
    return-void
.end method


# virtual methods
.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
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
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 18
    move-result p3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 22
    move-result p4

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 26
    move-result-wide p3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    new-instance v4, Landroidx/compose/animation/SlideModifier$measure$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, p0, p2, p3, p4}, Landroidx/compose/animation/SlideModifier$measure$1;-><init>(Landroidx/compose/animation/SlideModifier;Landroidx/compose/ui/layout/Placeable;J)V

    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v0, p1

    .line 44
    .line 45
    .line 46
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public final a()Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SlideModifier;->lazyAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    return-object v0
.end method

.method public final b()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SlideModifier;->slideIn:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final c()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SlideModifier;->slideOut:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final d()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SlideModifier;->transitionSpec:Le8/l;

    return-object v0
.end method

.method public final f(Landroidx/compose/animation/EnterExitState;J)J
    .locals 3
    .param p1    # Landroidx/compose/animation/EnterExitState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "targetState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/SlideModifier;->slideIn:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/animation/Slide;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/animation/Slide;->b()Le8/l;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset;->n()J

    .line 35
    move-result-wide v0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 42
    move-result-wide v0

    .line 43
    .line 44
    :goto_0
    iget-object v2, p0, Landroidx/compose/animation/SlideModifier;->slideOut:Landroidx/compose/runtime/State;

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Landroidx/compose/animation/Slide;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/compose/animation/Slide;->b()Le8/l;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    check-cast p2, Landroidx/compose/ui/unit/IntOffset;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntOffset;->n()J

    .line 72
    move-result-wide p2

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_1
    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 79
    move-result-wide p2

    .line 80
    .line 81
    :goto_1
    sget-object v2, Landroidx/compose/animation/SlideModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 85
    move-result p1

    .line 86
    .line 87
    aget p1, v2, p1

    .line 88
    const/4 v2, 0x1

    .line 89
    .line 90
    if-eq p1, v2, :cond_3

    .line 91
    const/4 v2, 0x2

    .line 92
    .line 93
    if-eq p1, v2, :cond_4

    .line 94
    const/4 v0, 0x3

    .line 95
    .line 96
    if-ne p1, v0, :cond_2

    .line 97
    move-wide v0, p2

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_2
    new-instance p1, Lw7/s;

    .line 101
    .line 102
    .line 103
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 104
    throw p1

    .line 105
    .line 106
    :cond_3
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 110
    move-result-wide v0

    .line 111
    :cond_4
    :goto_2
    return-wide v0
.end method

.class final Landroidx/compose/animation/AnimatedContentScope$SizeModifier;
.super Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/AnimatedContentScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SizeModifier"
.end annotation


# instance fields
.field private final sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sizeTransform:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/SizeTransform;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentScope;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/AnimatedContentScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/SizeTransform;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "sizeAnimation"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "sizeTransform"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierWithPassThroughIntrinsics;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 18
    .line 19
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeTransform:Landroidx/compose/runtime/State;

    .line 20
    return-void
.end method


# virtual methods
.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11
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
    iget-object p3, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 17
    .line 18
    new-instance p4, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$1;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 21
    .line 22
    .line 23
    invoke-direct {p4, v0, p0}, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$1;-><init>(Landroidx/compose/animation/AnimatedContentScope;Landroidx/compose/animation/AnimatedContentScope$SizeModifier;)V

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$2;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$size$2;-><init>(Landroidx/compose/animation/AnimatedContentScope;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p4, v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Le8/l;Le8/l;)Landroidx/compose/runtime/State;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    iget-object p4, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, p3}, Landroidx/compose/animation/AnimatedContentScope;->o(Landroidx/compose/runtime/State;)V

    .line 40
    .line 41
    iget-object p4, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4}, Landroidx/compose/animation/AnimatedContentScope;->j()Landroidx/compose/ui/Alignment;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 49
    move-result p4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-static {p4, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 61
    move-result-object p4

    .line 62
    .line 63
    check-cast p4, Landroidx/compose/ui/unit/IntSize;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 67
    move-result-wide v3

    .line 68
    .line 69
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 70
    .line 71
    .line 72
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 73
    move-result-wide v0

    .line 74
    .line 75
    .line 76
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 77
    move-result-object p4

    .line 78
    .line 79
    check-cast p4, Landroidx/compose/ui/unit/IntSize;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 83
    move-result-wide v2

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 87
    move-result v5

    .line 88
    .line 89
    .line 90
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 91
    move-result-object p3

    .line 92
    .line 93
    check-cast p3, Landroidx/compose/ui/unit/IntSize;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 97
    move-result-wide p3

    .line 98
    .line 99
    .line 100
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 101
    move-result v6

    .line 102
    const/4 v7, 0x0

    .line 103
    .line 104
    new-instance v8, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$1;

    .line 105
    .line 106
    .line 107
    invoke-direct {v8, p2, v0, v1}, Landroidx/compose/animation/AnimatedContentScope$SizeModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;J)V

    .line 108
    const/4 v9, 0x4

    .line 109
    const/4 v10, 0x0

    .line 110
    move-object v4, p1

    .line 111
    .line 112
    .line 113
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 114
    move-result-object p1

    .line 115
    return-object p1
.end method

.method public final a()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/SizeTransform;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;->sizeTransform:Landroidx/compose/runtime/State;

    return-object v0
.end method

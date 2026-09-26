.class public final Landroidx/compose/material/ripple/RippleAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRippleAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RippleAnimation.kt\nandroidx/compose/material/ripple/RippleAnimation\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,194:1\n76#2:195\n102#2,2:196\n76#2:198\n102#2,2:199\n138#3:201\n213#4,8:202\n260#4,11:210\n*S KotlinDebug\n*F\n+ 1 RippleAnimation.kt\nandroidx/compose/material/ripple/RippleAnimation\n*L\n76#1:195\n76#1:196,2\n77#1:198\n77#1:199,2\n130#1:201\n158#1:202,8\n158#1:210,11\n*E\n"
.end annotation


# instance fields
.field private final animatedAlpha:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animatedCenterPercent:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bounded:Z

.field private final finishRequested$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final finishSignalDeferred:Lkotlinx/coroutines/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/x<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private origin:Landroidx/compose/ui/geometry/Offset;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final radius:F

.field private startRadius:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetCenter:Landroidx/compose/ui/geometry/Offset;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetRadius:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/geometry/Offset;FZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    iput p2, p0, Landroidx/compose/material/ripple/RippleAnimation;->radius:F

    iput-boolean p3, p0, Landroidx/compose/material/ripple/RippleAnimation;->bounded:Z

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 3
    invoke-static {p1, p1, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 4
    invoke-static {p1, p1, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;

    .line 5
    invoke-static {p1, p1, p2, p3}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    .line 6
    invoke-static {p3}, Lkotlinx/coroutines/z;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/x;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishSignalDeferred:Lkotlinx/coroutines/x;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    invoke-static {p1, p3, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;

    .line 8
    invoke-static {p1, p3, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishRequested$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/geometry/Offset;FZLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ripple/RippleAnimation;-><init>(Landroidx/compose/ui/geometry/Offset;FZ)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/material/ripple/RippleAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/material/ripple/RippleAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/material/ripple/RippleAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleAnimation;->animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;

    .line 3
    return-object p0
.end method

.method private final f(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/ripple/RippleAnimation$fadeIn$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/compose/material/ripple/RippleAnimation$fadeIn$2;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method

.method private final g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/ripple/RippleAnimation$fadeOut$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/compose/material/ripple/RippleAnimation$fadeOut$2;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method

.method private final i()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishRequested$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final j()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final k(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishRequested$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final l(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishedFadingIn$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    instance-of v0, p1, Landroidx/compose/material/ripple/RippleAnimation$animate$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

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
    iput v1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Landroidx/compose/material/ripple/RippleAnimation$animate$1;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    :cond_2
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Landroidx/compose/material/ripple/RippleAnimation;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_3
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Landroidx/compose/material/ripple/RippleAnimation;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    iput-object p0, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput v5, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleAnimation;->f(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    if-ne p1, v1, :cond_5

    .line 85
    return-object v1

    .line 86
    :cond_5
    move-object v2, p0

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-direct {v2, v5}, Landroidx/compose/material/ripple/RippleAnimation;->l(Z)V

    .line 90
    .line 91
    iget-object p1, v2, Landroidx/compose/material/ripple/RippleAnimation;->finishSignalDeferred:Lkotlinx/coroutines/x;

    .line 92
    .line 93
    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput v4, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v0}, Lkotlinx/coroutines/v0;->i(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    if-ne p1, v1, :cond_6

    .line 102
    return-object v1

    .line 103
    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 104
    .line 105
    iput-object p1, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput v3, v0, Landroidx/compose/material/ripple/RippleAnimation$animate$1;->label:I

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v0}, Landroidx/compose/material/ripple/RippleAnimation;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    if-ne p1, v1, :cond_7

    .line 114
    return-object v1

    .line 115
    .line 116
    :cond_7
    :goto_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 117
    return-object p1
.end method

.method public final e(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V
    .locals 18
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "$this$draw"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->startRadius:Ljava/lang/Float;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 17
    move-result-wide v2

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3}, Landroidx/compose/material/ripple/RippleAnimationKt;->b(J)F

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->startRadius:Ljava/lang/Float;

    .line 28
    .line 29
    :cond_0
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetRadius:Ljava/lang/Float;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->radius:F

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-boolean v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->bounded:Z

    .line 42
    .line 43
    .line 44
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 45
    move-result-wide v3

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/material/ripple/RippleAnimationKt;->a(Landroidx/compose/ui/unit/Density;ZJ)F

    .line 49
    move-result v2

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    iget v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->radius:F

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 60
    move-result v2

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    :goto_0
    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetRadius:Ljava/lang/Float;

    .line 67
    .line 68
    :cond_2
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 74
    move-result-wide v2

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    .line 81
    .line 82
    :cond_3
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 88
    move-result-wide v2

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 92
    move-result v2

    .line 93
    .line 94
    const/high16 v3, 0x40000000    # 2.0f

    .line 95
    div-float/2addr v2, v3

    .line 96
    .line 97
    .line 98
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 99
    move-result-wide v4

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 103
    move-result v4

    .line 104
    div-float/2addr v4, v3

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v4}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 108
    move-result-wide v2

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    iput-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleAnimation;->i()Z

    .line 118
    move-result v2

    .line 119
    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-direct/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleAnimation;->j()Z

    .line 124
    move-result v2

    .line 125
    .line 126
    if-nez v2, :cond_5

    .line 127
    .line 128
    const/high16 v2, 0x3f800000    # 1.0f

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_5
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    check-cast v2, Ljava/lang/Number;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 141
    move-result v2

    .line 142
    .line 143
    :goto_1
    iget-object v3, v0, Landroidx/compose/material/ripple/RippleAnimation;->startRadius:Ljava/lang/Float;

    .line 144
    .line 145
    .line 146
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 150
    move-result v3

    .line 151
    .line 152
    iget-object v4, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetRadius:Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 159
    move-result v4

    .line 160
    .line 161
    iget-object v5, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedRadiusPercent:Landroidx/compose/animation/core/Animatable;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    check-cast v5, Ljava/lang/Number;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 171
    move-result v5

    .line 172
    .line 173
    .line 174
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 175
    move-result v4

    .line 176
    .line 177
    iget-object v3, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    .line 178
    .line 179
    .line 180
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 184
    move-result-wide v5

    .line 185
    .line 186
    .line 187
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 188
    move-result v3

    .line 189
    .line 190
    iget-object v5, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    .line 191
    .line 192
    .line 193
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 197
    move-result-wide v5

    .line 198
    .line 199
    .line 200
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 201
    move-result v5

    .line 202
    .line 203
    iget-object v6, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 207
    move-result-object v6

    .line 208
    .line 209
    check-cast v6, Ljava/lang/Number;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 213
    move-result v6

    .line 214
    .line 215
    .line 216
    invoke-static {v3, v5, v6}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 217
    move-result v3

    .line 218
    .line 219
    iget-object v5, v0, Landroidx/compose/material/ripple/RippleAnimation;->origin:Landroidx/compose/ui/geometry/Offset;

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 226
    move-result-wide v5

    .line 227
    .line 228
    .line 229
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 230
    move-result v5

    .line 231
    .line 232
    iget-object v6, v0, Landroidx/compose/material/ripple/RippleAnimation;->targetCenter:Landroidx/compose/ui/geometry/Offset;

    .line 233
    .line 234
    .line 235
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 239
    move-result-wide v6

    .line 240
    .line 241
    .line 242
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 243
    move-result v6

    .line 244
    .line 245
    iget-object v7, v0, Landroidx/compose/material/ripple/RippleAnimation;->animatedCenterPercent:Landroidx/compose/animation/core/Animatable;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 249
    move-result-object v7

    .line 250
    .line 251
    check-cast v7, Ljava/lang/Number;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 255
    move-result v7

    .line 256
    .line 257
    .line 258
    invoke-static {v5, v6, v7}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 259
    move-result v5

    .line 260
    .line 261
    .line 262
    invoke-static {v3, v5}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 263
    move-result-wide v5

    .line 264
    .line 265
    .line 266
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 267
    move-result v3

    .line 268
    .line 269
    mul-float v9, v3, v2

    .line 270
    const/4 v10, 0x0

    .line 271
    const/4 v11, 0x0

    .line 272
    const/4 v12, 0x0

    .line 273
    .line 274
    const/16 v13, 0xe

    .line 275
    const/4 v14, 0x0

    .line 276
    .line 277
    move-wide/from16 v7, p2

    .line 278
    .line 279
    .line 280
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 281
    move-result-wide v2

    .line 282
    .line 283
    iget-boolean v7, v0, Landroidx/compose/material/ripple/RippleAnimation;->bounded:Z

    .line 284
    .line 285
    if-eqz v7, :cond_6

    .line 286
    const/4 v9, 0x0

    .line 287
    const/4 v10, 0x0

    .line 288
    .line 289
    .line 290
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 291
    move-result-wide v7

    .line 292
    .line 293
    .line 294
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 295
    move-result v11

    .line 296
    .line 297
    .line 298
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 299
    move-result-wide v7

    .line 300
    .line 301
    .line 302
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 303
    move-result v12

    .line 304
    .line 305
    sget-object v7, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/ClipOp$Companion;->b()I

    .line 309
    move-result v13

    .line 310
    .line 311
    .line 312
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 313
    move-result-object v14

    .line 314
    .line 315
    .line 316
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->c()J

    .line 317
    move-result-wide v7

    .line 318
    .line 319
    .line 320
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 321
    move-result-object v15

    .line 322
    .line 323
    .line 324
    invoke-interface {v15}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 325
    .line 326
    .line 327
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 328
    move-result-object v15

    .line 329
    .line 330
    move-wide/from16 v16, v7

    .line 331
    move-object v8, v15

    .line 332
    .line 333
    .line 334
    invoke-interface/range {v8 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->a(FFFFI)V

    .line 335
    const/4 v7, 0x0

    .line 336
    const/4 v8, 0x0

    .line 337
    const/4 v9, 0x0

    .line 338
    const/4 v10, 0x0

    .line 339
    .line 340
    const/16 v11, 0x78

    .line 341
    const/4 v12, 0x0

    .line 342
    .line 343
    move-object/from16 v1, p1

    .line 344
    .line 345
    .line 346
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$DefaultImpls;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 350
    move-result-object v1

    .line 351
    .line 352
    .line 353
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 354
    .line 355
    move-wide/from16 v1, v16

    .line 356
    .line 357
    .line 358
    invoke-interface {v14, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->b(J)V

    .line 359
    goto :goto_2

    .line 360
    :cond_6
    const/4 v7, 0x0

    .line 361
    const/4 v8, 0x0

    .line 362
    const/4 v9, 0x0

    .line 363
    const/4 v10, 0x0

    .line 364
    .line 365
    const/16 v11, 0x78

    .line 366
    const/4 v12, 0x0

    .line 367
    .line 368
    move-object/from16 v1, p1

    .line 369
    .line 370
    .line 371
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$DefaultImpls;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 372
    :goto_2
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleAnimation;->k(Z)V

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleAnimation;->finishSignalDeferred:Lkotlinx/coroutines/x;

    .line 7
    .line 8
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lkotlinx/coroutines/x;->o(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

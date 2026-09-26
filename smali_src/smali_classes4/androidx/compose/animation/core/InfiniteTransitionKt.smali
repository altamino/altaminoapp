.class public final Landroidx/compose/animation/core/InfiniteTransitionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInfiniteTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InfiniteTransition.kt\nandroidx/compose/animation/core/InfiniteTransitionKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,276:1\n25#2:277\n25#2:284\n1057#3,6:278\n1057#3,6:285\n*S KotlinDebug\n*F\n+ 1 InfiniteTransition.kt\nandroidx/compose/animation/core/InfiniteTransitionKt\n*L\n45#1:277\n224#1:284\n45#1:278,6\n224#1:285,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/InfiniteTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/core/InfiniteRepeatableSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/InfiniteTransition;",
            "FF",
            "Landroidx/compose/animation/core/InfiniteRepeatableSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "animationSpec"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x1bfb95f0

    .line 14
    .line 15
    .line 16
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    sget-object p1, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    and-int/lit8 p1, p5, 0x70

    .line 33
    .line 34
    or-int/lit8 p1, p1, 0x8

    .line 35
    .line 36
    and-int/lit16 p2, p5, 0x380

    .line 37
    or-int/2addr p1, p2

    .line 38
    .line 39
    shl-int/lit8 p2, p5, 0x3

    .line 40
    .line 41
    .line 42
    const p5, 0xe000

    .line 43
    and-int/2addr p2, p5

    .line 44
    .line 45
    or-int v7, p1, p2

    .line 46
    move-object v1, p0

    .line 47
    move-object v5, p3

    .line 48
    move-object v6, p4

    .line 49
    .line 50
    .line 51
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->b(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    .line 55
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 56
    return-object p0
.end method

.method public static final b(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 7
    .param p0    # Landroidx/compose/animation/core/InfiniteTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/InfiniteRepeatableSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/InfiniteTransition;",
            "TT;TT;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/InfiniteRepeatableSpec<",
            "TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p6, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p6, "typeConverter"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p6, "animationSpec"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const p6, -0x650dee3a

    .line 19
    .line 20
    .line 21
    invoke-interface {p5, p6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 22
    .line 23
    .line 24
    const p6, -0x1d58f75c

    .line 25
    .line 26
    .line 27
    invoke-interface {p5, p6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 31
    move-result-object p6

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-ne p6, v0, :cond_0

    .line 40
    .line 41
    new-instance p6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 42
    move-object v1, p6

    .line 43
    move-object v2, p0

    .line 44
    move-object v3, p1

    .line 45
    move-object v4, p2

    .line 46
    move-object v5, p3

    .line 47
    move-object v6, p4

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p5, p6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 57
    .line 58
    check-cast p6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 59
    .line 60
    new-instance p3, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {p3, p1, p6, p2, p4}, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$1;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteRepeatableSpec;)V

    .line 64
    const/4 p1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {p3, p5, p1}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 68
    .line 69
    new-instance p1, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p0, p6}, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$2;-><init>(Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V

    .line 73
    const/4 p0, 0x6

    .line 74
    .line 75
    .line 76
    invoke-static {p6, p1, p5, p0}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 80
    return-object p6
.end method

.method public static final c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;
    .locals 1
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, -0x3214567c

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    const p1, -0x1d58f75c

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/animation/core/InfiniteTransition;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/compose/animation/core/InfiniteTransition;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/animation/core/InfiniteTransition;

    .line 38
    .line 39
    const/16 v0, 0x8

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0, v0}, Landroidx/compose/animation/core/InfiniteTransition;->k(Landroidx/compose/runtime/Composer;I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 46
    return-object p1
.end method

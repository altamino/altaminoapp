.class public final Landroidx/compose/animation/core/TransitionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1150:1\n852#1,5:1193\n852#1,5:1198\n852#1,5:1203\n852#1,5:1208\n852#1,5:1213\n852#1,5:1218\n852#1,5:1223\n852#1,5:1228\n25#2:1151\n36#2:1158\n36#2:1165\n36#2:1172\n36#2:1179\n36#2:1186\n1057#3,6:1152\n1057#3,6:1159\n1057#3,6:1166\n1057#3,6:1173\n1057#3,6:1180\n1057#3,6:1187\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n*L\n934#1:1193,5\n965#1:1198,5\n996#1:1203,5\n1027#1:1208,5\n1058#1:1213,5\n1089#1:1218,5\n1119#1:1223,5\n1149#1:1228,5\n71#1:1151\n154#1:1158\n748#1:1165\n781#1:1172\n794#1:1179\n868#1:1186\n71#1:1152,6\n154#1:1159,6\n748#1:1166,6\n781#1:1173,6\n794#1:1180,6\n868#1:1187,6\n*E\n"
.end annotation


# static fields
.field public static final AnimationDebugDurationScale:I = 0x1


# direct methods
.method public static final a(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;
    .locals 4
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
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
    const-string v0, "childLabel"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, -0xbd1ef36

    .line 14
    .line 15
    .line 16
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    .line 19
    const v0, 0x44faf204

    .line 20
    .line 21
    .line 22
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-ne v1, v0, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance v1, Landroidx/compose/animation/core/Transition;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->h()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, " > "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v0, p3}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 81
    .line 82
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 83
    .line 84
    new-instance p3, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;

    .line 85
    .line 86
    .line 87
    invoke-direct {p3, p0, v1}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .line 90
    .line 91
    invoke-static {v1, p3, p4, v0}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 95
    move-result p3

    .line 96
    .line 97
    if-eqz p3, :cond_2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->i()J

    .line 101
    move-result-wide v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1, p2, v2, v3}, Landroidx/compose/animation/core/Transition;->y(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_2
    shr-int/lit8 p0, p5, 0x3

    .line 108
    .line 109
    and-int/lit8 p0, p0, 0x8

    .line 110
    .line 111
    shr-int/lit8 p1, p5, 0x6

    .line 112
    .line 113
    and-int/lit8 p1, p1, 0xe

    .line 114
    or-int/2addr p0, p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p2, p4, p0}, Landroidx/compose/animation/core/Transition;->G(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroidx/compose/animation/core/Transition;->B(Z)V

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 124
    return-object v1
.end method

.method public static final b(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 0
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/core/InternalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p4, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p4, "typeConverter"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p4, -0x662b6f20

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    and-int/lit8 p4, p5, 0x2

    .line 19
    .line 20
    if-eqz p4, :cond_0

    .line 21
    .line 22
    const-string p2, "DeferredAnimation"

    .line 23
    .line 24
    .line 25
    :cond_0
    const p4, 0x44faf204

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 32
    move-result p4

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 36
    move-result-object p5

    .line 37
    .line 38
    if-nez p4, :cond_1

    .line 39
    .line 40
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 44
    move-result-object p4

    .line 45
    .line 46
    if-ne p5, p4, :cond_2

    .line 47
    .line 48
    :cond_1
    new-instance p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 49
    .line 50
    .line 51
    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 58
    .line 59
    check-cast p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 60
    .line 61
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p0, p5}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    .line 65
    .line 66
    const/16 p2, 0x8

    .line 67
    .line 68
    .line 69
    invoke-static {p5, p1, p3, p2}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 73
    move-result p0

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->c()V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 82
    return-object p5
.end method

.method public static final c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 7
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
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
    const-string p7, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p7}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p7, "animationSpec"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p7}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo p7, "typeConverter"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, p7}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p7, "label"

    .line 18
    .line 19
    .line 20
    invoke-static {p5, p7}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const p7, -0x122b33ce

    .line 24
    .line 25
    .line 26
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 27
    .line 28
    .line 29
    const p7, 0x44faf204

    .line 30
    .line 31
    .line 32
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p6, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 36
    move-result p7

    .line 37
    .line 38
    .line 39
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-nez p7, :cond_0

    .line 43
    .line 44
    sget-object p7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 48
    move-result-object p7

    .line 49
    .line 50
    if-ne v0, p7, :cond_1

    .line 51
    .line 52
    :cond_0
    new-instance v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 53
    .line 54
    .line 55
    invoke-static {p4, p2}, Landroidx/compose/animation/core/AnimationStateKt;->g(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    .line 56
    move-result-object v4

    .line 57
    move-object v1, v0

    .line 58
    move-object v2, p0

    .line 59
    move-object v3, p1

    .line 60
    move-object v5, p4

    .line 61
    move-object v6, p5

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
    .line 72
    check-cast v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 76
    move-result p4

    .line 77
    .line 78
    if-eqz p4, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->x(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {v0, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->y(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 86
    .line 87
    :goto_0
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p0, v0}, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    .line 91
    const/4 p0, 0x0

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1, p6, p0}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 98
    return-object v0
.end method

.method public static final d(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 0
    .param p0    # Landroidx/compose/animation/core/MutableTransitionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string/jumbo p3, "transitionState"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x34a03233

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 p3, p4, 0x2

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    :cond_0
    const p3, 0x44faf204

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 26
    move-result p3

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object p4

    .line 31
    .line 32
    if-nez p3, :cond_1

    .line 33
    .line 34
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    if-ne p4, p3, :cond_2

    .line 41
    .line 42
    :cond_1
    new-instance p4, Landroidx/compose/animation/core/Transition;

    .line 43
    .line 44
    .line 45
    invoke-direct {p4, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 52
    .line 53
    check-cast p4, Landroidx/compose/animation/core/Transition;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/animation/core/MutableTransitionState;->b()Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 58
    const/4 p1, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4, p0, p2, p1}, Landroidx/compose/animation/core/Transition;->f(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    new-instance p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$2;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p4}, Landroidx/compose/animation/core/TransitionKt$updateTransition$2;-><init>(Landroidx/compose/animation/core/Transition;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p4, p0, p2, p1}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 73
    return-object p4
.end method

.method public static final e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x78f2a0ad

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 p4, p4, 0x2

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    :cond_0
    const p4, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 21
    move-result-object p4

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-ne p4, v0, :cond_1

    .line 30
    .line 31
    new-instance p4, Landroidx/compose/animation/core/Transition;

    .line 32
    .line 33
    .line 34
    invoke-direct {p4, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 41
    .line 42
    check-cast p4, Landroidx/compose/animation/core/Transition;

    .line 43
    .line 44
    and-int/lit8 p1, p3, 0x8

    .line 45
    .line 46
    or-int/lit8 p1, p1, 0x30

    .line 47
    .line 48
    and-int/lit8 p3, p3, 0xe

    .line 49
    or-int/2addr p1, p3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, p0, p2, p1}, Landroidx/compose/animation/core/Transition;->f(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 53
    .line 54
    new-instance p0, Landroidx/compose/animation/core/TransitionKt$updateTransition$1;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p4}, Landroidx/compose/animation/core/TransitionKt$updateTransition$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    .line 58
    const/4 p1, 0x6

    .line 59
    .line 60
    .line 61
    invoke-static {p4, p0, p2, p1}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 65
    return-object p4
.end method

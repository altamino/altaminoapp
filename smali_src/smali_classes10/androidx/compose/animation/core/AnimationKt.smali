.class public final Landroidx/compose/animation/core/AnimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MillisToNanos:J = 0xf4240L


# direct methods
.method public static final a(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/DecayAnimation;
    .locals 2
    .param p0    # Landroidx/compose/animation/core/FloatDecayAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FloatDecayAnimationSpec;",
            "FF)",
            "Landroidx/compose/animation/core/DecayAnimation<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/animation/core/DecayAnimation;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->a(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    sget-object v1, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroidx/compose/animation/core/AnimationVectorsKt;->a(F)Landroidx/compose/animation/core/AnimationVector1D;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 29
    return-object v0
.end method

.method public static final b(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/animation/core/TargetBasedAnimation;
    .locals 7
    .param p0    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TT;TT;)",
            "Landroidx/compose/animation/core/TargetBasedAnimation<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "typeConverter"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/compose/animation/core/TwoWayConverter;->a()Le8/l;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p4

    .line 21
    move-object v6, p4

    .line 22
    .line 23
    check-cast v6, Landroidx/compose/animation/core/AnimationVector;

    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move-object v5, p3

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 32
    return-object v0
.end method

.method public static final c(Landroidx/compose/animation/core/Animation;)J
    .locals 4
    .param p0    # Landroidx/compose/animation/core/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animation<",
            "**>;)J"
        }
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
    .line 8
    invoke-interface {p0}, Landroidx/compose/animation/core/Animation;->c()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    const-wide/32 v2, 0xf4240

    .line 13
    div-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.class public final Landroidx/compose/animation/core/VectorizedAnimationSpecKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final InfiniteIterations:I = 0x7fffffff


# direct methods
.method public static final synthetic a(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic b(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->d(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
            "*>;J)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->f()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    sub-long v2, p1, v0

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->g()I

    .line 13
    move-result p0

    .line 14
    int-to-long v6, p0

    .line 15
    .line 16
    .line 17
    invoke-static/range {v2 .. v7}, Lj8/m;->p(JJJ)J

    .line 18
    move-result-wide p0

    .line 19
    return-wide p0
.end method

.method private static final d(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(TV;FF)",
            "Landroidx/compose/animation/core/Animations;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;-><init>(Landroidx/compose/animation/core/AnimationVector;FF)V

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    new-instance p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;-><init>(FF)V

    .line 14
    return-object p0
.end method

.method public static final e(Landroidx/compose/animation/core/VectorizedAnimationSpec;JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 8
    .param p0    # Landroidx/compose/animation/core/VectorizedAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
            "TV;>;JTV;TV;TV;)TV;"
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
    const-string v0, "start"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "end"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "startVelocity"

    .line 18
    .line 19
    .line 20
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-wide/32 v0, 0xf4240

    .line 24
    .line 25
    mul-long v3, p1, v0

    .line 26
    move-object v2, p0

    .line 27
    move-object v5, p3

    .line 28
    move-object v6, p4

    .line 29
    move-object v7, p5

    .line 30
    .line 31
    .line 32
    invoke-interface/range {v2 .. v7}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->e(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

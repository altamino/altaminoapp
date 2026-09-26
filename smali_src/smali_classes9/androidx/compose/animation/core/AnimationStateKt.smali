.class public final Landroidx/compose/animation/core/AnimationStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FFJJZ)Landroidx/compose/animation/core/AnimationState;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFJJZ)",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v9, Landroidx/compose/animation/core/AnimationState;

    .line 3
    .line 4
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->a(F)Landroidx/compose/animation/core/AnimationVector1D;

    .line 16
    move-result-object v3

    .line 17
    move-object v0, v9

    .line 18
    move-wide v4, p2

    .line 19
    move-wide v6, p4

    .line 20
    .line 21
    move/from16 v8, p6

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 25
    return-object v9
.end method

.method public static synthetic b(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;
    .locals 4

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x2

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x4

    .line 8
    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    .line 11
    if-eqz p8, :cond_1

    .line 12
    move-wide v2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-wide v2, p2

    .line 15
    .line 16
    :goto_0
    and-int/lit8 p2, p7, 0x8

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    move-wide v0, p4

    .line 21
    .line 22
    :goto_1
    and-int/lit8 p2, p7, 0x10

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    const/4 p6, 0x0

    .line 26
    :cond_3
    move p8, p6

    .line 27
    move p2, p0

    .line 28
    move p3, p1

    .line 29
    move-wide p4, v2

    .line 30
    move-wide p6, v0

    .line 31
    .line 32
    .line 33
    invoke-static/range {p2 .. p8}, Landroidx/compose/animation/core/AnimationStateKt;->a(FFJJZ)Landroidx/compose/animation/core/AnimationState;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final c(Landroidx/compose/animation/core/AnimationState;FFJJZ)Landroidx/compose/animation/core/AnimationState;
    .locals 10
    .param p0    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;FFJJZ)",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    move-object v1, p0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/animation/core/AnimationState;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->d()Landroidx/compose/animation/core/TwoWayConverter;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Landroidx/compose/animation/core/AnimationVectorsKt;->a(F)Landroidx/compose/animation/core/AnimationVector1D;

    .line 20
    move-result-object v4

    .line 21
    move-object v1, v0

    .line 22
    move-wide v5, p3

    .line 23
    move-wide v7, p5

    .line 24
    .line 25
    move/from16 v9, p7

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v1 .. v9}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 29
    return-object v0
.end method

.method public static final d(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)Landroidx/compose/animation/core/AnimationState;
    .locals 10
    .param p0    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationVector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;TT;TV;JJZ)",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    move-object v1, p0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/animation/core/AnimationState;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->d()Landroidx/compose/animation/core/TwoWayConverter;

    .line 12
    move-result-object v2

    .line 13
    move-object v1, v0

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-wide v5, p3

    .line 17
    move-wide v7, p5

    .line 18
    .line 19
    move/from16 v9, p7

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v9}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 23
    return-object v0
.end method

.method public static synthetic e(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;
    .locals 5

    .line 1
    .line 2
    and-int/lit8 p9, p8, 0x1

    .line 3
    .line 4
    if-eqz p9, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 14
    move-result p1

    .line 15
    .line 16
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 17
    .line 18
    if-eqz p9, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->f()Landroidx/compose/animation/core/AnimationVector;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroidx/compose/animation/core/AnimationVector1D;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationVector1D;->f()F

    .line 28
    move-result p2

    .line 29
    :cond_1
    move p9, p2

    .line 30
    .line 31
    and-int/lit8 p2, p8, 0x4

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->b()J

    .line 37
    move-result-wide p3

    .line 38
    :cond_2
    move-wide v0, p3

    .line 39
    .line 40
    and-int/lit8 p2, p8, 0x8

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->a()J

    .line 46
    move-result-wide p5

    .line 47
    :cond_3
    move-wide v2, p5

    .line 48
    .line 49
    and-int/lit8 p2, p8, 0x10

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->j()Z

    .line 55
    move-result p7

    .line 56
    :cond_4
    move v4, p7

    .line 57
    move-object p2, p0

    .line 58
    move p3, p1

    .line 59
    move p4, p9

    .line 60
    move-wide p5, v0

    .line 61
    move-wide p7, v2

    .line 62
    move p9, v4

    .line 63
    .line 64
    .line 65
    invoke-static/range {p2 .. p9}, Landroidx/compose/animation/core/AnimationStateKt;->c(Landroidx/compose/animation/core/AnimationState;FFJJZ)Landroidx/compose/animation/core/AnimationState;

    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;
    .locals 5

    .line 1
    .line 2
    and-int/lit8 p9, p8, 0x1

    .line 3
    .line 4
    if-eqz p9, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 11
    .line 12
    if-eqz p9, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->f()Landroidx/compose/animation/core/AnimationVector;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Landroidx/compose/animation/core/AnimationVectorsKt;->b(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 20
    move-result-object p2

    .line 21
    :cond_1
    move-object p9, p2

    .line 22
    .line 23
    and-int/lit8 p2, p8, 0x4

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->b()J

    .line 29
    move-result-wide p3

    .line 30
    :cond_2
    move-wide v0, p3

    .line 31
    .line 32
    and-int/lit8 p2, p8, 0x8

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->a()J

    .line 38
    move-result-wide p5

    .line 39
    :cond_3
    move-wide v2, p5

    .line 40
    .line 41
    and-int/lit8 p2, p8, 0x10

    .line 42
    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->j()Z

    .line 47
    move-result p7

    .line 48
    :cond_4
    move v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    move-object p4, p9

    .line 52
    move-wide p5, v0

    .line 53
    move-wide p7, v2

    .line 54
    move p9, v4

    .line 55
    .line 56
    .line 57
    invoke-static/range {p2 .. p9}, Landroidx/compose/animation/core/AnimationStateKt;->d(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)Landroidx/compose/animation/core/AnimationState;

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static final g(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/TwoWayConverter;
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
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;)TV;"
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
    .line 8
    invoke-interface {p0}, Landroidx/compose/animation/core/TwoWayConverter;->a()Le8/l;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/compose/animation/core/AnimationVectorsKt;->d(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.class public final Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(DDDDDD)D
    .locals 16

    .line 1
    .line 2
    move-wide/from16 v0, p0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmpg-double v2, v0, v2

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    neg-double v2, v0

    .line 10
    move-wide v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v4, v0

    .line 13
    .line 14
    :goto_0
    move-wide/from16 v6, p2

    .line 15
    .line 16
    move-wide/from16 v8, p4

    .line 17
    .line 18
    move-wide/from16 v10, p6

    .line 19
    .line 20
    move-wide/from16 v12, p8

    .line 21
    .line 22
    move-wide/from16 v14, p10

    .line 23
    .line 24
    .line 25
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->n(DDDDDD)D

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method

.method public static final b(DDDDDD)D
    .locals 16

    .line 1
    .line 2
    move-wide/from16 v0, p0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmpg-double v2, v0, v2

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    neg-double v2, v0

    .line 10
    move-wide v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v4, v0

    .line 13
    .line 14
    :goto_0
    move-wide/from16 v6, p2

    .line 15
    .line 16
    move-wide/from16 v8, p4

    .line 17
    .line 18
    move-wide/from16 v10, p6

    .line 19
    .line 20
    move-wide/from16 v12, p8

    .line 21
    .line 22
    move-wide/from16 v14, p10

    .line 23
    .line 24
    .line 25
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->p(DDDDDD)D

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method

.method public static final c(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 4
    .param p0    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/colorspace/Adaptation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "whitePoint"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "adaptation"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->f()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->b()J

    .line 25
    move-result-wide v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    move-object v0, p0

    .line 33
    .line 34
    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->f(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    return-object p0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->b()[F

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-static {p2, v1, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->e([F[F[F)[F

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->q()[F

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->k([F[F)[F

    .line 73
    move-result-object p0

    .line 74
    .line 75
    new-instance p2, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, v0, p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)V

    .line 79
    return-object p2

    .line 80
    :cond_1
    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;ILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    sget-object p2, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->a()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->c(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final e([F[F[F)[F
    .locals 4
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "matrix"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "srcWhitePoint"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "dstWhitePoint"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->m([F[F)[F

    .line 23
    move-result-object p2

    .line 24
    const/4 v0, 0x3

    .line 25
    .line 26
    new-array v0, v0, [F

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    aget v2, p2, v1

    .line 30
    .line 31
    aget v3, p1, v1

    .line 32
    div-float/2addr v2, v3

    .line 33
    .line 34
    aput v2, v0, v1

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    aget v2, p2, v1

    .line 38
    .line 39
    aget v3, p1, v1

    .line 40
    div-float/2addr v2, v3

    .line 41
    .line 42
    aput v2, v0, v1

    .line 43
    const/4 v1, 0x2

    .line 44
    .line 45
    aget p2, p2, v1

    .line 46
    .line 47
    aget p1, p1, v1

    .line 48
    div-float/2addr p2, p1

    .line 49
    .line 50
    aput p2, v0, v1

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->j([F)[F

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->l([F[F)[F

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->k([F[F)[F

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static final f(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "a"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "b"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->a()F

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->a()F

    .line 22
    move-result v2

    .line 23
    sub-float/2addr v1, v2

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    const v2, 0x3a83126f    # 0.001f

    .line 31
    .line 32
    cmpg-float v1, v1, v2

    .line 33
    .line 34
    if-gez v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->b()F

    .line 38
    move-result p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->b()F

    .line 42
    move-result p1

    .line 43
    sub-float/2addr p0, p1

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 47
    move-result p0

    .line 48
    .line 49
    cmpg-float p0, p0, v2

    .line 50
    .line 51
    if-gez p0, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0
.end method

.method public static final g([F[F)Z
    .locals 6
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "a"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "b"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    return v0

    .line 15
    :cond_0
    array-length v1, p0

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    .line 19
    :goto_0
    if-ge v3, v1, :cond_2

    .line 20
    .line 21
    aget v4, p0, v3

    .line 22
    .line 23
    aget v5, p1, v3

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 27
    move-result v4

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    aget v4, p0, v3

    .line 32
    .line 33
    aget v5, p1, v3

    .line 34
    sub-float/2addr v4, v5

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 38
    move-result v4

    .line 39
    .line 40
    .line 41
    const v5, 0x3a83126f    # 0.001f

    .line 42
    .line 43
    cmpl-float v4, v4, v5

    .line 44
    .line 45
    if-lez v4, :cond_1

    .line 46
    return v2

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return v0
.end method

.method public static final h(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 7
    .param p0    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$connect"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "destination"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->c(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->f()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->b()J

    .line 29
    move-result-wide v3

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->f()J

    .line 40
    move-result-wide v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->b()J

    .line 44
    move-result-wide v5

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;

    .line 53
    .line 54
    check-cast p0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 55
    .line 56
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/k;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/k;)V

    .line 66
    :goto_0
    return-object v0
.end method

.method public static synthetic i(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;IILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->s()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    sget-object p2, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->b()I

    .line 20
    move-result p2

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->h(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final j([F)[F
    .locals 24
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "m"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    aget v2, v0, v1

    .line 11
    const/4 v3, 0x3

    .line 12
    .line 13
    aget v4, v0, v3

    .line 14
    const/4 v5, 0x6

    .line 15
    .line 16
    aget v6, v0, v5

    .line 17
    const/4 v7, 0x1

    .line 18
    .line 19
    aget v8, v0, v7

    .line 20
    const/4 v9, 0x4

    .line 21
    .line 22
    aget v10, v0, v9

    .line 23
    const/4 v11, 0x7

    .line 24
    .line 25
    aget v12, v0, v11

    .line 26
    const/4 v13, 0x2

    .line 27
    .line 28
    aget v14, v0, v13

    .line 29
    const/4 v15, 0x5

    .line 30
    .line 31
    aget v16, v0, v15

    .line 32
    .line 33
    const/16 v17, 0x8

    .line 34
    .line 35
    aget v18, v0, v17

    .line 36
    .line 37
    mul-float v19, v10, v18

    .line 38
    .line 39
    mul-float v20, v12, v16

    .line 40
    .line 41
    sub-float v19, v19, v20

    .line 42
    .line 43
    mul-float v20, v12, v14

    .line 44
    .line 45
    mul-float v21, v8, v18

    .line 46
    .line 47
    sub-float v20, v20, v21

    .line 48
    .line 49
    mul-float v21, v8, v16

    .line 50
    .line 51
    mul-float v22, v10, v14

    .line 52
    .line 53
    sub-float v21, v21, v22

    .line 54
    .line 55
    mul-float v22, v2, v19

    .line 56
    .line 57
    mul-float v23, v4, v20

    .line 58
    .line 59
    add-float v22, v22, v23

    .line 60
    .line 61
    mul-float v23, v6, v21

    .line 62
    .line 63
    add-float v22, v22, v23

    .line 64
    array-length v0, v0

    .line 65
    .line 66
    new-array v0, v0, [F

    .line 67
    .line 68
    div-float v19, v19, v22

    .line 69
    .line 70
    aput v19, v0, v1

    .line 71
    .line 72
    div-float v20, v20, v22

    .line 73
    .line 74
    aput v20, v0, v7

    .line 75
    .line 76
    div-float v21, v21, v22

    .line 77
    .line 78
    aput v21, v0, v13

    .line 79
    .line 80
    mul-float v1, v6, v16

    .line 81
    .line 82
    mul-float v7, v4, v18

    .line 83
    sub-float/2addr v1, v7

    .line 84
    .line 85
    div-float v1, v1, v22

    .line 86
    .line 87
    aput v1, v0, v3

    .line 88
    .line 89
    mul-float v18, v18, v2

    .line 90
    .line 91
    mul-float v1, v6, v14

    .line 92
    .line 93
    sub-float v18, v18, v1

    .line 94
    .line 95
    div-float v18, v18, v22

    .line 96
    .line 97
    aput v18, v0, v9

    .line 98
    mul-float/2addr v14, v4

    .line 99
    .line 100
    mul-float v16, v16, v2

    .line 101
    .line 102
    sub-float v14, v14, v16

    .line 103
    .line 104
    div-float v14, v14, v22

    .line 105
    .line 106
    aput v14, v0, v15

    .line 107
    .line 108
    mul-float v1, v4, v12

    .line 109
    .line 110
    mul-float v3, v6, v10

    .line 111
    sub-float/2addr v1, v3

    .line 112
    .line 113
    div-float v1, v1, v22

    .line 114
    .line 115
    aput v1, v0, v5

    .line 116
    mul-float/2addr v6, v8

    .line 117
    mul-float/2addr v12, v2

    .line 118
    sub-float/2addr v6, v12

    .line 119
    .line 120
    div-float v6, v6, v22

    .line 121
    .line 122
    aput v6, v0, v11

    .line 123
    mul-float/2addr v2, v10

    .line 124
    mul-float/2addr v4, v8

    .line 125
    sub-float/2addr v2, v4

    .line 126
    .line 127
    div-float v2, v2, v22

    .line 128
    .line 129
    aput v2, v0, v17

    .line 130
    return-object v0
.end method

.method public static final k([F[F)[F
    .locals 21
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "lhs"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v2, "rhs"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    const/16 v2, 0x9

    .line 17
    .line 18
    new-array v2, v2, [F

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    aget v4, v0, v3

    .line 22
    .line 23
    aget v5, v1, v3

    .line 24
    mul-float/2addr v4, v5

    .line 25
    const/4 v5, 0x3

    .line 26
    .line 27
    aget v6, v0, v5

    .line 28
    const/4 v7, 0x1

    .line 29
    .line 30
    aget v8, v1, v7

    .line 31
    .line 32
    mul-float v9, v6, v8

    .line 33
    add-float/2addr v4, v9

    .line 34
    const/4 v9, 0x6

    .line 35
    .line 36
    aget v10, v0, v9

    .line 37
    const/4 v11, 0x2

    .line 38
    .line 39
    aget v12, v1, v11

    .line 40
    .line 41
    mul-float v13, v10, v12

    .line 42
    add-float/2addr v4, v13

    .line 43
    .line 44
    aput v4, v2, v3

    .line 45
    .line 46
    aget v4, v0, v7

    .line 47
    .line 48
    aget v13, v1, v3

    .line 49
    mul-float/2addr v4, v13

    .line 50
    const/4 v14, 0x4

    .line 51
    .line 52
    aget v15, v0, v14

    .line 53
    mul-float/2addr v8, v15

    .line 54
    add-float/2addr v4, v8

    .line 55
    const/4 v8, 0x7

    .line 56
    .line 57
    aget v16, v0, v8

    .line 58
    .line 59
    mul-float v17, v16, v12

    .line 60
    .line 61
    add-float v4, v4, v17

    .line 62
    .line 63
    aput v4, v2, v7

    .line 64
    .line 65
    aget v4, v0, v11

    .line 66
    mul-float/2addr v4, v13

    .line 67
    const/4 v13, 0x5

    .line 68
    .line 69
    aget v17, v0, v13

    .line 70
    .line 71
    aget v18, v1, v7

    .line 72
    .line 73
    mul-float v18, v18, v17

    .line 74
    .line 75
    add-float v4, v4, v18

    .line 76
    .line 77
    const/16 v18, 0x8

    .line 78
    .line 79
    aget v19, v0, v18

    .line 80
    .line 81
    mul-float v12, v12, v19

    .line 82
    add-float/2addr v4, v12

    .line 83
    .line 84
    aput v4, v2, v11

    .line 85
    .line 86
    aget v3, v0, v3

    .line 87
    .line 88
    aget v4, v1, v5

    .line 89
    mul-float/2addr v4, v3

    .line 90
    .line 91
    aget v12, v1, v14

    .line 92
    mul-float/2addr v6, v12

    .line 93
    add-float/2addr v4, v6

    .line 94
    .line 95
    aget v6, v1, v13

    .line 96
    .line 97
    mul-float v20, v10, v6

    .line 98
    .line 99
    add-float v4, v4, v20

    .line 100
    .line 101
    aput v4, v2, v5

    .line 102
    .line 103
    aget v4, v0, v7

    .line 104
    .line 105
    aget v7, v1, v5

    .line 106
    .line 107
    mul-float v20, v4, v7

    .line 108
    mul-float/2addr v15, v12

    .line 109
    .line 110
    add-float v20, v20, v15

    .line 111
    .line 112
    mul-float v12, v16, v6

    .line 113
    .line 114
    add-float v20, v20, v12

    .line 115
    .line 116
    aput v20, v2, v14

    .line 117
    .line 118
    aget v11, v0, v11

    .line 119
    mul-float/2addr v7, v11

    .line 120
    .line 121
    aget v12, v1, v14

    .line 122
    .line 123
    mul-float v17, v17, v12

    .line 124
    .line 125
    add-float v7, v7, v17

    .line 126
    .line 127
    mul-float v6, v6, v19

    .line 128
    add-float/2addr v7, v6

    .line 129
    .line 130
    aput v7, v2, v13

    .line 131
    .line 132
    aget v6, v1, v9

    .line 133
    mul-float/2addr v3, v6

    .line 134
    .line 135
    aget v5, v0, v5

    .line 136
    .line 137
    aget v6, v1, v8

    .line 138
    mul-float/2addr v5, v6

    .line 139
    add-float/2addr v3, v5

    .line 140
    .line 141
    aget v5, v1, v18

    .line 142
    mul-float/2addr v10, v5

    .line 143
    add-float/2addr v3, v10

    .line 144
    .line 145
    aput v3, v2, v9

    .line 146
    .line 147
    aget v3, v1, v9

    .line 148
    mul-float/2addr v4, v3

    .line 149
    .line 150
    aget v7, v0, v14

    .line 151
    mul-float/2addr v7, v6

    .line 152
    add-float/2addr v4, v7

    .line 153
    .line 154
    mul-float v16, v16, v5

    .line 155
    .line 156
    add-float v4, v4, v16

    .line 157
    .line 158
    aput v4, v2, v8

    .line 159
    mul-float/2addr v11, v3

    .line 160
    .line 161
    aget v0, v0, v13

    .line 162
    .line 163
    aget v1, v1, v8

    .line 164
    mul-float/2addr v0, v1

    .line 165
    add-float/2addr v11, v0

    .line 166
    .line 167
    mul-float v19, v19, v5

    .line 168
    .line 169
    add-float v11, v11, v19

    .line 170
    .line 171
    aput v11, v2, v18

    .line 172
    return-object v2
.end method

.method public static final l([F[F)[F
    .locals 6
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "lhs"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "rhs"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const/16 v0, 0x9

    .line 13
    .line 14
    new-array v0, v0, [F

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    aget v2, p0, v1

    .line 18
    .line 19
    aget v3, p1, v1

    .line 20
    mul-float/2addr v2, v3

    .line 21
    .line 22
    aput v2, v0, v1

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    aget v3, p0, v2

    .line 26
    .line 27
    aget v4, p1, v2

    .line 28
    mul-float/2addr v3, v4

    .line 29
    .line 30
    aput v3, v0, v2

    .line 31
    const/4 v3, 0x2

    .line 32
    .line 33
    aget v4, p0, v3

    .line 34
    .line 35
    aget v5, p1, v3

    .line 36
    mul-float/2addr v4, v5

    .line 37
    .line 38
    aput v4, v0, v3

    .line 39
    .line 40
    aget v1, p0, v1

    .line 41
    const/4 v4, 0x3

    .line 42
    .line 43
    aget v5, p1, v4

    .line 44
    mul-float/2addr v5, v1

    .line 45
    .line 46
    aput v5, v0, v4

    .line 47
    .line 48
    aget v2, p0, v2

    .line 49
    const/4 v4, 0x4

    .line 50
    .line 51
    aget v5, p1, v4

    .line 52
    mul-float/2addr v5, v2

    .line 53
    .line 54
    aput v5, v0, v4

    .line 55
    .line 56
    aget p0, p0, v3

    .line 57
    const/4 v3, 0x5

    .line 58
    .line 59
    aget v4, p1, v3

    .line 60
    mul-float/2addr v4, p0

    .line 61
    .line 62
    aput v4, v0, v3

    .line 63
    const/4 v3, 0x6

    .line 64
    .line 65
    aget v4, p1, v3

    .line 66
    mul-float/2addr v1, v4

    .line 67
    .line 68
    aput v1, v0, v3

    .line 69
    const/4 v1, 0x7

    .line 70
    .line 71
    aget v3, p1, v1

    .line 72
    mul-float/2addr v2, v3

    .line 73
    .line 74
    aput v2, v0, v1

    .line 75
    .line 76
    const/16 v1, 0x8

    .line 77
    .line 78
    aget p1, p1, v1

    .line 79
    mul-float/2addr p0, p1

    .line 80
    .line 81
    aput p0, v0, v1

    .line 82
    return-object v0
.end method

.method public static final m([F[F)[F
    .locals 8
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "lhs"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "rhs"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    aget v1, p1, v0

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    aget v3, p1, v2

    .line 17
    const/4 v4, 0x2

    .line 18
    .line 19
    aget v5, p1, v4

    .line 20
    .line 21
    aget v6, p0, v0

    .line 22
    mul-float/2addr v6, v1

    .line 23
    const/4 v7, 0x3

    .line 24
    .line 25
    aget v7, p0, v7

    .line 26
    mul-float/2addr v7, v3

    .line 27
    add-float/2addr v6, v7

    .line 28
    const/4 v7, 0x6

    .line 29
    .line 30
    aget v7, p0, v7

    .line 31
    mul-float/2addr v7, v5

    .line 32
    add-float/2addr v6, v7

    .line 33
    .line 34
    aput v6, p1, v0

    .line 35
    .line 36
    aget v0, p0, v2

    .line 37
    mul-float/2addr v0, v1

    .line 38
    const/4 v6, 0x4

    .line 39
    .line 40
    aget v6, p0, v6

    .line 41
    mul-float/2addr v6, v3

    .line 42
    add-float/2addr v0, v6

    .line 43
    const/4 v6, 0x7

    .line 44
    .line 45
    aget v6, p0, v6

    .line 46
    mul-float/2addr v6, v5

    .line 47
    add-float/2addr v0, v6

    .line 48
    .line 49
    aput v0, p1, v2

    .line 50
    .line 51
    aget v0, p0, v4

    .line 52
    mul-float/2addr v0, v1

    .line 53
    const/4 v1, 0x5

    .line 54
    .line 55
    aget v1, p0, v1

    .line 56
    mul-float/2addr v1, v3

    .line 57
    add-float/2addr v0, v1

    .line 58
    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    aget p0, p0, v1

    .line 62
    mul-float/2addr p0, v5

    .line 63
    add-float/2addr v0, p0

    .line 64
    .line 65
    aput v0, p1, v4

    .line 66
    return-object p1
.end method

.method public static final n(DDDDDD)D
    .locals 0

    .line 1
    mul-double/2addr p8, p6

    .line 2
    .line 3
    cmpl-double p8, p0, p8

    .line 4
    .line 5
    if-ltz p8, :cond_0

    .line 6
    .line 7
    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    .line 8
    div-double/2addr p6, p10

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    .line 12
    move-result-wide p0

    .line 13
    sub-double/2addr p0, p4

    .line 14
    div-double/2addr p0, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    div-double/2addr p0, p6

    .line 17
    :goto_0
    return-wide p0
.end method

.method public static final o(DDDDDDDD)D
    .locals 0

    .line 1
    mul-double/2addr p8, p6

    .line 2
    .line 3
    cmpl-double p8, p0, p8

    .line 4
    .line 5
    if-ltz p8, :cond_0

    .line 6
    sub-double/2addr p0, p10

    .line 7
    .line 8
    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    .line 9
    div-double/2addr p6, p14

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    .line 13
    move-result-wide p0

    .line 14
    sub-double/2addr p0, p4

    .line 15
    div-double/2addr p0, p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sub-double/2addr p0, p12

    .line 18
    div-double/2addr p0, p6

    .line 19
    :goto_0
    return-wide p0
.end method

.method public static final p(DDDDDD)D
    .locals 0

    .line 1
    .line 2
    cmpl-double p8, p0, p8

    .line 3
    .line 4
    if-ltz p8, :cond_0

    .line 5
    mul-double/2addr p2, p0

    .line 6
    add-double/2addr p2, p4

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3, p10, p11}, Ljava/lang/Math;->pow(DD)D

    .line 10
    move-result-wide p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    mul-double/2addr p0, p6

    .line 13
    :goto_0
    return-wide p0
.end method

.method public static final q(DDDDDDDD)D
    .locals 0

    .line 1
    .line 2
    cmpl-double p8, p0, p8

    .line 3
    .line 4
    if-ltz p8, :cond_0

    .line 5
    mul-double/2addr p2, p0

    .line 6
    add-double/2addr p2, p4

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3, p14, p15}, Ljava/lang/Math;->pow(DD)D

    .line 10
    move-result-wide p0

    .line 11
    add-double/2addr p0, p10

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    mul-double/2addr p6, p0

    .line 14
    .line 15
    add-double p0, p6, p12

    .line 16
    :goto_0
    return-wide p0
.end method

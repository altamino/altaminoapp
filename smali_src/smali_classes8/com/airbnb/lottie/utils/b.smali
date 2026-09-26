.class public Lcom/airbnb/lottie/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/PointF;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    .line 16
    move-result-wide v4

    .line 17
    double-to-float v1, v4

    .line 18
    mul-float/2addr v1, p1

    .line 19
    const/4 v4, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    .line 23
    move-result-wide v2

    .line 24
    double-to-float p0, v2

    .line 25
    mul-float/2addr p0, p1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v1, "Unable to parse point for "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1
.end method

.method public static b(Lorg/json/JSONObject;F)Landroid/graphics/PointF;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "x"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/airbnb/lottie/utils/b;->c(Ljava/lang/Object;)F

    .line 13
    move-result v1

    .line 14
    mul-float/2addr v1, p1

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "y"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/airbnb/lottie/utils/b;->c(Ljava/lang/Object;)F

    .line 25
    move-result p0

    .line 26
    mul-float/2addr p0, p1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 30
    return-object v0
.end method

.method public static c(Ljava/lang/Object;)F
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Float;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    .line 13
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p0

    .line 22
    int-to-float p0, p0

    .line 23
    return p0

    .line 24
    .line 25
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p0, Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 33
    move-result-wide v0

    .line 34
    double-to-float p0, v0

    .line 35
    return p0

    .line 36
    .line 37
    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    check-cast p0, Lorg/json/JSONArray;

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    .line 46
    move-result-wide v0

    .line 47
    double-to-float p0, v0

    .line 48
    return p0

    .line 49
    :cond_3
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.class public Lcom/airbnb/lottie/animation/keyframe/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/keyframe/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/animation/keyframe/h;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/e;",
            "Lcom/airbnb/lottie/model/animatable/m$a<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/airbnb/lottie/animation/keyframe/h;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0, p2}, Lh0/a$a;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;FLcom/airbnb/lottie/model/animatable/m$a;)Lh0/a;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "ti"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "to"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->j()F

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1}, Lcom/airbnb/lottie/utils/b;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->j()F

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/b;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    move-object v0, p0

    .line 46
    .line 47
    :goto_0
    new-instance v9, Lcom/airbnb/lottie/animation/keyframe/h;

    .line 48
    .line 49
    iget-object v1, p2, Lh0/a;->startValue:Ljava/lang/Object;

    .line 50
    move-object v3, v1

    .line 51
    .line 52
    check-cast v3, Landroid/graphics/PointF;

    .line 53
    .line 54
    iget-object v1, p2, Lh0/a;->endValue:Ljava/lang/Object;

    .line 55
    move-object v4, v1

    .line 56
    .line 57
    check-cast v4, Landroid/graphics/PointF;

    .line 58
    .line 59
    iget-object v5, p2, Lh0/a;->interpolator:Landroid/view/animation/Interpolator;

    .line 60
    .line 61
    iget v6, p2, Lh0/a;->startFrame:F

    .line 62
    .line 63
    iget-object v7, p2, Lh0/a;->endFrame:Ljava/lang/Float;

    .line 64
    const/4 v8, 0x0

    .line 65
    move-object v1, v9

    .line 66
    move-object v2, p1

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v1 .. v8}, Lcom/airbnb/lottie/animation/keyframe/h;-><init>(Lcom/airbnb/lottie/e;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/animation/keyframe/h$a;)V

    .line 70
    .line 71
    iget-object p1, p2, Lh0/a;->endValue:Ljava/lang/Object;

    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    iget-object v1, p2, Lh0/a;->startValue:Ljava/lang/Object;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    check-cast v1, Landroid/graphics/PointF;

    .line 80
    move-object v2, p1

    .line 81
    .line 82
    check-cast v2, Landroid/graphics/PointF;

    .line 83
    .line 84
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 85
    .line 86
    check-cast p1, Landroid/graphics/PointF;

    .line 87
    .line 88
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->equals(FF)Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-eqz p1, :cond_1

    .line 95
    const/4 p1, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    const/4 p1, 0x0

    .line 98
    .line 99
    :goto_1
    iget-object v1, v9, Lh0/a;->endValue:Ljava/lang/Object;

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    iget-object p1, p2, Lh0/a;->startValue:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Landroid/graphics/PointF;

    .line 108
    .line 109
    iget-object p2, p2, Lh0/a;->endValue:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p2, Landroid/graphics/PointF;

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2, p0, v0}, Lcom/airbnb/lottie/utils/f;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    .line 118
    invoke-static {v9, p0}, Lcom/airbnb/lottie/animation/keyframe/h;->g(Lcom/airbnb/lottie/animation/keyframe/h;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 119
    :cond_2
    return-object v9
.end method

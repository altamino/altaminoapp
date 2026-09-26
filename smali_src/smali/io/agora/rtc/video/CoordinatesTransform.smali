.class public Lio/agora/rtc/video/CoordinatesTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "displayOrientation",
            "isMirror"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2, p1}, Lio/agora/rtc/video/CoordinatesTransform;->prepareMatrix(Landroid/graphics/Matrix;ZI)V

    .line 9
    .line 10
    new-instance p1, Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 17
    return-object p1
.end method

.method private static prepareMatrix(Landroid/graphics/Matrix;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "mirror",
            "displayOrientation"
        }
    .end annotation

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p1, v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 12
    int-to-float p1, p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 16
    .line 17
    .line 18
    const p1, 0x3a03126f    # 5.0E-4f

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 22
    .line 23
    const/high16 p1, 0x3f000000    # 0.5f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 27
    return-void
.end method

.method public static sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transformRect",
            "previewWidth",
            "previewHeight",
            "cropRegion"
        }
    .end annotation

    .line 1
    .line 2
    if-le p1, p2, :cond_0

    .line 3
    int-to-double v0, p1

    .line 4
    int-to-double p1, p2

    .line 5
    :goto_0
    div-double/2addr v0, p1

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    int-to-double v0, p2

    .line 8
    int-to-double p1, p1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 13
    move-result p1

    .line 14
    int-to-double p1, p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 18
    move-result v2

    .line 19
    int-to-double v2, v2

    .line 20
    div-double/2addr p1, v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 28
    move-result v3

    .line 29
    .line 30
    cmpl-double p1, v0, p1

    .line 31
    .line 32
    if-lez p1, :cond_1

    .line 33
    int-to-double p1, v2

    .line 34
    div-double/2addr p1, v0

    .line 35
    double-to-int v3, p1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    int-to-double p1, v3

    .line 38
    mul-double/2addr p1, v0

    .line 39
    double-to-int v2, p1

    .line 40
    .line 41
    .line 42
    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 43
    move-result p1

    .line 44
    .line 45
    sub-int p1, v2, p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 49
    move-result p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 53
    move-result p2

    .line 54
    .line 55
    sub-int p2, v3, p2

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 59
    move-result p2

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/RectF;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    new-instance p0, Landroid/graphics/Matrix;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 70
    .line 71
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 72
    neg-int v1, v1

    .line 73
    .line 74
    div-int/lit8 p1, p1, 0x2

    .line 75
    sub-int/2addr v1, p1

    .line 76
    int-to-float p1, v1

    .line 77
    .line 78
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 79
    neg-int p3, p3

    .line 80
    .line 81
    div-int/lit8 p2, p2, 0x2

    .line 82
    sub-int/2addr p3, p2

    .line 83
    int-to-float p2, p3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 87
    neg-int p1, v2

    .line 88
    .line 89
    div-int/lit8 p1, p1, 0x2

    .line 90
    int-to-float p1, p1

    .line 91
    neg-int p2, v3

    .line 92
    .line 93
    div-int/lit8 p2, p2, 0x2

    .line 94
    int-to-float p2, p2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 98
    int-to-float p1, v2

    .line 99
    .line 100
    const/high16 p2, 0x44fa0000    # 2000.0f

    .line 101
    .line 102
    div-float p1, p2, p1

    .line 103
    int-to-float p3, v3

    .line 104
    div-float/2addr p2, p3

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 111
    .line 112
    new-instance p0, Landroid/graphics/Rect;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 119
    return-object p0
.end method

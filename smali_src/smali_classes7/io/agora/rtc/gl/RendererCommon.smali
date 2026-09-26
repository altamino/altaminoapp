.class public Lio/agora/rtc/gl/RendererCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/RendererCommon$ScalingType;,
        Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;,
        Lio/agora/rtc/gl/RendererCommon$GlDrawer;,
        Lio/agora/rtc/gl/RendererCommon$RendererEvents;
    }
.end annotation


# static fields
.field private static BALANCED_VISIBLE_FRACTION:F = 0.5625f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustOrigin([F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    aget v1, p0, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget v2, p0, v2

    .line 8
    const/4 v3, 0x4

    .line 9
    .line 10
    aget v3, p0, v3

    .line 11
    add-float/2addr v2, v3

    .line 12
    .line 13
    const/high16 v3, 0x3f000000    # 0.5f

    .line 14
    mul-float/2addr v2, v3

    .line 15
    sub-float/2addr v1, v2

    .line 16
    .line 17
    aput v1, p0, v0

    .line 18
    .line 19
    const/16 v2, 0xd

    .line 20
    .line 21
    aget v4, p0, v2

    .line 22
    const/4 v5, 0x1

    .line 23
    .line 24
    aget v5, p0, v5

    .line 25
    const/4 v6, 0x5

    .line 26
    .line 27
    aget v6, p0, v6

    .line 28
    add-float/2addr v5, v6

    .line 29
    mul-float/2addr v5, v3

    .line 30
    sub-float/2addr v4, v5

    .line 31
    .line 32
    aput v4, p0, v2

    .line 33
    add-float/2addr v1, v3

    .line 34
    .line 35
    aput v1, p0, v0

    .line 36
    add-float/2addr v4, v3

    .line 37
    .line 38
    aput v4, p0, v2

    .line 39
    return-void
.end method

.method public static convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    const/16 p0, 0x10

    .line 10
    .line 11
    new-array p0, p0, [F

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    aget v3, v1, v2

    .line 15
    .line 16
    aput v3, p0, v2

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    aget v3, v1, v2

    .line 20
    const/4 v4, 0x1

    .line 21
    .line 22
    aput v3, p0, v4

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v5, 0x0

    .line 25
    .line 26
    aput v5, p0, v3

    .line 27
    const/4 v6, 0x6

    .line 28
    .line 29
    aget v7, v1, v6

    .line 30
    .line 31
    aput v7, p0, v2

    .line 32
    .line 33
    aget v2, v1, v4

    .line 34
    const/4 v4, 0x4

    .line 35
    .line 36
    aput v2, p0, v4

    .line 37
    .line 38
    aget v2, v1, v4

    .line 39
    const/4 v4, 0x5

    .line 40
    .line 41
    aput v2, p0, v4

    .line 42
    .line 43
    aput v5, p0, v6

    .line 44
    const/4 v2, 0x7

    .line 45
    .line 46
    aget v6, v1, v2

    .line 47
    .line 48
    aput v6, p0, v2

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    aput v5, p0, v2

    .line 53
    .line 54
    aput v5, p0, v0

    .line 55
    .line 56
    const/16 v0, 0xa

    .line 57
    .line 58
    const/high16 v6, 0x3f800000    # 1.0f

    .line 59
    .line 60
    aput v6, p0, v0

    .line 61
    .line 62
    const/16 v0, 0xb

    .line 63
    .line 64
    aput v5, p0, v0

    .line 65
    .line 66
    const/16 v0, 0xc

    .line 67
    .line 68
    aget v3, v1, v3

    .line 69
    .line 70
    aput v3, p0, v0

    .line 71
    .line 72
    const/16 v0, 0xd

    .line 73
    .line 74
    aget v3, v1, v4

    .line 75
    .line 76
    aput v3, p0, v0

    .line 77
    .line 78
    const/16 v0, 0xe

    .line 79
    .line 80
    aput v5, p0, v0

    .line 81
    .line 82
    const/16 v0, 0xf

    .line 83
    .line 84
    aget v1, v1, v2

    .line 85
    .line 86
    aput v1, p0, v0

    .line 87
    return-object p0
.end method

.method public static convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix4x4"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    aget v2, p0, v1

    .line 8
    .line 9
    aput v2, v0, v1

    .line 10
    const/4 v1, 0x4

    .line 11
    .line 12
    aget v2, p0, v1

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    aput v2, v0, v3

    .line 16
    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    aget v2, p0, v2

    .line 20
    const/4 v4, 0x2

    .line 21
    .line 22
    aput v2, v0, v4

    .line 23
    .line 24
    aget v2, p0, v3

    .line 25
    const/4 v3, 0x3

    .line 26
    .line 27
    aput v2, v0, v3

    .line 28
    const/4 v2, 0x5

    .line 29
    .line 30
    aget v4, p0, v2

    .line 31
    .line 32
    aput v4, v0, v1

    .line 33
    .line 34
    const/16 v1, 0xd

    .line 35
    .line 36
    aget v1, p0, v1

    .line 37
    .line 38
    aput v1, v0, v2

    .line 39
    const/4 v1, 0x6

    .line 40
    .line 41
    aget v2, p0, v3

    .line 42
    .line 43
    aput v2, v0, v1

    .line 44
    const/4 v1, 0x7

    .line 45
    .line 46
    aget v2, p0, v1

    .line 47
    .line 48
    aput v2, v0, v1

    .line 49
    .line 50
    const/16 v1, 0xf

    .line 51
    .line 52
    aget p0, p0, v1

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    aput p0, v0, v1

    .line 57
    .line 58
    new-instance p0, Landroid/graphics/Matrix;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 65
    return-object p0
.end method

.method private static convertScalingTypeToVisibleFraction(Lio/agora/rtc/gl/RendererCommon$ScalingType;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalingType"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/gl/RendererCommon$1;->$SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    .line 8
    aget p0, v0, p0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    const/4 v0, 0x2

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    const/4 v0, 0x3

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    sget p0, Lio/agora/rtc/gl/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    .line 20
    return p0

    .line 21
    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    throw p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    .line 30
    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 31
    return p0
.end method

.method private static getDisplaySize(FFII)Landroid/graphics/Point;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "minVisibleFraction",
            "videoAspectRatio",
            "maxDisplayWidth",
            "maxDisplayHeight"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, p3

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float p2, p2

    div-float/2addr p2, p0

    div-float/2addr p2, p1

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 5
    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 6
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 7
    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getDisplaySize(Lio/agora/rtc/gl/RendererCommon$ScalingType;FII)Landroid/graphics/Point;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scalingType",
            "videoAspectRatio",
            "maxDisplayWidth",
            "maxDisplayHeight"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/agora/rtc/gl/RendererCommon;->convertScalingTypeToVisibleFraction(Lio/agora/rtc/gl/RendererCommon$ScalingType;)F

    move-result p0

    invoke-static {p0, p1, p2, p3}, Lio/agora/rtc/gl/RendererCommon;->getDisplaySize(FFII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getLayoutMatrix(ZFF)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mirror",
            "videoAspectRatio",
            "displayAspectRatio"
        }
    .end annotation

    .line 1
    .line 2
    cmpl-float v0, p2, p1

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    div-float/2addr p1, p2

    .line 8
    move p2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    div-float/2addr p2, p1

    .line 11
    move p1, v1

    .line 12
    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/high16 p0, -0x40800000    # -1.0f

    .line 16
    mul-float/2addr p2, p0

    .line 17
    .line 18
    :cond_1
    const/16 p0, 0x10

    .line 19
    .line 20
    new-array p0, p0, [F

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, p2, p1, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lio/agora/rtc/gl/RendererCommon;->adjustOrigin([F)V

    .line 31
    return-object p0
.end method

.method public static final horizontalFlipMatrix()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final identityMatrix()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static multiplyMatrices([F[F)[F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v0

    .line 9
    move-object v3, p0

    .line 10
    move-object v5, p1

    .line 11
    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 14
    return-object v0
.end method

.method public static rotateTextureMatrix([FF)[F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textureMatrix",
            "rotationDegree"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    .line 9
    const/high16 v6, 0x3f800000    # 1.0f

    .line 10
    move-object v1, v0

    .line 11
    move v3, p1

    .line 12
    .line 13
    .line 14
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lio/agora/rtc/gl/RendererCommon;->adjustOrigin([F)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lio/agora/rtc/gl/RendererCommon;->multiplyMatrices([F[F)[F

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final verticalFlipMatrix()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.class public Lcom/narvii/util/particles/TintColorInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/b;


# instance fields
.field blue:I

.field blueRange:I

.field green:I

.field greenRange:I

.field red:I

.field redRange:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/util/particles/TintColorInitializer;->red:I

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/util/particles/TintColorInitializer;->green:I

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    iput p1, p0, Lcom/narvii/util/particles/TintColorInitializer;->blue:I

    .line 22
    .line 23
    iput p2, p0, Lcom/narvii/util/particles/TintColorInitializer;->redRange:I

    .line 24
    .line 25
    iput p3, p0, Lcom/narvii/util/particles/TintColorInitializer;->greenRange:I

    .line 26
    .line 27
    iput p4, p0, Lcom/narvii/util/particles/TintColorInitializer;->blueRange:I

    .line 28
    return-void
.end method

.method public static tintColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    const/high16 v1, 0x437f0000    # 255.0f

    .line 8
    div-float/2addr v0, v1

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    new-array v2, v2, [F

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    aput v4, v2, v3

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    aput v4, v2, v3

    .line 22
    const/4 v3, 0x2

    .line 23
    .line 24
    aput v4, v2, v3

    .line 25
    const/4 v3, 0x3

    .line 26
    .line 27
    aput v4, v2, v3

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 31
    move-result v3

    .line 32
    int-to-float v3, v3

    .line 33
    const/4 v5, 0x4

    .line 34
    .line 35
    aput v3, v2, v5

    .line 36
    const/4 v3, 0x5

    .line 37
    .line 38
    aput v4, v2, v3

    .line 39
    const/4 v3, 0x6

    .line 40
    .line 41
    aput v4, v2, v3

    .line 42
    const/4 v3, 0x7

    .line 43
    .line 44
    aput v4, v2, v3

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    aput v4, v2, v3

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 52
    move-result v3

    .line 53
    int-to-float v3, v3

    .line 54
    .line 55
    const/16 v5, 0x9

    .line 56
    .line 57
    aput v3, v2, v5

    .line 58
    .line 59
    const/16 v3, 0xa

    .line 60
    .line 61
    aput v4, v2, v3

    .line 62
    .line 63
    const/16 v3, 0xb

    .line 64
    .line 65
    aput v4, v2, v3

    .line 66
    .line 67
    const/16 v3, 0xc

    .line 68
    .line 69
    aput v4, v2, v3

    .line 70
    .line 71
    const/16 v3, 0xd

    .line 72
    .line 73
    aput v4, v2, v3

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 77
    move-result p0

    .line 78
    int-to-float p0, p0

    .line 79
    .line 80
    const/16 v3, 0xe

    .line 81
    .line 82
    aput p0, v2, v3

    .line 83
    .line 84
    const/16 p0, 0xf

    .line 85
    .line 86
    aput v4, v2, p0

    .line 87
    .line 88
    const/16 p0, 0x10

    .line 89
    .line 90
    aput v4, v2, p0

    .line 91
    .line 92
    const/16 p0, 0x11

    .line 93
    .line 94
    aput v4, v2, p0

    .line 95
    .line 96
    const/16 p0, 0x12

    .line 97
    .line 98
    aput v0, v2, p0

    .line 99
    .line 100
    const/16 p0, 0x13

    .line 101
    .line 102
    aput v4, v2, p0

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 106
    return-object v1
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/particles/TintColorInitializer;->red:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/util/particles/TintColorInitializer;->redRange:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/util/particles/TintColorInitializer;->redRange:I

    .line 12
    .line 13
    div-int/lit8 v1, v1, 0x2

    .line 14
    sub-int/2addr v0, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    const/16 v2, 0xff

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    if-le v0, v2, :cond_1

    .line 24
    move v0, v2

    .line 25
    .line 26
    :cond_1
    :goto_0
    iget v3, p0, Lcom/narvii/util/particles/TintColorInitializer;->green:I

    .line 27
    .line 28
    iget v4, p0, Lcom/narvii/util/particles/TintColorInitializer;->greenRange:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    .line 32
    move-result v4

    .line 33
    add-int/2addr v3, v4

    .line 34
    .line 35
    iget v4, p0, Lcom/narvii/util/particles/TintColorInitializer;->greenRange:I

    .line 36
    .line 37
    div-int/lit8 v4, v4, 0x2

    .line 38
    sub-int/2addr v3, v4

    .line 39
    .line 40
    if-gez v3, :cond_2

    .line 41
    move v3, v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    if-le v3, v2, :cond_3

    .line 45
    move v3, v2

    .line 46
    .line 47
    :cond_3
    :goto_1
    iget v4, p0, Lcom/narvii/util/particles/TintColorInitializer;->blue:I

    .line 48
    .line 49
    iget v5, p0, Lcom/narvii/util/particles/TintColorInitializer;->blueRange:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v5}, Ljava/util/Random;->nextInt(I)I

    .line 53
    move-result p2

    .line 54
    add-int/2addr v4, p2

    .line 55
    .line 56
    iget p2, p0, Lcom/narvii/util/particles/TintColorInitializer;->blueRange:I

    .line 57
    .line 58
    div-int/lit8 p2, p2, 0x2

    .line 59
    sub-int/2addr v4, p2

    .line 60
    .line 61
    if-gez v4, :cond_4

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_4
    if-le v4, v2, :cond_5

    .line 65
    move v1, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_5
    move v1, v4

    .line 68
    .line 69
    :goto_2
    iget-object p1, p1, Lcom/plattysoft/leonids/b;->mPaint:Landroid/graphics/Paint;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 73
    move-result p2

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lcom/narvii/util/particles/TintColorInitializer;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 81
    return-void
.end method

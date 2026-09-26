.class public Lcom/narvii/theme/ThemeBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private alpha:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private clipPageBackgroundForActionbar:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/high16 v0, -0x1000000

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    iput-boolean p2, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->clipPageBackgroundForActionbar:Z

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v7

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 19
    move-result v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    move-result v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 31
    move-result v3

    .line 32
    .line 33
    mul-int v4, v2, v1

    .line 34
    .line 35
    mul-int v5, v0, v3

    .line 36
    .line 37
    const/high16 v8, 0x3f000000    # 0.5f

    .line 38
    const/4 v9, 0x0

    .line 39
    .line 40
    if-le v4, v5, :cond_1

    .line 41
    int-to-float v1, v1

    .line 42
    int-to-float v3, v3

    .line 43
    div-float/2addr v1, v3

    .line 44
    int-to-float v0, v0

    .line 45
    int-to-float v2, v2

    .line 46
    mul-float/2addr v2, v1

    .line 47
    sub-float/2addr v0, v2

    .line 48
    mul-float/2addr v0, v8

    .line 49
    move v10, v0

    .line 50
    move v11, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    int-to-float v0, v0

    .line 53
    int-to-float v1, v2

    .line 54
    .line 55
    div-float v1, v0, v1

    .line 56
    move v11, v1

    .line 57
    move v10, v9

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    .line 62
    iget v5, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    .line 63
    .line 64
    const/16 v0, 0xff

    .line 65
    .line 66
    if-ge v5, v0, :cond_2

    .line 67
    .line 68
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 69
    int-to-float v1, v0

    .line 70
    .line 71
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 72
    int-to-float v2, v0

    .line 73
    .line 74
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 75
    int-to-float v3, v0

    .line 76
    .line 77
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 78
    int-to-float v4, v0

    .line 79
    .line 80
    const/16 v6, 0x1f

    .line 81
    move-object v0, p1

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 85
    .line 86
    :cond_2
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 87
    int-to-float v0, v0

    .line 88
    .line 89
    iget v1, v7, Landroid/graphics/Rect;->top:I

    .line 90
    int-to-float v1, v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    add-float/2addr v10, v8

    .line 95
    float-to-int v0, v10

    .line 96
    int-to-float v0, v0

    .line 97
    float-to-int v1, v8

    .line 98
    int-to-float v1, v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    .line 11
    .line 12
    const/16 v1, 0xff

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, -0x3

    .line 19
    :goto_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/theme/ThemeBackgroundDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

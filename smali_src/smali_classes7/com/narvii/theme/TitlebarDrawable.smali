.class public Lcom/narvii/theme/TitlebarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private alpha:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
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
    iput v0, p0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/high16 v0, -0x1000000

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    move-result-object v9

    .line 8
    .line 9
    .line 10
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v2

    .line 23
    .line 24
    iget-object v3, v0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    move-result v3

    .line 29
    .line 30
    iget-object v4, v0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 34
    move-result v4

    .line 35
    .line 36
    mul-int v5, v3, v2

    .line 37
    .line 38
    mul-int v6, v1, v4

    .line 39
    .line 40
    const/high16 v10, 0x3f000000    # 0.5f

    .line 41
    const/4 v11, 0x0

    .line 42
    .line 43
    if-le v5, v6, :cond_1

    .line 44
    int-to-float v2, v2

    .line 45
    int-to-float v4, v4

    .line 46
    div-float/2addr v2, v4

    .line 47
    int-to-float v1, v1

    .line 48
    int-to-float v3, v3

    .line 49
    mul-float/2addr v3, v2

    .line 50
    sub-float/2addr v1, v3

    .line 51
    mul-float/2addr v1, v10

    .line 52
    move v12, v1

    .line 53
    move v14, v2

    .line 54
    move v13, v11

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    int-to-float v1, v1

    .line 57
    int-to-float v3, v3

    .line 58
    div-float/2addr v1, v3

    .line 59
    int-to-float v2, v2

    .line 60
    int-to-float v3, v4

    .line 61
    mul-float/2addr v3, v1

    .line 62
    sub-float/2addr v2, v3

    .line 63
    mul-float/2addr v2, v10

    .line 64
    move v14, v1

    .line 65
    move v13, v2

    .line 66
    move v12, v11

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    .line 71
    iget v6, v0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

    .line 72
    .line 73
    const/16 v1, 0xff

    .line 74
    .line 75
    if-ge v6, v1, :cond_2

    .line 76
    .line 77
    iget v1, v9, Landroid/graphics/Rect;->left:I

    .line 78
    int-to-float v2, v1

    .line 79
    .line 80
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 81
    int-to-float v3, v1

    .line 82
    .line 83
    iget v1, v9, Landroid/graphics/Rect;->right:I

    .line 84
    int-to-float v4, v1

    .line 85
    .line 86
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    .line 87
    int-to-float v5, v1

    .line 88
    .line 89
    const/16 v7, 0x1f

    .line 90
    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 95
    .line 96
    :cond_2
    iget v1, v9, Landroid/graphics/Rect;->left:I

    .line 97
    int-to-float v1, v1

    .line 98
    .line 99
    iget v2, v9, Landroid/graphics/Rect;->top:I

    .line 100
    int-to-float v2, v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    add-float/2addr v12, v10

    .line 105
    float-to-int v1, v12

    .line 106
    int-to-float v1, v1

    .line 107
    add-float/2addr v13, v10

    .line 108
    float-to-int v2, v13

    .line 109
    int-to-float v2, v2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 116
    .line 117
    iget-object v1, v0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 118
    .line 119
    iget-object v2, v0, Lcom/narvii/theme/TitlebarDrawable;->paint:Landroid/graphics/Paint;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v1, v11, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Lcom/narvii/theme/TitlebarDrawable;->bitmap:Landroid/graphics/Bitmap;

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
    iget v0, p0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

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

    iput p1, p0, Lcom/narvii/theme/TitlebarDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

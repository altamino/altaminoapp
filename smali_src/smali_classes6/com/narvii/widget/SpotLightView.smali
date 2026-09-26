.class public Lcom/narvii/widget/SpotLightView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private blurRadius:I

.field private cache:Landroid/graphics/Bitmap;

.field private color:I

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->SpotLightView:[I

    .line 6
    .line 7
    sget v1, Lcom/narvii/lib/R$style;->SpotLightView:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    sget p2, Lcom/narvii/lib/R$styleable;->SpotLightView_spotBlurRadius:I

    .line 14
    .line 15
    const/16 v0, 0x14

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 19
    move-result p2

    .line 20
    .line 21
    iput p2, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    .line 22
    .line 23
    sget p2, Lcom/narvii/lib/R$styleable;->SpotLightView_spotShadowColor:I

    .line 24
    .line 25
    .line 26
    const v0, -0x19cccccd

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 30
    move-result p2

    .line 31
    .line 32
    iput p2, p0, Lcom/narvii/widget/SpotLightView;->color:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    .line 37
    new-instance p1, Landroid/graphics/Paint;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method private static generate(IIII)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    mul-int/lit8 v1, p3, 0x2

    .line 12
    .line 13
    add-int v2, p0, v1

    .line 14
    add-int/2addr v1, p1

    .line 15
    .line 16
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/Canvas;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 29
    .line 30
    const/high16 p2, -0x1000000

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    new-instance p2, Landroid/graphics/BlurMaskFilter;

    .line 36
    int-to-float v3, p3

    .line 37
    .line 38
    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 45
    .line 46
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 47
    .line 48
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 55
    .line 56
    new-instance p2, Landroid/graphics/RectF;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .line 61
    iput v3, p2, Landroid/graphics/RectF;->left:F

    .line 62
    .line 63
    iput v3, p2, Landroid/graphics/RectF;->top:F

    .line 64
    add-int/2addr p0, p3

    .line 65
    int-to-float p0, p0

    .line 66
    .line 67
    iput p0, p2, Landroid/graphics/RectF;->right:F

    .line 68
    add-int/2addr p1, p3

    .line 69
    int-to-float p0, p1

    .line 70
    .line 71
    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 75
    return-object v1
.end method

.method private prepare()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    move-result v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 29
    move-result v1

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 58
    move-result v0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 64
    move-result v1

    .line 65
    .line 66
    iget v2, p0, Lcom/narvii/widget/SpotLightView;->color:I

    .line 67
    .line 68
    iget v3, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/widget/SpotLightView;->generate(IIII)Landroid/graphics/Bitmap;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->cache:Landroid/graphics/Bitmap;

    .line 77
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/widget/SpotLightView;->color:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 45
    sub-int/2addr v3, v2

    .line 46
    int-to-float v6, v3

    .line 47
    int-to-float v1, v1

    .line 48
    .line 49
    iget-object v8, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 50
    move-object v3, p1

    .line 51
    move v7, v1

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 59
    sub-int/2addr v4, v2

    .line 60
    int-to-float v6, v4

    .line 61
    const/4 v7, 0x0

    .line 62
    .line 63
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 64
    add-int/2addr v4, v2

    .line 65
    int-to-float v8, v4

    .line 66
    .line 67
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 68
    sub-int/2addr v3, v2

    .line 69
    int-to-float v9, v3

    .line 70
    .line 71
    iget-object v10, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 72
    move-object v5, p1

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 78
    .line 79
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 80
    add-int/2addr v3, v2

    .line 81
    int-to-float v8, v3

    .line 82
    const/4 v9, 0x0

    .line 83
    int-to-float v10, v0

    .line 84
    .line 85
    iget-object v12, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 86
    move-object v7, p1

    .line 87
    move v11, v1

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 93
    .line 94
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 95
    sub-int/2addr v3, v2

    .line 96
    int-to-float v8, v3

    .line 97
    .line 98
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 99
    add-int/2addr v3, v2

    .line 100
    int-to-float v9, v3

    .line 101
    .line 102
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 103
    add-int/2addr v0, v2

    .line 104
    int-to-float v10, v0

    .line 105
    .line 106
    iget-object v12, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 112
    .line 113
    const/high16 v1, -0x1000000

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/narvii/widget/SpotLightView;->prepare()Landroid/graphics/Bitmap;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iget-object v1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 123
    .line 124
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 125
    sub-int/2addr v3, v2

    .line 126
    int-to-float v3, v3

    .line 127
    .line 128
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 129
    sub-int/2addr v1, v2

    .line 130
    int-to-float v1, v1

    .line 131
    .line 132
    iget-object v2, p0, Lcom/narvii/widget/SpotLightView;->paint:Landroid/graphics/Paint;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setSpotBlurRadius(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/SpotLightView;->blurRadius:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setSpotRect(IIII)V
    .locals 1

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SpotLightView;->rect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpotRect(Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/narvii/widget/SpotLightView;->setSpotRect(IIII)V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/narvii/widget/SpotLightView;->setSpotRect(IIII)V

    :goto_0
    return-void
.end method

.method public setSpotShadowColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/SpotLightView;->color:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.class public Lcom/narvii/chat/BubbleBitmapDrawable;
.super Lcom/narvii/chat/BubbleDrawable;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final matrix:Landroid/graphics/Matrix;

.field private shader:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/BubbleDrawable;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    .line 11
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 24
    move-result v2

    .line 25
    .line 26
    iget v3, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 27
    sub-int/2addr v2, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 35
    move-result v3

    .line 36
    .line 37
    mul-int v4, v0, v3

    .line 38
    .line 39
    mul-int v5, v2, v1

    .line 40
    const/4 v6, 0x0

    .line 41
    .line 42
    const/high16 v7, 0x3f000000    # 0.5f

    .line 43
    .line 44
    if-le v4, v5, :cond_0

    .line 45
    int-to-float v3, v3

    .line 46
    int-to-float v1, v1

    .line 47
    div-float/2addr v3, v1

    .line 48
    int-to-float v1, v2

    .line 49
    int-to-float v0, v0

    .line 50
    mul-float/2addr v0, v3

    .line 51
    sub-float/2addr v1, v0

    .line 52
    mul-float/2addr v1, v7

    .line 53
    move v2, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    int-to-float v2, v2

    .line 56
    int-to-float v0, v0

    .line 57
    .line 58
    div-float v0, v2, v0

    .line 59
    int-to-float v2, v3

    .line 60
    int-to-float v1, v1

    .line 61
    mul-float/2addr v1, v0

    .line 62
    sub-float/2addr v2, v1

    .line 63
    mul-float/2addr v2, v7

    .line 64
    move v3, v0

    .line 65
    move v1, v6

    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    .line 78
    add-float/2addr v1, v7

    .line 79
    float-to-int v1, v1

    .line 80
    int-to-float v1, v1

    .line 81
    add-float/2addr v2, v7

    .line 82
    float-to-int v2, v2

    .line 83
    int-to-float v2, v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 87
    .line 88
    iget-boolean v0, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    .line 93
    .line 94
    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 95
    int-to-float v1, v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 106
    .line 107
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    .line 114
    .line 115
    invoke-super {p0, p1}, Lcom/narvii/chat/BubbleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 18
    move-object p1, v0

    .line 19
    .line 20
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 24
    :cond_1
    return-void
.end method

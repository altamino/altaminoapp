.class public Lcom/narvii/chat/BubbleBitmapDrawable;
.super Lcom/narvii/chat/BubbleDrawable;
.source "BubbleBitmapDrawable.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final matrix:Landroid/graphics/Matrix;

.field private shader:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/BubbleDrawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 34
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int v4, v0, v3

    mul-int v5, v2, v1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-le v4, v5, :cond_0

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v2

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v1, v0

    mul-float v0, v1, v7

    move v1, v0

    move v0, v3

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, v3

    int-to-float v1, v1

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    mul-float v1, v2, v7

    move v2, v1

    const/4 v1, 0x0

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 51
    iget-object v3, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 52
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    iget-boolean v0, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/chat/BubbleDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_1

    .line 21
    iput-object p1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/BubbleBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

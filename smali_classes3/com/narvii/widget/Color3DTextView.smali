.class public Lcom/narvii/widget/Color3DTextView;
.super Landroid/widget/TextView;
.source "Color3DTextView.java"


# instance fields
.field private colors:[I

.field private height:I

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private shadowColor:I

.field private shadowDx:I

.field private shadowDy:I

.field private shadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 17
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 17
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    .line 31
    sget-object v1, Lcom/narvii/amino/R$styleable;->Color3DTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/widget/Color3DTextView;->shadowDx:I

    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/Color3DTextView;->shadowDy:I

    const p2, 0x3c23d70a    # 0.01f

    .line 35
    iput p2, p0, Lcom/narvii/widget/Color3DTextView;->shadowRadius:F

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 59
    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowDx:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowDy:I

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/narvii/widget/Color3DTextView;->shadowRadius:F

    iget v2, p0, Lcom/narvii/widget/Color3DTextView;->shadowDx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/widget/Color3DTextView;->shadowDy:I

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/Color3DTextView;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 42
    iput p2, p0, Lcom/narvii/widget/Color3DTextView;->height:I

    .line 43
    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcom/narvii/widget/Color3DTextView;->height:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/narvii/widget/Color3DTextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setTextColors([I)V
    .locals 9

    .line 47
    iput-object p1, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    .line 48
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->height:I

    int-to-float v4, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/narvii/widget/Color3DTextView;->linearGradient:Landroid/graphics/LinearGradient;

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

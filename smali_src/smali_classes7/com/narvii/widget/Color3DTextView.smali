.class public Lcom/narvii/widget/Color3DTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    .line 3
    sget-object v0, Lcom/narvii/amino/R$styleable;->Color3DTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowDx:I

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/Color3DTextView;->shadowDy:I

    const p2, 0x3c23d70a    # 0.01f

    iput p2, p0, Lcom/narvii/widget/Color3DTextView;->shadowRadius:F

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowDx:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->shadowDy:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/widget/Color3DTextView;->shadowRadius:F

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/widget/Color3DTextView;->shadowDx:I

    .line 21
    int-to-float v2, v2

    .line 22
    .line 23
    iget v3, p0, Lcom/narvii/widget/Color3DTextView;->shadowDy:I

    .line 24
    int-to-float v3, v3

    .line 25
    .line 26
    iget v4, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    .line 39
    .line 40
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/widget/Color3DTextView;->linearGradient:Landroid/graphics/LinearGradient;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    .line 58
    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iput p2, p0, Lcom/narvii/widget/Color3DTextView;->height:I

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    iget p2, p0, Lcom/narvii/widget/Color3DTextView;->height:I

    .line 13
    int-to-float v4, p2

    .line 14
    .line 15
    iget-object v5, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 19
    move-object v0, p1

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/widget/Color3DTextView;->linearGradient:Landroid/graphics/LinearGradient;

    .line 25
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/Color3DTextView;->shadowColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setTextColors([I)V
    .locals 9

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/Color3DTextView;->colors:[I

    .line 3
    .line 4
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/widget/Color3DTextView;->height:I

    .line 10
    int-to-float v4, v0

    .line 11
    const/4 v6, 0x0

    .line 12
    .line 13
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 14
    move-object v0, v8

    .line 15
    move-object v5, p1

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 19
    .line 20
    iput-object v8, p0, Lcom/narvii/widget/Color3DTextView;->linearGradient:Landroid/graphics/LinearGradient;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method

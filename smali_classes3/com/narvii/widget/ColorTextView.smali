.class public Lcom/narvii/widget/ColorTextView;
.super Landroid/widget/TextView;
.source "ColorTextView.java"


# instance fields
.field private colors:[I

.field private height:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 8

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 31
    iput p2, p0, Lcom/narvii/widget/ColorTextView;->height:I

    .line 32
    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcom/narvii/widget/ColorTextView;->height:I

    int-to-float v3, p2

    iget-object v5, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 33
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p3, 0x42b40000    # 90.0f

    .line 34
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setTextColors([I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

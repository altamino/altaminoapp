.class public Lcom/narvii/widget/ColorTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private colors:[I

.field private height:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iput p2, p0, Lcom/narvii/widget/ColorTextView;->height:I

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iget p2, p0, Lcom/narvii/widget/ColorTextView;->height:I

    .line 12
    int-to-float v3, p2

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    iget-object v5, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

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
    new-instance p2, Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .line 29
    const/high16 p3, 0x42b40000    # 90.0f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 43
    return-void
.end method

.method public setTextColors([I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ColorTextView;->colors:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

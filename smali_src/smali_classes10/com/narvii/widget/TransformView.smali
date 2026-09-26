.class public Lcom/narvii/widget/TransformView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field rotate:F

.field scaleX:F

.field scaleY:F

.field translateX:F

.field translateY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/amino/R$styleable;->TransformView:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 16
    move-result p2

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/widget/TransformView;->scaleX:F

    .line 19
    const/4 p2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 23
    move-result p2

    .line 24
    .line 25
    iput p2, p0, Lcom/narvii/widget/TransformView;->scaleY:F

    .line 26
    const/4 p2, 0x3

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 31
    move-result p2

    .line 32
    .line 33
    iput p2, p0, Lcom/narvii/widget/TransformView;->translateX:F

    .line 34
    const/4 p2, 0x4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 38
    move-result p2

    .line 39
    .line 40
    iput p2, p0, Lcom/narvii/widget/TransformView;->translateY:F

    .line 41
    const/4 p2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 45
    move-result p2

    .line 46
    .line 47
    iput p2, p0, Lcom/narvii/widget/TransformView;->rotate:F

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/TransformView;->rotate:F

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v2

    .line 11
    .line 12
    div-int/lit8 v2, v2, 0x2

    .line 13
    int-to-float v2, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v3

    .line 18
    .line 19
    div-int/lit8 v3, v3, 0x2

    .line 20
    int-to-float v3, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 30
    return-void
.end method

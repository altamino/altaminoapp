.class public Lcom/narvii/list/select/SelectableFrame;
.super Landroid/widget/FrameLayout;
.source "SelectableFrame.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8


# instance fields
.field private alphaAnim:Lcom/narvii/util/AnimSwitch;

.field private backIndex:I

.field private backOff:Landroid/view/View;

.field private backOn:Landroid/view/View;

.field private checkOff:Landroid/view/View;

.field private checkOn:Landroid/view/View;

.field private paddingAnim:Lcom/narvii/util/AnimSwitch;

.field private selectMode:Z

.field private selectOffAlpha:F

.field private selectOnAlpha:F

.field private selectPadding:I

.field private selected:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v0, Lcom/narvii/lib/R$styleable;->SelectableFrame:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    sget p2, Lcom/narvii/lib/R$styleable;->SelectableFrame_selectPadding:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectPadding:I

    .line 41
    sget p2, Lcom/narvii/lib/R$styleable;->SelectableFrame_selectOnAlpha:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    .line 42
    sget p2, Lcom/narvii/lib/R$styleable;->SelectableFrame_selectOffAlpha:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance p1, Lcom/narvii/util/AnimSwitch;

    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectPadding:I

    int-to-float p2, p2

    const-wide/16 v1, 0xc8

    invoke-direct {p1, p2, v1, v2}, Lcom/narvii/util/AnimSwitch;-><init>(FJ)V

    iput-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    .line 46
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/util/AnimSwitch;->setCurrent(F)V

    .line 47
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {p1, p2}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    .line 48
    iget p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    sub-float p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    sub-float p2, v0, p2

    .line 49
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 50
    new-instance p2, Lcom/narvii/util/AnimSwitch;

    invoke-direct {p2, p1, v1, v2}, Lcom/narvii/util/AnimSwitch;-><init>(FJ)V

    iput-object p2, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    .line 51
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {p1, v0}, Lcom/narvii/util/AnimSwitch;->setCurrent(F)V

    .line 52
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {p1, v0}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 77
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 80
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOn:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 83
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOff:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 86
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 147
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    if-ne p2, v0, :cond_4

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {v1, p3, p4}, Lcom/narvii/util/AnimSwitch;->anim(J)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float v2, v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {v1, p3, p4}, Lcom/narvii/util/AnimSwitch;->anim(J)F

    move-result v1

    cmpg-float v2, v1, v3

    if-gez v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v8, v1

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 158
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 159
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 160
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return p2

    .line 161
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x1

    return p1

    .line 167
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    .line 127
    :cond_0
    iget v0, p0, Lcom/narvii/list/select/SelectableFrame;->backIndex:I

    if-ge p2, v0, :cond_1

    return p2

    :cond_1
    if-ne p2, v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    return p2
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    sget v0, Lcom/narvii/lib/R$id;->selectable_back_on:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    .line 60
    sget v0, Lcom/narvii/lib/R$id;->selectable_back_off:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    .line 61
    sget v0, Lcom/narvii/lib/R$id;->selectable_check_on:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOn:Landroid/view/View;

    .line 62
    sget v0, Lcom/narvii/lib/R$id;->selectable_check_off:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOff:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    iput v0, p0, Lcom/narvii/list/select/SelectableFrame;->backIndex:I

    goto :goto_0

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/narvii/list/select/SelectableFrame;->update()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 136
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 137
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    .line 138
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    if-eqz p1, :cond_1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 141
    invoke-virtual {p1, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public set(ZZ)V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 112
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    .line 113
    iput-boolean p2, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    .line 114
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/narvii/list/select/SelectableFrame;->selectPadding:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    .line 115
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    goto :goto_2

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, p1}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    .line 116
    invoke-direct {p0}, Lcom/narvii/list/select/SelectableFrame;->update()V

    .line 117
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 118
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_6
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.class public Lcom/narvii/list/select/SelectableFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->SelectableFrame:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->SelectableFrame_selectPadding:I

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 16
    move-result p2

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectPadding:I

    .line 19
    .line 20
    sget p2, Lcom/narvii/lib/R$styleable;->SelectableFrame_selectOnAlpha:I

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 26
    move-result p2

    .line 27
    .line 28
    iput p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    .line 29
    .line 30
    sget p2, Lcom/narvii/lib/R$styleable;->SelectableFrame_selectOffAlpha:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 34
    move-result p2

    .line 35
    .line 36
    iput p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/util/AnimSwitch;

    .line 42
    .line 43
    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectPadding:I

    .line 44
    int-to-float p2, p2

    .line 45
    .line 46
    const-wide/16 v1, 0xc8

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2, v1, v2}, Lcom/narvii/util/AnimSwitch;-><init>(FJ)V

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    .line 52
    const/4 p2, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/util/AnimSwitch;->setCurrent(F)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    .line 61
    .line 62
    iget p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    .line 63
    .line 64
    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    .line 65
    sub-float/2addr p1, p2

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 69
    move-result p1

    .line 70
    .line 71
    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    .line 72
    .line 73
    sub-float p2, v0, p2

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 77
    move-result p2

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 81
    move-result p1

    .line 82
    .line 83
    iget p2, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    .line 84
    .line 85
    sub-float p2, v0, p2

    .line 86
    .line 87
    .line 88
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 89
    move-result p2

    .line 90
    .line 91
    .line 92
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 93
    move-result p1

    .line 94
    .line 95
    new-instance p2, Lcom/narvii/util/AnimSwitch;

    .line 96
    .line 97
    .line 98
    invoke-direct {p2, p1, v1, v2}, Lcom/narvii/util/AnimSwitch;-><init>(FJ)V

    .line 99
    .line 100
    iput-object p2, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Lcom/narvii/util/AnimSwitch;->setCurrent(F)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    .line 109
    const/4 p1, 0x1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 113
    return-void
.end method

.method private update()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    move v3, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v3, v1

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOn:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    .line 49
    .line 50
    if-eqz v3, :cond_4

    .line 51
    move v3, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    move v3, v1

    .line 54
    .line 55
    .line 56
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOff:Landroid/view/View;

    .line 59
    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    .line 63
    .line 64
    if-eqz v3, :cond_6

    .line 65
    .line 66
    iget-boolean v3, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    .line 67
    .line 68
    if-nez v3, :cond_6

    .line 69
    move v1, v2

    .line 70
    .line 71
    .line 72
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_7
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    .line 3
    .line 4
    if-ne p2, v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3, p4}, Lcom/narvii/util/AnimSwitch;->anim(J)F

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    cmpl-float v2, v1, v2

    .line 18
    .line 19
    const/high16 v3, 0x3f800000    # 1.0f

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    sub-float/2addr v2, v1

    .line 28
    mul-float/2addr v2, v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    div-float/2addr v2, v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result v1

    .line 39
    .line 40
    div-int/lit8 v1, v1, 0x2

    .line 41
    int-to-float v1, v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v4

    .line 46
    .line 47
    div-int/lit8 v4, v4, 0x2

    .line 48
    int-to-float v4, v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 52
    .line 53
    :cond_0
    iget-object v1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p3, p4}, Lcom/narvii/util/AnimSwitch;->anim(J)F

    .line 57
    move-result v1

    .line 58
    .line 59
    cmpg-float v2, v1, v3

    .line 60
    .line 61
    if-gez v2, :cond_1

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    move-result v2

    .line 68
    int-to-float v6, v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 72
    move-result v2

    .line 73
    int-to-float v7, v2

    .line 74
    .line 75
    const/high16 v2, 0x437f0000    # 255.0f

    .line 76
    mul-float/2addr v1, v2

    .line 77
    float-to-int v8, v1

    .line 78
    .line 79
    const/16 v9, 0x1f

    .line 80
    move-object v3, p1

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    .line 96
    move-result p1

    .line 97
    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    .line 104
    move-result p1

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    return p2

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 112
    const/4 p1, 0x1

    .line 113
    return p1

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 117
    move-result p1

    .line 118
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildDrawingOrder(II)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/narvii/list/select/SelectableFrame;->backIndex:I

    .line 12
    .line 13
    if-ge p2, v0, :cond_1

    .line 14
    return p2

    .line 15
    .line 16
    :cond_1
    if-ne p2, v0, :cond_2

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 22
    return p2
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->selectable_back_on:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->selectable_back_off:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$id;->selectable_check_on:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOn:Landroid/view/View;

    .line 28
    .line 29
    sget v0, Lcom/narvii/lib/R$id;->selectable_check_off:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->checkOff:Landroid/view/View;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    .line 50
    :goto_0
    if-ge v1, v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    .line 57
    .line 58
    if-eq v2, v3, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    .line 65
    .line 66
    if-ne v2, v3, :cond_2

    .line 67
    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    iput v1, p0, Lcom/narvii/list/select/SelectableFrame;->backIndex:I

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-direct {p0}, Lcom/narvii/list/select/SelectableFrame;->update()V

    .line 75
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->backOn:Landroid/view/View;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sub-int v1, p4, p2

    .line 11
    .line 12
    sub-int v2, p5, p3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->backOff:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    sub-int/2addr p4, p2

    .line 21
    sub-int/2addr p5, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 25
    :cond_1
    return-void
.end method

.method public set(ZZ)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectMode:Z

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/narvii/list/select/SelectableFrame;->selected:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/list/select/SelectableFrame;->selectPadding:I

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    int-to-float v1, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    iget p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectOnAlpha:F

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_3
    iget p1, p0, Lcom/narvii/list/select/SelectableFrame;->selectOffAlpha:F

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-virtual {v0, p1}, Lcom/narvii/util/AnimSwitch;->setTarget(F)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/list/select/SelectableFrame;->update()V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->paddingAnim:Lcom/narvii/util/AnimSwitch;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->alphaAnim:Lcom/narvii/util/AnimSwitch;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/util/AnimSwitch;->inAnim()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    .line 68
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 69
    :cond_6
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    .line 3
    .line 4
    if-eq v0, p1, :cond_2

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/select/SelectableFrame;->view:Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    const/16 v1, 0x11

    .line 30
    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    :cond_2
    return-void
.end method

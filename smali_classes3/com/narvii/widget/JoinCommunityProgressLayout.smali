.class public Lcom/narvii/widget/JoinCommunityProgressLayout;
.super Lcom/narvii/widget/PushButton;
.source "JoinCommunityProgressLayout.java"


# static fields
.field static final SHADOW_ALPHA:F = 0.4f


# instance fields
.field current:I

.field duration:J

.field from:I

.field private isCurPressed:Z

.field it:Landroid/view/animation/DecelerateInterpolator;

.field paint:Landroid/graphics/Paint;

.field rectf:Landroid/graphics/RectF;

.field startTime:J

.field to:I

.field private topOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/PushButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->it:Landroid/view/animation/DecelerateInterpolator;

    const-wide/16 v0, 0x258

    .line 28
    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->duration:J

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->paint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x66

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    sget-object v0, Lcom/narvii/amino/R$styleable;->JoinCommunityProgressLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->topOffset:I

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public cancelProgress()V
    .locals 2

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 81
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    if-ne v0, v1, :cond_0

    if-nez v0, :cond_0

    .line 82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 92
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    if-ne v0, v1, :cond_0

    if-nez v0, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/PushButton;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 97
    :cond_0
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 99
    iget-wide v3, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v0, v3

    if-gez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 100
    :cond_1
    iget-wide v3, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->duration:J

    cmp-long v6, v0, v3

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    long-to-float v0, v0

    mul-float v0, v0, v5

    long-to-float v1, v3

    div-float v5, v0, v1

    .line 101
    :goto_0
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    iget-object v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->it:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    iget v3, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    iget v4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 106
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/PushButton;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    or-int/2addr p3, v0

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    mul-int p4, p4, v0

    div-int/lit8 p4, p4, 0x64

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, p4, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 110
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->left:F

    .line 111
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->topOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->top:F

    .line 112
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p4, Landroid/graphics/RectF;->right:F

    .line 113
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->topOffset:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p4, Landroid/graphics/RectF;->bottom:F

    .line 114
    iget-object p2, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    iget p4, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    iget-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p3
.end method

.method public isPressed()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->isCurPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    move-result v0

    return v0
.end method

.method public setCurPressed(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->isCurPressed:Z

    .line 62
    iget-boolean p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->isCurPressed:Z

    invoke-virtual {p0, p1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setPressed(Z)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->isCurPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68
    invoke-super {p0, v0}, Lcom/narvii/widget/PushButton;->setPressed(Z)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/PushButton;->setPressed(Z)V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 44
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    if-ne v0, p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 48
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 49
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    if-ge p1, v0, :cond_1

    .line 50
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 51
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 52
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    .line 57
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

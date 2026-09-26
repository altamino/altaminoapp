.class public Lcom/narvii/widget/JoinCommunityProgressLayout;
.super Lcom/narvii/widget/PushButton;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/PushButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->it:Landroid/view/animation/DecelerateInterpolator;

    .line 11
    .line 12
    const-wide/16 v0, 0x258

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->duration:J

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/RectF;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    .line 22
    .line 23
    new-instance v0, Landroid/graphics/Paint;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->paint:Landroid/graphics/Paint;

    .line 29
    .line 30
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->paint:Landroid/graphics/Paint;

    .line 36
    .line 37
    const/16 v1, 0x66

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    sget-object v0, Lcom/narvii/amino/R$styleable;->JoinCommunityProgressLayout:[I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 55
    move-result p2

    .line 56
    .line 57
    iput p2, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->topOffset:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method


# virtual methods
.method public cancelProgress()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/PushButton;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-ge v0, v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    iget-wide v3, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    .line 25
    sub-long/2addr v0, v3

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long v3, v0, v3

    .line 30
    .line 31
    if-gez v3, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-wide v3, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->duration:J

    .line 36
    .line 37
    cmp-long v5, v0, v3

    .line 38
    .line 39
    const/high16 v6, 0x3f800000    # 1.0f

    .line 40
    .line 41
    if-lez v5, :cond_2

    .line 42
    move v0, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    long-to-float v0, v0

    .line 45
    mul-float/2addr v0, v6

    .line 46
    long-to-float v1, v3

    .line 47
    div-float/2addr v0, v1

    .line 48
    .line 49
    :goto_0
    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->it:Landroid/view/animation/DecelerateInterpolator;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 55
    move-result v0

    .line 56
    .line 57
    iget v3, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 58
    .line 59
    iget v4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 60
    sub-int/2addr v3, v4

    .line 61
    int-to-float v3, v3

    .line 62
    mul-float/2addr v0, v3

    .line 63
    float-to-int v0, v0

    .line 64
    add-int/2addr v1, v0

    .line 65
    .line 66
    iput v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v0, v2

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/PushButton;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 76
    move-result p3

    .line 77
    or-int/2addr p3, v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 84
    move-result p4

    .line 85
    .line 86
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 87
    mul-int/2addr p4, v0

    .line 88
    .line 89
    div-int/lit8 p4, p4, 0x64

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2, v2, p4, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 97
    .line 98
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 102
    move-result v0

    .line 103
    int-to-float v0, v0

    .line 104
    .line 105
    iput v0, p4, Landroid/graphics/RectF;->left:F

    .line 106
    .line 107
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 111
    move-result v0

    .line 112
    .line 113
    iget v1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->topOffset:I

    .line 114
    add-int/2addr v0, v1

    .line 115
    int-to-float v0, v0

    .line 116
    .line 117
    iput v0, p4, Landroid/graphics/RectF;->top:F

    .line 118
    .line 119
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 123
    move-result v0

    .line 124
    int-to-float v0, v0

    .line 125
    .line 126
    iput v0, p4, Landroid/graphics/RectF;->right:F

    .line 127
    .line 128
    iget-object p4, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 132
    move-result p2

    .line 133
    .line 134
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->topOffset:I

    .line 135
    add-int/2addr p2, v0

    .line 136
    int-to-float p2, p2

    .line 137
    .line 138
    iput p2, p4, Landroid/graphics/RectF;->bottom:F

    .line 139
    .line 140
    iget-object p2, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->rectf:Landroid/graphics/RectF;

    .line 141
    .line 142
    iget p4, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    .line 143
    .line 144
    iget-object v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->paint:Landroid/graphics/Paint;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2, p4, p4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 151
    return p3
.end method

.method public isPressed()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->isCurPressed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public setCurPressed(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->isCurPressed:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setPressed(Z)V

    .line 6
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->isCurPressed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-super {p0, v0}, Lcom/narvii/widget/PushButton;->setPressed(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/PushButton;->setPressed(Z)V

    .line 12
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 12
    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->current:I

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->from:I

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->to:I

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/narvii/widget/JoinCommunityProgressLayout;->startTime:J

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 34
    return-void
.end method

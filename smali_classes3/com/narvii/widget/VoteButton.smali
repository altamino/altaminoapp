.class public Lcom/narvii/widget/VoteButton;
.super Landroid/widget/RelativeLayout;
.source "VoteButton.java"


# instance fields
.field private addScale:F

.field private anim:I

.field private color:I

.field private decreaseTime:I

.field drakTheme:Z

.field private increaseTime:I

.field private itp:Landroid/view/animation/DecelerateInterpolator;

.field private itpScale:Landroid/view/animation/DecelerateInterpolator;

.field private maxScale:F

.field private paint:Landroid/graphics/Paint;

.field private prevTime:J

.field private progress:F

.field final strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/narvii/widget/VoteButton;->progress:F

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 31
    iput v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 45
    sget-object v0, Lcom/narvii/lib/R$styleable;->VoteButton:[I

    sget v2, Lcom/narvii/lib/R$style;->VoteButton:I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_voteColor:I

    const v0, -0xea9438

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VoteButton;->color:I

    .line 48
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_maxScale:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VoteButton;->maxScale:F

    .line 49
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_increaseTime:I

    const/16 v0, 0x190

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VoteButton;->increaseTime:I

    .line 50
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_decreaseTime:I

    const/16 v0, 0x12c

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/VoteButton;->decreaseTime:I

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 54
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->itp:Landroid/view/animation/DecelerateInterpolator;

    .line 55
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const p2, 0x3fcccccd    # 1.6f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->itpScale:Landroid/view/animation/DecelerateInterpolator;

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    .line 57
    iget-object p1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object p1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    .line 61
    iget-object p1, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p1, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object p1, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static calculateHoldDuration(I)I
    .locals 2

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v1, 0x6

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x44c

    .line 80
    div-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x190

    return p0

    :cond_0
    const/16 v0, 0x32

    if-gt p0, v0, :cond_1

    sub-int/2addr p0, v1

    mul-int/lit16 p0, p0, 0x640

    .line 82
    div-int/lit8 p0, p0, 0x2c

    add-int/lit16 p0, p0, 0x5dc

    return p0

    :cond_1
    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x1a90

    .line 84
    div-int/lit8 p0, p0, 0x28

    add-int/lit16 p0, p0, 0xc1c

    return p0

    :cond_2
    const/16 p0, 0x26ac

    return p0
.end method

.method private holdLonger()V
    .locals 3

    .line 185
    sget v0, Lcom/narvii/lib/R$id;->vote_hold_longer:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->vote_hold_longer_hint:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 189
    sget v0, Lcom/narvii/lib/R$id;->vote_hold_longer:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$anim;->vote_hold_longer_shake:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 96
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 101
    iget-wide v2, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    sub-long v2, v0, v2

    .line 102
    iput-wide v0, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    .line 104
    iget v0, p0, Lcom/narvii/widget/VoteButton;->progress:F

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 105
    iput v5, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 106
    iput v1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 107
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 109
    :cond_0
    iget v0, p0, Lcom/narvii/widget/VoteButton;->progress:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 110
    iput v5, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 111
    iput v1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 114
    :cond_1
    iget v0, p0, Lcom/narvii/widget/VoteButton;->anim:I

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    if-lez v0, :cond_2

    .line 115
    iget v0, p0, Lcom/narvii/widget/VoteButton;->increaseTime:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/narvii/widget/VoteButton;->decreaseTime:I

    .line 116
    :goto_0
    iget v7, p0, Lcom/narvii/widget/VoteButton;->progress:F

    iget v8, p0, Lcom/narvii/widget/VoteButton;->anim:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    long-to-float v9, v2

    mul-float v8, v8, v9

    int-to-float v0, v0

    div-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/narvii/widget/VoteButton;->progress:F

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 120
    :goto_1
    iget v7, p0, Lcom/narvii/widget/VoteButton;->progress:F

    cmpl-float v8, v7, v5

    if-lez v8, :cond_4

    iget v8, p0, Lcom/narvii/widget/VoteButton;->anim:I

    if-lez v8, :cond_4

    cmpg-float v2, v7, v4

    if-gez v2, :cond_6

    .line 122
    iget v2, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    iget-object v3, p0, Lcom/narvii/widget/VoteButton;->itpScale:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iget v7, p0, Lcom/narvii/widget/VoteButton;->maxScale:F

    sub-float/2addr v7, v4

    mul-float v3, v3, v7

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    goto :goto_2

    .line 125
    :cond_4
    iget v7, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    cmpl-float v8, v7, v5

    if-lez v8, :cond_6

    .line 126
    iget v8, p0, Lcom/narvii/widget/VoteButton;->maxScale:F

    sub-float/2addr v8, v4

    long-to-float v2, v2

    mul-float v8, v8, v2

    iget v2, p0, Lcom/narvii/widget/VoteButton;->decreaseTime:I

    int-to-float v2, v2

    div-float/2addr v8, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v8, v8, v2

    sub-float/2addr v7, v8

    .line 127
    iput v7, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 128
    iget v2, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    cmpg-float v3, v2, v5

    if-gez v3, :cond_5

    const/4 v2, 0x0

    :cond_5
    iput v2, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 130
    :cond_6
    :goto_2
    iget v2, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    cmpl-float v3, v2, v5

    if-lez v3, :cond_7

    add-float v0, v2, v4

    add-float/2addr v2, v4

    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 132
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    .line 131
    invoke-virtual {p1, v0, v2, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v0, 0x1

    .line 136
    :cond_7
    iget-object v2, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/narvii/widget/VoteButton;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 138
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 139
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 140
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v7, v2

    .line 141
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v2, v8

    int-to-float v7, v7

    int-to-float v2, v2

    int-to-float v6, v6

    .line 142
    iget-object v8, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    iget-boolean v8, p0, Lcom/narvii/widget/VoteButton;->drakTheme:Z

    if-eqz v8, :cond_8

    .line 144
    iget-object v8, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    :cond_8
    iget v8, p0, Lcom/narvii/widget/VoteButton;->progress:F

    cmpl-float v5, v8, v5

    if-lez v5, :cond_9

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v5

    int-to-float v3, v3

    iget-object v8, p0, Lcom/narvii/widget/VoteButton;->itp:Landroid/view/animation/DecelerateInterpolator;

    iget v9, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 150
    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v4, v8

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v5, v3

    .line 151
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 152
    iget-object v1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    if-eqz v0, :cond_a

    .line 158
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 172
    :cond_0
    iget p1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    if-lez p1, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/narvii/widget/VoteButton;->holdLonger()V

    :cond_1
    const/4 p1, -0x1

    .line 175
    iput p1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 176
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    .line 177
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return v1

    .line 166
    :cond_2
    iput v1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 167
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    .line 168
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return v1
.end method

.method public setDrakTheme(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/narvii/widget/VoteButton;->drakTheme:Z

    return-void
.end method

.method public setHoldDuration(I)V
    .locals 1

    const/16 v0, 0x64

    .line 91
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/VoteButton;->increaseTime:I

    return-void
.end method

.method public setVoteColor(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/narvii/widget/VoteButton;->color:I

    .line 73
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

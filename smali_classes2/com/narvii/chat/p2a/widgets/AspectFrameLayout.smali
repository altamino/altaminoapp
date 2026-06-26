.class public Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AFL"


# instance fields
.field private final MODE_DRAG:I

.field private final MODE_NONE:I

.field private final MODE_ZOOM:I

.field VERBOSE_LOG:Z

.field private currentTwoTouchDistance:F

.field private deltaTwoTouchDistance:F

.field private fingerMode:I

.field private lastTwoTouchDistance:F

.field private mHorizontalScrollDelta:F

.field private mLastX:F

.field private mLastY:F

.field private mTargetAspect:D

.field private mTouchSlop:I

.field private nowX:F

.field private onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

.field onTouchListener:Landroid/view/View$OnTouchListener;

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->VERBOSE_LOG:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 37
    iput-wide v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    const/4 p2, 0x1

    .line 125
    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->MODE_DRAG:I

    const/4 p2, 0x2

    .line 126
    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->MODE_ZOOM:I

    const/4 p2, 0x3

    .line 127
    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->MODE_NONE:I

    const/4 p2, 0x0

    .line 128
    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    .line 129
    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    .line 130
    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->deltaTwoTouchDistance:F

    .line 55
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTouchSlop:I

    .line 56
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->screenWidth:I

    return-void
.end method

.method private spaceTwoTouchEvent(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public getDeltaTwoTouchDistance()F
    .locals 4

    .line 221
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 224
    :cond_0
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr v2, v0

    div-float v1, v2, v0

    .line 226
    :cond_2
    :goto_0
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    return v1
.end method

.method public getHorizontalScrollDelta()F
    .locals 1

    .line 195
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 196
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 75
    iget-boolean v1, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->VERBOSE_LOG:Z

    const-string v2, "AFL"

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure target="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " width=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] height=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-wide v3, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    .line 84
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 85
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v1, v4

    sub-int/2addr v3, v7

    int-to-double v8, v1

    int-to-double v10, v3

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v8, v10

    .line 94
    iget-wide v14, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    div-double/2addr v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    .line 96
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    const-string/jumbo v5, "x"

    cmpg-double v6, v12, v16

    if-gez v6, :cond_1

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aspect ratio is good (target="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", view="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-wide/16 v12, 0x0

    cmpl-double v6, v14, v12

    if-lez v6, :cond_2

    .line 105
    iget-wide v10, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    double-to-int v3, v8

    goto :goto_0

    .line 108
    :cond_2
    iget-wide v8, v0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    double-to-int v1, v10

    .line 110
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " + padding "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v1, v4

    add-int/2addr v3, v7

    const/high16 v2, 0x40000000    # 2.0f

    .line 114
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 115
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v1, p1

    move/from16 v2, p2

    .line 121
    :goto_2
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    .line 137
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 138
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x3

    if-eq v0, v2, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v5, 0x5

    if-eq v0, v5, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    iput v3, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 165
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    .line 166
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    .line 167
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->spaceTwoTouchEvent(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    .line 171
    iput v4, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 172
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    goto :goto_0

    .line 175
    :cond_3
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    if-ne v0, v2, :cond_4

    .line 176
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    iget v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    sub-float/2addr v0, v1

    .line 182
    iget v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_9

    .line 184
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 185
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->spaceTwoTouchEvent(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    goto :goto_0

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

    if-eqz v0, :cond_6

    .line 153
    invoke-interface {v0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 155
    :cond_6
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 156
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 158
    iput v3, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 159
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->lastTwoTouchDistance:F

    .line 160
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->currentTwoTouchDistance:F

    .line 161
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    goto :goto_0

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

    if-eqz v0, :cond_8

    .line 143
    invoke-interface {v0, p1}, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 145
    :cond_8
    iput v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mHorizontalScrollDelta:F

    .line 146
    iget v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->nowX:F

    iput v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mLastX:F

    .line 149
    iput v2, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->fingerMode:I

    .line 190
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_a
    return v2
.end method

.method public setAspectRatio(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting aspect ratio to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " (was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-wide v0, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    .line 68
    iput-wide p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->mTargetAspect:D

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMyOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnNotScrollTouchListener(Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/narvii/chat/p2a/widgets/AspectFrameLayout;->onNotScrollTouchListener:Lcom/narvii/chat/p2a/widgets/AspectFrameLayout$OnNotScrollTouchListener;

    return-void
.end method

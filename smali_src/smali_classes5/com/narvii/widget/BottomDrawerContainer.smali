.class public Lcom/narvii/widget/BottomDrawerContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/BottomDrawerContainer$DismissListener;
    }
.end annotation


# static fields
.field private static final MODE_HORIZONTAL:I = 0x2

.field private static final MODE_VERTICAL:I = 0x1


# instance fields
.field private beginToDismiss:Z

.field private dismissListener:Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

.field private dismissThreshold:I

.field private isEdgeDrawing:Z

.field private mActiveInterCeptPointerId:I

.field private mActivePointerId:I

.field private mContentRect:Landroid/graphics/Rect;

.field private mCurPosX:F

.field private mCurPosY:F

.field private mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

.field private mLastInterceptX:F

.field private mLastInterceptY:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mTrackX:F

.field private mTrackY:F

.field private mUpX:F

.field private mUpY:F

.field private mViewHeight:F

.field private mViewWidth:F

.field private readyShowBottomEdge:Z

.field private shouldAdjust:Z

.field springSystem:Lcom/facebook/rebound/i;

.field private topFreezeThreshold:I

.field private touchEventThreshold:I

.field private translateMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/BottomDrawerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->springSystem:Lcom/facebook/rebound/i;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActiveInterCeptPointerId:I

    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_dismiss_threshold:I

    const/16 v1, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    .line 7
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_top_threshold:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->topFreezeThreshold:I

    .line 8
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_touch_event_threshold:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->touchEventThreshold:I

    .line 9
    sget v0, Lcom/narvii/lib/R$styleable;->BottomDrawerContainer_translate_mode:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    new-instance p2, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {p2, p1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/BottomDrawerContainer;)Lcom/narvii/widget/BottomDrawerContainer$DismissListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissListener:Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/BottomDrawerContainer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewHeight:F

    return p0
.end method

.method private drawEdgeEffects(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->e()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    mul-int/lit8 v2, v2, 0x2

    .line 23
    .line 24
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 25
    sub-int/2addr v2, v3

    .line 26
    int-to-float v2, v2

    .line 27
    .line 28
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 29
    int-to-float v1, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    .line 41
    const/high16 v2, 0x43340000    # 180.0f

    .line 42
    const/4 v3, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 53
    move-result v2

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 59
    move-result v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2, v4}, Landroidx/core/widget/EdgeEffectCompat;->k(II)V

    .line 63
    .line 64
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    .line 65
    .line 66
    and-int/lit8 v2, v1, 0x2

    .line 67
    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    iget v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v2, v3

    .line 73
    :goto_0
    const/4 v4, 0x1

    .line 74
    and-int/2addr v1, v4

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 84
    .line 85
    const/16 v2, 0x64

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->f(I)Z

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->b(Landroid/graphics/Canvas;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    iput-boolean v4, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v4, 0x0

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 104
    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    iget-boolean p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    .line 108
    .line 109
    if-nez p1, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 113
    :cond_3
    return-void
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 8
    move-result v1

    .line 9
    .line 10
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 14
    move-result p1

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->beginToDismiss:Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/widget/BottomDrawerContainer;->releaseEdgeEffects()V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    .line 31
    .line 32
    :cond_0
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mTrackX:F

    .line 35
    .line 36
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    .line 37
    .line 38
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mTrackY:F

    .line 39
    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_6

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->d(Landroid/view/MotionEvent;)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v1, v2

    .line 16
    .line 17
    if-le v0, v1, :cond_0

    .line 18
    goto :goto_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 26
    move-result p1

    .line 27
    .line 28
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 29
    .line 30
    sub-float v0, v1, v0

    .line 31
    .line 32
    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    .line 33
    .line 34
    sub-float v3, p1, v3

    .line 35
    .line 36
    iget v4, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 37
    add-float/2addr v4, v0

    .line 38
    .line 39
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 40
    add-float/2addr v0, v3

    .line 41
    .line 42
    iget v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    .line 43
    int-to-float v5, v5

    .line 44
    .line 45
    cmpl-float v5, v0, v5

    .line 46
    .line 47
    const/high16 v6, -0x40800000    # -1.0f

    .line 48
    .line 49
    if-lez v5, :cond_1

    .line 50
    .line 51
    iget-boolean v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->beginToDismiss:Z

    .line 52
    .line 53
    if-nez v5, :cond_1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    mul-float v5, v0, v6

    .line 57
    .line 58
    iget v7, p0, Lcom/narvii/widget/BottomDrawerContainer;->topFreezeThreshold:I

    .line 59
    .line 60
    add-int/lit8 v7, v7, -0x5

    .line 61
    int-to-float v7, v7

    .line 62
    .line 63
    cmpl-float v5, v5, v7

    .line 64
    .line 65
    if-ltz v5, :cond_3

    .line 66
    .line 67
    iget-boolean v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    .line 68
    xor-int/2addr v2, v5

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    iget-boolean v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->isEdgeDrawing:Z

    .line 75
    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroidx/core/widget/EdgeEffectCompat;->h(F)Z

    .line 82
    .line 83
    .line 84
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 85
    :cond_2
    const/4 v2, 0x0

    .line 86
    .line 87
    :cond_3
    :goto_0
    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mTrackY:F

    .line 88
    .line 89
    sub-float v3, p1, v3

    .line 90
    mul-float/2addr v3, v6

    .line 91
    .line 92
    iget v5, p0, Lcom/narvii/widget/BottomDrawerContainer;->topFreezeThreshold:I

    .line 93
    .line 94
    add-int/lit8 v5, v5, -0x5

    .line 95
    int-to-float v5, v5

    .line 96
    .line 97
    cmpl-float v3, v3, v5

    .line 98
    .line 99
    if-ltz v3, :cond_4

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_4
    if-eqz v2, :cond_5

    .line 103
    .line 104
    iput v4, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 105
    .line 106
    iput v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 110
    .line 111
    :cond_5
    :goto_1
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 112
    .line 113
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    .line 114
    :cond_6
    :goto_2
    return-void
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->d(Landroid/view/MotionEvent;)I

    .line 14
    move-result v1

    .line 15
    sub-int/2addr v1, v2

    .line 16
    .line 17
    if-le v0, v1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 22
    move-result v1

    .line 23
    .line 24
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mUpX:F

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 28
    move-result p1

    .line 29
    .line 30
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mUpY:F

    .line 31
    .line 32
    iget p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 33
    .line 34
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    .line 35
    int-to-float v0, v0

    .line 36
    .line 37
    cmpl-float p1, p1, v0

    .line 38
    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/widget/BottomDrawerContainer;->dismissView()V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 49
    :goto_0
    return-void

    .line 50
    .line 51
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method private releaseEdgeEffects()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->j()Z

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    .line 9
    return-void
.end method


# virtual methods
.method public dismissView()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 6
    .line 7
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->springSystem:Lcom/facebook/rebound/i;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/widget/BottomDrawerContainer$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0, v0}, Lcom/narvii/widget/BottomDrawerContainer$1;-><init>(Lcom/narvii/widget/BottomDrawerContainer;F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 22
    .line 23
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 27
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 8
    .line 9
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->shouldAdjust:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->e()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->mEdgeEffectBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->c()V

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->translateMode:I

    .line 34
    .line 35
    and-int/lit8 v2, v0, 0x2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosX:F

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v1

    .line 42
    .line 43
    :goto_0
    and-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mCurPosY:F

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/narvii/widget/BottomDrawerContainer;->readyShowBottomEdge:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->drawEdgeEffects(Landroid/graphics/Canvas;)V

    .line 61
    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActiveInterCeptPointerId:I

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    if-eq v1, v2, :cond_4

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->d(Landroid/view/MotionEvent;)I

    .line 28
    move-result v2

    .line 29
    const/4 v4, 0x1

    .line 30
    sub-int/2addr v2, v4

    .line 31
    .line 32
    if-le v1, v2, :cond_1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 41
    move-result p1

    .line 42
    .line 43
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptY:F

    .line 44
    sub-float/2addr p1, v1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result p1

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptX:F

    .line 51
    sub-float/2addr v2, v1

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result v1

    .line 56
    .line 57
    iget v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->touchEventThreshold:I

    .line 58
    int-to-float v2, v2

    .line 59
    add-float/2addr v1, v2

    .line 60
    .line 61
    cmpl-float p1, p1, v1

    .line 62
    .line 63
    if-lez p1, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 77
    :cond_2
    move v0, v4

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    return v3

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    .line 97
    move-result v1

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 101
    move-result v2

    .line 102
    .line 103
    iput v2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptX:F

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 107
    move-result p1

    .line 108
    .line 109
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptY:F

    .line 110
    .line 111
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActiveInterCeptPointerId:I

    .line 112
    .line 113
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mActivePointerId:I

    .line 114
    .line 115
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastInterceptX:F

    .line 116
    .line 117
    iput v1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchX:F

    .line 118
    .line 119
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mLastTouchY:F

    .line 120
    :cond_6
    :goto_1
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    int-to-float p1, p1

    .line 5
    .line 6
    iget p3, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewWidth:F

    .line 7
    .line 8
    cmpl-float p3, p1, p3

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewWidth:F

    .line 13
    :cond_0
    int-to-float p1, p2

    .line 14
    .line 15
    iget p2, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewHeight:F

    .line 16
    .line 17
    cmpl-float p2, p1, p2

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mViewHeight:F

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->mContentRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    move-result p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    move-result p3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    move-result p4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 39
    move-result v0

    .line 40
    sub-int/2addr p4, v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    move-result v1

    .line 49
    sub-int/2addr v0, v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->onActionMove(Landroid/view/MotionEvent;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->onActionUp(Landroid/view/MotionEvent;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->onActionDown(Landroid/view/MotionEvent;)V

    .line 25
    :goto_0
    return v1
.end method

.method public setDismissListener(Lcom/narvii/widget/BottomDrawerContainer$DismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissListener:Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    return-void
.end method

.method public setDismissThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/BottomDrawerContainer;->dismissThreshold:I

    return-void
.end method

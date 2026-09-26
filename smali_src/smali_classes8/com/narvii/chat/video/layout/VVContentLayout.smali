.class public Lcom/narvii/chat/video/layout/VVContentLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;
    }
.end annotation


# instance fields
.field private SWIPE_MIN_PADDING:I

.field private collapseThreshold:F

.field private lastInterceptPointX:F

.field private lastInterceptPointY:F

.field listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

.field private supportCollapse:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VVContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointX:F

    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->collapseThreshold:F

    const/16 p1, 0xa

    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->SWIPE_MIN_PADDING:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->collapseThreshold:F

    return-void
.end method

.method private releaseView(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 4
    move-result p1

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    .line 7
    sub-float/2addr p1, v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 11
    move-result v0

    .line 12
    add-float/2addr p1, v0

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    cmpl-float p1, p1, v0

    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result p1

    .line 27
    .line 28
    iget v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->collapseThreshold:F

    .line 29
    .line 30
    cmpl-float p1, p1, v1

    .line 31
    .line 32
    const-wide/16 v1, 0x64

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x2

    .line 36
    .line 37
    const-string v6, "translationY"

    .line 38
    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 43
    move-result p1

    .line 44
    .line 45
    new-array v0, v5, [F

    .line 46
    .line 47
    aput p1, v0, v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    move-result p1

    .line 52
    .line 53
    mul-int/lit8 p1, p1, -0x1

    .line 54
    int-to-float p1, p1

    .line 55
    .line 56
    aput p1, v0, v3

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/chat/video/layout/VVContentLayout$1;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/VVContentLayout$1;-><init>(Lcom/narvii/chat/video/layout/VVContentLayout;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/chat/video/layout/VVContentLayout$2;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/VVContentLayout$2;-><init>(Lcom/narvii/chat/video/layout/VVContentLayout;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 87
    move-result p1

    .line 88
    .line 89
    new-array v5, v5, [F

    .line 90
    .line 91
    aput p1, v5, v4

    .line 92
    .line 93
    aput v0, v5, v3

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    .line 114
    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onExpanded()V

    .line 119
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    return v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    move-result p1

    .line 28
    .line 29
    iget v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    .line 30
    sub-float/2addr p1, v2

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 34
    move-result p1

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointX:F

    .line 41
    sub-float/2addr v1, v2

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 45
    move-result v1

    .line 46
    .line 47
    cmpl-float v1, p1, v1

    .line 48
    .line 49
    if-lez v1, :cond_3

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->SWIPE_MIN_PADDING:I

    .line 52
    int-to-float v1, v1

    .line 53
    .line 54
    cmpl-float p1, p1, v1

    .line 55
    .line 56
    if-lez p1, :cond_3

    .line 57
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 62
    move-result v1

    .line 63
    .line 64
    iput v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointX:F

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 68
    move-result p1

    .line 69
    .line 70
    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    .line 71
    :cond_3
    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    const/4 v2, 0x2

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result p1

    .line 25
    .line 26
    iget v0, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    .line 27
    sub-float/2addr p1, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 31
    move-result v0

    .line 32
    add-float/2addr p1, v0

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    cmpg-float v2, p1, v0

    .line 36
    .line 37
    if-gtz v2, :cond_4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v3

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 59
    move-result v0

    .line 60
    int-to-float v0, v0

    .line 61
    div-float/2addr p1, v0

    .line 62
    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    mul-float/2addr v0, p1

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-interface {v2, v0}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onCollapsePercentChange(F)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VVContentLayout;->releaseView(Landroid/view/MotionEvent;)V

    .line 72
    :cond_4
    :goto_1
    return v1
.end method

.method public setCollapseListener(Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    return-void
.end method

.method public setSupportCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    return-void
.end method

.class public Lcom/narvii/chat/video/layout/VVContentLayout;
.super Landroid/widget/FrameLayout;
.source "VVContentLayout.java"


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

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VVContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointX:F

    .line 21
    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    .line 22
    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->collapseThreshold:F

    const/16 p1, 0xa

    .line 24
    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->SWIPE_MIN_PADDING:I

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->collapseThreshold:F

    return-void
.end method

.method private releaseView(Landroid/view/MotionEvent;)V
    .locals 8

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 107
    iget v0, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->collapseThreshold:F

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string/jumbo v7, "translationY"

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    new-array v0, v6, [F

    aput p1, v0, v5

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    aput p1, v0, v4

    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 114
    new-instance v0, Lcom/narvii/chat/video/layout/VVContentLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/VVContentLayout$1;-><init>(Lcom/narvii/chat/video/layout/VVContentLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    new-instance v0, Lcom/narvii/chat/video/layout/VVContentLayout$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/VVContentLayout$2;-><init>(Lcom/narvii/chat/video/layout/VVContentLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    new-array v1, v6, [F

    aput p1, v1, v5

    aput v0, v1, v4

    .line 145
    invoke-static {p0, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 146
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 149
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    if-eqz p1, :cond_2

    .line 150
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onExpanded()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 82
    iget-boolean v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    if-nez v1, :cond_0

    return v0

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 93
    iget v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 94
    iget-boolean v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->SWIPE_MIN_PADDING:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointX:F

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    :cond_3
    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 59
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->lastInterceptPointY:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_4

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 67
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v0, v0, p1

    :goto_0
    invoke-interface {v2, v0}, Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;->onCollapsePercentChange(F)V

    goto :goto_1

    .line 73
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VVContentLayout;->releaseView(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public setCollapseListener(Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->listener:Lcom/narvii/chat/video/layout/VVContentLayout$VVContentCollapseListener;

    return-void
.end method

.method public setSupportCollapse(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/VVContentLayout;->supportCollapse:Z

    return-void
.end method

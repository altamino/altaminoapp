.class public Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingWindowBaseLayout.java"


# static fields
.field private static final THRESHOLD:I = 0xa


# instance fields
.field public animation:Landroid/animation/ValueAnimator;

.field private btnClose:Landroid/view/View;

.field private endedView:Landroid/view/View;

.field listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private margin:I

.field private marginLeft:I

.field private marginRight:I

.field private statusBarHeight:I

.field private warningView:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;

.field private xDownInScreen:F

.field private xInScreen:F

.field private xInView:F

.field private yDownInScreen:F

.field private yInScreen:F

.field private yInView:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "window"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    .line 56
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->getStatusBarHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->statusBarHeight:I

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x41000000    # 8.0f

    .line 57
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    .line 59
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/video/R$dimen;->floating_close_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    .line 61
    invoke-direct {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    .line 63
    iget p2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    iput p2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    .line 64
    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private isRtl()Z
    .locals 2

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isViewContains(Landroid/view/View;FF)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 160
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 161
    aget v0, v0, v3

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v5, v2

    cmpg-float v5, p2, v5

    if-ltz v5, :cond_1

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_1

    int-to-float p2, v0

    cmpg-float p2, p3, p2

    if-ltz p2, :cond_1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method private updateViewPosition()V
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInView:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 173
    iget v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInView:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 174
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    if-ge v1, v2, :cond_0

    .line 175
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->margin:I

    if-ge v1, v2, :cond_1

    .line 178
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    sub-int v4, v0, v3

    if-le v2, v4, :cond_2

    .line 185
    iget-object v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->margin:I

    sub-int v3, v1, v2

    if-le v0, v3, :cond_3

    .line 189
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getStatusBarHeight()I
    .locals 4

    .line 222
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 226
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected hideEndedView()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->endedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected hideWarningView()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->warningView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 82
    sget v0, Lcom/narvii/video/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->btnClose:Landroid/view/View;

    .line 83
    sget v0, Lcom/narvii/video/R$id;->ended:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->endedView:Landroid/view/View;

    .line 84
    sget v0, Lcom/narvii/video/R$id;->warning:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->warningView:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    .line 105
    invoke-direct {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->updateViewPosition()V

    .line 106
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 107
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_0

    .line 111
    :cond_1
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xDownInScreen:F

    iget v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yDownInScreen:F

    iget v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    sub-float/2addr p1, v3

    .line 112
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    if-eqz p1, :cond_7

    .line 114
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->btnClose:Landroid/view/View;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    invoke-direct {p0, p1, v0, v2}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->isViewContains(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    invoke-interface {p1}, Lcom/narvii/video/ui/floating/FloatingClickEvent;->onCloseClicked()V

    goto/16 :goto_0

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    invoke-interface {p1}, Lcom/narvii/video/ui/floating/FloatingClickEvent;->onTotalClicked()V

    goto :goto_0

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_4

    return v1

    .line 124
    :cond_4
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    .line 125
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 126
    iget-object v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x2

    if-le v3, v4, :cond_5

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    sub-int p1, v0, p1

    :cond_5
    new-array v0, v2, [I

    const/4 v2, 0x0

    .line 129
    iget-object v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    .line 130
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;-><init>(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 95
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInView:F

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInView:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xDownInScreen:F

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yDownInScreen:F

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    :cond_7
    :goto_0
    return v1
.end method

.method public setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    return-void
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method protected showEndedView()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->endedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->hideWarningView()V

    return-void
.end method

.method protected showWarningView()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->warningView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

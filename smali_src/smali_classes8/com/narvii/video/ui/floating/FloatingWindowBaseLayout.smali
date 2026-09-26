.class public Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo p2, "window"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    .line 4
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->getStatusBarHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->statusBarHeight:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x41000000    # 8.0f

    .line 6
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/video/R$dimen;->floating_close_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    .line 8
    invoke-direct {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    iget p2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    iput p2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    .line 3
    return-object p0
.end method

.method private isRtl()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->a(Ljava/util/Locale;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method private isViewContains(Landroid/view/View;FF)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    aget v2, v0, v1

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    aget v0, v0, v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p1

    .line 21
    int-to-float v5, v2

    .line 22
    .line 23
    cmpg-float v5, p2, v5

    .line 24
    .line 25
    if-ltz v5, :cond_1

    .line 26
    add-int/2addr v2, v4

    .line 27
    int-to-float v2, v2

    .line 28
    .line 29
    cmpl-float p2, p2, v2

    .line 30
    .line 31
    if-gtz p2, :cond_1

    .line 32
    int-to-float p2, v0

    .line 33
    .line 34
    cmpg-float p2, p3, p2

    .line 35
    .line 36
    if-ltz p2, :cond_1

    .line 37
    add-int/2addr v0, p1

    .line 38
    int-to-float p1, v0

    .line 39
    .line 40
    cmpl-float p1, p3, p1

    .line 41
    .line 42
    if-lez p1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return v3

    .line 45
    :cond_1
    :goto_0
    return v1
.end method

.method private updateViewPosition()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInView:F

    .line 7
    sub-float/2addr v1, v2

    .line 8
    float-to-int v1, v1

    .line 9
    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    .line 13
    .line 14
    iget v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInView:F

    .line 15
    sub-float/2addr v2, v3

    .line 16
    float-to-int v2, v2

    .line 17
    .line 18
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 19
    .line 20
    iget v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    .line 21
    .line 22
    if-ge v1, v3, :cond_0

    .line 23
    .line 24
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 25
    .line 26
    :cond_0
    iget v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->margin:I

    .line 27
    .line 28
    if-ge v2, v1, :cond_1

    .line 29
    .line 30
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 40
    move-result v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 50
    move-result v1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    move-result v3

    .line 59
    add-int/2addr v2, v3

    .line 60
    .line 61
    iget v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    .line 62
    .line 63
    sub-int v4, v0, v3

    .line 64
    .line 65
    if-le v2, v4, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 68
    sub-int/2addr v0, v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 72
    move-result v3

    .line 73
    sub-int/2addr v0, v3

    .line 74
    .line 75
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 78
    .line 79
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v2

    .line 84
    add-int/2addr v0, v2

    .line 85
    .line 86
    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->margin:I

    .line 87
    .line 88
    sub-int v3, v1, v2

    .line 89
    .line 90
    if-le v0, v3, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 93
    sub-int/2addr v1, v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 97
    move-result v2

    .line 98
    sub-int/2addr v1, v2

    .line 99
    .line 100
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 101
    .line 102
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected getStatusBarHeight()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "dimen"

    .line 11
    .line 12
    const-string v2, "android"

    .line 13
    .line 14
    const-string v3, "status_bar_height"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v0

    .line 33
    return v0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    .line 48
    const/high16 v2, 0x41c00000    # 24.0f

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 52
    move-result v0

    .line 53
    float-to-int v0, v0

    .line 54
    return v0
.end method

.method protected hideEndedView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->endedView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    return-void
.end method

.method protected hideWarningView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->warningView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/video/R$id;->close:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->btnClose:Landroid/view/View;

    .line 12
    .line 13
    sget v0, Lcom/narvii/video/R$id;->ended:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->endedView:Landroid/view/View;

    .line 20
    .line 21
    sget v0, Lcom/narvii/video/R$id;->warning:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->warningView:Landroid/view/View;

    .line 28
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 24
    move-result p1

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->updateViewPosition()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    if-eqz p1, :cond_7

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_7

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xDownInScreen:F

    .line 49
    .line 50
    iget v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    .line 51
    sub-float/2addr p1, v0

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p1

    .line 56
    .line 57
    const/high16 v0, 0x41200000    # 10.0f

    .line 58
    .line 59
    cmpg-float p1, p1, v0

    .line 60
    .line 61
    if-gez p1, :cond_3

    .line 62
    .line 63
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yDownInScreen:F

    .line 64
    .line 65
    iget v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    .line 66
    sub-float/2addr p1, v3

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 70
    move-result p1

    .line 71
    .line 72
    cmpg-float p1, p1, v0

    .line 73
    .line 74
    if-gez p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 77
    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->btnClose:Landroid/view/View;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    .line 85
    .line 86
    iget v2, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1, v0, v2}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->isViewContains(Landroid/view/View;FF)Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Lcom/narvii/video/ui/floating/FloatingClickEvent;->onCloseClicked()V

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Lcom/narvii/video/ui/floating/FloatingClickEvent;->onTotalClicked()V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    if-nez p1, :cond_4

    .line 109
    return v1

    .line 110
    .line 111
    :cond_4
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginLeft:I

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->windowManager:Landroid/view/WindowManager;

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 121
    move-result v0

    .line 122
    .line 123
    iget-object v3, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 124
    .line 125
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 129
    move-result v4

    .line 130
    div-int/2addr v4, v2

    .line 131
    add-int/2addr v3, v4

    .line 132
    .line 133
    div-int/lit8 v2, v0, 0x2

    .line 134
    .line 135
    if-le v3, v2, :cond_5

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 139
    move-result p1

    .line 140
    sub-int/2addr v0, p1

    .line 141
    .line 142
    iget p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->marginRight:I

    .line 143
    .line 144
    sub-int p1, v0, p1

    .line 145
    .line 146
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 147
    .line 148
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 149
    .line 150
    .line 151
    filled-new-array {v0, p1}, [I

    .line 152
    move-result-object p1

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    .line 159
    .line 160
    new-instance v0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;-><init>(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    .line 169
    .line 170
    const-wide/16 v2, 0x64

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    .line 175
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->animation:Landroid/animation/ValueAnimator;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 179
    goto :goto_0

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 183
    move-result v0

    .line 184
    .line 185
    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInView:F

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 189
    move-result v0

    .line 190
    .line 191
    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInView:F

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 195
    move-result v0

    .line 196
    .line 197
    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xDownInScreen:F

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 201
    move-result v0

    .line 202
    .line 203
    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yDownInScreen:F

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 207
    move-result v0

    .line 208
    .line 209
    iput v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->xInScreen:F

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 213
    move-result p1

    .line 214
    .line 215
    iput p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->yInScreen:F

    .line 216
    :cond_7
    :goto_0
    return v1
.end method

.method public setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->listener:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    return-void
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method protected showEndedView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->endedView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->hideWarningView()V

    .line 12
    return-void
.end method

.method protected showWarningView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->warningView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_0
    return-void
.end method

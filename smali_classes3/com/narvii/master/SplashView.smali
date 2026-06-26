.class public Lcom/narvii/master/SplashView;
.super Landroid/view/ViewGroup;
.source "SplashView.java"


# instance fields
.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field cornerRadius0:I

.field frame:Landroid/view/View;

.field imageView:Lcom/narvii/widget/NVImageView;

.field inter1:Landroid/view/animation/Interpolator;

.field inter2:Landroid/view/animation/Interpolator;

.field final iv:Ljava/lang/Runnable;

.field orig:Landroid/graphics/Rect;

.field rnd:Ljava/util/Random;

.field startMs:J

.field final target:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 140
    new-instance p1, Lcom/narvii/master/SplashView$1;

    invoke-direct {p1, p0}, Lcom/narvii/master/SplashView$1;-><init>(Lcom/narvii/master/SplashView;)V

    iput-object p1, p0, Lcom/narvii/master/SplashView;->iv:Ljava/lang/Runnable;

    .line 40
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/narvii/master/SplashView;->inter1:Landroid/view/animation/Interpolator;

    .line 41
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/SplashView;->inter2:Landroid/view/animation/Interpolator;

    .line 42
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lcom/narvii/master/SplashView;->rnd:Ljava/util/Random;

    return-void
.end method

.method private mv(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 71
    iget-object v1, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 74
    :cond_0
    iput-object v0, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0904ba

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    const v0, 0x7f090571

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 50
    iget-object v0, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    iget v0, v0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    iput v0, p0, Lcom/narvii/master/SplashView;->cornerRadius0:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 89
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 90
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 91
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 92
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 94
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    .line 95
    iget-wide p3, p0, Lcom/narvii/master/SplashView;->startMs:J

    sub-long/2addr p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const-wide/16 p4, 0x1c2

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    cmp-long v2, p1, p4

    if-gez v2, :cond_0

    long-to-float p4, p1

    mul-float p4, p4, p3

    const/high16 p3, 0x43e10000    # 450.0f

    div-float/2addr p4, p3

    .line 97
    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 98
    iget-object p4, p0, Lcom/narvii/master/SplashView;->inter1:Landroid/view/animation/Interpolator;

    invoke-interface {p4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 100
    iget-object p4, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v1

    div-float/2addr p4, v0

    float-to-int p4, p4

    .line 101
    iget-object p5, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, v1

    div-float/2addr p5, v0

    float-to-int p5, p5

    .line 103
    iget-object v0, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p4

    invoke-direct {p0, v0, v1, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p4

    invoke-direct {p0, v1, v2, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result p4

    .line 105
    iget-object v1, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p5

    invoke-direct {p0, v1, v2, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p5

    invoke-direct {p0, v2, v3, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result p3

    .line 107
    iget-object p5, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    invoke-virtual {p5, v0, v1, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 109
    iget-object p3, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    iget p4, p0, Lcom/narvii/master/SplashView;->cornerRadius0:I

    int-to-long p4, p4

    const-wide/16 v0, 0x1

    sub-long/2addr v0, p1

    mul-long p4, p4, v0

    long-to-int p5, p4

    iput p5, p3, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 111
    iget-object p3, p0, Lcom/narvii/master/SplashView;->iv:Ljava/lang/Runnable;

    invoke-static {p3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x640

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    sub-long p4, p1, p4

    long-to-float p4, p4

    mul-float p4, p4, p3

    const/high16 p3, 0x43f40000    # 488.0f

    div-float/2addr p4, p3

    .line 113
    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 114
    iget-object p4, p0, Lcom/narvii/master/SplashView;->inter2:Landroid/view/animation/Interpolator;

    invoke-interface {p4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 116
    iget-object p4, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    iget-object p5, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p4, p4

    mul-float v2, p4, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float p5, p5

    mul-float v1, v1, p5

    div-float/2addr v1, v0

    float-to-int v1, v1

    const v3, 0x3c23d700    # 0.00999999f

    mul-float p4, p4, v3

    div-float/2addr p4, v0

    float-to-int p4, p4

    mul-float p5, p5, v3

    div-float/2addr p5, v0

    float-to-int p5, p5

    .line 122
    iget-object v0, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v2

    sub-int/2addr v0, p4

    invoke-direct {p0, v3, v0, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result v0

    .line 123
    iget-object v3, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v3, p4

    invoke-direct {p0, v2, v3, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result p4

    .line 124
    iget-object v2, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v2, v1

    sub-int/2addr v2, p5

    invoke-direct {p0, v3, v2, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result v2

    .line 125
    iget-object v3, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v3, p5

    invoke-direct {p0, v1, v3, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    move-result p3

    .line 126
    iget-object p5, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    invoke-virtual {p5, v0, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 128
    iget-object p3, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    const/4 p4, 0x0

    iput p4, p3, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 130
    iget-object p3, p0, Lcom/narvii/master/SplashView;->iv:Ljava/lang/Runnable;

    invoke-static {p3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const-wide/16 p3, 0x3aa

    cmp-long p5, p1, p3

    if-ltz p5, :cond_3

    .line 133
    iget-object p1, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 134
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public splash(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 63
    iget-object p1, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/master/SplashView;->startMs:J

    .line 65
    iput-object p3, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.class public Lcom/narvii/account/AccountSignUpIndicatorView;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;,
        Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;
    }
.end annotation


# static fields
.field public static final STATUS_FAIL:I = 0x5

.field public static final STATUS_LOADING:I = 0x2

.field public static final STATUS_READY:I = 0x1

.field public static final STATUS_SUCCESS:I = 0x3

.field public static final STATUS_UN_READY:I = 0x0

.field public static final SUCCESS_DURATION:I = 0x1f4


# instance fields
.field private clickListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

.field private imgStatus:Landroid/widget/ImageView;

.field private imgStatusBg:Lcom/narvii/widget/ThumbImageView;

.field private isSuccessAnimationRunning:Z

.field private loadingDrawable:Lcom/narvii/widget/SpinDrawable;

.field private readyDrawable:Landroid/graphics/drawable/Drawable;

.field private refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

.field private status:I

.field private successAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private successDrawable:Landroid/graphics/drawable/Drawable;

.field private successFinishedListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

.field private successView:Lcom/narvii/widget/CheckMarkView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/AccountSignUpIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 3
    new-instance p2, Lcom/narvii/account/AccountSignUpIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/narvii/account/AccountSignUpIndicatorView$1;-><init>(Lcom/narvii/account/AccountSignUpIndicatorView;)V

    iput-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const p2, 0x7f0d0028

    .line 4
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->initDrawables(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->clickListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successFinishedListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/account/AccountSignUpIndicatorView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    return-void
.end method

.method private initDrawables(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f080626

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->readyDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/FontAwesomeDrawable;

    .line 19
    .line 20
    .line 21
    const v1, 0x7f120ac6

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

    .line 27
    .line 28
    .line 29
    const v1, -0xfd2b87

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0801f6

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchSetPressed(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    .line 22
    const/high16 v3, 0x40000000    # 2.0f

    .line 23
    div-float/2addr v2, v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v4

    .line 28
    int-to-float v4, v4

    .line 29
    div-float/2addr v4, v3

    .line 30
    .line 31
    .line 32
    const v3, 0x3f59999a    # 0.85f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v1

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 41
    move-result p2

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 47
    :cond_1
    return p2
.end method

.method public getCurStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0d90

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0d96

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatusBg:Lcom/narvii/widget/ThumbImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0e09

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/CheckMarkView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->updateStatus(I)V

    .line 41
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 4
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    const/4 p1, 0x1

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x3

    .line 8
    .line 9
    if-nez p2, :cond_4

    .line 10
    .line 11
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 19
    move-result p2

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 30
    .line 31
    if-ne p2, v2, :cond_1

    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/narvii/widget/CheckMarkView;->reset(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    .line 44
    iput-boolean p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 45
    .line 46
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    .line 47
    .line 48
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 49
    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    if-eq p2, v2, :cond_2

    .line 53
    move p2, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move p2, v1

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    .line 61
    .line 62
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 63
    .line 64
    if-ne p2, v2, :cond_3

    .line 65
    move v1, v0

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_4
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 72
    .line 73
    if-ne p2, v0, :cond_5

    .line 74
    .line 75
    iget-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 79
    move-result p2

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_5
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 90
    .line 91
    if-ne p2, v2, :cond_6

    .line 92
    .line 93
    iget-boolean p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 94
    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    iput-boolean p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/widget/CheckMarkView;->cancelAnimation()V

    .line 103
    .line 104
    iput-boolean v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 105
    :cond_6
    :goto_2
    return-void
.end method

.method public setIndicatorClickListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->clickListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->readyDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/widget/CheckMarkView;->setColor(I)V

    .line 23
    return-void
.end method

.method public setSuccessFinishedListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successFinishedListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    return-void
.end method

.method public updateStatus(I)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 8
    const/4 v0, 0x2

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    const/4 v3, 0x3

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    if-eq p1, v3, :cond_2

    .line 32
    move v5, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v5, v4

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    .line 40
    .line 41
    if-ne p1, v3, :cond_3

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v2, v4

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    const/4 v1, 0x1

    .line 48
    .line 49
    if-eqz p1, :cond_7

    .line 50
    .line 51
    if-eq p1, v1, :cond_7

    .line 52
    .line 53
    if-eq p1, v0, :cond_6

    .line 54
    .line 55
    if-eq p1, v3, :cond_5

    .line 56
    const/4 v0, 0x5

    .line 57
    .line 58
    if-eq p1, v0, :cond_4

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_5
    iput-boolean v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/narvii/widget/CheckMarkView;->showChecked(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_6
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_7
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->readyDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    :goto_2
    if-nez p1, :cond_8

    .line 100
    .line 101
    const/high16 v0, 0x3f000000    # 0.5f

    .line 102
    goto :goto_3

    .line 103
    .line 104
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 108
    .line 109
    new-instance v0, Lcom/narvii/account/AccountSignUpIndicatorView$2;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, p0, p1}, Lcom/narvii/account/AccountSignUpIndicatorView$2;-><init>(Lcom/narvii/account/AccountSignUpIndicatorView;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    if-eqz p1, :cond_a

    .line 118
    .line 119
    if-ne p1, v1, :cond_9

    .line 120
    goto :goto_4

    .line 121
    :cond_9
    move v1, v4

    .line 122
    .line 123
    .line 124
    :cond_a
    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatusBg:Lcom/narvii/widget/ThumbImageView;

    .line 127
    .line 128
    if-nez p1, :cond_b

    .line 129
    goto :goto_5

    .line 130
    .line 131
    .line 132
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    const/high16 v1, 0x40000000    # 2.0f

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 139
    move-result p1

    .line 140
    float-to-int v4, p1

    .line 141
    .line 142
    .line 143
    :goto_5
    invoke-virtual {v0, v4}, Lcom/narvii/widget/ThumbImageView;->setShadowSize(I)V

    .line 144
    .line 145
    .line 146
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 147
    return-void
.end method

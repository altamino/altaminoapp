.class public Lcom/narvii/account/AccountSignUpIndicatorView;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "AccountSignUpIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;,
        Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;
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

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/AccountSignUpIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    .line 52
    new-instance p2, Lcom/narvii/account/AccountSignUpIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/narvii/account/AccountSignUpIndicatorView$1;-><init>(Lcom/narvii/account/AccountSignUpIndicatorView;)V

    iput-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const p2, 0x7f0b0029

    .line 81
    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->initDrawables(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/account/AccountSignUpIndicatorView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successFinishedListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->clickListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    return-object p0
.end method

.method private initDrawables(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0804f8

    .line 122
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->readyDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    .line 124
    new-instance v0, Lcom/narvii/util/FontAwesomeDrawable;

    const v1, 0x7f0f0a15

    invoke-direct {v0, p1, v1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

    .line 125
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

    const v1, -0xfd2b87

    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    const v0, 0x7f080166

    .line 126
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchSetPressed(Z)V

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 206
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isPressed()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 211
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eq v0, v1, :cond_1

    .line 214
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return p2
.end method

.method public getCurStatus()I
    .locals 1

    .line 220
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

    .line 138
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090a97

    .line 139
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    const v0, 0x7f090a9d

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatusBg:Lcom/narvii/widget/ThumbImageView;

    const v0, 0x7f090b26

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CheckMarkView;

    iput-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->updateStatus(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    .line 100
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 p1, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez p2, :cond_4

    .line 102
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {p2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {p1}, Lcom/narvii/widget/SpinDrawable;->start()V

    goto :goto_0

    .line 104
    :cond_0
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    if-ne p2, v2, :cond_1

    iget-boolean p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    if-nez p2, :cond_1

    .line 105
    iget-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/CheckMarkView;->reset(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 106
    iput-boolean p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 108
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    const/16 v0, 0x8

    if-eq p2, v2, :cond_2

    const/16 p2, 0x8

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    if-ne p2, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 111
    :cond_4
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {p2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 112
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {p1}, Lcom/narvii/widget/SpinDrawable;->stop()V

    goto :goto_3

    .line 113
    :cond_5
    iget p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    if-ne p2, v2, :cond_6

    iget-boolean p2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    if-eqz p2, :cond_6

    .line 114
    iput-boolean p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 115
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    invoke-virtual {p1}, Lcom/narvii/widget/CheckMarkView;->cancelAnimation()V

    .line 116
    iput-boolean v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    :cond_6
    :goto_3
    return-void
.end method

.method public setIndicatorClickListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->clickListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorClickListener;

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->readyDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 132
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/CheckMarkView;->setColor(I)V

    return-void
.end method

.method public setSuccessFinishedListener(Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successFinishedListener:Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    return-void
.end method

.method public updateStatus(I)V
    .locals 6

    .line 152
    iget v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    if-ne v0, p1, :cond_0

    return-void

    .line 155
    :cond_0
    iput p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->status:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {v1}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {v1}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    const/16 v5, 0x8

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    goto :goto_2

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->refreshDrawable:Lcom/narvii/util/FontAwesomeDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 173
    :cond_5
    iput-boolean v1, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->isSuccessAnimationRunning:Z

    .line 174
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successView:Lcom/narvii/widget/CheckMarkView;

    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->successAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/CheckMarkView;->showChecked(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 168
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->loadingDrawable:Lcom/narvii/widget/SpinDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->readyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-nez p1, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 181
    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 182
    new-instance v0, Lcom/narvii/account/AccountSignUpIndicatorView$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/account/AccountSignUpIndicatorView$2;-><init>(Lcom/narvii/account/AccountSignUpIndicatorView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_a

    if-ne p1, v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 190
    :cond_a
    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 191
    iget-object v0, p0, Lcom/narvii/account/AccountSignUpIndicatorView;->imgStatusBg:Lcom/narvii/widget/ThumbImageView;

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int v4, p1

    :goto_5
    invoke-virtual {v0, v4}, Lcom/narvii/widget/ThumbImageView;->setShadowSize(I)V

    .line 192
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

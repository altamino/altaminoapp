.class public Lcom/narvii/chat/video/view/UserSpeakingView;
.super Landroid/widget/FrameLayout;
.source "UserSpeakingView.java"


# static fields
.field private static final LEVEL_LIMIT:I = 0x4


# instance fields
.field circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

.field private curLevel:I

.field holderView:Lcom/narvii/chat/video/view/CircleView;

.field public rippleScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/UserSpeakingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    const v0, 0x7f0b06cb

    .line 34
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    if-eqz p2, :cond_0

    .line 37
    sget-object v1, Lcom/narvii/amino/R$styleable;->UserSpeakingView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->rippleScale:F

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideRipple(Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090a71

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/CircleRippleView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    .line 47
    iget v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->rippleScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/video/view/CircleRippleView;->setRippleScale(F)V

    :cond_0
    const v0, 0x7f090a72

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/CircleView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->holderView:Lcom/narvii/chat/video/view/CircleView;

    return-void
.end method

.method public setPendingSpeakingMode(Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setVolumeLevel(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 58
    iput p1, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    .line 59
    iget-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/CircleRippleView;->setLevel(I)V

    const/16 p1, 0x8

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x4

    if-le p1, v0, :cond_2

    .line 65
    iput v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    .line 67
    :cond_2
    iput p1, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    .line 68
    iget-object p1, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    iget v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/view/CircleRippleView;->setLevel(I)V

    return-void
.end method

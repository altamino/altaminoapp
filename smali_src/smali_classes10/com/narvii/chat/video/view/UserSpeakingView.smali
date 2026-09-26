.class public Lcom/narvii/chat/video/view/UserSpeakingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/UserSpeakingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    const v0, 0x7f0d0780

    .line 3
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eqz p2, :cond_0

    .line 5
    sget-object v1, Lcom/narvii/amino/R$styleable;->UserSpeakingView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->rippleScale:F

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideRipple(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x8

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0d5e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/video/view/CircleRippleView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->rippleScale:F

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    cmpl-float v2, v1, v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/CircleRippleView;->setRippleScale(F)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const v0, 0x7f0a0d5f

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/chat/video/view/CircleView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->holderView:Lcom/narvii/chat/video/view/CircleView;

    .line 36
    return-void
.end method

.method public setPendingSpeakingMode(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x8

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    return-void
.end method

.method public setVolumeLevel(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/CircleRippleView;->setLevel(I)V

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    const/4 v0, 0x4

    .line 26
    .line 27
    if-le p1, v0, :cond_2

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    .line 30
    .line 31
    :cond_2
    iput p1, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->curLevel:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/video/view/UserSpeakingView;->circleRippleView:Lcom/narvii/chat/video/view/CircleRippleView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/CircleRippleView;->setLevel(I)V

    .line 37
    return-void
.end method

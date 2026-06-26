.class public Lcom/narvii/chat/video/view/AvChatJoinButton;
.super Landroid/widget/FrameLayout;
.source "AvChatJoinButton.java"


# instance fields
.field disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

.field private isEnabled:Z

.field joinIndicator:Landroid/widget/ImageView;

.field joinLoading:Landroid/view/View;

.field rippleHolder:Lcom/narvii/chat/video/view/RippleChildView;

.field rippleView:Lcom/narvii/chat/video/view/RippleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/AvChatJoinButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    const p2, 0x7f0b0056

    .line 34
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public changeJoinButtonEnableStatus(Z)V
    .locals 1

    .line 58
    iput-boolean p1, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    .line 59
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleView:Lcom/narvii/chat/video/view/RippleView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/RippleView;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleHolder:Lcom/narvii/chat/video/view/RippleChildView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/RippleChildView;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isJoinButtonStatusEnabled()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090985

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/RippleView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleView:Lcom/narvii/chat/video/view/RippleView;

    const v0, 0x7f090986

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/RippleChildView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleHolder:Lcom/narvii/chat/video/view/RippleChildView;

    const v0, 0x7f090610

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinIndicator:Landroid/widget/ImageView;

    const v0, 0x7f090611

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinLoading:Landroid/view/View;

    const v0, 0x7f090354

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/RippleChildView;

    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 45
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 46
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 47
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 48
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/RippleChildView;->setEnabled(Z)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public updateIndicator(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0804ab

    goto :goto_0

    :cond_0
    const p1, 0x7f0804ac

    goto :goto_0

    :cond_1
    const p1, 0x7f0804aa

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updateJoinStatus(Z)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinLoading:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 p1, p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/view/AvChatJoinButton;->setClickable(Z)V

    return-void
.end method

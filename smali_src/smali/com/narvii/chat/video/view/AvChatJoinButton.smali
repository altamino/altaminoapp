.class public Lcom/narvii/chat/video/view/AvChatJoinButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/AvChatJoinButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    const p2, 0x7f0d006c

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public changeJoinButtonEnableStatus(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleView:Lcom/narvii/chat/video/view/RippleView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/RippleView;->setEnabled(Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/RippleChildView;->setEnabled(Z)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/16 p1, 0x8

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    return-void
.end method

.method public isJoinButtonStatusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0c48

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/video/view/RippleView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleView:Lcom/narvii/chat/video/view/RippleView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0c49

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/chat/video/view/RippleChildView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->rippleHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a078e

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinIndicator:Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a078f

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinLoading:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a043d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/chat/video/view/RippleChildView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 57
    .line 58
    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 64
    .line 65
    .line 66
    const v1, 0x3f8ccccd    # 1.1f

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->disableHolder:Lcom/narvii/chat/video/view/RippleChildView;

    .line 77
    const/4 v1, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/RippleChildView;->setEnabled(Z)V

    .line 81
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4
    return-void
.end method

.method public updateIndicator(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinIndicator:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->isEnabled:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0805d9

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const p1, 0x7f0805da

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_1
    const p1, 0x7f0805d8

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    return-void
.end method

.method public updateJoinStatus(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinIndicator:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/video/view/AvChatJoinButton;->joinLoading:Landroid/view/View;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v1, v2

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    xor-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/view/AvChatJoinButton;->setClickable(Z)V

    .line 28
    return-void
.end method

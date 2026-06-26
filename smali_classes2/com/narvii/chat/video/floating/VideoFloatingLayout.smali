.class public Lcom/narvii/chat/video/floating/VideoFloatingLayout;
.super Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.source "VideoFloatingLayout.java"


# instance fields
.field videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field videoMainLayout:Lcom/narvii/chat/video/layout/VideoMainLayout;

.field videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public notifyForceQuit(I)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->showEndedView()V

    return-void
.end method

.method public notifyMutedListChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->notifyLocalMuteUserListChanged(Ljava/util/Set;)V

    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method public notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->hideEndedView()V

    :cond_0
    return-void
.end method

.method public onChannelNeedEnd()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->showWarningView()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->onFinishInflate()V

    const v0, 0x7f090c5f

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    const v0, 0x7f090c60

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VideoMainLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoMainLayout:Lcom/narvii/chat/video/layout/VideoMainLayout;

    const v0, 0x7f090c51

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    return-void
.end method

.method public setIsLauncher(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->setIsLauncher(Z)V

    :cond_0
    return-void
.end method

.method public updateVideoViews(ZLcom/narvii/model/User;I)V
    .locals 3

    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 85
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 91
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 94
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07030d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoMainLayout:Lcom/narvii/chat/video/layout/VideoMainLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/layout/VideoMainLayout;->updateViews(ZLcom/narvii/model/User;I)V

    :goto_1
    return-void
.end method

.class public Lcom/narvii/chat/video/floating/VideoFloatingLayout;
.super Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.source "SourceFile"


# instance fields
.field videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field videoMainLayout:Lcom/narvii/chat/video/layout/VideoMainLayout;

.field videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public notifyForceQuit(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->showEndedView()V

    .line 4
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->notifyLocalMuteUserListChanged(Ljava/util/Set;)V

    .line 6
    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 6
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->hideEndedView()V

    .line 17
    :cond_0
    return-void
.end method

.method public onChannelNeedEnd()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->showWarningView()V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0f85

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0f86

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/chat/video/layout/VideoMainLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoMainLayout:Lcom/narvii/chat/video/layout/VideoMainLayout;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0f77

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 37
    return-void
.end method

.method public setIsLauncher(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->setIsLauncher(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public updateVideoViews(ZLcom/narvii/model/User;I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoCallLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 12
    .line 13
    const/16 p2, 0x8

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    .line 26
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    if-ne p3, v2, :cond_1

    .line 39
    .line 40
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    const v2, 0x7f070545

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result v0

    .line 57
    .line 58
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->videoMainLayout:Lcom/narvii/chat/video/layout/VideoMainLayout;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/layout/VideoMainLayout;->updateViews(ZLcom/narvii/model/User;I)V

    .line 69
    :goto_1
    return-void
.end method

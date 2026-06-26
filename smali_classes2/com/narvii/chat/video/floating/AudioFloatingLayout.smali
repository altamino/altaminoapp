.class public Lcom/narvii/chat/video/floating/AudioFloatingLayout;
.super Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.source "AudioFloatingLayout.java"


# instance fields
.field private chatThread:Lcom/narvii/model/ChatThread;

.field liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

.field voiceMainLayout:Lcom/narvii/chat/video/layout/VoiceMainLayout;

.field voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    return-void
.end method

.method private getPresenterCount(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)I"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getPresenterCount(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public notifyForceQuit(I)V
    .locals 0

    .line 81
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

    .line 77
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->notifyLocalMuteUserListChanged(Ljava/util/Set;)V

    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

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

    .line 65
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->hideEndedView()V

    :cond_0
    return-void
.end method

.method public onChannelNeedEnd()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->showWarningView()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->onFinishInflate()V

    const v0, 0x7f090821

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    const v0, 0x7f0900d2

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VoiceMainLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceMainLayout:Lcom/narvii/chat/video/layout/VoiceMainLayout;

    const v0, 0x7f09018c

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 91
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->setIsGroupChat(Z)V

    return-void
.end method

.method public setIsLauncher(Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->setIsLauncher(Z)V

    :cond_0
    return-void
.end method

.method public updateVoiceViews(ZLcom/narvii/model/User;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 56
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-virtual {p1, p3}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    .line 57
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceMainLayout:Lcom/narvii/chat/video/layout/VoiceMainLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/layout/VoiceMainLayout;->updateViews(ZLcom/narvii/model/User;I)V

    :goto_0
    return-void
.end method

.class public Lcom/narvii/chat/video/floating/AudioFloatingLayout;
.super Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.source "SourceFile"


# instance fields
.field private chatThread:Lcom/narvii/model/ChatThread;

.field liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

.field voiceMainLayout:Lcom/narvii/chat/video/layout/VoiceMainLayout;

.field voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getPresenterCount(Ljava/util/Collection;)I

    .line 6
    move-result p1

    .line 7
    return p1
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
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->notifyLocalMuteUserListChanged(Ljava/util/Set;)V

    .line 6
    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

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
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

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
    const v0, 0x7f0a0aca

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a015a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/chat/video/layout/VoiceMainLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceMainLayout:Lcom/narvii/chat/video/layout/VoiceMainLayout;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0240

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
    iput-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 37
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->setIsGroupChat(Z)V

    .line 17
    return-void
.end method

.method public setIsLauncher(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

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

.method public updateVoiceViews(ZLcom/narvii/model/User;I)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceParticipantLayout:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->liveCallingLayout:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 16
    .line 17
    const/16 p2, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->voiceMainLayout:Lcom/narvii/chat/video/layout/VoiceMainLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/video/layout/VoiceMainLayout;->updateViews(ZLcom/narvii/model/User;I)V

    .line 27
    :goto_0
    return-void
.end method

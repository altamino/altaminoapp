.class public Lcom/narvii/chat/video/fragments/VoiceChatFragment;
.super Lcom/narvii/chat/video/fragments/LiveCallFragment;
.source "VoiceChatFragment.java"

# interfaces
.implements Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;


# instance fields
.field private participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

.field private voiceMainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;-><init>()V

    return-void
.end method

.method private isGroupChat()Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPrivateChat()Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected changeCallCompetitorViewVisibility(Z)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->isGroupChat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->voiceMainLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    :goto_3
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 115
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    :cond_5
    return-void
.end method

.method protected getNormalContentHeight()I
    .locals 5

    .line 122
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 123
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    iget v3, v3, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getContentHeight(Landroid/content/Context;Lcom/narvii/model/ChatThread;)I

    move-result v1

    goto :goto_2

    .line 128
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getContentHeight()I

    move-result v1

    .line 129
    :goto_2
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->isPrivateChat()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 130
    :goto_3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    :goto_4
    add-int/2addr v0, v1

    add-int/2addr v0, v4

    return v0
.end method

.method public isMappedLiveChannel(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 77
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    iput p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    invoke-virtual {p2, p1, p4}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b030a

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V

    return-void
.end method

.method public onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->notifyLocalMuteUserListChanged(Ljava/util/Set;)V

    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void
.end method

.method public onTotalVolumeChanged(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 101
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 102
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090cb9

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->voiceMainLayout:Landroid/view/View;

    const p2, 0x7f090821

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    .line 55
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->setDisplayMode(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 57
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VoiceChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->setPresenterItemClickListener(Lcom/narvii/chat/video/PresenterItemClickListener;)V

    return-void
.end method

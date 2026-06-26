.class public Lcom/narvii/chat/video/fragments/VideoChatFragment;
.super Lcom/narvii/chat/video/fragments/LiveCallFragment;
.source "VideoChatFragment.java"

# interfaces
.implements Lcom/narvii/chat/video/overlay/NotifyShotCaptureListener;


# instance fields
.field private participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

.field rtcChatManager:Lcom/narvii/chat/video/RtcChatManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNormalContentHeight()I
    .locals 5

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 125
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 126
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 127
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

    add-int v4, v0, v2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->getContentHeight(Landroid/content/Context;Lcom/narvii/model/ChatThread;)I

    move-result v0

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->getContentHeight()I

    move-result v0

    :goto_1
    add-int/2addr v4, v0

    return v4
.end method

.method public isMappedLiveChannel(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notifyShotCapture(Lcom/narvii/chat/video/TakeShotCaptureListener;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    invoke-interface {p1, v1}, Lcom/narvii/chat/video/TakeShotCaptureListener;->onShotCaptureReady(Landroid/graphics/Bitmap;)V

    return-void

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserSurfaceView()Lcom/narvii/chat/video/CameraRenderer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 116
    invoke-interface {p1, v1}, Lcom/narvii/chat/video/TakeShotCaptureListener;->onShotCaptureReady(Landroid/graphics/Bitmap;)V

    return-void

    .line 119
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/CameraRenderer;->notifyShotCapture(Lcom/narvii/chat/video/TakeShotCaptureListener;)V

    return-void
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

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 78
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    iput p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    invoke-virtual {p2, p1, p4}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "rtcManager"

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/RtcChatManager;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->rtcChatManager:Lcom/narvii/chat/video/RtcChatManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0308

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
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

    .line 86
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->notifyLocalMuteUserListChanged(Ljava/util/Set;)V

    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->rtcChatManager:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->onResume()V

    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 92
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090821

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 55
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setDisplayMode(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 57
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setLauncher(Z)V

    .line 58
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setPresenterItemClickListener(Lcom/narvii/chat/video/PresenterItemClickListener;)V

    return-void
.end method

.method protected supportCollapse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

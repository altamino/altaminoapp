.class public Lcom/narvii/chat/video/fragments/VideoChatFragment;
.super Lcom/narvii/chat/video/fragments/LiveCallFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/overlay/NotifyShotCaptureListener;


# instance fields
.field private participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

.field rtcChatManager:Lcom/narvii/chat/video/RtcChatManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected getNormalContentHeight()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0704cc

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    const v2, 0x7f0704dc

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    const v3, 0x7f0704dd

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    iget v3, v3, Lcom/narvii/model/ChatThread;->type:I

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    add-int/2addr v0, v1

    .line 49
    add-int/2addr v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    .line 53
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->getContentHeight(Landroid/content/Context;Lcom/narvii/model/ChatThread;)I

    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->getContentHeight()I

    .line 72
    move-result v1

    .line 73
    :goto_1
    add-int/2addr v0, v1

    .line 74
    return v0
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v1}, Lcom/narvii/chat/video/TakeShotCaptureListener;->onShotCaptureReady(Landroid/graphics/Bitmap;)V

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserSurfaceView()Lcom/narvii/chat/video/CameraRenderer;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1}, Lcom/narvii/chat/video/TakeShotCaptureListener;->onShotCaptureReady(Landroid/graphics/Bitmap;)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/CameraRenderer;->notifyShotCapture(Lcom/narvii/chat/video/TakeShotCaptureListener;)V

    .line 27
    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 20
    .line 21
    iput p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1, p4}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "rtcManager"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/chat/video/RtcChatManager;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->rtcChatManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 14
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d033b

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onLocalMuteUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Set;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->notifyLocalMuteUserListChanged(Ljava/util/Set;)V

    .line 9
    return-void
.end method

.method public onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/chat/signalling/ChannelUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onMyChannelUserStatusChanged(ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 4
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->rtcChatManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->onResume()V

    .line 9
    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0aca

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isPrivateCall()Z

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setDisplayMode(I)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->isCreator()Z

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setLauncher(Z)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VideoChatFragment;->participantLayout:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->setPresenterItemClickListener(Lcom/narvii/chat/video/PresenterItemClickListener;)V

    .line 45
    return-void
.end method

.method protected supportCollapse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

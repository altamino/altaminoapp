.class public Lcom/narvii/chat/video/floating/SRFloatingLayout;
.super Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;
.implements Lcom/narvii/chat/screenroom/VideoPlayListener;
.implements Lcom/narvii/chat/screenroom/SRHostLoadingListener;
.implements Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;


# instance fields
.field HostViewContainer:Landroid/widget/FrameLayout;

.field badConnection:Z

.field current:Lcom/narvii/model/PlayListItem;

.field ended:Z

.field isAudioOnly:Z

.field isHost:Z

.field loading:Z

.field mineSurfaceContainer:Landroid/widget/FrameLayout;

.field playStatus:I

.field playerContainer:Landroid/widget/FrameLayout;

.field statusView:Landroid/widget/TextView;

.field thumbnail:Lcom/narvii/widget/NVImageView;

.field userSeeked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    return-void
.end method

.method private updateStatus()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->ended:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->statusView:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    const v1, 0x7f120234

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 16
    .line 17
    .line 18
    const v1, 0x7f120d8b

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playStatus:I

    .line 23
    const/4 v2, 0x3

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    const v1, 0x7f120e5e

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x1

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x2

    .line 51
    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->badConnection:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    const v1, 0x7f120198

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isAudioOnly:Z

    .line 75
    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    const v1, 0x7f120bb3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, 0x0

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    const v1, 0x7f120d73

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->statusView:Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method private updateThumbnail()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->userSeeked:Z

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playStatus:I

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2, v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-boolean v2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isAudioOnly:Z

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    iget v0, v0, Lcom/narvii/model/PlayListItem;->type:I

    .line 49
    const/4 v2, 0x3

    .line 50
    .line 51
    if-ne v0, v2, :cond_2

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2, v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyForceQuit(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->ended:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    .line 7
    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p2, :cond_2

    .line 8
    .line 9
    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    move-result p2

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    if-ne p2, v0, :cond_2

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    if-eq p2, p1, :cond_2

    .line 50
    .line 51
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_2
    return-void
.end method

.method public onBuffering(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    .line 6
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
    const v0, 0x7f0a0d74

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0f95

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0fce

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->statusView:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0fd1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0975

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->mineSurfaceContainer:Landroid/widget/FrameLayout;

    .line 59
    return-void
.end method

.method public onHostAudioOnlyChanged(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isAudioOnly:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateThumbnail()V

    .line 6
    return-void
.end method

.method public onHostBadConnection(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->badConnection:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    .line 6
    return-void
.end method

.method public onHostLoading(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    .line 6
    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 2
    iget p1, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    iput p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playStatus:I

    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateThumbnail()V

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    return-void
.end method

.method public onUserSeeked(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->userSeeked:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateThumbnail()V

    .line 6
    return-void
.end method

.method public setUpHostView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    return-void
.end method

.method public setUpViewerView(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->mineSurfaceContainer:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-void
.end method

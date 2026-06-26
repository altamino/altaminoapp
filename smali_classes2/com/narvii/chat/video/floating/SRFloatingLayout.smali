.class public Lcom/narvii/chat/video/floating/SRFloatingLayout;
.super Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;
.source "SRFloatingLayout.java"

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

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    return-void
.end method

.method private updateStatus()V
    .locals 4

    .line 149
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->ended:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0f01e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    const v2, 0x7f0f0c5c

    if-eqz v1, :cond_4

    .line 155
    iget v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playStatus:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0d38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 160
    iget-boolean v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->badConnection:Z

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0158

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_3
    iget-boolean v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isAudioOnly:Z

    if-nez v1, :cond_6

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0b05

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    if-eqz v0, :cond_5

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0c45

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateThumbnail()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->userSeeked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    iget-object v3, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    invoke-static {v0, v2, v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 125
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isAudioOnly:Z

    if-nez v2, :cond_1

    iget v0, v0, Lcom/narvii/model/PlayListItem;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    iget-object v3, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    invoke-static {v0, v2, v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 128
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyForceQuit(I)V
    .locals 0

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->ended:Z

    .line 139
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 2

    .line 91
    iget-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 95
    iget-object v1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 98
    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eqz p2, :cond_3

    .line 100
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    .line 101
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eq p1, p2, :cond_3

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 103
    invoke-static {p2}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 104
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onBuffering(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    .line 184
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->onFinishInflate()V

    const v0, 0x7f090a80

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f090c70

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f090ca3

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->statusView:Landroid/widget/TextView;

    const v0, 0x7f090ca6

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090713

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->mineSurfaceContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onHostAudioOnlyChanged(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isAudioOnly:Z

    .line 196
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateThumbnail()V

    return-void
.end method

.method public onHostBadConnection(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->badConnection:Z

    .line 178
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    return-void
.end method

.method public onHostLoading(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->loading:Z

    .line 145
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 113
    iget p1, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    iput p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playStatus:I

    .line 115
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateThumbnail()V

    .line 117
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateStatus()V

    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    return-void
.end method

.method public onUserSeeked(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->userSeeked:Z

    .line 190
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->updateThumbnail()V

    return-void
.end method

.method public setUpHostView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    if-eqz p1, :cond_0

    .line 67
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->playerContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setUpViewerView(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 2

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->isHost:Z

    .line 76
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 78
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 83
    invoke-static {p2}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->mineSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/floating/SRFloatingLayout;->HostViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.class public Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "VideoWatchOverlayLayout.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;
.implements Lcom/narvii/chat/screenroom/SRHostLoadingListener;
.implements Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;
.implements Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;


# instance fields
.field badConnection:Z

.field current:Lcom/narvii/model/PlayListItem;

.field isAudioOnly:Z

.field loading:Z

.field loadingLayout:Landroid/view/View;

.field playStatus:I

.field srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

.field statusLayout:Landroid/view/View;

.field statusView:Landroid/widget/TextView;

.field thumbnail:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loading:Z

    return-void
.end method

.method private updateLoadingView()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->isAudioOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loadingLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateStatus()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    const v1, 0x7f0f117b

    if-eqz v0, :cond_3

    .line 83
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0d39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 88
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->badConnection:Z

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0158

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateLoadingView()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090ca7

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 45
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->addControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V

    const v0, 0x7f090ca3

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusView:Landroid/widget/TextView;

    const v0, 0x7f090ca4

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusLayout:Landroid/view/View;

    const v0, 0x7f090ca6

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090698

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loadingLayout:Landroid/view/View;

    return-void
.end method

.method public onHostAudioOnlyChanged(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->isAudioOnly:Z

    .line 120
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateThumbnail()V

    return-void
.end method

.method public onHostBadConnection(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->badConnection:Z

    .line 109
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateStatus()V

    return-void
.end method

.method public onHostLoading(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loading:Z

    .line 104
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateStatus()V

    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;)V
    .locals 1

    .line 56
    iget v0, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    .line 57
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 59
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onPlayItemChangedForViewer(Lcom/narvii/model/PlayListItem;)V

    .line 61
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateThumbnail()V

    .line 63
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateStatus()V

    return-void
.end method

.method public onVideoControllerVisibleChanged(Z)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateLoadingView()V

    return-void
.end method

.method public updateThumbnail()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->isAudioOnly:Z

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    invoke-static {v0, v1, v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 71
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

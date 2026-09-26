.class public Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loading:Z

    .line 7
    return-void
.end method

.method private updateLoadingView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loading:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->isAudioOnly:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    .line 31
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loadingLayout:Landroid/view/View;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    const/16 v1, 0x8

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method

.method private updateStatus()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f121282

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    .line 10
    const/4 v2, 0x3

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    const v1, 0x7f120e5f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x1

    .line 26
    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x2

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->badConnection:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f120198

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusView:Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusLayout:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x0

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_4
    const/16 v0, 0x8

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateLoadingView()V

    .line 85
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0fd2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->addControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a0fce

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusView:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0a0fcf

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->statusLayout:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a0fd1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0822

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loadingLayout:Landroid/view/View;

    .line 58
    return-void
.end method

.method public onHostAudioOnlyChanged(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->isAudioOnly:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateThumbnail()V

    .line 6
    return-void
.end method

.method public onHostBadConnection(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->badConnection:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateStatus()V

    .line 6
    return-void
.end method

.method public onHostLoading(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->loading:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateStatus()V

    .line 6
    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->srVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onPlayItemChangedForViewer(Lcom/narvii/model/PlayListItem;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateThumbnail()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateStatus()V

    .line 22
    return-void
.end method

.method public onVideoControllerVisibleChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->updateLoadingView()V

    .line 4
    return-void
.end method

.method public updateThumbnail()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->playStatus:I

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->isAudioOnly:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->current:Lcom/narvii/model/PlayListItem;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoWatchOverlayLayout;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_1
    return-void
.end method

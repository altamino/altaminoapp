.class public Lcom/narvii/chat/screenroom/widgets/VideoPlayView;
.super Lcom/narvii/widget/RoundFrameLayout;
.source "VideoPlayView.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/VideoPlayListener;
.implements Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;


# instance fields
.field public addVideoView:Landroid/view/View;

.field buffering:Z

.field private glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

.field public loadingLayout:Landroid/view/View;

.field playList:Lcom/narvii/model/PlayList;

.field screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field public thumbnail:Lcom/narvii/widget/NVImageView;

.field userSeeked:Z

.field videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

.field public videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0b005c

    .line 52
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "screenRoom"

    .line 54
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 56
    sget-object v0, Lcom/narvii/amino/R$styleable;->VideoPlayView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f090c6e

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 106
    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->userSeeked:Z

    if-nez v3, :cond_0

    iget v3, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    if-ne v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v4}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/PlayListItem;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v4}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->setThumbnailImage(Landroid/content/Context;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/PlayListItem;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->addVideoView:Landroid/view/View;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v3}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 117
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    invoke-virtual {v3}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 120
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->buffering:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    iget v0, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x4

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->loadingLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v1, v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playButtonsLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    goto :goto_2

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->loadingLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playButtonsLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onBuffering(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->buffering:Z

    .line 134
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090698

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->loadingLayout:Landroid/view/View;

    const v0, 0x7f090b72

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->thumbnail:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090c55

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 73
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->addControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V

    const v0, 0x7f09006c

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->addVideoView:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->addVideoView:Landroid/view/View;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/VideoPlayView$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView$1;-><init>(Lcom/narvii/chat/screenroom/widgets/VideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->playList:Lcom/narvii/model/PlayList;

    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    return-void
.end method

.method public onUserSeeked(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->userSeeked:Z

    .line 140
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    return-void
.end method

.method public onVideoControllerVisibleChanged(Z)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->updateViews()V

    return-void
.end method

.method public setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 1

    .line 86
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 87
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->removeFromParent(Landroid/view/View;)V

    const v0, 0x7f0904d1

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 89
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setMediaController(Lcom/narvii/chat/screenroom/widgets/VideoController;)V

    if-eqz p2, :cond_0

    .line 93
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    :cond_0
    return-void
.end method

.method public setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

    return-void
.end method

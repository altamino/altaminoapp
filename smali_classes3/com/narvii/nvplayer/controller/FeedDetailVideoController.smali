.class public Lcom/narvii/nvplayer/controller/FeedDetailVideoController;
.super Lcom/narvii/nvplayerview/controller/NVVideoListController;
.source "FeedDetailVideoController.java"


# instance fields
.field private shareBtn:Lcom/narvii/widget/EasyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayerview/controller/NVVideoListController;-><init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c5e

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/SpinningView;

    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    const v1, 0x7f090cbf

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/EasyButton;

    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    .line 28
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v1}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 29
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    const v1, 0x7f090a22

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    iput-object v0, p0, Lcom/narvii/nvplayer/controller/FeedDetailVideoController;->shareBtn:Lcom/narvii/widget/EasyButton;

    .line 32
    iget-object v0, p0, Lcom/narvii/nvplayer/controller/FeedDetailVideoController;->shareBtn:Lcom/narvii/widget/EasyButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setUIVisibility(I)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

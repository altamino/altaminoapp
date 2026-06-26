.class public Lcom/narvii/nvplayerview/controller/NVVideoListController;
.super Ljava/lang/Object;
.source "NVVideoListController.java"

# interfaces
.implements Lcom/narvii/nvplayerview/controller/IVideoController;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mute:Z = true


# instance fields
.field protected mContext:Lcom/narvii/app/NVContext;

.field protected mErrorView:Landroid/widget/LinearLayout;

.field protected mLoadingView:Lcom/narvii/widget/SpinningView;

.field protected mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field protected mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

.field protected videoPlayButton:Lcom/narvii/widget/NVImageView;

.field protected volumeBtn:Lcom/narvii/widget/EasyButton;

.field protected volumeContainer:Lcom/narvii/widget/FullHitFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    .line 35
    iput-object p3, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 36
    iput-object p4, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-void
.end method


# virtual methods
.method public synthetic closeVoice()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$closeVoice(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic destroy()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$destroy(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 41
    sget v0, Lcom/narvii/lib/R$layout;->activity_exo_feed_list_controller:I

    return v0
.end method

.method public synthetic getProgress()I
    .locals 1

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$getProgress(Lcom/narvii/nvplayerview/controller/IVideoController;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .line 46
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

    .line 47
    sget v1, Lcom/narvii/lib/R$id;->video_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/SpinningView;

    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 48
    sget v1, Lcom/narvii/lib/R$id;->volume_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/EasyButton;

    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    .line 49
    sget v1, Lcom/narvii/lib/R$id;->volume_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/FullHitFrameLayout;

    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeContainer:Lcom/narvii/widget/FullHitFrameLayout;

    .line 50
    sget v1, Lcom/narvii/lib/R$id;->video_play_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    .line 51
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v1, Lcom/narvii/lib/R$id;->video_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 54
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 63
    sget v0, Lcom/narvii/lib/R$id;->volume_btn:I

    if-ne p1, v0, :cond_0

    .line 64
    sget-boolean p1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    .line 65
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    goto :goto_0

    .line 66
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->video_error:I

    if-ne p1, v0, :cond_1

    .line 67
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_1

    .line 68
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->retry()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onOrientationChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onOrientationChanged(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    const/4 p1, 0x4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 88
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 89
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    .line 82
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_2
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 85
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic onPressBack()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onPressBack(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onRenderedFirstFrame(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic openVoice()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$openVoice(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic pause()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$pause(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    return-void
.end method

.method public synthetic setAnimating(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setAnimating(Lcom/narvii/nvplayerview/controller/IVideoController;Z)V

    return-void
.end method

.method public synthetic setCurrentTime()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setCurrentTime(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic setOptionMenu()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setOptionMenu(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic setProgress(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setProgress(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public synthetic setTotalTime()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setTotalTime(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public setUIVisibility(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setVolumeBtnTop(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeContainer:Lcom/narvii/widget/FullHitFrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    const p1, 0x800035

    .line 127
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const p1, 0x800055

    .line 129
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeContainer:Lcom/narvii/widget/FullHitFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected setVolumeImg()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    sget-boolean v1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 75
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    sget-boolean v1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$drawable;->ic_volume_off:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$drawable;->ic_volume_on:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic start()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$start(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

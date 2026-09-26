.class public Lcom/narvii/nvplayerview/controller/NVVideoListController;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 10
    return-void
.end method


# virtual methods
.method public synthetic closeVoice()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->a(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic destroy()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->b(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->activity_exo_feed_list_controller:I

    return v0
.end method

.method public synthetic getProgress()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->c(Lcom/narvii/nvplayerview/controller/IVideoController;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->getLayoutId()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sget v1, Lcom/narvii/lib/R$id;->video_loading:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/widget/SpinningView;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 31
    .line 32
    sget v1, Lcom/narvii/lib/R$id;->volume_btn:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/widget/EasyButton;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    .line 41
    .line 42
    sget v1, Lcom/narvii/lib/R$id;->volume_container:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/widget/FullHitFrameLayout;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeContainer:Lcom/narvii/widget/FullHitFrameLayout;

    .line 51
    .line 52
    sget v1, Lcom/narvii/lib/R$id;->video_play_button:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->videoPlayButton:Lcom/narvii/widget/NVImageView;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    sget v1, Lcom/narvii/lib/R$id;->video_error:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Landroid/widget/LinearLayout;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    .line 89
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    .line 6
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->volume_btn:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    sget-boolean p1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    .line 11
    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    sput-boolean p1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->video_error:I

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->retry()V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onOrientationChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/a;->e(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 21
    const/4 v0, 0x4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x4

    .line 3
    .line 4
    if-eq p2, p1, :cond_1

    .line 5
    const/4 p1, 0x2

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x3

    .line 10
    .line 11
    if-ne p2, p1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mLoadingView:Lcom/narvii/widget/SpinningView;

    .line 36
    const/4 p2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mErrorView:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic onPressBack()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->h(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->i(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic openVoice()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->j(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic pause()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->k(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVVideoListController;->setVolumeImg()V

    .line 4
    return-void
.end method

.method public synthetic setAnimating(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/a;->m(Lcom/narvii/nvplayerview/controller/IVideoController;Z)V

    return-void
.end method

.method public synthetic setCurrentTime()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->n(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic setOptionMenu()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->o(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public synthetic setProgress(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/a;->p(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public synthetic setTotalTime()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->q(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public setUIVisibility(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setVolumeBtnTop(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeContainer:Lcom/narvii/widget/FullHitFrameLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    const p1, 0x800035

    .line 17
    .line 18
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    const p1, 0x800055

    .line 23
    .line 24
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeContainer:Lcom/narvii/widget/FullHitFrameLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-void
.end method

.method protected setVolumeImg()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    sget-boolean v1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->volumeBtn:Lcom/narvii/widget/EasyButton;

    .line 16
    .line 17
    sget-boolean v1, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mute:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    sget v2, Lcom/narvii/lib/R$drawable;->ic_volume_off:I

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v1

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVVideoListController;->mContext:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    sget v2, Lcom/narvii/lib/R$drawable;->ic_volume_on:I

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method public synthetic start()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->s(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

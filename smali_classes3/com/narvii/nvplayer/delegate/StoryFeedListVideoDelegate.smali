.class public Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;
.super Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.source "StoryFeedListVideoDelegate.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 43
    new-instance p1, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate$1;

    invoke-direct {p1, p0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate$1;-><init>(Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;)V

    invoke-virtual {p0, p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->setVideoViewClickListener(Lcom/narvii/nvplayerview/listener/VideoViewClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic lambda$setPlayingGif$0(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f090c81

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const-string v0, "assets://media_playing.webp"

    .line 135
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method

.method private setPlayingGif()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    const v1, 0x7f090ae7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Lcom/narvii/nvplayer/delegate/-$$Lambda$StoryFeedListVideoDelegate$UQx1MpJtAF5NMhy5_kkXhU7oqH4;

    invoke-direct {v1, v0}, Lcom/narvii/nvplayer/delegate/-$$Lambda$StoryFeedListVideoDelegate$UQx1MpJtAF5NMhy5_kkXhU7oqH4;-><init>(Lcom/narvii/widget/NVImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 137
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    const v1, 0x7f090c81

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    instance-of p1, p1, Lcom/narvii/story/widgets/StoryCardView;

    if-eqz p1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->setPlayingGif()V

    :cond_0
    return-void
.end method

.method protected debugEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected forceBlur()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;
    .locals 1

    .line 69
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const-string p1, "community-player"

    .line 70
    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;
    .locals 0

    .line 60
    new-instance p2, Lcom/narvii/nvplayer/controller/StoryFeedListVideoController;

    invoke-direct {p2, p1, p3, p4}, Lcom/narvii/nvplayer/controller/StoryFeedListVideoController;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    return-object p2
.end method

.method protected initVideoView()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 182
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    if-eqz p1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 185
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 186
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->onActiveChanged(Z)V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    if-nez p1, :cond_1

    return-void

    .line 191
    :cond_1
    iget v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 192
    new-instance v0, Lcom/narvii/nvplayer/delegate/-$$Lambda$rIV8razhgfCwo2bvug08I_R9D14;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayer/delegate/-$$Lambda$rIV8razhgfCwo2bvug08I_R9D14;-><init>(Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;)V

    const-wide/16 v1, 0x12c

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 195
    :cond_2
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    const v1, 0x7f090c82

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/nvplayer/NVMediaSource;

    .line 201
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1, p1, v2}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 202
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, v0, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(ZZ)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 204
    :cond_5
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :goto_1
    return-void
.end method

.method protected quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 150
    iget-object v1, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 151
    invoke-virtual {p2}, Lcom/narvii/nvplayer/NVMediaSource;->clone()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 154
    iget-object v2, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 155
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 156
    iget-object v3, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    invoke-interface {p1, v2, v1, p3}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 158
    iput-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    goto :goto_0

    .line 160
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 163
    iget-object p1, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->isHighPreloadLevel()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    instance-of p1, p1, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz p1, :cond_1

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object p2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    iget-object p3, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    check-cast p3, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public removeVideoView()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/story/widgets/StoryCardView;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->resetPlayImg(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    return-void
.end method

.method protected resetPlayImg(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090ae7

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_0

    const-string v0, "res://ic_story_play"

    .line 124
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v0, 0x7f090c81

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected setVideoViewCornerRadius(Lcom/narvii/widget/NVImageView;)V
    .locals 13

    .line 83
    iget v0, p1, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 84
    iget p1, p1, Lcom/narvii/widget/NVImageView;->cornerMask:I

    const/16 v1, 0x8

    new-array v2, v1, [F

    int-to-float v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v6, 0x2

    aput v3, v2, v6

    const/4 v7, 0x3

    aput v3, v2, v7

    const/4 v8, 0x4

    aput v3, v2, v8

    const/4 v9, 0x5

    aput v3, v2, v9

    const/4 v10, 0x6

    aput v3, v2, v10

    const/4 v11, 0x7

    aput v3, v2, v11

    and-int/lit8 v3, p1, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    aput v12, v2, v4

    aput v12, v2, v5

    :cond_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    aput v12, v2, v6

    aput v12, v2, v7

    :cond_1
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_2

    aput v12, v2, v8

    aput v12, v2, v9

    :cond_2
    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    aput v12, v2, v10

    aput v12, v2, v11

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1, v2, v0}, Lcom/narvii/nvplayerview/NVVideoView;->setCornerRadiusArray([FI)V

    return-void
.end method

.method protected supportPreload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected videoCornerEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

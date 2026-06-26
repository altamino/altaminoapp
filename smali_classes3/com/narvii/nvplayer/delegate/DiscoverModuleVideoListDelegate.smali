.class public final Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;
.super Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;
.source "DiscoverModuleVideoListDelegate.kt"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic access$getActive$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    return p0
.end method

.method public static final synthetic access$getListView$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Lcom/narvii/nvplayerview/delegate/IVideoListView;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    return-object p0
.end method

.method public static final synthetic access$getMPlayer$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-object p0
.end method

.method public static final synthetic access$getMPlayerPosition$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)I
    .locals 0

    .line 8
    iget p0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    return p0
.end method

.method public static final synthetic access$setActive$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    return-void
.end method

.method public static final synthetic access$setListView$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;Lcom/narvii/nvplayerview/delegate/IVideoListView;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    return-void
.end method

.method public static final synthetic access$setMPlayer$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-void
.end method

.method public static final synthetic access$setMPlayerPosition$p(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    return-void
.end method

.method public static final synthetic access$shouldRemoveVideo(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)Z
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->shouldRemoveVideo()Z

    move-result p0

    return p0
.end method

.method private final shouldRemoveVideo()Z
    .locals 4

    .line 26
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 29
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->getDesiredPlayerPosition(Z)I

    move-result v0

    .line 30
    iget v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_1

    return v3

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-virtual {p0, v2, v0}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v2, 0x7f090c82

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 35
    instance-of v2, v0, Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v2, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 36
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 37
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 39
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v3
.end method


# virtual methods
.method public final forceRefresh()V
    .locals 3

    .line 15
    new-instance v0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;-><init>(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method

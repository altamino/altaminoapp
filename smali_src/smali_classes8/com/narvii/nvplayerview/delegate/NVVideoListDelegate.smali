.class public Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
.implements Lcom/narvii/nvplayer/IVideoListener;
.implements Lcom/narvii/nvplayerview/ISurfaceListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "NVVideoListDelegate"


# instance fields
.field protected active:Z

.field protected areaName:Ljava/lang/String;

.field protected currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

.field defaultListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

.field protected desView:Landroid/view/View;

.field protected lastScrollState:I

.field protected listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

.field protected mContext:Landroid/app/Activity;

.field protected mNVContext:Lcom/narvii/app/NVContext;

.field protected mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field protected mPlayerPosition:I

.field protected mSurface:Landroid/view/Surface;

.field protected mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

.field protected mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

.field protected playerPositionChanged:Z

.field protected prepared:Z

.field private refreshPlayerPosRunnable:Ljava/lang/Runnable;

.field private runnable:Ljava/lang/Runnable;

.field videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lastScrollState:I

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/nvplayerview/delegate/c;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/c;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$1;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->defaultListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$3;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->runnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 38
    move-result-object p1

    .line 39
    const/4 p2, -0x3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/Window;->setFormat(I)V

    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lambda$refreshPlayerPosition$0(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lambda$onLayoutChange$1(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$1(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshPlayerPosition$0(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    sget p2, Lcom/narvii/lib/R$id;->video_tag_media:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    instance-of v0, p2, Lcom/narvii/nvplayer/NVMediaSource;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    check-cast p2, Lcom/narvii/nvplayer/NVMediaSource;

    .line 14
    .line 15
    iget-object v0, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Lcom/narvii/model/Media;

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    move-object p2, v1

    .line 37
    .line 38
    :goto_1
    sget v0, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    if-nez v2, :cond_3

    .line 45
    goto :goto_2

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    move-object v1, p1

    .line 51
    .line 52
    check-cast v1, Lcom/narvii/model/NVObject;

    .line 53
    .line 54
    :goto_2
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v1}, Lcom/narvii/nvplayerview/listener/VideoViewClickListener;->interceptClickEvent(Lcom/narvii/model/NVObject;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, p2, v1}, Lcom/narvii/nvplayerview/listener/VideoViewClickListener;->onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->defaultListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2, v1}, Lcom/narvii/nvplayerview/listener/VideoViewClickListener;->onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V

    .line 74
    :goto_3
    return-void
.end method

.method public static markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V
    .locals 7

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-void
.end method

.method public static markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/model/NVObject;",
            "IZ)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 6
    invoke-virtual {v1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {p2}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    iput-object v0, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget v0, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_media:I

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    .line 12
    invoke-virtual {p0, p1, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_scaleType:I

    .line 13
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_cover_media:I

    .line 14
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_clickable:I

    .line 15
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget p1, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    const/4 p2, 0x0

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_media:I

    const/4 p3, 0x0

    .line 17
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    .line 18
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_scaleType:I

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_cover_media:I

    .line 20
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lcom/narvii/lib/R$id;->video_tag_clickable:I

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private setExitSharedElementCallback()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$4;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    return-void
.end method

.method protected checkCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected debugEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected forceBlur()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected forceRefreshPlayerPosition()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getDesiredPlayerPosition()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    iput v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/nvplayerview/delegate/c;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/c;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 30
    .line 31
    const-wide/16 v2, 0x12c

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/nvplayerview/delegate/c;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/c;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->post(Ljava/lang/Runnable;)Z

    .line 46
    :goto_0
    return-void
.end method

.method protected getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDesiredPlayerPosition()I
    .locals 15

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    .line 9
    new-array v2, v0, [I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 15
    move-result v3

    .line 16
    .line 17
    iget-object v4, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 21
    move-result v4

    .line 22
    .line 23
    .line 24
    const v5, 0x7fffffff

    .line 25
    const/4 v6, 0x0

    .line 26
    move v9, v1

    .line 27
    move v7, v5

    .line 28
    move v8, v6

    .line 29
    .line 30
    :goto_0
    iget-object v10, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 31
    .line 32
    .line 33
    invoke-interface {v10}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getLastVisiblePosition()I

    .line 34
    move-result v10

    .line 35
    .line 36
    iget-object v11, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 37
    .line 38
    .line 39
    invoke-interface {v11}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 40
    move-result v11

    .line 41
    sub-int/2addr v10, v11

    .line 42
    .line 43
    if-gt v8, v10, :cond_9

    .line 44
    .line 45
    iget-object v10, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v10, v8}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    .line 49
    move-result-object v10

    .line 50
    .line 51
    if-nez v10, :cond_1

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    sget v11, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 59
    move-result-object v12

    .line 60
    .line 61
    if-nez v12, :cond_2

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 67
    move-result-object v11

    .line 68
    .line 69
    check-cast v11, Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v11

    .line 74
    .line 75
    if-nez v11, :cond_3

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v11

    .line 82
    .line 83
    sget v12, Lcom/narvii/lib/R$id;->video_tag_media:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 87
    move-result-object v10

    .line 88
    .line 89
    if-nez v10, :cond_4

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_4
    check-cast v10, Lcom/narvii/nvplayer/NVMediaSource;

    .line 94
    .line 95
    if-eqz v11, :cond_8

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10}, Lcom/narvii/nvplayer/NVMediaSource;->containValidVideo()Z

    .line 99
    move-result v10

    .line 100
    .line 101
    if-eqz v10, :cond_8

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->vertical()Z

    .line 108
    move-result v10

    .line 109
    .line 110
    if-eqz v10, :cond_6

    .line 111
    const/4 v10, 0x1

    .line 112
    .line 113
    aget v12, v2, v10

    .line 114
    .line 115
    div-int/lit8 v13, v3, 0x2

    .line 116
    .line 117
    if-ge v12, v13, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 121
    move-result v14

    .line 122
    add-int/2addr v12, v14

    .line 123
    .line 124
    if-le v12, v13, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 130
    move-result v0

    .line 131
    :goto_1
    add-int/2addr v0, v8

    .line 132
    return v0

    .line 133
    .line 134
    :cond_5
    aget v10, v2, v10

    .line 135
    mul-int/2addr v10, v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 139
    move-result v11

    .line 140
    add-int/2addr v10, v11

    .line 141
    sub-int/2addr v10, v3

    .line 142
    .line 143
    .line 144
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 145
    move-result v10

    .line 146
    .line 147
    if-ge v10, v7, :cond_8

    .line 148
    .line 149
    iget-object v7, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 150
    .line 151
    .line 152
    invoke-interface {v7}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 153
    move-result v7

    .line 154
    .line 155
    add-int v9, v7, v8

    .line 156
    move v7, v10

    .line 157
    goto :goto_2

    .line 158
    .line 159
    :cond_6
    aget v10, v2, v6

    .line 160
    .line 161
    div-int/lit8 v12, v4, 0x2

    .line 162
    .line 163
    if-ge v10, v12, :cond_7

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 167
    move-result v12

    .line 168
    add-int/2addr v10, v12

    .line 169
    .line 170
    div-int/lit8 v12, v3, 0x2

    .line 171
    .line 172
    if-le v10, v12, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 175
    .line 176
    .line 177
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 178
    move-result v0

    .line 179
    goto :goto_1

    .line 180
    .line 181
    :cond_7
    aget v10, v2, v6

    .line 182
    mul-int/2addr v10, v0

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 186
    move-result v11

    .line 187
    add-int/2addr v10, v11

    .line 188
    sub-int/2addr v10, v4

    .line 189
    .line 190
    .line 191
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 192
    move-result v10

    .line 193
    .line 194
    if-ge v10, v5, :cond_8

    .line 195
    .line 196
    iget-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 197
    .line 198
    .line 199
    invoke-interface {v5}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 200
    move-result v5

    .line 201
    .line 202
    add-int v9, v5, v8

    .line 203
    move v5, v10

    .line 204
    .line 205
    .line 206
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getStep()I

    .line 207
    move-result v10

    .line 208
    add-int/2addr v8, v10

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_9
    if-eq v9, v1, :cond_a

    .line 213
    .line 214
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 215
    .line 216
    .line 217
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 218
    move-result v2

    .line 219
    .line 220
    sub-int v2, v9, v2

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    .line 224
    move-result-object v0

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage(Landroid/view/View;)I

    .line 228
    move-result v0

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage()I

    .line 232
    move-result v2

    .line 233
    .line 234
    if-ge v0, v2, :cond_a

    .line 235
    return v1

    .line 236
    :cond_a
    return v9
.end method

.method public getPlayerPos()I
    .locals 1

    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    return v0
.end method

.method public getPlayerPosition()I
    .locals 1

    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    return v0
.end method

.method protected getStep()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoView()Lcom/narvii/nvplayerview/NVVideoView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    return-object v0
.end method

.method protected getVisibilityPercentage()I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    return v0
.end method

.method public getVisibilityPercentage(Landroid/view/View;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->vertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/narvii/nvplayerview/Utils;->getVisibilityPercentage(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/narvii/nvplayerview/Utils;->getVisibilityHorizontalPercentage(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayerview/controller/NVVideoListController;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/narvii/nvplayerview/controller/NVVideoListController;-><init>(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)V

    .line 6
    return-object v0
.end method

.method protected initVideoView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 6
    return-void
.end method

.method public listViewFirstBecomeVisible()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosRunnable:Ljava/lang/Runnable;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    const-wide/16 v1, 0x1f4

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 19
    :cond_0
    return-void
.end method

.method protected listViewOnScroll()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    .line 30
    :goto_0
    if-nez v0, :cond_2

    .line 31
    return-void

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage(Landroid/view/View;)I

    .line 35
    move-result v0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage()I

    .line 48
    move-result v2

    .line 49
    .line 50
    if-ge v0, v2, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v3}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 56
    .line 57
    :cond_3
    const/16 v2, 0xa

    .line 58
    .line 59
    if-ge v0, v2, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 68
    .line 69
    iput v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 70
    :cond_4
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 4

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 3
    .line 4
    if-eqz p1, :cond_8

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->setExitSharedElementCallback()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 22
    const/4 v1, -0x1

    .line 23
    .line 24
    const-wide/16 v2, 0x12c

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/nvplayerview/delegate/c;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/c;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 39
    move-result v1

    .line 40
    sub-int/2addr v0, v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    sget v0, Lcom/narvii/lib/R$id;->video_tag_media:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/nvplayer/NVMediaSource;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    const/4 v1, 0x1

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 77
    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    :cond_4
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 89
    .line 90
    new-instance v0, Lcom/narvii/nvplayerview/delegate/c;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/delegate/c;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v0, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_5
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0, p1, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v1, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(ZZ)V

    .line 116
    .line 117
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onActiveChanged(Z)V

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    :goto_1
    return-void

    .line 123
    .line 124
    :cond_8
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 125
    .line 126
    if-eqz p1, :cond_9

    .line 127
    const/4 v0, 0x0

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 131
    :cond_9
    :goto_2
    return-void
.end method

.method public onCachedBytesRead(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$2;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$2;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 25
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 14
    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->b(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sub-int/2addr p4, p2

    .line 7
    sub-int/2addr p5, p3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    .line 15
    if-ne p4, p2, :cond_1

    .line 16
    .line 17
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    if-eq p5, p2, :cond_2

    .line 20
    .line 21
    :cond_1
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    .line 23
    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 26
    .line 27
    new-instance p3, Lcom/narvii/nvplayerview/delegate/b;

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, p0, p1}, Lcom/narvii/nvplayerview/delegate/b;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_2
    return-void
.end method

.method public onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->addOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoView;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->initVideoView()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 20
    .line 21
    const/high16 v0, -0x1000000

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->addDebugVideoView()V

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->initVideoController(Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/nvplayerview/NVVideoView;Lcom/narvii/nvplayer/INVPlayer;)Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->init()V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 71
    const/4 v0, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    const/4 p1, 0x1

    .line 76
    .line 77
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->prepared:Z

    .line 78
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 12
    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setErrorText(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerStateChanged(ZI)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setPlayerStatus(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->e(Lcom/narvii/nvplayer/IVideoListener;I)V

    return-void
.end method

.method public onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setPreloadStrategyInfo(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/nvplayerview/delegate/c;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/delegate/c;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V

    .line 24
    .line 25
    const-wide/16 v2, 0x12c

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    :cond_0
    return-void
.end method

.method public onRenderFirstFrameInterval(J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setFromSettingToFirstFrameText(J)V

    .line 20
    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->onRenderedFirstFrame()V

    .line 6
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->resume()V

    .line 8
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listViewOnScroll()V

    .line 8
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)V
    .locals 0

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lastScrollState:I

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->forceRefreshPlayerPosition()V

    .line 12
    :cond_0
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->i(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setResolutionText(II)V

    :cond_0
    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/b;->k(Lcom/narvii/nvplayer/IVideoListener;IIIF)V

    return-void
.end method

.method public onVideoSupportLowResVideo(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSupportLowRes(Z)V

    .line 22
    :cond_0
    return-void
.end method

.method public prepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->prepared:Z

    return v0
.end method

.method protected quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/nvplayer/NVMediaSource;->clone()Lcom/narvii/nvplayer/NVMediaSource;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/model/Media;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2, v0, p3}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    iput-object p2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->currentMediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0, p2, p3}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 54
    :goto_0
    return-void
.end method

.method public refreshPlayerPosition()V
    .locals 15

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 8
    .line 9
    if-eqz v0, :cond_25

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_e

    .line 16
    .line 17
    :cond_1
    iget v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lastScrollState:I

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->isShown()Z

    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 30
    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->reset()V

    .line 35
    :cond_3
    return-void

    .line 36
    :cond_4
    const/4 v0, 0x0

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 41
    const/4 v3, 0x1

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    if-eq v2, v1, :cond_d

    .line 45
    .line 46
    iget-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 47
    .line 48
    .line 49
    invoke-interface {v5}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 50
    move-result v6

    .line 51
    sub-int/2addr v2, v6

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v5, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    if-eqz v2, :cond_d

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage(Landroid/view/View;)I

    .line 61
    move-result v5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getVisibilityPercentage()I

    .line 65
    move-result v6

    .line 66
    .line 67
    if-lt v5, v6, :cond_d

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    return-void

    .line 77
    .line 78
    :cond_5
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 79
    .line 80
    if-eqz v1, :cond_b

    .line 81
    .line 82
    sget v1, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    if-nez v5, :cond_6

    .line 89
    move-object v1, v4

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Lcom/narvii/model/NVObject;

    .line 97
    .line 98
    :goto_0
    iget-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 99
    .line 100
    .line 101
    invoke-interface {v5}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    if-eqz v5, :cond_b

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v1}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v1}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 113
    .line 114
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    .line 122
    .line 123
    sget v1, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 127
    move-result-object v6

    .line 128
    .line 129
    if-eqz v6, :cond_7

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    check-cast v0, Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    move-result v0

    .line 140
    .line 141
    :cond_7
    if-eqz v0, :cond_8

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v0

    .line 146
    goto :goto_1

    .line 147
    :cond_8
    move-object v0, v4

    .line 148
    .line 149
    :goto_1
    if-eqz v0, :cond_9

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->findShownInAdapter(Landroid/view/View;)Lcom/narvii/logging/Area;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    :cond_9
    if-nez v4, :cond_a

    .line 168
    .line 169
    iget-object v4, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->areaName:Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    :cond_a
    invoke-virtual {v5, v4}, Lcom/narvii/nvplayer/NVMediaSource;->setAreaName(Ljava/lang/String;)V

    .line 173
    .line 174
    :cond_b
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 178
    .line 179
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 182
    .line 183
    .line 184
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->shouldPlay()Z

    .line 188
    move-result v0

    .line 189
    .line 190
    if-eqz v0, :cond_c

    .line 191
    .line 192
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 196
    :cond_c
    return-void

    .line 197
    .line 198
    .line 199
    :cond_d
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getDesiredPlayerPosition()I

    .line 200
    move-result v2

    .line 201
    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v6, ""

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v5

    .line 218
    .line 219
    const-string v6, "NVVideoListDelegate"

    .line 220
    .line 221
    .line 222
    invoke-static {v6, v5}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    if-eq v2, v1, :cond_21

    .line 225
    .line 226
    iget v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 227
    .line 228
    if-eq v2, v5, :cond_21

    .line 229
    .line 230
    iget-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 231
    .line 232
    .line 233
    invoke-interface {v5}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 234
    move-result v6

    .line 235
    .line 236
    sub-int v6, v2, v6

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v5, v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    .line 240
    move-result-object v5

    .line 241
    .line 242
    if-nez v5, :cond_e

    .line 243
    return-void

    .line 244
    .line 245
    :cond_e
    sget v6, Lcom/narvii/lib/R$id;->video_tag_view_id:I

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 249
    move-result-object v7

    .line 250
    .line 251
    if-eqz v7, :cond_f

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 255
    move-result-object v6

    .line 256
    .line 257
    check-cast v6, Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 261
    move-result v6

    .line 262
    goto :goto_2

    .line 263
    :cond_f
    move v6, v0

    .line 264
    .line 265
    :goto_2
    if-nez v6, :cond_10

    .line 266
    return-void

    .line 267
    .line 268
    :cond_10
    iget-object v7, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 269
    .line 270
    if-nez v7, :cond_11

    .line 271
    return-void

    .line 272
    .line 273
    .line 274
    :cond_11
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    move-result-object v6

    .line 276
    .line 277
    sget v7, Lcom/narvii/lib/R$id;->video_tag_media:I

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 281
    move-result-object v8

    .line 282
    .line 283
    if-nez v8, :cond_12

    .line 284
    return-void

    .line 285
    .line 286
    :cond_12
    check-cast v8, Lcom/narvii/nvplayer/NVMediaSource;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8}, Lcom/narvii/nvplayer/NVMediaSource;->getFirstMedia()Lcom/narvii/model/Media;

    .line 290
    move-result-object v9

    .line 291
    .line 292
    sget v10, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 296
    move-result-object v11

    .line 297
    .line 298
    if-nez v11, :cond_13

    .line 299
    move-object v11, v4

    .line 300
    goto :goto_3

    .line 301
    .line 302
    .line 303
    :cond_13
    invoke-virtual {v5, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 304
    move-result-object v11

    .line 305
    .line 306
    check-cast v11, Lcom/narvii/model/NVObject;

    .line 307
    .line 308
    :goto_3
    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 309
    .line 310
    iget-object v13, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    .line 311
    .line 312
    .line 313
    invoke-static {v13, v9}, Lcom/narvii/nvplayerview/Utils;->predictRatio(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;)F

    .line 314
    move-result v9

    .line 315
    .line 316
    .line 317
    invoke-virtual {v12, v9}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 318
    .line 319
    .line 320
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 321
    move-result v9

    .line 322
    .line 323
    if-eqz v9, :cond_14

    .line 324
    .line 325
    instance-of v9, v11, Lcom/narvii/model/Feed;

    .line 326
    .line 327
    if-eqz v9, :cond_14

    .line 328
    move-object v9, v11

    .line 329
    .line 330
    check-cast v9, Lcom/narvii/model/Feed;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9}, Lcom/narvii/model/Feed;->getStrategyInfo()Ljava/lang/String;

    .line 334
    move-result-object v9

    .line 335
    .line 336
    const-class v12, Lcom/narvii/model/StrategyInfo;

    .line 337
    .line 338
    .line 339
    invoke-static {v9, v12}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 340
    move-result-object v9

    .line 341
    .line 342
    check-cast v9, Lcom/narvii/model/StrategyInfo;

    .line 343
    .line 344
    if-eqz v9, :cond_14

    .line 345
    .line 346
    iget-object v9, v9, Lcom/narvii/model/StrategyInfo;->debugInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 347
    .line 348
    if-eqz v9, :cond_14

    .line 349
    .line 350
    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v12, v9}, Lcom/narvii/nvplayerview/NVVideoView;->setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 354
    .line 355
    :cond_14
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 359
    move-result-object v9

    .line 360
    .line 361
    if-eqz v9, :cond_15

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 365
    .line 366
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 367
    .line 368
    .line 369
    invoke-interface {v9, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 370
    .line 371
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v9, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 375
    .line 376
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v9, v10, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 380
    .line 381
    :cond_15
    iput-object v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->desView:Landroid/view/View;

    .line 382
    .line 383
    sget v9, Lcom/narvii/lib/R$id;->video_tag_scaleType:I

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 387
    move-result-object v9

    .line 388
    .line 389
    if-nez v9, :cond_16

    .line 390
    move v9, v0

    .line 391
    goto :goto_4

    .line 392
    .line 393
    :cond_16
    check-cast v9, Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 397
    move-result v9

    .line 398
    .line 399
    :goto_4
    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v12, v9}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    .line 403
    .line 404
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 405
    .line 406
    instance-of v12, v11, Lcom/narvii/model/Blog;

    .line 407
    .line 408
    if-eqz v12, :cond_17

    .line 409
    move-object v12, v11

    .line 410
    .line 411
    check-cast v12, Lcom/narvii/model/Blog;

    .line 412
    .line 413
    iget v12, v12, Lcom/narvii/model/Blog;->type:I

    .line 414
    const/4 v13, 0x6

    .line 415
    .line 416
    if-ne v12, v13, :cond_17

    .line 417
    const/4 v12, 0x4

    .line 418
    goto :goto_5

    .line 419
    :cond_17
    move v12, v0

    .line 420
    .line 421
    .line 422
    :goto_5
    invoke-interface {v9, v12}, Lcom/narvii/nvplayerview/controller/IVideoController;->setUIVisibility(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 426
    move-result-object v9

    .line 427
    .line 428
    check-cast v9, Landroid/view/ViewGroup;

    .line 429
    .line 430
    instance-of v12, v6, Lcom/narvii/widget/NVImageView;

    .line 431
    .line 432
    if-eqz v12, :cond_18

    .line 433
    .line 434
    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 435
    move-object v13, v6

    .line 436
    .line 437
    check-cast v13, Lcom/narvii/widget/NVImageView;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v12, v13}, Lcom/narvii/nvplayerview/NVVideoView;->setNVImage(Lcom/narvii/widget/NVImageView;)V

    .line 441
    goto :goto_6

    .line 442
    .line 443
    :cond_18
    iget-object v12, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v12, v4}, Lcom/narvii/nvplayerview/NVVideoView;->setNVImage(Lcom/narvii/widget/NVImageView;)V

    .line 447
    .line 448
    :goto_6
    instance-of v12, v9, Landroid/widget/FrameLayout;

    .line 449
    .line 450
    if-nez v12, :cond_1b

    .line 451
    .line 452
    instance-of v12, v9, Lcom/github/mmin18/widget/FlexLayout;

    .line 453
    .line 454
    if-eqz v12, :cond_19

    .line 455
    goto :goto_8

    .line 456
    .line 457
    :cond_19
    new-instance v12, Landroid/widget/FrameLayout;

    .line 458
    .line 459
    iget-object v13, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mContext:Landroid/app/Activity;

    .line 460
    .line 461
    .line 462
    invoke-direct {v12, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 466
    move-result-object v13

    .line 467
    .line 468
    .line 469
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .line 471
    instance-of v14, v9, Landroid/widget/LinearLayout;

    .line 472
    .line 473
    if-eqz v14, :cond_1a

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 477
    move-result v14

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v9, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 484
    goto :goto_7

    .line 485
    .line 486
    .line 487
    :cond_1a
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    .line 492
    .line 493
    :goto_7
    invoke-virtual {v12, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    .line 495
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0, v12, v9, v13}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    goto :goto_9

    .line 500
    .line 501
    :cond_1b
    :goto_8
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 505
    move-result v13

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 509
    move-result v14

    .line 510
    .line 511
    .line 512
    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 516
    move-result-object v13

    .line 517
    .line 518
    instance-of v13, v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 519
    .line 520
    if-eqz v13, :cond_1c

    .line 521
    .line 522
    .line 523
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 524
    move-result-object v13

    .line 525
    .line 526
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 527
    .line 528
    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 529
    .line 530
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 531
    .line 532
    :cond_1c
    iget-object v13, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0, v9, v13, v12}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->addVideoView(Landroid/view/ViewGroup;Lcom/narvii/nvplayerview/NVVideoView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    .line 537
    .line 538
    :goto_9
    invoke-virtual {v8, v11}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 539
    .line 540
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v8, v9}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 544
    .line 545
    .line 546
    invoke-static {v6}, Lcom/narvii/logging/LogUtils;->findShownInAdapter(Landroid/view/View;)Lcom/narvii/logging/Area;

    .line 547
    move-result-object v9

    .line 548
    .line 549
    if-eqz v9, :cond_1d

    .line 550
    .line 551
    .line 552
    invoke-interface {v9}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    .line 553
    move-result-object v12

    .line 554
    .line 555
    if-eqz v12, :cond_1d

    .line 556
    .line 557
    .line 558
    invoke-interface {v9}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    .line 559
    move-result-object v9

    .line 560
    goto :goto_a

    .line 561
    :cond_1d
    move-object v9, v4

    .line 562
    .line 563
    :goto_a
    if-nez v9, :cond_1e

    .line 564
    .line 565
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->areaName:Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    :cond_1e
    invoke-virtual {v8, v9}, Lcom/narvii/nvplayer/NVMediaSource;->setAreaName(Ljava/lang/String;)V

    .line 569
    .line 570
    iget-object v9, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v9, v3}, Lcom/narvii/nvplayerview/NVVideoView;->hidePlayButton(Z)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v6, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 577
    .line 578
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0, v6, v8, v4}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->quickSetting(Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 582
    .line 583
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 587
    .line 588
    iget-object v6, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v6, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 592
    .line 593
    iput v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->startPreload()V

    .line 597
    .line 598
    sget v2, Lcom/narvii/lib/R$id;->video_tag_clickable:I

    .line 599
    .line 600
    .line 601
    invoke-virtual {v5, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 602
    move-result-object v2

    .line 603
    .line 604
    instance-of v6, v2, Ljava/lang/Boolean;

    .line 605
    .line 606
    if-eqz v6, :cond_20

    .line 607
    .line 608
    check-cast v2, Ljava/lang/Boolean;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 612
    move-result v2

    .line 613
    .line 614
    if-eqz v2, :cond_1f

    .line 615
    goto :goto_b

    .line 616
    .line 617
    :cond_1f
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 621
    goto :goto_c

    .line 622
    .line 623
    :cond_20
    :goto_b
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 627
    .line 628
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 629
    .line 630
    new-instance v2, Lcom/narvii/nvplayerview/delegate/d;

    .line 631
    .line 632
    .line 633
    invoke-direct {v2, p0, v5}, Lcom/narvii/nvplayerview/delegate/d;-><init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/View;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    .line 638
    :goto_c
    iput-boolean v3, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    .line 639
    .line 640
    :cond_21
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->playerPositionChanged:Z

    .line 641
    .line 642
    if-eqz v0, :cond_25

    .line 643
    .line 644
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 645
    .line 646
    if-eq v0, v1, :cond_25

    .line 647
    .line 648
    .line 649
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->showBlurAsBackground()Z

    .line 650
    move-result v0

    .line 651
    .line 652
    if-eqz v0, :cond_25

    .line 653
    .line 654
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 655
    .line 656
    iget v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 657
    .line 658
    .line 659
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getFirstVisiblePosition()I

    .line 660
    move-result v2

    .line 661
    sub-int/2addr v1, v2

    .line 662
    .line 663
    .line 664
    invoke-virtual {p0, v0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->getChildAt(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)Landroid/view/View;

    .line 665
    move-result-object v0

    .line 666
    .line 667
    if-nez v0, :cond_22

    .line 668
    return-void

    .line 669
    .line 670
    :cond_22
    sget v1, Lcom/narvii/lib/R$id;->video_tag_cover_media:I

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 674
    move-result-object v1

    .line 675
    .line 676
    if-nez v1, :cond_23

    .line 677
    return-void

    .line 678
    .line 679
    :cond_23
    sget v2, Lcom/narvii/lib/R$id;->video_tag_nvObj:I

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 683
    move-result-object v5

    .line 684
    .line 685
    if-nez v5, :cond_24

    .line 686
    goto :goto_d

    .line 687
    .line 688
    .line 689
    :cond_24
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 690
    move-result-object v0

    .line 691
    move-object v4, v0

    .line 692
    .line 693
    check-cast v4, Lcom/narvii/model/NVObject;

    .line 694
    .line 695
    :goto_d
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->getNvImageView()Lcom/narvii/widget/NVImageView;

    .line 699
    move-result-object v0

    .line 700
    .line 701
    instance-of v2, v0, Lcom/narvii/widget/ISecretImage;

    .line 702
    .line 703
    if-eqz v2, :cond_25

    .line 704
    .line 705
    .line 706
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->forceBlur()Z

    .line 707
    move-result v2

    .line 708
    .line 709
    if-eqz v2, :cond_25

    .line 710
    .line 711
    instance-of v2, v4, Lcom/narvii/model/Blog;

    .line 712
    .line 713
    if-eqz v2, :cond_25

    .line 714
    .line 715
    check-cast v0, Lcom/narvii/widget/ISecretImage;

    .line 716
    .line 717
    check-cast v1, Lcom/narvii/model/Media;

    .line 718
    .line 719
    const/high16 v2, 0x600000

    .line 720
    .line 721
    .line 722
    invoke-interface {v0, v1, v3, v2}, Lcom/narvii/widget/ISecretImage;->setImageForceBlur(Lcom/narvii/model/Media;ZI)V

    .line 723
    :cond_25
    :goto_e
    return-void
.end method

.method public removeVideoView()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->getNvImageView()Lcom/narvii/widget/NVImageView;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/narvii/nvplayerview/NVVideoView;->hidePlayButton(Z)V

    .line 28
    .line 29
    :cond_0
    instance-of v2, v0, Lcom/narvii/widget/ISecretImage;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->forceBlur()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    move-object v2, v0

    .line 39
    .line 40
    check-cast v2, Lcom/narvii/widget/ISecretImage;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getMedia()Lcom/narvii/model/Media;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const/high16 v3, 0x600000

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v0, v1, v3}, Lcom/narvii/widget/ISecretImage;->setImageForceBlur(Lcom/narvii/model/Media;ZI)V

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v1}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->debugEnable()Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->resetDebugVideoView()V

    .line 85
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 15
    return-void
.end method

.method public resetVideoView()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->reset()V

    .line 4
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->addOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->removeOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V

    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->removeVideoView()V

    .line 41
    :cond_3
    :goto_0
    return-void
.end method

.method public setVideoViewClickListener(Lcom/narvii/nvplayerview/listener/VideoViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->videoViewClickListener:Lcom/narvii/nvplayerview/listener/VideoViewClickListener;

    return-void
.end method

.method public synthetic shouldPauseForPageAboveVideo(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->m(Lcom/narvii/nvplayer/IVideoListener;I)Z

    move-result p1

    return p1
.end method

.method protected shouldPlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showBlurAsBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startPreload()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->supportPreload()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    return-void

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getTotalCountInAdapter()I

    .line 19
    move-result v0

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    move v4, v3

    .line 28
    :goto_0
    const/4 v5, 0x2

    .line 29
    .line 30
    if-ge v3, v5, :cond_3

    .line 31
    .line 32
    iget v5, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayerPosition:I

    .line 33
    add-int/2addr v5, v3

    .line 34
    const/4 v6, 0x1

    .line 35
    add-int/2addr v5, v6

    .line 36
    .line 37
    if-ge v5, v0, :cond_2

    .line 38
    .line 39
    iget-object v7, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listView:Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 40
    .line 41
    .line 42
    invoke-interface {v7, v5}, Lcom/narvii/nvplayerview/delegate/IVideoListView;->getItemInAdapter(I)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    instance-of v7, v5, Lcom/narvii/model/Feed;

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    check-cast v5, Lcom/narvii/model/Feed;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 53
    move-result-object v7

    .line 54
    .line 55
    if-eqz v7, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 59
    move-result-object v7

    .line 60
    .line 61
    .line 62
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 63
    move-result v7

    .line 64
    .line 65
    if-lt v7, v6, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v2}, Lcom/narvii/model/Feed;->getPreviewVideoList(Z)Ljava/util/List;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    .line 72
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    check-cast v5, Lcom/narvii/model/Media;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/narvii/model/Media;->isVideo()Z

    .line 79
    move-result v7

    .line 80
    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    iget-object v7, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-static {v7}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v7

    .line 88
    .line 89
    if-nez v7, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    move v4, v6

    .line 94
    .line 95
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_3
    if-eqz v4, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mNVContext:Lcom/narvii/app/NVContext;

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v2, v1}, Lcom/narvii/nvplayer/INVPlayer;->preload(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 106
    :cond_4
    return-void
.end method

.method protected supportPreload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->active:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->runnable:Ljava/lang/Runnable;

    .line 9
    .line 10
    const-wide/16 v0, 0x64

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 14
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getVideoSurface()Landroid/view/Surface;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mSurface:Landroid/view/Surface;

    .line 20
    return-void
.end method

.method public surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method protected vertical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

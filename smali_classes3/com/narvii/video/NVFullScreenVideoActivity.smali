.class public Lcom/narvii/video/NVFullScreenVideoActivity;
.super Lcom/narvii/app/NVActivity;
.source "NVFullScreenVideoActivity.java"

# interfaces
.implements Lcom/narvii/nvplayer/IVideoListener;
.implements Lcom/narvii/nvplayerview/ISurfaceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoFullScreen"


# instance fields
.field private animating:Z

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private mSurface:Landroid/view/Surface;

.field private mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

.field private mVideoView:Lcom/narvii/nvplayerview/NVVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    return-void
.end method

.method private getAttachedObject()Lcom/narvii/model/NVObject;
    .locals 3

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parentClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 88
    const-class v1, Lcom/narvii/model/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "parent"

    if-ne v0, v1, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static intent(Lcom/narvii/model/Media;)Landroid/content/Intent;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    const-string v2, "thumbUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object p0, p0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;
    .locals 2

    .line 67
    invoke-static {p0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "media"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "parent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    instance-of p0, p1, Lcom/narvii/model/Feed;

    const-string v1, "parentClass"

    if-eqz p0, :cond_0

    .line 71
    const-class p0, Lcom/narvii/model/Feed;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 72
    :cond_0
    instance-of p0, p1, Lcom/narvii/model/SharedFile;

    if-eqz p0, :cond_1

    .line 73
    const-class p0, Lcom/narvii/model/SharedFile;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 74
    :cond_1
    instance-of p0, p1, Lcom/narvii/model/ChatMessage;

    if-eqz p0, :cond_2

    .line 75
    const-class p0, Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 76
    :cond_2
    instance-of p0, p1, Lcom/narvii/model/Comment;

    if-eqz p0, :cond_3

    .line 77
    const-class p0, Lcom/narvii/model/Comment;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 78
    :cond_3
    instance-of p0, p1, Lcom/narvii/model/User;

    if-eqz p0, :cond_4

    .line 79
    const-class p0, Lcom/narvii/model/User;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/model/NVObject;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 103
    invoke-static {p0, p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "clz"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "clz"

    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static intent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-class v2, Lcom/narvii/video/NVFullScreenVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 54
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoPlay"

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPressBack()V

    return-void
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onCachedBytesRead(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onOrientationChanged(I)V

    .line 231
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 118
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoView;

    invoke-direct {p1, p0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 120
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-static {p0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "scale_type"

    .line 123
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v2, v1}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    const/high16 v1, -0x40800000    # -1.0f

    const-string v2, "ratio"

    .line 125
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 126
    iget-object v4, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v4, v3}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 127
    iget-object v3, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v3, p0}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 128
    iget-object v3, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 129
    new-instance v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    iget-object v2, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    iget-object v3, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-direct {v1, v2, p0, v3}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;-><init>(Lcom/narvii/nvplayerview/NVVideoView;Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V

    iput-object v1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    .line 130
    iget-object v1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v1}, Lcom/narvii/nvplayerview/controller/IVideoController;->init()V

    .line 132
    iget-object v1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 133
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 134
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v2

    :goto_1
    const-string v3, "url"

    .line 135
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "animating"

    .line 137
    invoke-virtual {p0, v3, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->animating:Z

    .line 138
    iget-boolean v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->animating:Z

    if-eqz v0, :cond_4

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 141
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/video/NVFullScreenVideoActivity;->getAttachedObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 142
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    .line 144
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_3

    .line 145
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v0, "renderView"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 146
    new-instance p1, Lcom/narvii/util/DetailTransition;

    invoke-direct {p1}, Lcom/narvii/util/DetailTransition;-><init>()V

    const-wide/16 v0, 0x12c

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSharedElementExitTransition(Landroid/transition/Transition;)V

    .line 150
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->setAnimating(Z)V

    goto :goto_3

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    goto :goto_3

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->reset()V

    .line 157
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoSurface()V

    .line 158
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const-string v1, "media"

    .line 160
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/narvii/model/Media;

    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    if-eqz v1, :cond_5

    .line 162
    iget-object p1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_5
    new-instance v1, Lcom/narvii/model/Media;

    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    const/16 v3, 0x66

    .line 165
    iput v3, v1, Lcom/narvii/model/Media;->type:I

    .line 166
    iput-object p1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 167
    iget-object p1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_2
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 170
    invoke-direct {p0}, Lcom/narvii/video/NVFullScreenVideoActivity;->getAttachedObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 171
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0, v0, v2}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 174
    :goto_3
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->setOptionMenu()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->destroy()V

    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onErrorDebug(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->pause()V

    .line 194
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->lockMute(Z)V

    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayerview/controller/IVideoController;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPositionDiscontinuity(Lcom/narvii/nvplayer/IVideoListener;I)V

    return-void
.end method

.method public synthetic onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPreloadStrategyChanged(Lcom/narvii/nvplayer/IVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onRenderFirstFrameInterval(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onRenderFirstFrameInterval(Lcom/narvii/nvplayer/IVideoListener;J)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoController:Lcom/narvii/nvplayerview/controller/IVideoController;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/controller/IVideoController;->setTotalTime()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 199
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 202
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v2, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 204
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->lockMute(Z)V

    :cond_1
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    :cond_0
    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSizeChanged(Lcom/narvii/nvplayer/IVideoListener;IIIF)V

    return-void
.end method

.method public synthetic onVideoSupportLowResVideo(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSupportLowResVideo(Lcom/narvii/nvplayer/IVideoListener;Z)V

    return-void
.end method

.method public synthetic shouldPauseForPageAboveVideo(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$shouldPauseForPageAboveVideo(Lcom/narvii/nvplayer/IVideoListener;I)Z

    move-result p1

    return p1
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 5

    .line 246
    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mSurface:Landroid/view/Surface;

    .line 247
    iget-object v0, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 248
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-ge p1, v1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 250
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lcom/narvii/nvplayer/INVPlayer;->seekTo(JZ)V

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lcom/narvii/video/NVFullScreenVideoActivity;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

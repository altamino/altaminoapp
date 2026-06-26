.class public Lcom/narvii/media/MediaGalleryActivity;
.super Lcom/narvii/app/NVActivity;
.source "MediaGalleryActivity.java"

# interfaces
.implements Lcom/narvii/nvplayerview/ISurfaceListener;
.implements Lcom/narvii/nvplayer/IVideoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/MediaGalleryActivity$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

.field caption:Landroid/widget/TextView;

.field downY:I

.field firstLoad:Z

.field lastView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field overlay:Landroid/view/View;

.field private pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field pager:Lcom/narvii/widget/NVViewPager;

.field protected parent:Lcom/narvii/model/NVObject;

.field player:Lcom/narvii/nvplayer/INVPlayer;

.field position:I

.field smb:Lcom/narvii/widget/ShareMediaBar;

.field surface:Landroid/view/Surface;

.field target:Landroid/view/View;

.field videoView:Lcom/narvii/nvplayerview/NVVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    .line 189
    new-instance v0, Lcom/narvii/media/MediaGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaGalleryActivity$1;-><init>(Lcom/narvii/media/MediaGalleryActivity;)V

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/MediaGalleryActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->pageSelected(I)V

    return-void
.end method

.method private pageSelected(I)V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-virtual {v0, p1}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 239
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/narvii/lib/R$id;->video_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v3, v2}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 249
    :cond_1
    iput-object v2, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 251
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 252
    iget-object v3, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    if-nez v0, :cond_4

    .line 257
    invoke-static {p0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    .line 258
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 262
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, v2}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->video_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayerview/NVVideoView;

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 266
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    .line 267
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 268
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/narvii/nvplayerview/Utils;->predictRatio(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 269
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 270
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 271
    iget-object v3, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 273
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 274
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0, v0, v2}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 275
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 276
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->surface:Landroid/view/Surface;

    .line 277
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_6

    .line 278
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 279
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 281
    :cond_6
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->lastView:Ljava/lang/ref/WeakReference;

    :cond_7
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/media/MediaGalleryActivity;->downY:I

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-virtual {v1}, Lcom/narvii/util/PagerGalleryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-virtual {v1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 87
    sget v0, Lcom/narvii/lib/R$layout;->gallery_layout:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaGallery"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onCreate$0$MediaGalleryActivity()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->onShareMediaButtonClicked()V

    return-void
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onCachedBytesRead(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 94
    sget v0, Lcom/narvii/lib/R$id;->pager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVViewPager;

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    .line 95
    sget v0, Lcom/narvii/lib/R$id;->overlay:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->overlay:Landroid/view/View;

    .line 96
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->caption:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/narvii/lib/R$id;->share_media_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ShareMediaBar;

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    .line 98
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    const-string v1, "Fullscreen Media"

    iput-object v1, v0, Lcom/narvii/widget/ShareMediaBar;->source:Ljava/lang/String;

    const-string v0, "config"

    .line 99
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v0, "preview"

    .line 100
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    const-string v2, "hideShareBar"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parentClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 108
    :try_start_0
    const-class v1, Lcom/narvii/model/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "parent"

    if-ne v0, v1, :cond_1

    .line 109
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->parent:Lcom/narvii/model/NVObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 122
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    new-instance v1, Lcom/narvii/media/-$$Lambda$MediaGalleryActivity$XpROrvZJa36zQlSMSvsitUn5XIQ;

    invoke-direct {v1, p0}, Lcom/narvii/media/-$$Lambda$MediaGalleryActivity$XpROrvZJa36zQlSMSvsitUn5XIQ;-><init>(Lcom/narvii/media/MediaGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ShareMediaBar;->setInnerClickListener(Lcom/narvii/widget/ShareMediaBar$ShareMediaInnerClickListener;)V

    .line 126
    new-instance v0, Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaGalleryActivity$Adapter;-><init>(Lcom/narvii/media/MediaGalleryActivity;)V

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    const-string v0, "list"

    .line 127
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-virtual {v1, v0}, Lcom/narvii/util/PagerGalleryAdapter;->setList(Ljava/util/List;)V

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v0, "position"

    if-nez p1, :cond_4

    .line 135
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    .line 139
    :goto_2
    iget p1, p0, Lcom/narvii/media/MediaGalleryActivity;->position:I

    if-ltz p1, :cond_5

    .line 140
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 143
    :cond_5
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 144
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->pageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 145
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->smb:Lcom/narvii/widget/ShareMediaBar;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onErrorDebug(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 166
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaGalleryActivity$Adapter;->onLongClick(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1

    .line 169
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPageSelectedFinished(I)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 291
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 293
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public synthetic onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPlayerError(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 339
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 341
    sget p2, Lcom/narvii/lib/R$id;->video_loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->video_loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
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
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->target:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 333
    sget v1, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 299
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 300
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 301
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 158
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onShareMediaButtonClicked()V
    .locals 0

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

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

.method public saveImageToPhone()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->adapter:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/PagerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 498
    iget v1, v0, Lcom/narvii/model/Media;->type:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 499
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "saveImage"

    .line 500
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/SaveImageFragment;

    if-nez v1, :cond_0

    .line 502
    new-instance v1, Lcom/narvii/media/SaveImageFragment;

    invoke-direct {v1}, Lcom/narvii/media/SaveImageFragment;-><init>()V

    .line 503
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 504
    invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 505
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 507
    :cond_0
    invoke-virtual {v1, v0}, Lcom/narvii/media/SaveImageFragment;->save(Lcom/narvii/model/Media;)V

    :cond_1
    return-void
.end method

.method public synthetic shouldPauseForPageAboveVideo(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$shouldPauseForPageAboveVideo(Lcom/narvii/nvplayer/IVideoListener;I)Z

    move-result p1

    return p1
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 309
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity;->player:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.class public abstract Lcom/narvii/video/BaseMediaEditorFragment;
.super Lcom/narvii/app/NVFragment;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseMediaEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseMediaEditorFragment.kt\ncom/narvii/video/BaseMediaEditorFragment\n*L\n1#1,598:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private autoPlaying:Z

.field private controllerActive:Z

.field private dragging:Z

.field private hasAudioPrepared:Z

.field private hasVideoPrepared:Z

.field private inPlay:Z

.field private initSuccess:Z

.field private isMute:Z

.field private lastSeekPreviewTime:I

.field private needRealOutput:Z

.field private outputFileDir:Ljava/io/File;

.field private pauseShadow:Landroid/view/View;

.field private pendingSeekAction:Ljava/lang/Runnable;

.field private playerButton:Landroid/widget/ImageView;

.field protected previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

.field private previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

.field private final rtl:Z

.field private final seekRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seeking:Z

.field private skipPauseVideo:Z

.field protected videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 54
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    .line 56
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->rtl:Z

    return-void
.end method

.method public static final synthetic access$getControllerActive$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    return p0
.end method

.method public static final synthetic access$getHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasAudioPrepared:Z

    return p0
.end method

.method public static final synthetic access$getHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    return p0
.end method

.method public static final synthetic access$isMute$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    return p0
.end method

.method public static final synthetic access$setControllerActive$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    return-void
.end method

.method public static final synthetic access$setHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasAudioPrepared:Z

    return-void
.end method

.method public static final synthetic access$setHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    return-void
.end method

.method public static final synthetic access$setMute$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    return-void
.end method

.method public static synthetic changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 530
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: changeVideoPlaybackStatus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final init()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "realOutput"

    .line 203
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    .line 204
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->initInputClips()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final initMediaPlayer()V
    .locals 5

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    .line 378
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    const-string v2, "previewPlayer"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasAudioPrepared:Z

    .line 379
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v1, :cond_1

    new-instance v4, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$1;

    invoke-direct {v4, p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    invoke-interface {v1, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addSeekingPositionChangeListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V

    .line 380
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    invoke-direct {v2, p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V

    .line 457
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 458
    invoke-static {p0, v1, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 459
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoPlaybackStatusChanged(Z)V

    .line 460
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_container:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$3;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 380
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 378
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic prepareAVClipList$default(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 286
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: prepareAVClipList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 477
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: safeSeekTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final seekTo(II)V
    .locals 3

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    const/4 v0, 0x0

    const-string v1, "previewPlayer"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 471
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(II)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic seekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 468
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->seekTo(II)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: seekTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 569
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showInvalidDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected final changeSeekStatus(Z)V
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 498
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 499
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onSeekingStatusChanged(Z)V

    return-void
.end method

.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "previewPlayer"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    .line 532
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->showPauseButton()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 533
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    if-eqz p1, :cond_0

    .line 534
    sget v5, Lcom/narvii/mediaeditor/R$drawable;->ic_sr_media_play:I

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 537
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :cond_5
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mute()V

    .line 541
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    .line 542
    iput-boolean v3, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    .line 543
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pause()V

    .line 544
    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoPlaybackStatusChanged(Z)V

    goto :goto_3

    .line 543
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 540
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 546
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->showPauseButton()Z

    move-result p1

    if-nez p1, :cond_9

    .line 547
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 549
    :cond_9
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    if-eqz p1, :cond_a

    .line 550
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_action_pause:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 553
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :cond_c
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    .line 555
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    .line 556
    iput-boolean v3, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    .line 557
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    if-nez p1, :cond_e

    .line 558
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    .line 559
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoPlaybackStatusChanged(Z)V

    goto :goto_3

    .line 558
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    :goto_3
    return-void

    .line 555
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method protected final getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method protected abstract getAudioInputClipList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method protected final getAutoPlaying()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    return v0
.end method

.method protected abstract getCaptionList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation
.end method

.method protected final getDragging()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    return v0
.end method

.method protected final getInPlay()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    return v0
.end method

.method protected final getInitSuccess()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->initSuccess:Z

    return v0
.end method

.method protected final getNeedRealOutput()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    return v0
.end method

.method protected final getOutputFileDir()Ljava/io/File;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    return-object v0
.end method

.method protected final getPauseShadow()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getPipClipList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method protected final getPlayerButton()Landroid/widget/ImageView;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "previewPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getPreviewVideoView()Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    return-object v0
.end method

.method protected final getRtl()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->rtl:Z

    return v0
.end method

.method protected final getSeekRequestQueue()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected final getSkipPauseVideo()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    return v0
.end method

.method protected abstract getStickerList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method protected final getTotalVisibleVideoDurationInMs()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 588
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 590
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_0
    new-instance v1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v0, "previewPlayer"

    .line 587
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected abstract getVideoInputClipList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method protected final getVideoManager()Lcom/narvii/video/services/VideoManager;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected ignoreMainTrackCompletionInBase()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initComponent()V
.end method

.method protected initInputClips()Z
    .locals 9

    .line 211
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoInputClipList()Ljava/util/ArrayList;

    move-result-object v2

    .line 212
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAudioInputClipList()Ljava/util/ArrayList;

    move-result-object v3

    .line 213
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v4

    .line 214
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getStickerList()Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "outputFileDir"

    .line 215
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    if-eqz v1, :cond_3

    .line 245
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    .line 246
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 246
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    :cond_3
    :goto_0
    const-string v0, "prepare AV clip list"

    .line 250
    invoke-static {v7, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v8, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/BaseMediaEditorFragment$initInputClips$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return v7

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 235
    invoke-static {p0, v0, v7, v6}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    return v0
.end method

.method protected abstract innerOnVideoPrepared()V
.end method

.method protected final isAudioClipIndexValid(I)Z
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    :cond_2
    const-string p1, "previewPlayer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected final isImageInput(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-static {p1}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected final isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, p1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, ","

    aput-object v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v2, "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp"

    .line 510
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 511
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 515
    :cond_1
    iget-object v3, p1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 516
    :goto_0
    iget-object v4, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 517
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 518
    iget-object v6, p1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    .line 520
    :cond_5
    iget-object v6, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    return v0

    :cond_7
    return v1
.end method

.method protected final isSeeking()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "previewPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAVClipsPrepared()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer()V

    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 2

    .line 88
    iget-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    const-string v0, "previewPlayer"

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 89
    iput-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_3

    .line 93
    iget-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void

    .line 92
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "videoManager"

    .line 162
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService<VideoManager>(\"videoManager\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 163
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->init()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->initSuccess:Z

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    return p1
.end method

.method public onControllerActive()V
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 190
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->release()V

    .line 191
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->_$_clearFindViewByIdCache()V

    return-void

    :cond_0
    const-string v0, "previewPlayer"

    .line 190
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 1

    .line 104
    iget p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->lastSeekPreviewTime:I

    if-ne p2, p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-boolean p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 108
    iget-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mute()V

    .line 109
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    goto :goto_0

    :cond_1
    const-string p1, "previewPlayer"

    .line 108
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 111
    :cond_2
    :goto_0
    iput p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->lastSeekPreviewTime:I

    .line 112
    new-instance p2, Lcom/narvii/video/BaseMediaEditorFragment$onFrameLocatedDuringMove$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment$onFrameLocatedDuringMove$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;I)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 113
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 175
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 177
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 178
    iget-boolean v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 179
    invoke-static {p0, v1, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    .line 183
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    const-string v0, "editorPackFactory"

    .line 185
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/IEditorPackFactory;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorRecycler;->clearCacheResources()V

    :cond_1
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 135
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    return-void

    :cond_1
    const-string p1, "previewPlayer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onReplayTriggered(III)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 120
    :cond_0
    iput-boolean p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    if-eqz v0, :cond_3

    :cond_2
    if-eq p3, v1, :cond_5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    goto :goto_0

    .line 126
    :cond_3
    iput-boolean p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    .line 127
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->ignoreMainTrackCompletionInBase()Z

    move-result p2

    if-eqz p2, :cond_4

    if-ne p3, v1, :cond_4

    return-void

    .line 130
    :cond_4
    new-instance p2, Lcom/narvii/video/BaseMediaEditorFragment$onReplayTriggered$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment$onReplayTriggered$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;I)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->restoreStates()V

    .line 168
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 169
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "previewPlayer"

    .line 167
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract onSeekingStatusChanged(Z)V
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 1

    const-string v0, "clipInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V

    return-void
.end method

.method public onTimeLineLayout()V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    return-void
.end method

.method protected abstract onVideoPlaybackStatusChanged(Z)V
.end method

.method protected onVideoSeekingPositionChanged(J)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->initComponent()V

    .line 150
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    if-eqz p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/narvii/video/BaseMediaEditorFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/video/BaseMediaEditorFragment$onViewCreated$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_0
    sget-object p1, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->Companion:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;

    iget-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2, p0}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;->initPlayer(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;Lcom/narvii/app/NVContext;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    return-void

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 151
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to find a NVEditorPreviewVideoView instance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "prepare AV clip list"

    .line 287
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment$prepareAVClipList$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z
    .locals 7

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    const-string v6, ";"

    invoke-static {v2, v6, v1, v3, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eq v2, v4, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v6, ","

    .line 313
    invoke-static {v2, v6, v1, v3, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_2
    return v1

    .line 317
    :cond_3
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v3, "clip.inputPath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x1388

    .line 319
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v1, p1, v4, v5}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    goto :goto_0

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "inputFile!!.absolutePath"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v0

    .line 322
    iput-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 323
    iget-boolean v2, v0, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 326
    :cond_5
    iget v2, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 327
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v3, p1, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    move v0, v2

    .line 330
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->updateAVClipDurations(Lcom/narvii/video/model/AVClipInfoPack;I)V

    return v4

    :cond_6
    :goto_1
    return v1

    .line 321
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    :cond_8
    const-string p1, "videoManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method protected final preparePipClipSync(Lcom/narvii/pip/PipInfoPack;)Z
    .locals 7

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const-string v6, ";"

    invoke-static {v3, v6, v0, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_3

    :cond_2
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v6, ","

    .line 340
    invoke-static {v3, v6, v0, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    :cond_3
    return v0

    .line 344
    :cond_4
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    const-string v4, "clip.inputPath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v0, 0x1388

    goto :goto_1

    .line 347
    :cond_5
    iget-object v3, p0, Lcom/narvii/video/BaseMediaEditorFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    if-eqz v3, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inputFile!!.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v1

    .line 348
    iput-object v1, p1, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 349
    iget-boolean v2, v1, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    if-nez v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 352
    :cond_6
    iget v0, v1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 354
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    move-result v1

    if-nez v1, :cond_7

    .line 355
    iget v1, p1, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 357
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    move-result v1

    goto :goto_2

    :cond_8
    move v1, v0

    :goto_2
    iput v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 358
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    return v5

    :cond_9
    :goto_3
    return v0

    .line 347
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_b
    const-string p1, "videoManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected final safeSeekTo(II)V
    .locals 2

    .line 478
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->seekTo(II)V

    goto :goto_1

    :cond_0
    if-lez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "previewPlayer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 487
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_3

    .line 488
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 490
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected final setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method protected final setAutoPlaying(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    return-void
.end method

.method protected final setDragging(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    return-void
.end method

.method protected final setInPlay(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    return-void
.end method

.method protected final setInitSuccess(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->initSuccess:Z

    return-void
.end method

.method protected final setNeedRealOutput(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    return-void
.end method

.method protected final setOutputFileDir(Ljava/io/File;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    return-void
.end method

.method protected final setPauseShadow(Landroid/view/View;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    return-void
.end method

.method protected final setPlayerButton(Landroid/widget/ImageView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    return-void
.end method

.method protected final setPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    return-void
.end method

.method protected final setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    return-void
.end method

.method protected final setSkipPauseVideo(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    return-void
.end method

.method protected final setVideoManager(Lcom/narvii/video/services/VideoManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    return-void
.end method

.method protected final showInvalidDialog(Z)V
    .locals 3

    .line 570
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 572
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v1, 0x104000a

    .line 573
    new-instance v2, Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 579
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 580
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateAVClipDurations(Lcom/narvii/video/model/AVClipInfoPack;I)V
    .locals 1

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 365
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    return-void
.end method

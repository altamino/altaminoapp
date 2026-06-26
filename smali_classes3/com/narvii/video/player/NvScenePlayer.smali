.class public final Lcom/narvii/video/player/NvScenePlayer;
.super Lcom/narvii/video/player/BaseScenePlayer;
.source "NvScenePlayer.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IMediaEventListener;
.implements Lcom/narvii/video/interfaces/IPlayingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/player/NvScenePlayer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNvScenePlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NvScenePlayer.kt\ncom/narvii/video/player/NvScenePlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,307:1\n1587#2,2:308\n*E\n*S KotlinDebug\n*F\n+ 1 NvScenePlayer.kt\ncom/narvii/video/player/NvScenePlayer\n*L\n66#1,2:308\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/player/NvScenePlayer$Companion;

.field public static final TAG:Ljava/lang/String; = "IScenePlayer"


# instance fields
.field private final context:Landroid/content/Context;

.field private isWaitingPlay:Z

.field private previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

.field private final seekingPositionListener:Lcom/narvii/video/interfaces/OnSeekingPositionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/player/NvScenePlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/player/NvScenePlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/player/NvScenePlayer;->Companion:Lcom/narvii/video/player/NvScenePlayer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->context:Landroid/content/Context;

    .line 28
    new-instance p1, Lcom/narvii/video/player/NvScenePlayer$seekingPositionListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/player/NvScenePlayer$seekingPositionListener$1;-><init>(Lcom/narvii/video/player/NvScenePlayer;)V

    iput-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->seekingPositionListener:Lcom/narvii/video/interfaces/OnSeekingPositionListener;

    .line 36
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "editorPackFactory"

    .line 37
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/IEditorPackFactory;

    .line 38
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/narvii/video/services/IEditorPackFactory;->getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 39
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->seekingPositionListener:Lcom/narvii/video/interfaces/OnSeekingPositionListener;

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addSeekingPositionChangeListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V

    :cond_2
    return-void

    .line 36
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public static final synthetic access$isWaitingPlay$p(Lcom/narvii/video/player/NvScenePlayer;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    return p0
.end method

.method public static final synthetic access$setWaitingPlay$p(Lcom/narvii/video/player/NvScenePlayer;Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    return-void
.end method

.method public static final synthetic access$startPlay(Lcom/narvii/video/player/NvScenePlayer;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->startPlay()V

    return-void
.end method

.method private final getCurrentClipIndex()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentClipIndex(J)I

    move-result v0

    return v0
.end method

.method private final seekTimeLineTo(IIZ)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    .line 51
    iput-boolean p3, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(II)V

    :cond_0
    return-void
.end method

.method private final seekTimeLineTo(IZ)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    .line 58
    iput-boolean p2, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    .line 59
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    :cond_0
    return-void
.end method

.method private final startPlay()V
    .locals 4

    .line 123
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->getEndOffSet()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start(J)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final startPlayFromBegining()V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->getEndOffSet()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->startFromBeginning(J)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->startFromBeginning()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->startFromBeginning()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public fadeBackgroundMusic(ZZ)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setGlobalBgmFade(ZZ)V

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public isPlaying()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isVideoPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mute()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mute()V

    :cond_0
    return-void
.end method

.method public onAudioTrackAllPrepared()V
    .locals 0

    return-void
.end method

.method public onDoNextVideoSeek()V
    .locals 0

    return-void
.end method

.method public onPlayingEOF()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isLoop()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->startPlayFromBegining()V

    goto :goto_1

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getStopLocationStatus()I

    move-result v0

    sget-object v1, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    invoke-virtual {v1}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_CURRENT_SCENE_BEGINNING()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneFirstClipIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-direct {p0, v0, v2, v2}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneEnd(Ljava/lang/String;I)V

    .line 299
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStop()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    :cond_0
    const/16 p3, 0x64

    int-to-long p3, p3

    add-long/2addr p1, p3

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneIdByPosition(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object p2

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    move-result p3

    if-nez p3, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    move-result p4

    invoke-interface {p3, p2, p4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneEnd(Ljava/lang/String;I)V

    .line 282
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 285
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSceneChanged  >>> currentSceneId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   currentSceneIndex = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IScenePlayer"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onPlayingStopped()V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onVideoError(Ljava/lang/Exception;)V
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onVideoPrepared()V
    .locals 0

    return-void
.end method

.method public onVideoWindowIndexChanged(IZ)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IMediaEventListener$DefaultImpls;->onVideoWindowIndexChanged(Lcom/narvii/video/interfaces/IMediaEventListener;IZ)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pause()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->startPlay()V

    .line 119
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStart()V

    :cond_0
    return-void
.end method

.method public playLastScene()Ljava/lang/String;
    .locals 9

    .line 181
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentClipIndex()I

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    invoke-virtual {v1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v4, -0x1

    :goto_1
    const/4 v5, 0x0

    if-ltz v0, :cond_6

    .line 188
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "videoClipList[i]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 189
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 190
    invoke-virtual {v6}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    move v4, v0

    :goto_2
    if-lez v4, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getPlayingSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    invoke-virtual {v3}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    invoke-virtual {v4}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    invoke-virtual {p0, v4}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    :goto_4
    if-ne v4, v1, :cond_7

    .line 209
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_7
    invoke-direct {p0, v4, v5, v2}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 214
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 215
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public playNextScene()Ljava/lang/String;
    .locals 10

    .line 149
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentClipIndex()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    invoke-virtual {v1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_1
    const/4 v6, 0x0

    if-ge v0, v1, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "videoClipList[i]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 157
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 158
    invoke-virtual {v7}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    goto :goto_3

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v0, v7, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    invoke-virtual {v5}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    invoke-virtual {p0, v5}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_3
    if-ne v0, v4, :cond_6

    .line 171
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_6
    invoke-direct {p0, v0, v6, v2}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 176
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 177
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/narvii/video/player/BaseScenePlayer;->release()V

    .line 86
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->release()V

    :cond_0
    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/narvii/video/player/BaseScenePlayer;->release([Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->release([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public restoreStatus()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->restoreStates()V

    :cond_0
    return-void
.end method

.method public seek(IJZ)V
    .locals 2

    long-to-int p3, p2

    .line 231
    invoke-direct {p0, p1, p3, p4}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 233
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentPosition()J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getTotalDuration()J

    move-result-wide v0

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    :cond_0
    return-void
.end method

.method public seek(JZ)V
    .locals 2

    long-to-int v0, p1

    .line 224
    invoke-direct {p0, v0, p3}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IZ)V

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneIdByPosition(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentPosition()J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getTotalDuration()J

    move-result-wide v0

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    :cond_0
    return-void
.end method

.method public setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getGlobalBgmClipInfo()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeGlobalAudioClip()V

    :cond_0
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/video/player/BaseScenePlayer;->setGlobalBgmClipInfo(Lcom/narvii/video/model/AVClipInfoPack;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 100
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;

    .line 102
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method public setClipInfoList(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/video/player/BaseScenePlayer$VideoClip;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoClipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioClipList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captionClpList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickerList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 67
    invoke-virtual {v0}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_4

    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_5

    invoke-interface {p1, p4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p1, :cond_6

    invoke-interface {p1, p5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setLoop(Z)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    .line 106
    iget-object p2, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updateGlobalAudioVolumeContrast(F)V

    :cond_0
    return-void
.end method

.method public setVolumePercent(F)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolumePercent(F)V

    :cond_0
    return-void
.end method

.method public unMute()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    :cond_0
    return-void
.end method

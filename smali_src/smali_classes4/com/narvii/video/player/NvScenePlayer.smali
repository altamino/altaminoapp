.class public final Lcom/narvii/video/player/NvScenePlayer;
.super Lcom/narvii/video/player/BaseScenePlayer;
.source "SourceFile"

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
    value = "SMAP\nNvScenePlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NvScenePlayer.kt\ncom/narvii/video/player/NvScenePlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,307:1\n1855#2:308\n1856#2:310\n1#3:309\n*S KotlinDebug\n*F\n+ 1 NvScenePlayer.kt\ncom/narvii/video/player/NvScenePlayer\n*L\n66#1:308\n66#1:310\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/player/NvScenePlayer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "IScenePlayer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isWaitingPlay:Z

.field private previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final seekingPositionListener:Lcom/narvii/video/interfaces/OnSeekingPositionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/player/NvScenePlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/player/NvScenePlayer$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/video/player/NvScenePlayer;->Companion:Lcom/narvii/video/player/NvScenePlayer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->context:Landroid/content/Context;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/video/player/a;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/video/player/a;-><init>(Lcom/narvii/video/player/NvScenePlayer;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->seekingPositionListener:Lcom/narvii/video/interfaces/OnSeekingPositionListener;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    const-string v2, "editorPackFactory"

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/video/services/IEditorPackFactory;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, p1}, Lcom/narvii/video/services/IEditorPackFactory;->getPreviewPlayer(Landroid/content/Context;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V

    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addSeekingPositionChangeListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V

    .line 58
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/player/NvScenePlayer;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/player/NvScenePlayer;->seekingPositionListener$lambda$0(Lcom/narvii/video/player/NvScenePlayer;J)V

    return-void
.end method

.method private final getCurrentClipIndex()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentClipIndex(J)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final seekTimeLineTo(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    iput-boolean p3, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(II)V

    :cond_0
    return-void
.end method

.method private final seekTimeLineTo(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    .line 2
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    :cond_0
    return-void
.end method

.method private static final seekingPositionListener$lambda$0(Lcom/narvii/video/player/NvScenePlayer;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->startPlay()V

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/video/player/NvScenePlayer;->isWaitingPlay:Z

    .line 17
    return-void
.end method

.method private final startPlay()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->getEndOffSet()I

    .line 30
    move-result v0

    .line 31
    .line 32
    mul-int/lit16 v0, v0, 0x3e8

    .line 33
    int-to-long v2, v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start(J)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method private final startPlayFromBegining()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneClipMap()Ljava/util/Map;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/video/player/BaseScenePlayer$SceneClip;->getEndOffSet()I

    .line 30
    move-result v0

    .line 31
    .line 32
    mul-int/lit16 v0, v0, 0x3e8

    .line 33
    int-to-long v2, v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->startFromBeginning(J)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->startFromBeginning()V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->startFromBeginning()V

    .line 53
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public fadeBackgroundMusic(ZZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setGlobalBgmFade(ZZ)V

    .line 8
    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    :goto_0
    return-wide v0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isVideoPlaying()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public mute()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mute()V

    .line 8
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isLoop()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->startPlayFromBegining()V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getStopLocationStatus()I

    .line 31
    move-result v0

    .line 32
    .line 33
    sget-object v1, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_CURRENT_SCENE_BEGINNING()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneFirstClipIndex(Ljava/lang/String;)I

    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v0, v2

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-direct {p0, v0, v2, v2}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    .line 76
    move-result v2

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1, v2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneEnd(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStop()V

    .line 89
    :cond_5
    :goto_1
    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    .line 10
    .line 11
    :cond_0
    const/16 p3, 0x64

    .line 12
    int-to-long p3, p3

    .line 13
    add-long/2addr p1, p3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneIdByPosition(J)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result p3

    .line 29
    .line 30
    if-nez p3, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result p3

    .line 35
    .line 36
    if-nez p3, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation()Z

    .line 40
    move-result p3

    .line 41
    .line 42
    if-nez p3, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    .line 52
    move-result p4

    .line 53
    .line 54
    .line 55
    invoke-interface {p3, p2, p4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneEnd(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    .line 68
    move-result p3

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, p1, p3}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 72
    .line 73
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    const-string p3, "onSceneChanged  >>> currentSceneId = "

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p1, "   currentSceneIndex = "

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneIndex()I

    .line 93
    move-result p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    const-string p2, "IScenePlayer"

    .line 103
    .line 104
    .line 105
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_4
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
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onVideoPrepared()V
    .locals 0

    return-void
.end method

.method public onVideoWindowIndexChanged(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IMediaEventListener$DefaultImpls;->onVideoWindowIndexChanged(Lcom/narvii/video/interfaces/IMediaEventListener;IZ)V

    .line 4
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pause()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 17
    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->startPlay()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStart()V

    .line 13
    :cond_0
    return-void
.end method

.method public playLastScene()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentClipIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v3, ""

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    move-object v1, v3

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 44
    const/4 v1, -0x1

    .line 45
    move v4, v1

    .line 46
    :goto_0
    const/4 v5, 0x0

    .line 47
    .line 48
    if-ge v1, v0, :cond_7

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v6

    .line 57
    .line 58
    const-string v7, "get(...)"

    .line 59
    .line 60
    .line 61
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    check-cast v6, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 71
    move-result-object v8

    .line 72
    .line 73
    .line 74
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 75
    move-result v7

    .line 76
    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v3}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 85
    .line 86
    :goto_1
    if-lez v0, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getPlayingSceneId()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    add-int/lit8 v6, v0, -0x1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    check-cast v4, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 110
    move-result v3

    .line 111
    .line 112
    if-nez v3, :cond_2

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    :goto_2
    move v4, v0

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :cond_4
    if-nez v0, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    check-cast v4, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    if-nez v4, :cond_5

    .line 137
    move-object v4, v3

    .line 138
    .line 139
    .line 140
    :cond_5
    invoke-virtual {p0, v4}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 141
    move v4, v5

    .line 142
    .line 143
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 144
    goto :goto_0

    .line 145
    .line 146
    :cond_7
    :goto_3
    if-ne v4, v1, :cond_8

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    return-object v0

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-direct {p0, v4, v5, v2}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v1, v4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    return-object v0
.end method

.method public playNextScene()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/player/NvScenePlayer;->getCurrentClipIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    .line 16
    if-gt v0, v1, :cond_8

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v3, ""

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    move-object v1, v3

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v1

    .line 51
    const/4 v4, -0x1

    .line 52
    move v5, v4

    .line 53
    :goto_0
    const/4 v6, 0x0

    .line 54
    .line 55
    if-ge v0, v1, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 59
    move-result-object v7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v7

    .line 64
    .line 65
    const-string v8, "get(...)"

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    check-cast v7, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 74
    move-result-object v8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 78
    move-result-object v9

    .line 79
    .line 80
    .line 81
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 82
    move-result v8

    .line 83
    .line 84
    if-nez v8, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 96
    move-result-object v7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v7

    .line 101
    sub-int/2addr v7, v2

    .line 102
    .line 103
    if-ne v0, v7, :cond_4

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    check-cast v5, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    if-nez v5, :cond_3

    .line 120
    move-object v5, v3

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p0, v5}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 124
    move v5, v6

    .line 125
    .line 126
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    move v0, v5

    .line 129
    .line 130
    :goto_1
    if-ne v0, v4, :cond_6

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-direct {p0, v0, v6, v2}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v2, v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    return-object v0

    .line 157
    .line 158
    .line 159
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/narvii/video/player/BaseScenePlayer;->release()V

    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->release()V

    :cond_0
    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/narvii/video/player/BaseScenePlayer;->release([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz v0, :cond_0

    .line 4
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->release([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public restoreStatus()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->restoreStates()V

    .line 8
    :cond_0
    return-void
.end method

.method public seek(IJZ)V
    .locals 2

    long-to-int p2, p2

    .line 4
    invoke-direct {p0, p1, p2, p4}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IIZ)V

    .line 5
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

    .line 1
    invoke-direct {p0, v0, p3}, Lcom/narvii/video/player/NvScenePlayer;->seekTimeLineTo(IZ)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneIdByPosition(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseScenePlayer;->setPlayingSceneId(Ljava/lang/String;)V

    .line 3
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
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getGlobalBgmClipInfo()Lcom/narvii/video/model/AVClipInfoPack;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeGlobalAudioClip()V

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/video/player/BaseScenePlayer;->setGlobalBgmClipInfo(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 23
    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p2, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 36
    return-void
.end method

.method public setClipInfoList(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoClipList"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "audioClipList"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "captionClpList"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "stickerList"

    .line 19
    .line 20
    .line 21
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "pipList"

    .line 24
    .line 25
    .line 26
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    check-cast p1, Ljava/lang/Iterable;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x6

    .line 67
    const/4 v6, 0x0

    .line 68
    .line 69
    .line 70
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 78
    .line 79
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 85
    .line 86
    :cond_4
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, p4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 92
    .line 93
    :cond_5
    iget-object p1, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 94
    .line 95
    if-eqz p1, :cond_6

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, p5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 99
    :cond_6
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setLoop(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updateGlobalAudioVolumeContrast(F)V

    .line 8
    :cond_0
    return-void
.end method

.method public setVolumePercent(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolumePercent(F)V

    .line 8
    :cond_0
    return-void
.end method

.method public unMute()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/NvScenePlayer;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    .line 8
    :cond_0
    return-void
.end method

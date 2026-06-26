.class public final Lcom/narvii/editor/player/MeiShePreviewPlayer;
.super Lcom/narvii/video/player/BaseEditorPreviewPlayer;
.source "MeiShePreviewPlayer.kt"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/player/MeiShePreviewPlayer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeiShePreviewPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeiShePreviewPlayer.kt\ncom/narvii/editor/player/MeiShePreviewPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1272:1\n1587#2,2:1273\n1587#2,2:1275\n1587#2,2:1277\n1587#2,2:1279\n1587#2,2:1281\n1587#2,2:1283\n1587#2,2:1285\n1587#2,2:1287\n1587#2,2:1289\n*E\n*S KotlinDebug\n*F\n+ 1 MeiShePreviewPlayer.kt\ncom/narvii/editor/player/MeiShePreviewPlayer\n*L\n191#1,2:1273\n194#1,2:1275\n268#1,2:1277\n290#1,2:1279\n354#1,2:1281\n360#1,2:1283\n369#1,2:1285\n433#1,2:1287\n1011#1,2:1289\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/player/MeiShePreviewPlayer$Companion;

.field public static final MAX_VOLUME:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MeiShePreviewPlayer"

.field public static final TRANSFORM_TAG:Ljava/lang/String; = "Transform 2D"


# instance fields
.field private final COMPARE_CAPTION_ZVALUE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meicam/sdk/NvsTimelineCaption;",
            ">;"
        }
    .end annotation
.end field

.field private final COMPARE_STICKER_ZVALUE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meicam/sdk/NvsTimelineAnimatedSticker;",
            ">;"
        }
    .end annotation
.end field

.field private attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

.field private final audioClipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meicam/sdk/NvsAudioClip;",
            ">;"
        }
    .end annotation
.end field

.field private final audioTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsAudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private audioTrackVolume:F

.field private backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

.field private final bgClipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meicam/sdk/NvsVideoClip;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentClipIndex:I

.field private final extraAudioTrackPlugin:Lcom/narvii/video/player/ExtraAudioTrackPlugin;

.field private globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

.field private final id:Ljava/lang/String;

.field private isInMute:Z

.field private lastVolumeRate:F

.field private final liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

.field private meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

.field private final msAudioClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsAudioClip;",
            ">;"
        }
    .end annotation
.end field

.field private final msBgClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsVideoClip;",
            ">;"
        }
    .end annotation
.end field

.field private final msVideoClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsVideoClip;",
            ">;"
        }
    .end annotation
.end field

.field private onVideoPrepared:Z

.field private final pipTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field private seeking:Z

.field private streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field private timeline:Lcom/meicam/sdk/NvsTimeline;

.field private final timelineCaptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsTimelineCaption;",
            ">;"
        }
    .end annotation
.end field

.field private final timelineStickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/sdk/NvsTimelineAnimatedSticker;",
            ">;"
        }
    .end annotation
.end field

.field private final videoClipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meicam/sdk/NvsVideoClip;",
            ">;"
        }
    .end annotation
.end field

.field private videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

.field private videoTrackVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/player/MeiShePreviewPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->Companion:Lcom/narvii/editor/player/MeiShePreviewPlayer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->context:Landroid/content/Context;

    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UUID.randomUUID().toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->id:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->bgClipMap:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msAudioClipList:Ljava/util/List;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioClipMap:Ljava/util/Map;

    .line 56
    new-instance p1, Lcom/meicam/sdk/NvsLiveWindow;

    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/meicam/sdk/NvsLiveWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    .line 65
    iput p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->lastVolumeRate:F

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    .line 75
    new-instance p1, Lcom/narvii/video/player/ExtraAudioTrackPlugin;

    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/narvii/video/player/ExtraAudioTrackPlugin;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->extraAudioTrackPlugin:Lcom/narvii/video/player/ExtraAudioTrackPlugin;

    .line 88
    sget-object p1, Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;->INSTANCE:Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->COMPARE_CAPTION_ZVALUE:Ljava/util/Comparator;

    .line 93
    sget-object p1, Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_STICKER_ZVALUE$1;->INSTANCE:Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_STICKER_ZVALUE$1;

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->COMPARE_STICKER_ZVALUE:Ljava/util/Comparator;

    const-string p1, "MeiShePreviewPlayer"

    const-string v0, "init >>> "

    .line 99
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 101
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->setDefaultCaptionFade(Z)V

    .line 102
    :cond_0
    sget-object p1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {p1}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    .line 103
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    .line 104
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    .line 105
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTrack;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Lcom/meicam/sdk/NvsVolume;->leftVolume:F

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrackVolume:F

    .line 106
    iget p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrackVolume:F

    iput p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackVolume:F

    .line 108
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->setMeisheListener()V

    .line 110
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsLiveWindow;->setFillMode(I)V

    .line 112
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p1, v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->connectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindow;)Z

    :cond_4
    return-void
.end method

.method private final abandonAudioFocus()V
    .locals 2

    .line 908
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public static final synthetic access$getMediaEventListeners$p(Lcom/narvii/editor/player/MeiShePreviewPlayer;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnVideoPrepared$p(Lcom/narvii/editor/player/MeiShePreviewPlayer;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->onVideoPrepared:Z

    return p0
.end method

.method public static final synthetic access$setMediaEventListeners$p(Lcom/narvii/editor/player/MeiShePreviewPlayer;Ljava/util/ArrayList;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->setMediaEventListeners(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic access$setOnVideoPrepared$p(Lcom/narvii/editor/player/MeiShePreviewPlayer;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->onVideoPrepared:Z

    return-void
.end method

.method private final appendAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)V
    .locals 5

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioClip >>> path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   startMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  endMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  indexInScene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isGlobal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 231
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    if-nez v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTimeline;->appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    goto :goto_2

    .line 238
    :cond_3
    :goto_0
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 239
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTimeline;->appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 241
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsAudioTrack;

    .line 247
    :goto_2
    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/editor/utils/TimelineUtils;->appendAudioIntoTimeline(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsAudioTrack;)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 249
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioClipMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    const-string v3, "clip.clipId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msAudioClipList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_7

    .line 254
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 255
    new-instance v2, Lcom/narvii/video/exception/FileFormatSupportException;

    iget-object v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v4, "not support this format"

    invoke-direct {v2, v3, v4}, Lcom/narvii/video/exception/FileFormatSupportException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoError(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-float p2, p2

    .line 260
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    sub-float/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->correctVolume(F)V

    :cond_8
    return-void
.end method

.method private final appendVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 8

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 202
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/editor/utils/TimelineUtils;->appendVideoIntoTimeline(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsVideoTrack;Lcom/meicam/sdk/NvsVideoTrack;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsVideoClip;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsVideoClip;

    const-string v2, "clip.clipId"

    if-eqz v1, :cond_0

    .line 205
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 209
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->bgClipMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 215
    new-instance v3, Lcom/narvii/video/exception/FileFormatSupportException;

    iget-object v4, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v5, "not support this format"

    invoke-direct {v3, v4, v5}, Lcom/narvii/video/exception/FileFormatSupportException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendVideoClip >>> path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  startMs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsClip;->getTrimIn()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v2

    :goto_1
    const/16 v6, 0x3e8

    int-to-long v6, v6

    .line 220
    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  endMs = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsClip;->getTrimOut()J

    move-result-wide v2

    .line 221
    :cond_4
    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MeiShePreviewPlayer"

    .line 219
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final clearMeisheListener()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V

    :cond_5
    return-void
.end method

.method private final correctAudioTrackVolume(Lcom/meicam/sdk/NvsAudioTrack;FF)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p2, p3

    :goto_0
    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v0

    :goto_1
    if-ge p3, v0, :cond_1

    .line 175
    invoke-virtual {p1, p3}, Lcom/meicam/sdk/NvsAudioTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v1

    const-string v2, "clip"

    .line 176
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v2

    iget v2, v2, Lcom/meicam/sdk/NvsVolume;->leftVolume:F

    mul-float v2, v2, p2

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v3

    iget v3, v3, Lcom/meicam/sdk/NvsVolume;->rightVolume:F

    mul-float v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final correctVideoTrackVolume(Lcom/meicam/sdk/NvsVideoTrack;FF)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p2, p3

    :goto_0
    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v0

    :goto_1
    if-ge p3, v0, :cond_1

    .line 165
    invoke-virtual {p1, p3}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    const-string v2, "clip"

    .line 166
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v2

    iget v2, v2, Lcom/meicam/sdk/NvsVolume;->leftVolume:F

    mul-float v2, v2, p2

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v3

    iget v3, v3, Lcom/meicam/sdk/NvsVolume;->rightVolume:F

    mul-float v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final correctVolume(F)V
    .locals 3

    const/4 v0, 0x1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const p1, 0x3f7d70a4    # 0.99f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const p1, 0x3c23d70a    # 0.01f

    .line 190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->lastVolumeRate:F

    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->correctVideoTrackVolume(Lcom/meicam/sdk/NvsVideoTrack;FF)V

    .line 191
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    .line 1273
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsVideoTrack;

    .line 192
    iget v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->lastVolumeRate:F

    invoke-direct {p0, v1, p1, v2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->correctVideoTrackVolume(Lcom/meicam/sdk/NvsVideoTrack;FF)V

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    .line 1275
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsAudioTrack;

    .line 195
    iget v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->lastVolumeRate:F

    invoke-direct {p0, v1, p1, v2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->correctAudioTrackVolume(Lcom/meicam/sdk/NvsAudioTrack;FF)V

    goto :goto_2

    .line 197
    :cond_3
    iput p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->lastVolumeRate:F

    return-void
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getCurrentVideoClipIndex(I)I
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result p1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "videoClipList[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 151
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v3

    add-int/2addr v2, v3

    if-le p1, v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method static synthetic getCurrentVideoClipIndex$default(Lcom/narvii/editor/player/MeiShePreviewPlayer;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoClipIndex(I)I

    move-result p0

    return p0
.end method

.method private final getPosition(II)J
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsVideoClip;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsClip;->getInPoint()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr p2, v1

    :cond_0
    int-to-long v0, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final getTimelineCaption(Lcom/narvii/video/model/Caption;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/sdk/NvsTimelineCaption;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getTimelinePipVideo(Lcom/narvii/pip/PipInfoPack;)Lcom/meicam/sdk/NvsVideoTrack;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/sdk/NvsVideoTrack;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getTimelineSticker(Lcom/narvii/video/model/StickerInfoPack;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final isTouchInTargetRect(Ljava/util/ArrayList;Landroid/graphics/PointF;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/PointF;",
            ")Z"
        }
    .end annotation

    .line 862
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 863
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    .line 864
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x1

    .line 865
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x2

    .line 866
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x3

    .line 867
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 868
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 869
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 870
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 871
    new-instance v2, Landroid/graphics/Region;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 872
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method private final onDoNextVideoSeek()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 183
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onDoNextVideoSeek()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final playbackTimeline(J)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 912
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->playbackTimeline(JJ)V

    return-void
.end method

.method private final playbackTimeline(JJ)V
    .locals 9

    .line 916
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->requestAudioFocus()V

    .line 917
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    :cond_0
    return-void
.end method

.method private final requestAudioFocus()V
    .locals 4

    .line 904
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method private final setMeisheListener()V
    .locals 1

    .line 117
    sget-object v0, Lcom/narvii/editor/player/MeisheListenerManage;->Companion:Lcom/narvii/editor/player/MeisheListenerManage$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/player/MeisheListenerManage$Companion;->getInstance()Lcom/narvii/editor/player/MeisheListenerManage;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    .line 118
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    return-object v0
.end method

.method public addAudioClipList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addAudioClipList(Ljava/util/ArrayList;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioClipList >>> clipList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v1, 0x0

    .line 370
    invoke-direct {p0, v0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/Caption;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 553
    iput-boolean v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCaption >>> caption text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MeiShePreviewPlayer"

    invoke-static {v3, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v4, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    iget-object v5, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v10, v3

    mul-long v8, v8, v10

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsTimeline;->addCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getStickers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getCaptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getLatestAttachmentZVal(Ljava/util/List;)F

    move-result v1

    .line 559
    iput v1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 560
    invoke-static {v3, p1}, Lcom/narvii/editor/attachment/AttachmentUtils;->updateTimelineCaption(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/narvii/video/model/Caption;)V

    .line 561
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 563
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getStickers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getCaptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p0, p1, v1, v3, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/pip/PipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "pipVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1198
    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1, v2, p1}, Lcom/narvii/editor/utils/TimelineUtils;->addPipVideo(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/pip/PipInfoPack;)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1200
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/StickerInfoPack;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 462
    iput-boolean v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSticker >>> sticker id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MeiShePreviewPlayer"

    invoke-static {v3, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-gez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-le v2, v3, :cond_5

    .line 465
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    iget-object v4, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v4, :cond_1

    iget v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    .line 467
    iget v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v9, v2

    mul-long v7, v7, v9

    iget-object v9, p1, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    iget-object v10, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 466
    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsTimeline;->addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 472
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getStickers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getCaptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getLatestAttachmentZVal(Ljava/util/List;)F

    move-result v1

    .line 473
    iput v1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 474
    invoke-static {v2, p1}, Lcom/narvii/editor/attachment/AttachmentUtils;->updateTimelineSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;Lcom/narvii/video/model/StickerInfoPack;)V

    if-eqz p2, :cond_3

    .line 475
    iget-object p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    if-le p2, p1, :cond_3

    .line 476
    iget-object p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 478
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 481
    :cond_4
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getStickers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getCaptions()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p0, p1, v1, p2, v3}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public addVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoClip >>> path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   startMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  endMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 304
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public addVideoClipList(Ljava/util/ArrayList;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)",
            "Lcom/narvii/video/model/AVClipInfoPack;"
        }
    .end annotation

    const-string v0, "clipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoClipList >>> clipList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 269
    invoke-direct {p0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, ""

    if-ltz v0, :cond_3

    const/4 v3, 0x0

    .line 272
    :goto_2
    iget-object v4, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    :cond_2
    if-eq v3, v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ltz v0, :cond_6

    .line 275
    :goto_4
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    :cond_5
    if-eq v1, v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 277
    :cond_6
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addVideoClipList(Ljava/util/ArrayList;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1183
    :cond_0
    const-class v1, Lcom/narvii/editor/player/MeiShePreviewPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_4

    .line 1185
    check-cast p1, Lcom/narvii/editor/player/MeiShePreviewPlayer;

    .line 1187
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/editor/player/MeiShePreviewPlayer;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0

    .line 1185
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.editor.player.MeiShePreviewPlayer"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttachmentDrawRectByTimelinePosition(ILandroid/graphics/PointF;)Lcom/narvii/video/attachment/caption/AttachmentDrawRect;
    .locals 11

    const-string v0, "curPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/meicam/sdk/NvsTimeline;->getCaptionsByTimelinePosition(J)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 803
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->COMPARE_CAPTION_ZVALUE:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meicam/sdk/NvsTimelineCaption;

    const-string v6, "caption"

    .line 806
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/meicam/sdk/NvsTimelineCaption;->getBoundingRectangleVertices()Ljava/util/List;

    move-result-object v6

    .line 807
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 808
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 809
    iget-object v9, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v9, v8}, Lcom/meicam/sdk/NvsLiveWindow;->mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 810
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    :cond_1
    invoke-direct {p0, v7, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->isTouchInTargetRect(Ljava/util/ArrayList;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getCaptions()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/Caption;

    .line 815
    iget v9, v8, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    invoke-virtual {v5}, Lcom/meicam/sdk/NvsTimelineCaption;->getZValue()F

    move-result v10

    cmpg-float v9, v9, v10

    if-nez v9, :cond_2

    .line 817
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v8

    goto :goto_0

    .line 824
    :cond_3
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2, v3}, Lcom/meicam/sdk/NvsTimeline;->getAnimatedStickersByTimelinePosition(J)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 825
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->COMPARE_STICKER_ZVALUE:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 826
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 827
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    const-string v6, "sticker"

    .line 828
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getBoundingRectangleVertices()Ljava/util/List;

    move-result-object v6

    .line 829
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 830
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 831
    iget-object v9, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v9, v8}, Lcom/meicam/sdk/NvsLiveWindow;->mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 832
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 834
    :cond_5
    invoke-direct {p0, v7, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->isTouchInTargetRect(Ljava/util/ArrayList;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 836
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getStickers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/StickerInfoPack;

    .line 837
    iget v9, v8, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    invoke-virtual {v5}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getZValue()F

    move-result v10

    cmpg-float v9, v9, v10

    if-nez v9, :cond_6

    .line 839
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, v8

    goto :goto_2

    :cond_7
    if-nez v4, :cond_8

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x1

    if-nez v4, :cond_9

    .line 848
    new-instance v1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;

    invoke-direct {v1, p1, v3, v2}, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;-><init>(ILcom/narvii/video/model/BaseAttachmentInfoPack;Ljava/util/List;)V

    goto :goto_4

    :cond_9
    const/4 p2, 0x0

    if-nez v3, :cond_a

    .line 850
    new-instance v1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;

    invoke-direct {v1, p2, v4, v0}, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;-><init>(ILcom/narvii/video/model/BaseAttachmentInfoPack;Ljava/util/List;)V

    goto :goto_4

    .line 852
    :cond_a
    iget v1, v4, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    iget v5, v3, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    if-le v1, v5, :cond_b

    .line 853
    new-instance v1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;

    invoke-direct {v1, p2, v4, v0}, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;-><init>(ILcom/narvii/video/model/BaseAttachmentInfoPack;Ljava/util/List;)V

    goto :goto_4

    .line 855
    :cond_b
    new-instance v1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;

    invoke-direct {v1, p1, v3, v2}, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;-><init>(ILcom/narvii/video/model/BaseAttachmentInfoPack;Ljava/util/List;)V

    :cond_c
    :goto_4
    return-object v1
.end method

.method public getCaptionViewPoints(Lcom/narvii/video/model/Caption;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/Caption;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineCaption(Lcom/narvii/video/model/Caption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 757
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimelineCaption;->getBoundingRectangleVertices()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 758
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    goto :goto_2

    .line 760
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 761
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 762
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsLiveWindow;->mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAudioPositionInClip(I)I
    .locals 0

    .line 693
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInClip()I

    move-result p1

    return p1
.end method

.method public getCurrentAudioPositionInTimeline(I)I
    .locals 0

    .line 716
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result p1

    return p1
.end method

.method public getCurrentAudioRawPositionInClip(I)I
    .locals 0

    .line 704
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoRawPositionInClip()I

    move-result p1

    return p1
.end method

.method public getCurrentVideoPositionInClip()I
    .locals 5

    .line 660
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    .line 662
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

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

    .line 663
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v4

    add-int/2addr v4, v2

    if-le v0, v4, :cond_0

    .line 664
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    return v0
.end method

.method public getCurrentVideoPositionInTimeline()I
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 689
    :goto_0
    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public getCurrentVideoRawPositionInClip()I
    .locals 6

    .line 673
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    .line 676
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 677
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v5

    add-int/2addr v5, v3

    if-le v0, v5, :cond_0

    .line 678
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 680
    :cond_0
    iget v2, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    :cond_1
    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 991
    :cond_0
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v0, p1}, Lcom/narvii/editor/utils/TimelineUtils;->createTimelineWithoutDurationLimit(Lcom/narvii/scene/model/SceneInfo;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 992
    :goto_0
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 991
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/meicam/sdk/NvsStreamingContext;->grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 994
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsLiveWindow;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getStickerViewPoints(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineSticker(Lcom/narvii/video/model/StickerInfoPack;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 777
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getBoundingRectangleVertices()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 778
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    goto :goto_2

    .line 780
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 782
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsLiveWindow;->mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 783
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v0, p1}, Lcom/narvii/editor/utils/TimelineUtils;->getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public getVideoView()Landroid/view/View;
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "getVideoView >>> "

    .line 1043
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAudioPlaying(I)Z
    .locals 1

    .line 933
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getStreamingEngineState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSeeking()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    return v0
.end method

.method public isVideoPlaying()Z
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getStreamingEngineState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsLiveWindow;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public mute()V
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "mute >>> "

    .line 982
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 983
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->isInMute:Z

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->setVolumePercent(F)V

    return-void
.end method

.method public onActiveVideoClipChanged(ZI)V
    .locals 5

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActiveVideoClipChanged >>> clipListChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    .line 1021
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 1022
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v3, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v3, v4, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    :goto_2
    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoWindowIndexChanged(IZ)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 1024
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1025
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->stop()V

    return-void

    :cond_4
    if-nez p1, :cond_6

    .line 1029
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p1

    if-eqz p1, :cond_5

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seekTimeLineTo(II)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_6
    :goto_3
    return-void
.end method

.method public onAudioClipListChanged(ZI)V
    .locals 0

    .line 344
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged(ZI)V

    return-void
.end method

.method public onAudioTrackOffsetChanged(I)V
    .locals 2

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioTrackOffsetChanged >>> trackIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "additionalAudioClipList[trackIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 746
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/sdk/NvsAudioTrack;

    .line 748
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    const/4 p1, 0x0

    .line 749
    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    :cond_0
    return-void
.end method

.method public onFirstVideoFramePresented(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    return-void
.end method

.method public onHardwareError(ILjava/lang/String;)V
    .locals 2

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHardwareError >>> errorType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   errorString = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MeiShePreviewPlayer"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 1173
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPipVideoOffsetChanged(I)V
    .locals 2

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPipVideoOffsetChanged >>> trackIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getPipVideos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1249
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getPipVideos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pipVideos[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 1250
    invoke-virtual {p0, v0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;

    .line 1251
    invoke-virtual {p0, v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;

    .line 1252
    invoke-virtual {p0, v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    .line 1253
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seekTimeLineTo(I)V

    :cond_0
    return-void
.end method

.method public onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 8

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "onPlaybackEOF >>> "

    .line 1101
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 1103
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoCompleted()V

    goto :goto_0

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getPlayingEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/IPlayingEventListener;

    .line 1106
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPlayingEventListener;->onPlayingEOF()V

    if-eqz p1, :cond_1

    .line 1108
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/narvii/video/interfaces/IPlayingEventListener;->onPlayingProgress(JJ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onPlaybackException(Lcom/meicam/sdk/NvsTimeline;ILjava/lang/String;)V
    .locals 1

    .line 1161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlaybackException  >>>  exceptionType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   exceptionString = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MeiShePreviewPlayer"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1163
    iput-boolean p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->onVideoPrepared:Z

    .line 1164
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 1165
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    .line 1114
    new-instance p1, Lcom/narvii/editor/player/MeiShePreviewPlayer$onPlaybackPreloadingCompletion$1;

    invoke-direct {p1, p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer$onPlaybackPreloadingCompletion$1;-><init>(Lcom/narvii/editor/player/MeiShePreviewPlayer;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    const-string p1, "MeiShePreviewPlayer"

    const-string v0, "onPlaybackStopped >>> "

    .line 1127
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getPlayingEventListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/interfaces/IPlayingEventListener;

    .line 1129
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPlayingEventListener;->onPlayingStopped()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaybackTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V
    .locals 8

    .line 1088
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getPlayingEventListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/IPlayingEventListener;

    int-to-long v2, v2

    .line 1089
    div-long v4, p2, v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v6

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x0

    :goto_1
    div-long/2addr v6, v2

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/narvii/video/interfaces/IPlayingEventListener;->onPlayingProgress(JJ)V

    goto :goto_0

    :cond_1
    int-to-long v0, v2

    .line 1091
    div-long/2addr p2, v0

    long-to-int p1, p2

    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoClipIndex(I)I

    move-result p1

    .line 1092
    iget p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    if-eq p1, p2, :cond_2

    .line 1093
    iput p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    .line 1094
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 1095
    iget p3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoWindowIndexChanged(IZ)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onSeekingTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V
    .locals 4

    .line 1142
    iget-boolean p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    if-nez p1, :cond_0

    return-void

    .line 1145
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSeekingTimelinePosition >>> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MeiShePreviewPlayer"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->onDoNextVideoSeek()V

    const/4 p1, 0x0

    .line 1147
    iput-boolean p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 1148
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getSeekingPositionListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/OnSeekingPositionListener;

    int-to-long v2, v2

    .line 1149
    div-long v2, p2, v2

    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/OnSeekingPositionListener;->onSeekingPositionChanged(J)V

    goto :goto_0

    :cond_1
    int-to-long v0, v2

    .line 1151
    div-long/2addr p2, v0

    long-to-int p3, p2

    invoke-direct {p0, p3}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoClipIndex(I)I

    move-result p2

    .line 1152
    iget p3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    if-eq p3, p2, :cond_2

    .line 1153
    iput p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    .line 1154
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 1155
    iget v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    invoke-interface {p3, v0, p1}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoWindowIndexChanged(IZ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onStreamingEngineStateChanged(I)V
    .locals 0

    return-void
.end method

.method public openSingleAudio(Lcom/narvii/video/model/AVClipInfoPack;Z)Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .locals 2

    const-string v0, "audioClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "openSingleAudio >>> "

    .line 1049
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->extraAudioTrackPlugin:Lcom/narvii/video/player/ExtraAudioTrackPlugin;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->openSingleAudio(Lcom/narvii/video/model/AVClipInfoPack;Z)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 1052
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    return-object p1
.end method

.method public pause()V
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "pause >>> "

    .line 921
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 922
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 923
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 924
    :cond_0
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->abandonAudioFocus()V

    return-void
.end method

.method public pauseWhenNextSeek()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public playVideo(II)V
    .locals 9

    .line 1178
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    int-to-long p1, p2

    mul-long v4, v4, p1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    :cond_0
    return-void
.end method

.method public refreshBackgroundTrack()V
    .locals 7

    .line 639
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 641
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->bgClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    .line 643
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "videoClipList[index]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 644
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 646
    iget-object v4, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->bgClipMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    const-string v6, "clip.clipId"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v4, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_2
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    iget-object v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/sdk/NvsVideoClip;

    if-eqz v2, :cond_4

    .line 651
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsClip;->getInPoint()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/meicam/sdk/NvsTrack;->changeInPoint(IJ)J

    .line 652
    :cond_3
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsClip;->getOutPoint()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/meicam/sdk/NvsTrack;->changeOutPoint(IJ)J

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_5
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0, v1}, Lcom/narvii/editor/utils/TimelineUtils;->clearTransitionEffects(Lcom/meicam/sdk/NvsVideoTrack;)V

    return-void
.end method

.method public refreshCurrentPosition()V
    .locals 1

    .line 967
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seekTimeLineTo(I)V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "release >>> "

    .line 1056
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1057
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 1058
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->onVideoPrepared:Z

    .line 1059
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->release()V

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1062
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1063
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1065
    :cond_2
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->clearMeisheListener()V

    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "MeiShePreviewPlayer"

    const-string v0, "release >>> "

    .line 1069
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1070
    iput-boolean p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 1071
    iput-boolean p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->onVideoPrepared:Z

    .line 1073
    sget-object p1, Lcom/narvii/editor/player/MeisheTimelineManage;->Companion:Lcom/narvii/editor/player/MeisheTimelineManage$Companion;

    invoke-virtual {p1}, Lcom/narvii/editor/player/MeisheTimelineManage$Companion;->getInstance()Lcom/narvii/editor/player/MeisheTimelineManage;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p1, v0}, Lcom/narvii/editor/player/MeisheTimelineManage;->addUnuseTimeline(Lcom/meicam/sdk/NvsTimeline;)V

    .line 1074
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->release()V

    .line 1075
    :cond_0
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1076
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1077
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->liveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1079
    :cond_1
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->clearMeisheListener()V

    return-void
.end method

.method public removeAllAudios()V
    .locals 2

    .line 429
    invoke-super {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removeAllAudios()V

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "removeAllAudios >>> "

    .line 431
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    .line 1287
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsAudioTrack;

    .line 434
    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->removeGlobalAudioClip()V

    return-void
.end method

.method public removeAllVideos()V
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "removeAllVideos >>> "

    .line 332
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->bgClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 339
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 340
    invoke-super {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removeAllVideos()V

    return-void
.end method

.method public removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAudioClip >>> clipList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MeiShePreviewPlayer"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioClipMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsAudioClip;

    if-eqz v1, :cond_3

    .line 411
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 412
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    iget v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsAudioTrack;

    const/4 v2, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 415
    iget-object v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    iget-object v6, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 418
    :cond_1
    iget v4, v4, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iget v5, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 422
    invoke-virtual {v1, v2, p1}, Lcom/meicam/sdk/NvsTrack;->removeClip(IZ)Z

    :cond_3
    return-object v0
.end method

.method public removeCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/Caption;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removeCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;

    move-result-object v0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCaption >>> caption text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MeiShePreviewPlayer"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 575
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "timelineCaptionList.removeAt(caption.indexInScene)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/meicam/sdk/NvsTimelineCaption;

    .line 576
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/meicam/sdk/NvsTimeline;->removeCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    :cond_0
    return-object v0
.end method

.method public removeGlobalAudioClip()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    :cond_0
    return-void
.end method

.method public removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/pip/PipInfoPack;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "pipVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 1207
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pipTrackList[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/meicam/sdk/NvsVideoTrack;

    .line 1208
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 1209
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/meicam/sdk/NvsTimeline;->removeVideoTrack(I)Z

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object p1
.end method

.method public removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;

    move-result-object v0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSticker >>> sticker id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MeiShePreviewPlayer"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, p1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "timelineStickerList.removeAt(sticker.indexInScene)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 493
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public removeVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeVideoClip >>> clipList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsVideoClip;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 312
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 314
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/meicam/sdk/NvsTrack;->removeClip(IZ)Z

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->bgClipMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsVideoClip;

    if-eqz v0, :cond_3

    .line 321
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    .line 323
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Lcom/meicam/sdk/NvsTrack;->removeClip(IZ)Z

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 328
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removeVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public resetAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 7

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 385
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioClipMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsAudioClip;

    if-eqz v0, :cond_3

    .line 387
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 388
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsAudioTrack;

    .line 390
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 391
    iget-object v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    iget-object v6, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 394
    :cond_1
    iget v4, v4, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iget v5, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 398
    invoke-virtual {v0, v3, v1}, Lcom/meicam/sdk/NvsTrack;->removeClip(IZ)Z

    .line 399
    invoke-direct {p0, p1, v2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    :cond_3
    return-void
.end method

.method public resetAudioClipList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAudioClipList >>> list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 353
    iput v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->lastVolumeRate:F

    .line 354
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    .line 1281
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsAudioTrack;

    .line 355
    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 358
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msAudioClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1283
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v1, 0x0

    .line 361
    invoke-direct {p0, v0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public resetCaption(Lcom/narvii/video/model/Caption;Z)V
    .locals 2

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 582
    invoke-super {p0, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetCaption(Lcom/narvii/video/model/Caption;Z)V

    .line 583
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCaption >>> caption text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineCaption(Lcom/narvii/video/model/Caption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    .line 587
    invoke-static {v0, p1, p2}, Lcom/narvii/editor/attachment/AttachmentUtils;->updateTimelineCaption(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/narvii/video/model/Caption;Z)V

    return-void
.end method

.method public resetCaptionList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/Caption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "captionList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCaptionList >>> caption list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 621
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsTimelineCaption;

    .line 622
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsTimeline;->removeCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/Caption;

    .line 626
    invoke-virtual {p0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;

    goto :goto_1

    .line 628
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    return-void
.end method

.method public resetPipVideoList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pipVideoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetPipVideoList >>> pip list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1216
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 1217
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsVideoTrack;

    .line 1218
    iget-object v2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v2, :cond_0

    const-string v3, "timelinePip"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTrack;->getIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsTimeline;->removeVideoTrack(I)Z

    goto :goto_0

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1221
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getPipVideos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pip/PipInfoPack;

    .line 1223
    invoke-virtual {p0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;

    .line 1224
    invoke-virtual {p0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    goto :goto_1

    .line 1226
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    return-void
.end method

.method public resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 2

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetSticker >>> sticker id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineSticker(Lcom/narvii/video/model/StickerInfoPack;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getStickers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 507
    invoke-virtual {p0, p1, v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public resetStickerList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stickerList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetStickerList >>> sticker list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 514
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 515
    iget-object v3, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    goto :goto_0

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timelineStickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 518
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/StickerInfoPack;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 519
    invoke-static {p0, v2, v0, v3, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->addSticker$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/model/StickerInfoPack;ZILjava/lang/Object;)Ljava/util/ArrayList;

    goto :goto_1

    .line 521
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    return-void
.end method

.method public resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;II)",
            "Lcom/narvii/video/model/AVClipInfoPack;"
        }
    .end annotation

    const-string v0, "clipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetVideoClipList >>> list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 282
    iput v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->lastVolumeRate:F

    .line 283
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 286
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msVideoClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->bgClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 288
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->msBgClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1279
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 291
    invoke-direct {p0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->appendVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    goto :goto_0

    .line 293
    :cond_2
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0, v1}, Lcom/narvii/editor/utils/TimelineUtils;->clearTransitionEffects(Lcom/meicam/sdk/NvsVideoTrack;)V

    .line 294
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->backgroundTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0, v1}, Lcom/narvii/editor/utils/TimelineUtils;->clearTransitionEffects(Lcom/meicam/sdk/NvsVideoTrack;)V

    .line 295
    invoke-virtual {p0, p2, p3}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seekTimeLineTo(II)V

    .line 296
    iput p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    .line 298
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p1

    return-object p1
.end method

.method public restoreStates()V
    .locals 1

    const/4 v0, 0x0

    .line 1038
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 1039
    invoke-direct {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->setMeisheListener()V

    return-void
.end method

.method public rotateCaption(Lcom/narvii/video/model/Caption;F)V
    .locals 1

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineCaption(Lcom/narvii/video/model/Caption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->rotateCaption(F)V

    .line 613
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineCaption;->getRotationZ()F

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 614
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public rotateSticker(Lcom/narvii/video/model/StickerInfoPack;F)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineSticker(Lcom/narvii/video/model/StickerInfoPack;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->rotateAnimatedSticker(F)V

    .line 546
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getRotationZ()F

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    :cond_0
    return-void
.end method

.method public scaleCaption(Lcom/narvii/video/model/Caption;FLandroid/graphics/PointF;)V
    .locals 1

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineCaption(Lcom/narvii/video/model/Caption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, p2, p3}, Lcom/meicam/sdk/NvsTimelineCaption;->scaleCaption(FLandroid/graphics/PointF;)V

    .line 594
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineCaption;->getScaleX()F

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 595
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineCaption;->getScaleY()F

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 596
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineCaption;->getAnchorPoint()Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 597
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public scaleSticker(Lcom/narvii/video/model/StickerInfoPack;FLandroid/graphics/PointF;)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineSticker(Lcom/narvii/video/model/StickerInfoPack;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0, p2, p3}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->scaleAnimatedSticker(FLandroid/graphics/PointF;)V

    .line 528
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getScale()F

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 529
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getScale()F

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 530
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getTranslation()Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public seekTimeLineTo(I)V
    .locals 10

    .line 721
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    if-gtz v1, :cond_1

    return-void

    :cond_1
    if-lt p1, v1, :cond_2

    add-int/lit8 p1, v1, -0xa

    :cond_2
    const/4 v0, 0x0

    .line 725
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTimeLineTo >>> millis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    .line 728
    iget-object v4, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    int-to-long v0, p1

    mul-long v6, v0, v2

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    :cond_3
    return-void
.end method

.method public seekTimeLineTo(II)V
    .locals 3

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTimeLineTo >>> clipIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  millis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getPosition(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeiShePreviewPlayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getPosition(II)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seekTimeLineTo(I)V

    return-void
.end method

.method public setGlobalBgmFade(ZZ)V
    .locals 10

    .line 448
    iget-object p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    const-wide/32 v2, 0x3d0900

    const-wide/16 v4, 0x0

    const-string v6, "it.getClipByIndex(i)"

    if-nez v0, :cond_1

    .line 451
    invoke-virtual {p2, v0}, Lcom/meicam/sdk/NvsAudioTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-wide v8, v2

    goto :goto_1

    :cond_0
    move-wide v8, v4

    :goto_1
    invoke-virtual {v7, v8, v9}, Lcom/meicam/sdk/NvsAudioClip;->setFadeInDuration(J)V

    .line 453
    :cond_1
    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_3

    .line 454
    invoke-virtual {p2, v0}, Lcom/meicam/sdk/NvsAudioTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v2, v4

    :goto_2
    invoke-virtual {v7, v2, v3}, Lcom/meicam/sdk/NvsAudioClip;->setFadeOutDuration(J)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setPipVideoVolume(Lcom/narvii/pip/PipInfoPack;FI)V
    .locals 3

    const-string v0, "pipVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1237
    iget-object p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pipTrackList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "pipTrackList[index]"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/meicam/sdk/NvsVideoTrack;

    .line 1238
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 1239
    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p2

    .line 1240
    invoke-virtual {v1, v2, v2}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V
    .locals 2

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 957
    iget-object p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meicam/sdk/NvsVideoClip;

    if-eqz p2, :cond_1

    .line 958
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    int-to-float v0, v0

    mul-float v1, p1, v0

    mul-float p1, p1, v0

    invoke-virtual {p2, v1, p1}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    goto :goto_0

    .line 960
    :cond_0
    iget-object p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioClipMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meicam/sdk/NvsAudioClip;

    if-eqz p2, :cond_1

    .line 961
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    int-to-float v0, v0

    mul-float v1, p1, v0

    mul-float p1, p1, v0

    invoke-virtual {p2, v1, p1}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVolumePercent(F)V
    .locals 2

    .line 1007
    iget v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrackVolume:F

    mul-float v0, v0, p1

    .line 1008
    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v0}, Lcom/meicam/sdk/NvsTrack;->setVolumeGain(FF)V

    .line 1009
    :cond_0
    iget v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackVolume:F

    mul-float p1, p1, v0

    .line 1010
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p1}, Lcom/meicam/sdk/NvsTrack;->setVolumeGain(FF)V

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->audioTrackList:Ljava/util/List;

    .line 1289
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsAudioTrack;

    .line 1012
    invoke-virtual {v1, p1, p1}, Lcom/meicam/sdk/NvsTrack;->setVolumeGain(FF)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 877
    invoke-virtual {p0, v0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->start(J)V

    return-void
.end method

.method public start(J)V
    .locals 2

    .line 881
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seeking:Z

    if-nez v0, :cond_1

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "start >>> "

    .line 882
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->playbackTimeline(JJ)V

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 885
    invoke-static {p0, v0, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoClipIndex$default(Lcom/narvii/editor/player/MeiShePreviewPlayer;IILjava/lang/Object;)I

    move-result p1

    .line 886
    iget p2, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    if-eq p2, p1, :cond_2

    .line 887
    iput p1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    .line 888
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 889
    iget v1, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->currentClipIndex:I

    invoke-interface {p2, v1, v0}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoWindowIndexChanged(IZ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public startFromBeginning()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 895
    invoke-virtual {p0, v0, v1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->startFromBeginning(J)V

    return-void
.end method

.method public startFromBeginning(J)V
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "start from beginning >>> "

    .line 899
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 900
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->playbackTimeline(JJ)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string v1, "stop >>> "

    .line 928
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->pause()V

    return-void
.end method

.method public translateCaption(Lcom/narvii/video/model/Caption;Landroid/graphics/PointF;)V
    .locals 1

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineCaption(Lcom/narvii/video/model/Caption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->translateCaption(Landroid/graphics/PointF;)V

    .line 605
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineCaption;->getCaptionTranslation()Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public translateSticker(Lcom/narvii/video/model/StickerInfoPack;Landroid/graphics/PointF;)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelineSticker(Lcom/narvii/video/model/StickerInfoPack;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0, p2}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->translateAnimatedSticker(Landroid/graphics/PointF;)V

    .line 538
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getTranslation()Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public unMute()V
    .locals 2

    const-string v0, "MeiShePreviewPlayer"

    const-string/jumbo v1, "unMute >>> "

    .line 1001
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1002
    iput-boolean v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->isInMute:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1003
    invoke-virtual {p0, v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->setVolumePercent(F)V

    return-void
.end method

.method public updateClipSpeed(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 9

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsVideoClip;

    if-eqz v0, :cond_1

    .line 972
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsClip;->getSpeed()D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    iget-wide v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    div-double/2addr v1, v3

    const/4 p1, 0x1

    .line 973
    invoke-virtual {v0, v3, v4, p1}, Lcom/meicam/sdk/NvsClip;->changeSpeed(DZ)V

    .line 974
    invoke-virtual {p0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->refreshBackgroundTrack()V

    double-to-int p1, v1

    .line 975
    invoke-virtual {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->seekTimeLineTo(I)V

    .line 976
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getPlayingEventListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/interfaces/IPlayingEventListener;

    double-to-long v3, v1

    .line 977
    iget-object v5, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    :goto_1
    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/narvii/video/interfaces/IPlayingEventListener;->onPlayingProgress(JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateClipTransform(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 2

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->videoClipMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsVideoClip;

    if-eqz v0, :cond_0

    .line 634
    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/editor/utils/TimelineUtils;->updateTransform2D(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsVideoClip;)V

    :cond_0
    return-void
.end method

.method public updateGlobalAudioVolumeContrast(F)V
    .locals 5

    .line 946
    iget-object v0, p0, Lcom/narvii/editor/player/MeiShePreviewPlayer;->globalAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 947
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 948
    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsAudioTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float v4, v4, p1

    .line 949
    invoke-virtual {v3, v4, v4}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 952
    invoke-direct {p0, v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->correctVolume(F)V

    return-void
.end method

.method public updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V
    .locals 2

    const-string v0, "pipVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    invoke-direct {p0, p1}, Lcom/narvii/editor/player/MeiShePreviewPlayer;->getTimelinePipVideo(Lcom/narvii/pip/PipInfoPack;)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1232
    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/editor/utils/TimelineUtils;->updatePipVideoTransform(Lcom/meicam/sdk/NvsVideoTrack;Lcom/narvii/pip/PipInfoPack;)V

    :cond_0
    return-void
.end method

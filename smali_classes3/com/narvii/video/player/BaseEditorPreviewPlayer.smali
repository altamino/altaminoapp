.class public abstract Lcom/narvii/video/player/BaseEditorPreviewPlayer;
.super Ljava/lang/Object;
.source "BaseEditorPreviewPlayer.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IPreviewPlayer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseEditorPreviewPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseEditorPreviewPlayer.kt\ncom/narvii/video/player/BaseEditorPreviewPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,330:1\n673#2:331\n746#2,2:332\n1313#2:334\n1382#2,3:335\n*E\n*S KotlinDebug\n*F\n+ 1 BaseEditorPreviewPlayer.kt\ncom/narvii/video/player/BaseEditorPreviewPlayer\n*L\n315#1:331\n315#1,2:332\n316#1:334\n316#1,3:335\n*E\n"
.end annotation


# instance fields
.field private activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private additionalAudioClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private captions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation
.end field

.field private loop:Ljava/lang/Boolean;

.field private mediaEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IMediaEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private pipVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private playingEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IPlayingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private seekingPositionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/OnSeekingPositionListener;",
            ">;"
        }
    .end annotation
.end field

.field private stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private videoClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    return-void
.end method

.method private final adjustTrackRange(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 315
    iget v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-virtual {v3}, Lcom/narvii/video/model/BaseClipInfoPack;->minValidLengthMs()I

    move-result v3

    sub-int v3, p2, v3

    if-gt v4, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 336
    check-cast v1, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 317
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v3, v2

    if-le v3, p2, :cond_3

    sub-int v2, p2, v2

    .line 318
    iput v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 320
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 337
    :cond_4
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private final isCaptionIndexValid(Lcom/narvii/video/model/Caption;)Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

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
.end method

.method public static synthetic onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged(ZI)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onActiveVideoClipChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    .line 26
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged(ZI)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onAudioClipListChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final reCalcClipIndex(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;I)V"
        }
    .end annotation

    .line 293
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 294
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/BaseClipInfoPack;

    add-int v3, v1, p2

    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 292
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex(Ljava/util/ArrayList;I)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reCalcClipIndex"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 325
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList(Ljava/util/List;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateIndexInMixedAttachmentList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string p2, "clip"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 128
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1, p1, p2, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public addAudioClipList(Ljava/util/ArrayList;)V
    .locals 3
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

    .line 84
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex(Ljava/util/ArrayList;I)V

    .line 85
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, v2, v2, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
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

    .line 141
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 142
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 144
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    return-object p1
.end method

.method public addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;
    .locals 1
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

    .line 269
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 270
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    return-object p1
.end method

.method public addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSeekingPositionChangeListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V
    .locals 1

    const-string v0, "listenerSeeking"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;
    .locals 4
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

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 224
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-le p2, v3, :cond_1

    .line 225
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    goto :goto_1

    .line 228
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 229
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_1
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 232
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    return-object p1
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

    .line 116
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 118
    iget-object v1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    :cond_0
    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-static {p0, v1, v1, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public addVideoClipList(Ljava/util/ArrayList;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 3
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

    .line 73
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex(Ljava/util/ArrayList;I)V

    .line 74
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    :cond_1
    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, v2, v2, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object p1
.end method

.method public adjustAllViceTrackRange(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$1;

    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$1;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    .line 195
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$2;

    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$2;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    .line 196
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;

    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    .line 197
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$4;

    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$4;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected final getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method protected final getAdditionalAudioClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAudioClipInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCaptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getCaptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getLatestAttachmentZVal(Ljava/util/List;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">;)F"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 305
    iget v1, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    const p1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, p1

    return v0
.end method

.method protected final getLoop()Ljava/lang/Boolean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final getMediaEventListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IMediaEventListener;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPipVideoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getPipVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getPlayingEventListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IPlayingEventListener;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getSeekingPositionListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/OnSeekingPositionListener;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getStickers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoClipInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getVideoClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLoop()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onActiveVideoClipChanged(ZI)V
.end method

.method public onAudioClipListChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onPipVideoOffsetChanged(I)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 57
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 65
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 67
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAllAudios()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 190
    invoke-static {p0, v0, v1, v2, v3}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    return-void
.end method

.method public removeAllVideos()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 185
    invoke-static {p0, v1, v1, v2, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    return-void
.end method

.method public removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
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

    .line 176
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    const/4 p1, 0x3

    .line 178
    invoke-static {p0, v1, v1, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public removeCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
    .locals 4
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

    .line 148
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    return-object p1
.end method

.method public removeMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;
    .locals 0
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

    const-string p2, "pipVideo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 276
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    return-object p1
.end method

.method public removePlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePositionChangeEventListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V
    .locals 1

    const-string v0, "listenerSeeking"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;
    .locals 4
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

    .line 236
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 239
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    return-object p1
.end method

.method public removeVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 4
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

    .line 166
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v3, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    :goto_0
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    :cond_1
    const/4 p1, 0x3

    .line 171
    invoke-static {p0, v2, v2, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public resetAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 3

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v1, :cond_1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 112
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetAudioClipList(Ljava/util/List;)V
    .locals 3
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

    .line 101
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 104
    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    return-void
.end method

.method public resetCaption(Lcom/narvii/video/model/Caption;Z)V
    .locals 1

    const-string p2, "caption"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->isCaptionIndexValid(Lcom/narvii/video/model/Caption;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetCaptionList(Ljava/util/List;)V
    .locals 4
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

    .line 134
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method public resetPipVideoList(Ljava/util/List;)V
    .locals 3
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

    .line 280
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    return-void
.end method

.method public resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 2

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v1, :cond_1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public resetStickerList(Ljava/util/List;)V
    .locals 4
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

    .line 250
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method

.method public resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 3
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

    .line 93
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 94
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v2, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    :goto_0
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 p1, 0x1

    .line 96
    invoke-static {p0, v0, p3, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object p1
.end method

.method public setActiveVideoClip(II)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    const/4 v3, 0x0

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    :cond_4
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p1, 0x1

    .line 208
    :goto_5
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p1, :cond_7

    .line 210
    invoke-virtual {p0, v3, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged(ZI)V

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object p1
.end method

.method protected final setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method protected final setAdditionalAudioClipList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setCaptions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setLoop(Ljava/lang/Boolean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 261
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    return-void
.end method

.method protected final setMediaEventListeners(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IMediaEventListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setPipVideos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setPlayingEventListeners(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IPlayingEventListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setSeekingPositionListeners(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/OnSeekingPositionListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setStickers(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setVideoClipList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    return-void
.end method

.method protected final updateIndexInMixedAttachmentList(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">;Z)V"
        }
    .end annotation

    const-string p2, "list"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 327
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    iput v0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

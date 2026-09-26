.class public abstract Lcom/narvii/video/player/BaseEditorPreviewPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IPreviewPlayer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseEditorPreviewPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseEditorPreviewPlayer.kt\ncom/narvii/video/player/BaseEditorPreviewPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,330:1\n766#2:331\n857#2,2:332\n1549#2:334\n1620#2,3:335\n*S KotlinDebug\n*F\n+ 1 BaseEditorPreviewPlayer.kt\ncom/narvii/video/player/BaseEditorPreviewPlayer\n*L\n315#1:331\n315#1:332,2\n316#1:334\n316#1:335,3\n*E\n"
.end annotation


# instance fields
.field private activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private additionalAudioClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loop:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mediaEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IMediaEventListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 60
    .line 61
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    .line 64
    return-void
.end method

.method private final adjustTrackRange(Ljava/util/List;ILe8/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;I",
            "Le8/l<",
            "-",
            "Ljava/util/List<",
            "+TT;>;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    move-object v2, v1

    .line 34
    .line 35
    check-cast v2, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 36
    .line 37
    iget v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/narvii/video/model/BaseClipInfoPack;->minValidLengthMs()I

    .line 41
    move-result v2

    .line 42
    .line 43
    sub-int v2, p2, v2

    .line 44
    .line 45
    if-gt v3, v2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/16 v1, 0xa

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    check-cast v1, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 77
    .line 78
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 79
    .line 80
    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 81
    add-int/2addr v3, v2

    .line 82
    .line 83
    if-le v3, p2, :cond_2

    .line 84
    .line 85
    sub-int v2, p2, v2

    .line 86
    .line 87
    iput v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-interface {p3, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_4
    return-void
.end method

.method private final isCaptionIndexValid(Lcom/narvii/video/model/Caption;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public static synthetic onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_2

    .line 3
    .line 4
    and-int/lit8 p4, p3, 0x1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged(ZI)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: onActiveVideoClipChanged"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
.end method

.method public static synthetic onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_2

    .line 3
    .line 4
    and-int/lit8 p4, p3, 0x1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    const/4 p2, -0x1

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged(ZI)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: onAudioClipListChanged"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 14
    .line 15
    add-int v3, v1, p2

    .line 16
    .line 17
    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method static synthetic reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x2

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex(Ljava/util/ArrayList;I)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: reCalcClipIndex"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static synthetic updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x2

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList(Ljava/util/List;Z)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: updateIndexInMixedAttachmentList"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method


# virtual methods
.method public addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result p2

    .line 12
    .line 13
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const/4 p1, 0x3

    .line 20
    const/4 p2, 0x0

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0, v0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 27
    return-object p1
.end method

.method public addAudioClipList(Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex(Ljava/util/ArrayList;I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    xor-int/2addr v0, v2

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v1

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    const/4 p1, 0x3

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v1, v1, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 46
    :cond_1
    return-void
.end method

.method public addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
    .locals 3
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "caption"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x2

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 35
    return-object p1
.end method

.method public addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/IMediaEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;
    .locals 1
    .param p1    # Lcom/narvii/pip/PipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "pipVideo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 21
    return-object p1
.end method

.method public addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/IPlayingEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public addSeekingPositionChangeListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/OnSeekingPositionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listenerSeeking"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;
    .locals 4
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result p2

    .line 17
    .line 18
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 19
    .line 20
    if-ltz v3, :cond_0

    .line 21
    .line 22
    if-ge v3, p2, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result p2

    .line 40
    .line 41
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1, v2, v1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 60
    return-object p1
.end method

.method public addVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    iput v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 29
    :cond_0
    const/4 p1, 0x3

    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v1, v1, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 37
    return-object p1
.end method

.method public addVideoClipList(Ljava/util/ArrayList;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)",
            "Lcom/narvii/video/model/AVClipInfoPack;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex(Ljava/util/ArrayList;I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    xor-int/2addr v0, v2

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v1

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 51
    :cond_1
    const/4 p1, 0x3

    .line 52
    const/4 v0, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v1, v1, p1, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 58
    return-object p1
.end method

.method public adjustAllViceTrackRange(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$1;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILe8/l;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$2;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILe8/l;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILe8/l;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$4;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$4;-><init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustTrackRange(Ljava/util/List;ILe8/l;)V

    .line 41
    return-void
.end method

.method protected final getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getLatestAttachmentZVal(Ljava/util/List;)F
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">;)F"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 23
    .line 24
    iget v1, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 25
    .line 26
    cmpl-float v2, v1, v0

    .line 27
    .line 28
    if-lez v2, :cond_0

    .line 29
    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    const p1, 0x3c23d70a    # 0.01f

    .line 34
    add-float/2addr v0, p1

    .line 35
    return v0
.end method

.method protected final getLoop()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLoop()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAllAudios()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, v3, v0, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 13
    return-void
.end method

.method public removeAllVideos()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x3

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1, v1, v2, v0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 14
    return-void
.end method

.method public removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 3
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 19
    const/4 p1, 0x3

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v0, p1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 25
    return-object p1
.end method

.method public removeCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
    .locals 4
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "caption"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v3}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 32
    return-object p1
.end method

.method public removeMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/IMediaEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;
    .locals 0
    .param p1    # Lcom/narvii/pip/PipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "pipVideo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 13
    return-object p1
.end method

.method public removePlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/IPlayingEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public removePositionChangeEventListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/OnSeekingPositionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listenerSeeking"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;
    .locals 4
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v3}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 32
    return-object p1
.end method

.method public removeVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 4
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0, v1, v2, v3}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    move-object p1, v3

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 45
    .line 46
    :goto_0
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 47
    :cond_1
    const/4 p1, 0x3

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v1, v1, p1, v3}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 53
    return-object p1
.end method

.method public resetAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 3
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 14
    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2, p1, v0, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

.method public resetAudioClipList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method public resetCaption(Lcom/narvii/video/model/Caption;Z)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "caption"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->isCaptionIndexValid(Lcom/narvii/video/model/Caption;)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public resetCaptionList(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/Caption;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "captionList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v3}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public resetPipVideoList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "pipVideoList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x2

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 26
    return-void
.end method

.method public resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 2
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 14
    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    return-void
.end method

.method public resetStickerList(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "stickerList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v3}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->updateIndexInMixedAttachmentList$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/List;ZILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;II)",
            "Lcom/narvii/video/model/AVClipInfoPack;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->reCalcClipIndex$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;Ljava/util/ArrayList;IILjava/lang/Object;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    move-object p1, v2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 32
    .line 33
    :goto_0
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, p3, p1, v2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged$default(Lcom/narvii/video/player/BaseEditorPreviewPlayer;ZIILjava/lang/Object;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 40
    return-object p1
.end method

.method public setActiveVideoClip(II)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v2, :cond_1

    .line 4
    iget v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    const/4 v4, 0x0

    if-ne p1, v3, :cond_5

    if-eqz v2, :cond_2

    .line 5
    iget-object p1, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    :cond_3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v4

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x1

    :goto_4
    iput-object v1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p0, v4, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onActiveVideoClipChanged(ZI)V

    :cond_6
    iget-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object p1
.end method

.method protected final setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method protected final setAdditionalAudioClipList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->additionalAudioClipList:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setCaptions(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->captions:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setLoop(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->loop:Ljava/lang/Boolean;

    return-void
.end method

.method protected final setMediaEventListeners(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IMediaEventListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->mediaEventListeners:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setPipVideos(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->pipVideos:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setPlayingEventListeners(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IPlayingEventListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->playingEventListeners:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setSeekingPositionListeners(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/OnSeekingPositionListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->seekingPositionListeners:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setStickers(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->stickers:Ljava/util/ArrayList;

    return-void
.end method

.method protected final setVideoClipList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->videoClipList:Ljava/util/ArrayList;

    return-void
.end method

.method protected final updateIndexInMixedAttachmentList(Ljava/util/List;Z)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v0, p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 19
    .line 20
    iput v0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

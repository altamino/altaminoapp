.class public final Lcom/narvii/scene/helper/SceneCorrectUtils;
.super Ljava/lang/Object;
.source "SceneCorrectUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;,
        Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneCorrectUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneCorrectUtils.kt\ncom/narvii/scene/helper/SceneCorrectUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1587#2,2:139\n*E\n*S KotlinDebug\n*F\n+ 1 SceneCorrectUtils.kt\ncom/narvii/scene/helper/SceneCorrectUtils\n*L\n31#1,2:139\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-direct {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;-><init>()V

    sput-object v0, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final correctAttachmentList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    const-string v1, "scene.captions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    const-string v1, "scene.stickers"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack> /* = java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack> */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">(",
            "Ljava/util/ArrayList<",
            "TE;>;II)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 123
    invoke-virtual {v1}, Lcom/narvii/video/model/BaseAttachmentInfoPack;->copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 124
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v3, p3, p2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, p2

    .line 127
    iput v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 129
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v2, p3, v2

    .line 130
    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    if-ge v2, v3, :cond_1

    .line 132
    iput v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 134
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type E"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v0
.end method

.method private final correctAudioList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 83
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    const-string v4, "ac"

    .line 84
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "ac?.copy() ?: continue"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v5, p3, p2

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v4, p2

    .line 91
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 93
    iget v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v4, p3, v4

    .line 94
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 96
    iget v5, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 97
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 99
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private final correctCaptionList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    const-string v0, "scene.captions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private final correctPipList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    const-string v0, "scene.pipClips"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private final correctSceneList(Ljava/util/List;ILkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;I",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lcom/narvii/scene/model/SceneInfo;",
            "-",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;"
        }
    .end annotation

    .line 30
    new-instance v8, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 32
    sget-object v2, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-direct {v2, v1, v0, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctVideoList(Lcom/narvii/scene/model/SceneInfo;IILkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->component1()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->component2()I

    move-result v3

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->component3()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 35
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getAudioClipList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v4, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-direct {v4, v1, v3, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAudioList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getCaptionClipList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v4, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-direct {v4, v1, v3, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctCaptionList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getStickerClipList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v4, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-direct {v4, v1, v3, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctStickerList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getPipClipList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v4, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-direct {v4, v1, v3, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctPipList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method static synthetic correctSceneList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Ljava/util/List;ILkotlin/jvm/functions/Function5;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 28
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ILkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic correctSceneList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Ljava/util/List;ZLkotlin/jvm/functions/Function5;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ZLkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p0

    return-object p0
.end method

.method private final correctStickerList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    const-string v0, "scene.stickers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private final correctVideoList(Lcom/narvii/scene/model/SceneInfo;IILkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "II",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lcom/narvii/scene/model/SceneInfo;",
            "-",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, p1

    .line 50
    iget-object v3, v9, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v10, v3

    .line 54
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v3, 0x0

    move v4, v0

    move v3, v1

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    if-gtz v3, :cond_1

    goto/16 :goto_5

    .line 58
    :cond_1
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "videoList[i]?.copy() ?: continue"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 62
    :cond_2
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v4

    add-int v13, v5, v4

    if-le v13, v1, :cond_3

    .line 65
    iget v4, v6, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v7, v4

    int-to-double v14, v3

    move-object/from16 v16, v10

    iget-wide v9, v6, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v14

    double-to-int v5, v7

    iput v5, v6, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 66
    iget v5, v6, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    sub-int/2addr v5, v4

    iput v5, v6, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    goto :goto_2

    :cond_3
    move-object/from16 v16, v10

    move v3, v4

    .line 69
    :goto_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v9, v1, v4

    .line 71
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v10, v0, v4

    if-eqz p4, :cond_4

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v14

    invoke-interface/range {v3 .. v8}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v3, v9

    move v4, v10

    move v5, v13

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v16, v10

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, p1

    move-object/from16 v10, v16

    goto :goto_1

    .line 76
    :cond_6
    :goto_5
    new-instance v1, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    invoke-direct {v1, v2, v0, v4}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;-><init>(Ljava/util/ArrayList;II)V

    return-object v1
.end method

.method static synthetic correctVideoList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Lcom/narvii/scene/model/SceneInfo;IILkotlin/jvm/functions/Function5;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 47
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctVideoList(Lcom/narvii/scene/model/SceneInfo;IILkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final correctSceneList(Ljava/util/List;ZLkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;Z",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lcom/narvii/scene/model/SceneInfo;",
            "-",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;"
        }
    .end annotation

    const-string v0, "sceneInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 25
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result p2

    goto :goto_0

    :cond_0
    const p2, 0x7fffffff

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ILkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p1

    return-object p1
.end method

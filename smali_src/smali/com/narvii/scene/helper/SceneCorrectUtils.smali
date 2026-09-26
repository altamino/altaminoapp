.class public final Lcom/narvii/scene/helper/SceneCorrectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;,
        Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneCorrectUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneCorrectUtils.kt\ncom/narvii/scene/helper/SceneCorrectUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1855#2,2:139\n*S KotlinDebug\n*F\n+ 1 SceneCorrectUtils.kt\ncom/narvii/scene/helper/SceneCorrectUtils\n*L\n31#1:139,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-direct {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;-><init>()V

    sput-object v0, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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

    .line 1
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    const-string v1, "captions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    const-string/jumbo v1, "stickers"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack>{ kotlin.collections.TypeAliasesKt.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack> }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
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

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 4
    invoke-virtual {v1}, Lcom/narvii/video/model/BaseAttachmentInfoPack;->copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type E of com.narvii.scene.helper.SceneCorrectUtils.correctAttachmentList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v3, p3, p2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, p2

    .line 6
    iput v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v2, p3, v2

    .line 7
    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    if-ge v2, v3, :cond_1

    .line 8
    iput v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 28
    move-result v4

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    iget v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 41
    .line 42
    sub-int v5, p3, p2

    .line 43
    .line 44
    if-le v4, v5, :cond_2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    add-int/2addr v4, p2

    .line 47
    .line 48
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 49
    .line 50
    sub-int v4, p3, v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 54
    move-result v5

    .line 55
    .line 56
    if-ge v4, v5, :cond_3

    .line 57
    .line 58
    iget v5, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 59
    add-int/2addr v5, v4

    .line 60
    .line 61
    iput v5, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 62
    .line 63
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_0

    .line 70
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

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 3
    .line 4
    const-string v0, "captions"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    .line 11
    move-result-object p1

    .line 12
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

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 3
    .line 4
    const-string v0, "pipClips"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final correctSceneList(Ljava/util/List;ILe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;I",
            "Le8/s<",
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
            "Lw7/l0;",
            ">;)",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;"
        }
    .end annotation

    .line 2
    new-instance v8, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILkotlin/jvm/internal/k;)V

    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
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

    sget-object v2, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    .line 5
    invoke-direct {v2, v1, v0, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctVideoList(Lcom/narvii/scene/model/SceneInfo;IILe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->component1()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->component2()I

    move-result v4

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->component3()I

    move-result v0

    if-eq v4, v0, :cond_0

    .line 6
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getAudioClipList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v1, v4, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAudioList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getCaptionClipList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v1, v4, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctCaptionList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getStickerClipList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v1, v4, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctStickerList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {v8}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getPipClipList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v1, v4, v0}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctPipList(Lcom/narvii/scene/model/SceneInfo;II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method static synthetic correctSceneList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Ljava/util/List;ILe8/s;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 2
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ILe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic correctSceneList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Ljava/util/List;ZLe8/s;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ZLe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

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

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 3
    .line 4
    const-string/jumbo v0, "stickers"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctAttachmentList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final correctVideoList(Lcom/narvii/scene/model/SceneInfo;IILe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "II",
            "Le8/s<",
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
            "Lw7/l0;",
            ">;)",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;"
        }
    .end annotation

    .line 1
    .line 2
    move/from16 v0, p2

    .line 3
    .line 4
    move/from16 v1, p3

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    move-object/from16 v9, p1

    .line 12
    .line 13
    iget-object v3, v9, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :cond_0
    move-object v10, v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v11

    .line 26
    const/4 v3, 0x0

    .line 27
    move v5, v0

    .line 28
    move v4, v1

    .line 29
    move v12, v3

    .line 30
    .line 31
    :goto_0
    if-ge v12, v11, :cond_7

    .line 32
    .line 33
    if-gtz v4, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    .line 42
    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 47
    move-result-object v6

    .line 48
    .line 49
    if-nez v6, :cond_2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 54
    move-result-object v7

    .line 55
    .line 56
    .line 57
    invoke-static {v7}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 58
    move-result v7

    .line 59
    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    :cond_3
    :goto_1
    move/from16 v16, v4

    .line 63
    goto :goto_3

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 67
    move-result v5

    .line 68
    .line 69
    add-int v13, v3, v5

    .line 70
    .line 71
    if-le v13, v1, :cond_5

    .line 72
    .line 73
    iget v3, v6, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 74
    int-to-double v7, v3

    .line 75
    int-to-double v14, v4

    .line 76
    .line 77
    move/from16 v16, v4

    .line 78
    .line 79
    iget-wide v4, v6, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 80
    mul-double/2addr v14, v4

    .line 81
    add-double/2addr v7, v14

    .line 82
    double-to-int v4, v7

    .line 83
    .line 84
    iput v4, v6, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 85
    sub-int/2addr v4, v3

    .line 86
    .line 87
    iput v4, v6, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 88
    .line 89
    move/from16 v4, v16

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    move v4, v5

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    .line 98
    move-result v3

    .line 99
    .line 100
    sub-int v14, v1, v3

    .line 101
    .line 102
    .line 103
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    .line 104
    move-result v3

    .line 105
    .line 106
    add-int v15, v0, v3

    .line 107
    .line 108
    if-eqz p4, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v7

    .line 113
    .line 114
    .line 115
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v8

    .line 117
    .line 118
    .line 119
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v16

    .line 121
    .line 122
    move-object/from16 v3, p4

    .line 123
    .line 124
    move-object/from16 v4, p1

    .line 125
    move-object v5, v6

    .line 126
    move-object v6, v7

    .line 127
    move-object v7, v8

    .line 128
    .line 129
    move-object/from16 v8, v16

    .line 130
    .line 131
    .line 132
    invoke-interface/range {v3 .. v8}, Le8/s;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_6
    move v3, v13

    .line 134
    move v4, v14

    .line 135
    move v5, v15

    .line 136
    goto :goto_4

    .line 137
    .line 138
    :goto_3
    move/from16 v4, v16

    .line 139
    .line 140
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_7
    :goto_5
    new-instance v1, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v2, v0, v5}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;-><init>(Ljava/util/ArrayList;II)V

    .line 147
    return-object v1
.end method

.method static synthetic correctVideoList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Lcom/narvii/scene/model/SceneInfo;IILe8/s;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x4

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 8
    move-result p3

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 11
    .line 12
    if-eqz p5, :cond_1

    .line 13
    const/4 p4, 0x0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctVideoList(Lcom/narvii/scene/model/SceneInfo;IILe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final correctSceneList(Ljava/util/List;ZLe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/s;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;Z",
            "Le8/s<",
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
            "Lw7/l0;",
            ">;)",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "sceneInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result p2

    goto :goto_0

    :cond_0
    const p2, 0x7fffffff

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ILe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p1

    return-object p1
.end method

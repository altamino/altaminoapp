.class public Lcom/narvii/scene/model/SceneDraft;
.super Ljava/lang/Object;
.source "SceneDraft.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneDraft"


# instance fields
.field public bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

.field public coverImage:Ljava/lang/String;

.field public coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

.field public draftId:Ljava/lang/String;

.field public globalFileFolder:Ljava/lang/String;

.field public metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public final sceneInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public serialNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lcom/narvii/scene/model/SceneDraft;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 55
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string p1, "scene_global_file"

    .line 59
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 64
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string p1, "scene_global_file"

    .line 66
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    return-void
.end method

.method public static convertToMaterial(Ljava/util/List;Lcom/narvii/scene/model/SceneDraft;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;",
            "Lcom/narvii/scene/model/SceneDraft;",
            ")V"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 442
    iget v1, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 443
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    if-eqz v1, :cond_0

    .line 444
    iget-object v2, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-nez v2, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    new-instance v2, Lcom/narvii/scene/model/SceneInfo;

    iget-object v3, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scene "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/narvii/scene/model/SceneInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v3, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    iget-wide v4, v3, Lcom/narvii/model/Media;->duration:J

    iput-wide v4, v2, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 449
    iget-object v4, v3, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    iput-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 450
    invoke-virtual {v3}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 451
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 452
    iget-object v1, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    invoke-virtual {v1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 454
    iget-object v1, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    :cond_2
    iget-object p0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getCopyPathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    .line 463
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSceneId()Ljava/lang/String;
    .locals 2

    .line 388
    iget v0, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceClipId(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 362
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/BaseClipInfoPack;

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static serialString(I)Ljava/lang/String;
    .locals 2

    .line 430
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addScene(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    return-void
.end method

.method public clearUselessClip()Lcom/narvii/scene/model/SceneDraft;
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 217
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->clearUselessClip()Lcom/narvii/scene/model/SceneInfo;

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    :cond_3
    return-object p0
.end method

.method public clone()Lcom/narvii/scene/model/SceneDraft;
    .locals 2

    .line 325
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-class v1, Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneDraft;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    return-object v0
.end method

.method public copyScene(Lcom/narvii/post/DraftManager;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 343
    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 344
    invoke-direct {p0}, Lcom/narvii/scene/model/SceneDraft;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " copy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 346
    iput-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 347
    iput-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 349
    iget-object v0, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/scene/model/SceneDraft;->getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/narvii/scene/model/SceneDraft;->getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->copyFolder(Ljava/io/File;Ljava/io/File;)V

    .line 350
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    iget-object p2, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iget-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/narvii/scene/model/SceneDraft;->getCopyPathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 352
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    .line 353
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    .line 354
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    .line 355
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public correctBgMusicClip()V
    .locals 7

    .line 282
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 294
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    .line 295
    iget v0, v2, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    int-to-long v5, v0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v0, v3

    :goto_0
    iput v0, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    goto :goto_2

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 298
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    int-to-long v3, v3

    sub-long/2addr v3, v0

    .line 299
    iget v0, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-long v5, v0

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    long-to-int v0, v3

    :goto_1
    iput v0, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    :cond_4
    :goto_2
    return-void
.end method

.method public createEmptyScene()Lcom/narvii/scene/model/SceneInfo;
    .locals 3

    .line 331
    new-instance v0, Lcom/narvii/scene/model/SceneInfo;

    invoke-direct {p0}, Lcom/narvii/scene/model/SceneDraft;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    invoke-static {v2}, Lcom/narvii/scene/model/SceneDraft;->serialString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/scene/model/SceneInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 524
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 9

    .line 405
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    const-string v2, "coverImageSource"

    const-string v3, "coverImage"

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 406
    iget-object v5, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 407
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v3, p0, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz v3, :cond_0

    iget v3, v3, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    if-ne v3, v4, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 408
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0

    .line 410
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 411
    iget-object v5, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v5, :cond_2

    .line 412
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v5

    .line 413
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    .line 414
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->musicId:Ljava/lang/String;

    const-string v8, "musicId"

    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 415
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    const-string v8, "title"

    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 416
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->musicType:I

    const-string v8, "type"

    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 417
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->categoryId:Ljava/lang/String;

    const-string v8, "categoryId"

    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 418
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string v6, "musicTrackList"

    .line 419
    invoke-virtual {v0, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 422
    :cond_2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/util/http/ApiService;->userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceType"

    invoke-virtual {v0, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 423
    iget-object v5, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 424
    iget-object v3, p0, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz v3, :cond_3

    iget v3, v3, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    if-ne v3, v4, :cond_3

    const/4 v1, 0x2

    :cond_3
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getBGMTotalDuraion()J
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 82
    :cond_0
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCoverMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 98
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    const/16 v1, 0x64

    .line 99
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 100
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstSceneCoverImagePath()Ljava/lang/String;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_0

    .line 88
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getFirstVideoClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 109
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v2, :cond_1

    .line 110
    iget-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 114
    iget-object v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    return-object v3

    :cond_5
    return-object v1
.end method

.method public getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;
    .locals 4

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v2, :cond_1

    .line 397
    iget-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSceneLisSizeIgnoreEmpty()I
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getSceneListIgnoreEmpty()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneInfo;->copy()Lcom/narvii/scene/model/SceneInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSceneListSize()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTotalDuration()J
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 73
    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneInfo;->getPreviewDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public hashCode()I
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 530
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 531
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 532
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 533
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isCanEncode()Z
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 128
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 129
    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneInfo;->isCanEncode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 148
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isError()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 139
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->originFileMissing()Z

    move-result v0

    return v0
.end method

.method public isSame(Ljava/lang/Object;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;ZZ)Z

    move-result p1

    return p1
.end method

.method public isSame(Ljava/lang/Object;ZZ)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 499
    const-class v2, Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 501
    :cond_1
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 503
    iget-object v2, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Lcom/narvii/scene/model/SceneDraft;->isSceneInfoEquals(Ljava/util/List;Z)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 505
    :cond_2
    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p2, :cond_3

    iget-object v2, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p2, v2}, Lcom/narvii/video/model/AVClipInfoPack;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_3
    iget-object p2, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p2, :cond_4

    :goto_0
    return v1

    :cond_4
    if-nez p3, :cond_6

    .line 508
    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p3, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_5
    iget-object p2, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    if-eqz p2, :cond_6

    :goto_1
    return v1

    .line 511
    :cond_6
    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    if-eqz p2, :cond_7

    iget-object p3, p1, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_7
    iget-object p2, p1, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    if-eqz p2, :cond_8

    :goto_2
    return v1

    .line 513
    :cond_8
    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_b
    :goto_4
    return v1
.end method

.method public isSceneInfoEquals(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-nez p1, :cond_0

    return v2

    .line 471
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 473
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    move-object v4, p1

    :goto_1
    if-eqz v4, :cond_4

    if-eqz p2, :cond_5

    .line 475
    invoke-virtual {v4}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/scene/model/SceneInfo;

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    if-eqz p2, :cond_7

    .line 479
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 480
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_9

    if-eqz p2, :cond_8

    .line 482
    invoke-virtual {v4}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_3

    .line 487
    :cond_8
    invoke-virtual {v4, p1}, Lcom/narvii/scene/model/SceneInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_9
    :goto_3
    if-eqz p1, :cond_1

    if-eqz p2, :cond_a

    .line 483
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_a
    return v2

    :cond_b
    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public originFileMissing()Z
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_0

    .line 158
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 160
    iget-object v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    .line 165
    :cond_2
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 167
    iget-object v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    .line 172
    :cond_4
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 173
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v3

    const-string v4, "captionStyle"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/asset/AssetDownloader;

    .line 174
    iget-object v4, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/model/Caption;

    .line 175
    iget-object v6, v5, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    if-eqz v6, :cond_6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_6

    return v2

    .line 178
    :cond_6
    iget-object v5, v5, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    .line 179
    invoke-virtual {v3, v5}, Lcom/narvii/asset/AssetDownloader;->getDownloadedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 180
    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v2

    .line 187
    :cond_7
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 188
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/StickerInfoPack;

    .line 189
    iget-object v5, v4, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v4, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_0

    .line 192
    :cond_9
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_a
    :goto_0
    return v2

    .line 198
    :cond_b
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/pip/PipInfoPack;

    .line 200
    iget-object v3, v3, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v3, :cond_c

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_c

    return v2

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_e

    .line 208
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v2

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public replaceSceneId(Ljava/lang/String;)V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 372
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    goto :goto_0

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    return-void
.end method

.method public setBgMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public setBgMusicMedia(Lcom/narvii/model/Media;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 308
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    const/4 v1, 0x0

    .line 313
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 314
    iget-object v2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 315
    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    long-to-int v4, v2

    iput v4, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 316
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 317
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 318
    iget-wide v1, p1, Lcom/narvii/model/Media;->duration:J

    long-to-int v2, v1

    iput v2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 319
    iget-object v1, p1, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 320
    iget-object p1, p1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 321
    invoke-virtual {p0, v0}, Lcom/narvii/scene/model/SceneDraft;->setBgMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 309
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public setSceneInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    .line 272
    iget-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 273
    iput p1, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    :cond_1
    return-void
.end method

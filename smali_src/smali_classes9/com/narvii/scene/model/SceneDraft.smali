.class public Lcom/narvii/scene/model/SceneDraft;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/scene/model/SceneDraft;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 3
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string p1, "scene_global_file"

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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string p1, "scene_global_file"

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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    iget v1, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput v1, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/model/Scene;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v2, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    new-instance v2, Lcom/narvii/scene/model/SceneInfo;

    .line 39
    .line 40
    iget-object v3, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v5, "Scene "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget v5, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v3, v4}, Lcom/narvii/scene/model/SceneInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    iget-object v3, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 65
    .line 66
    iget-wide v4, v3, Lcom/narvii/model/Media;->duration:J

    .line 67
    .line 68
    iput-wide v4, v2, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 69
    .line 70
    iget-object v4, v3, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    iput-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 81
    .line 82
    .line 83
    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 84
    .line 85
    iget-object v1, v1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    iput-object v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    iput-object v1, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_2
    iget-object p0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 108
    .line 109
    .line 110
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    return-void
.end method

.method public static getCopyPathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    :cond_1
    return-object p0
.end method

.method public static getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p1, "default"

    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-object v0
.end method

.method private getSceneId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "_"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
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

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iput-object v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method private static serialString(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "0"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v1, "Scene "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public addScene(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    .line 12
    return-void
.end method

.method public clearUselessClip()Lcom/narvii/scene/model/SceneDraft;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->clearUselessClip()Lcom/narvii/scene/model/SceneInfo;

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Ljava/io/File;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 60
    :cond_3
    return-object p0
.end method

.method public clone()Lcom/narvii/scene/model/SceneDraft;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/scene/model/SceneDraft;

    .line 3
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

    .line 1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/scene/model/SceneDraft;->getSceneId()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    iget-object v3, p2, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, " copy"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 58
    .line 59
    iput-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 60
    .line 61
    iget-object v0, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/narvii/scene/model/SceneDraft;->getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v2}, Lcom/narvii/scene/model/SceneDraft;->getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->copyFolder(Ljava/io/File;Ljava/io/File;)V

    .line 75
    .line 76
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2, v0}, Lcom/narvii/scene/model/SceneDraft;->getCopyPathParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iput-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 87
    .line 88
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    .line 92
    .line 93
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    .line 97
    .line 98
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    .line 102
    .line 103
    iget-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lcom/narvii/scene/model/SceneDraft;->replaceClipId(Ljava/util/List;)V

    .line 107
    return-object v1

    .line 108
    :cond_1
    :goto_0
    return-object v0
.end method

.method public correctBgMusicClip()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 13
    move-result v0

    .line 14
    int-to-long v0, v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 32
    move-result v2

    .line 33
    int-to-long v2, v2

    .line 34
    sub-long/2addr v0, v2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 37
    .line 38
    iget v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 39
    int-to-long v3, v3

    .line 40
    add-long/2addr v3, v0

    .line 41
    .line 42
    iget v0, v2, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 43
    int-to-long v5, v0

    .line 44
    .line 45
    cmp-long v1, v3, v5

    .line 46
    .line 47
    if-lez v1, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    long-to-int v0, v3

    .line 50
    .line 51
    :goto_0
    iput v0, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 58
    move-result v0

    .line 59
    int-to-long v0, v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    .line 63
    move-result-wide v2

    .line 64
    sub-long/2addr v0, v2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 67
    .line 68
    iget v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 69
    int-to-long v3, v3

    .line 70
    sub-long/2addr v3, v0

    .line 71
    .line 72
    iget v0, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 73
    int-to-long v5, v0

    .line 74
    .line 75
    cmp-long v1, v3, v5

    .line 76
    .line 77
    if-gez v1, :cond_3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    long-to-int v0, v3

    .line 80
    .line 81
    :goto_1
    iput v0, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 82
    :cond_4
    :goto_2
    return-void
.end method

.method public createEmptyScene()Lcom/narvii/scene/model/SceneInfo;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/model/SceneInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/scene/model/SceneDraft;->getSceneId()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Lcom/narvii/scene/model/SceneDraft;->serialString(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/narvii/scene/model/SceneInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;Z)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const-string v2, "coverImageSource"

    .line 6
    .line 7
    const-string v3, "coverImage"

    .line 8
    const/4 v4, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v5, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v3, v3, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    move v1, v4

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    return-object v0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v5, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 48
    move-result-object v6

    .line 49
    .line 50
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 51
    .line 52
    iget-object v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->musicId:Ljava/lang/String;

    .line 53
    .line 54
    const-string v8, "musicId"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 58
    .line 59
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 60
    .line 61
    iget-object v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    const-string/jumbo v8, "title"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 68
    .line 69
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 70
    .line 71
    iget v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->musicType:I

    .line 72
    .line 73
    .line 74
    const-string/jumbo v8, "type"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 78
    .line 79
    iget-object v7, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 80
    .line 81
    iget-object v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->categoryId:Ljava/lang/String;

    .line 82
    .line 83
    const-string v8, "categoryId"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 90
    .line 91
    const-string v6, "musicTrackList"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Lcom/narvii/util/http/ApiService;->userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    const-string v6, "deviceType"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 108
    .line 109
    iget-object v5, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 115
    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    iget v3, v3, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    .line 119
    .line 120
    if-ne v3, v4, :cond_3

    .line 121
    move v1, v4

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 125
    return-object v0
.end method

.method public getBGMTotalDuraion()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    return-wide v0

    .line 8
    .line 9
    :cond_0
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 10
    int-to-long v0, v0

    .line 11
    return-wide v0
.end method

.method public getCoverMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 25
    return-object v0
.end method

.method public getFirstSceneCoverImagePath()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_1
    return-object v0
.end method

.method public getFirstVideoClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v3

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 54
    .line 55
    iget-object v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    iget-object v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 64
    .line 65
    const-string v5, "http"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    move-result v4

    .line 70
    .line 71
    if-nez v4, :cond_4

    .line 72
    .line 73
    new-instance v4, Ljava/io/File;

    .line 74
    .line 75
    iget-object v5, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 82
    move-result v4

    .line 83
    .line 84
    if-nez v4, :cond_3

    .line 85
    :cond_4
    return-object v3

    .line 86
    :cond_5
    return-object v1
.end method

.method public getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    return-object v2

    .line 46
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSceneLisSizeIgnoreEmpty()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneInfo;->copy()Lcom/narvii/scene/model/SceneInfo;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-object v0
.end method

.method public getSceneListSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTotalDuration()J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneInfo;->getPreviewDuration()J

    .line 24
    move-result-wide v3

    .line 25
    add-long/2addr v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    .line 13
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->hashCode()I

    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    move-result v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    move-result v1

    .line 61
    :cond_4
    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public isCanEncode()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneInfo;->isCanEncode()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public isError()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->originFileMissing()Z

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public isSame(Ljava/lang/Object;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 8
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

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 2
    :cond_1
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 3
    iget-object v2, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Lcom/narvii/scene/model/SceneDraft;->isSceneInfoEquals(Ljava/util/List;Z)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p2, :cond_3

    .line 4
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

    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 5
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

    :cond_6
    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 6
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

    :cond_8
    iget-object p2, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    move v0, v1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return v2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v1

    .line 32
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 33
    move-object v4, p1

    .line 34
    .line 35
    :goto_1
    if-eqz v4, :cond_4

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 41
    move-result v5

    .line 42
    .line 43
    if-eqz v5, :cond_5

    .line 44
    .line 45
    .line 46
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v5

    .line 48
    .line 49
    if-eqz v5, :cond_5

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    check-cast v4, Lcom/narvii/scene/model/SceneInfo;

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 59
    .line 60
    if-eqz p2, :cond_7

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 64
    move-result v5

    .line 65
    .line 66
    if-eqz v5, :cond_7

    .line 67
    .line 68
    .line 69
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v5

    .line 71
    .line 72
    if-eqz v5, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_7
    if-eqz v4, :cond_9

    .line 82
    .line 83
    if-eqz p2, :cond_8

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 87
    move-result v5

    .line 88
    .line 89
    if-eqz v5, :cond_8

    .line 90
    goto :goto_3

    .line 91
    .line 92
    .line 93
    :cond_8
    invoke-virtual {v4, p1}, Lcom/narvii/scene/model/SceneInfo;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-nez p1, :cond_1

    .line 97
    return v2

    .line 98
    .line 99
    :cond_9
    :goto_3
    if-eqz p1, :cond_1

    .line 100
    .line 101
    if-eqz p2, :cond_a

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-nez p1, :cond_1

    .line 108
    :cond_a
    return v2

    .line 109
    .line 110
    :cond_b
    if-nez p1, :cond_c

    .line 111
    goto :goto_4

    .line 112
    :cond_c
    move v1, v2

    .line 113
    :goto_4
    return v1
.end method

.method public originFileMissing()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_d

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 42
    .line 43
    iget-object v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v5

    .line 48
    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    new-instance v5, Ljava/io/File;

    .line 52
    .line 53
    iget-object v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 60
    move-result v4

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    return v2

    .line 64
    .line 65
    :cond_2
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v4

    .line 76
    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 84
    .line 85
    iget-object v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v5

    .line 90
    .line 91
    if-nez v5, :cond_3

    .line 92
    .line 93
    new-instance v5, Ljava/io/File;

    .line 94
    .line 95
    iget-object v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 102
    move-result v4

    .line 103
    .line 104
    if-eqz v4, :cond_3

    .line 105
    return v2

    .line 106
    .line 107
    :cond_4
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 108
    .line 109
    if-eqz v3, :cond_7

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    const-string v4, "captionStyle"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    check-cast v3, Lcom/narvii/asset/AssetDownloader;

    .line 122
    .line 123
    iget-object v4, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v4

    .line 128
    .line 129
    .line 130
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v5

    .line 132
    .line 133
    if-eqz v5, :cond_7

    .line 134
    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v5

    .line 138
    .line 139
    check-cast v5, Lcom/narvii/video/model/Caption;

    .line 140
    .line 141
    iget-object v6, v5, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v6, :cond_6

    .line 144
    .line 145
    new-instance v6, Ljava/io/File;

    .line 146
    .line 147
    iget-object v7, v5, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v6}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 154
    move-result v6

    .line 155
    .line 156
    if-eqz v6, :cond_6

    .line 157
    return v2

    .line 158
    .line 159
    :cond_6
    iget-object v5, v5, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v5, :cond_5

    .line 162
    .line 163
    if-eqz v3, :cond_5

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v5}, Lcom/narvii/asset/AssetDownloader;->getDownloadedFile(Ljava/lang/String;)Ljava/io/File;

    .line 167
    move-result-object v5

    .line 168
    .line 169
    .line 170
    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 171
    move-result v5

    .line 172
    .line 173
    if-eqz v5, :cond_5

    .line 174
    return v2

    .line 175
    .line 176
    :cond_7
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 177
    .line 178
    if-eqz v3, :cond_b

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    .line 185
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    move-result v4

    .line 187
    .line 188
    if-eqz v4, :cond_b

    .line 189
    .line 190
    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    move-result-object v4

    .line 193
    .line 194
    check-cast v4, Lcom/narvii/video/model/StickerInfoPack;

    .line 195
    .line 196
    iget-object v5, v4, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    move-result v5

    .line 201
    .line 202
    if-nez v5, :cond_a

    .line 203
    .line 204
    iget-object v5, v4, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    move-result v5

    .line 209
    .line 210
    if-eqz v5, :cond_9

    .line 211
    goto :goto_0

    .line 212
    .line 213
    :cond_9
    new-instance v5, Ljava/io/File;

    .line 214
    .line 215
    iget-object v6, v4, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 222
    move-result v5

    .line 223
    .line 224
    if-nez v5, :cond_a

    .line 225
    .line 226
    new-instance v5, Ljava/io/File;

    .line 227
    .line 228
    iget-object v4, v4, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 235
    move-result v4

    .line 236
    .line 237
    if-eqz v4, :cond_8

    .line 238
    :cond_a
    :goto_0
    return v2

    .line 239
    .line 240
    :cond_b
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 241
    .line 242
    if-eqz v1, :cond_0

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    .line 249
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    move-result v3

    .line 251
    .line 252
    if-eqz v3, :cond_0

    .line 253
    .line 254
    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    move-result-object v3

    .line 257
    .line 258
    check-cast v3, Lcom/narvii/pip/PipInfoPack;

    .line 259
    .line 260
    iget-object v4, v3, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 261
    .line 262
    if-eqz v4, :cond_c

    .line 263
    .line 264
    new-instance v4, Ljava/io/File;

    .line 265
    .line 266
    iget-object v3, v3, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 273
    move-result v3

    .line 274
    .line 275
    if-eqz v3, :cond_c

    .line 276
    return v2

    .line 277
    .line 278
    :cond_d
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 279
    .line 280
    if-eqz v0, :cond_e

    .line 281
    .line 282
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    move-result v0

    .line 287
    .line 288
    if-nez v0, :cond_e

    .line 289
    .line 290
    new-instance v0, Ljava/io/File;

    .line 291
    .line 292
    iget-object v1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 293
    .line 294
    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 301
    move-result v0

    .line 302
    .line 303
    if-eqz v0, :cond_e

    .line 304
    return v2

    .line 305
    :cond_e
    const/4 v0, 0x0

    .line 306
    return v0
.end method

.method public replaceSceneId(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setBgMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public setBgMusicMedia(Lcom/narvii/model/Media;)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 20
    .line 21
    iget-object v2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    iput-object v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 32
    .line 33
    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    .line 34
    long-to-int v4, v2

    .line 35
    .line 36
    iput v4, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 37
    .line 38
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->getTotalDuration()J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 46
    move-result-wide v1

    .line 47
    long-to-int v1, v1

    .line 48
    .line 49
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 50
    .line 51
    iget-wide v1, p1, Lcom/narvii/model/Media;->duration:J

    .line 52
    long-to-int v1, v1

    .line 53
    .line 54
    iput v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 55
    .line 56
    iget-object v1, p1, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/scene/model/SceneDraft;->setBgMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 66
    return-void

    .line 67
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 70
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    iput p1, p0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 38
    :cond_1
    return-void
.end method

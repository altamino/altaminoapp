.class public Lcom/narvii/scene/model/SceneInfo;
.super Ljava/lang/Object;
.source "SceneInfo.java"

# interfaces
.implements Lcom/narvii/model/story/StorySceneMilestone;
.implements Lcom/narvii/model/story/ScenePollOrQuizHost;


# static fields
.field public static final ATTACH_STATUS_DISABLE:I = 0x0

.field public static final ATTACH_STATUS_NONE:I = 0x1

.field public static final ATTACH_STATUS_POLL:I = 0x3

.field public static final ATTACH_STATUS_POLL_UNEDITABLE:I = 0x4

.field public static final ATTACH_STATUS_QUIZ:I = 0x2

.field private static final MAX_DURATION_PER_SCENE:I

.field private static final MIN_DURATION_PER_SCENE:I = 0xbb8

.field public static final SCENE_STICKER_SOURCE_CUSTOME:I = 0x2

.field public static final SCENE_STICKER_SOURCE_OFFICIAL:I = 0x1

.field public static final SCENE_STICKER_SOURCE_SHARED_STICKER_PACK:I = 0x4

.field public static final SCENE_STICKER_SOURCE_THIRD_PARTY:I = 0x3


# instance fields
.field public audioClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field public captions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation
.end field

.field public coverImage:Ljava/lang/String;

.field public currentSceneVideoProgress:F

.field public duration:J

.field public id:Ljava/lang/String;

.field public inputFileFrom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inputFilePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public outputUrl:Ljava/lang/String;

.field public pipClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field public pollAttach:Lcom/narvii/model/PollAttach;

.field public previewFilePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public question:Lcom/narvii/model/QuizQuestion;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field public template:Lcom/narvii/videotemplate/Template;

.field public title:Ljava/lang/String;

.field public videoClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result v0

    sput v0, Lcom/narvii/scene/model/SceneInfo;->MAX_DURATION_PER_SCENE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    iput v0, p0, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    iput v0, p0, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 100
    iput-object p1, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    return-void
.end method

.method private getSceneType()I
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private reCalcClipIndex(Ljava/util/List;)V
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/BaseClipInfoPack;

    iput v0, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearUselessClip()Lcom/narvii/scene/model/SceneInfo;
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 120
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 122
    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/narvii/scene/model/SceneInfo;->reCalcClipIndex(Ljava/util/List;)V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 129
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "captionStyle"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/asset/AssetDownloader;

    .line 130
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/Caption;

    .line 131
    iget-object v3, v2, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 133
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 135
    :cond_5
    iget-object v3, v2, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {v0, v3}, Lcom/narvii/asset/AssetDownloader;->getDownloadedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 137
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 139
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/StickerInfoPack;

    if-nez v1, :cond_8

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 152
    :cond_8
    iget-object v2, v1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    .line 156
    :cond_9
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 153
    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 160
    :cond_c
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/narvii/scene/model/SceneInfo;->reCalcClipIndex(Ljava/util/List;)V

    :cond_d
    return-object p0
.end method

.method public containsPollOrQuiz()Z
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public copy()Lcom/narvii/scene/model/SceneInfo;
    .locals 2

    .line 294
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/scene/model/SceneInfo;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public copyScene(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 266
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 270
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 271
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 274
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 275
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 278
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 279
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 282
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 283
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 285
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 286
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 287
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    :cond_6
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 290
    iget p1, p1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    iput p1, p0, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    return-void
.end method

.method public correctDuration()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 243
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    .line 245
    iput-wide v0, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 510
    const-class v1, Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 512
    :cond_1
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 514
    iget-wide v1, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    iget-wide v3, p1, Lcom/narvii/scene/model/SceneInfo;->duration:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 517
    :cond_4
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 518
    :cond_5
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 519
    :cond_6
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 520
    :cond_7
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 521
    :cond_8
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 522
    :cond_9
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 523
    :cond_a
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 524
    :cond_b
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 525
    :cond_c
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    :goto_0
    return v0
.end method

.method public generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 20

    move-object/from16 v0, p0

    .line 298
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    return-object v1

    .line 301
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const/16 v2, 0x2d0

    const-string v3, "targetWidth"

    .line 302
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/16 v2, 0x500

    const-string v3, "targetHeight"

    .line 303
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 304
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    const-string v3, "videoSource"

    const-string v4, "frameRate"

    const-string v5, "bitrate"

    const-string v6, "rawHeight"

    const-string v7, "rawWidth"

    const-string v8, "rotate"

    const-string v9, "durationInMs"

    if-eqz v2, :cond_9

    .line 306
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 307
    iget-object v12, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v13, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v14

    .line 313
    invoke-virtual {v13}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColorContent()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 314
    invoke-virtual {v13}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColorContent()Ljava/lang/String;

    move-result-object v15

    const-string v10, "backgroundColor"

    invoke-virtual {v14, v10, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 317
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v10

    .line 319
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v15

    .line 320
    iget v11, v13, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    invoke-virtual {v15, v7, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 321
    iget v11, v13, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    invoke-virtual {v15, v6, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 322
    iget-object v11, v13, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    if-eqz v11, :cond_4

    array-length v11, v11

    if-lez v11, :cond_4

    .line 323
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v11

    move-object/from16 v16, v12

    .line 324
    iget-object v12, v13, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    move-object/from16 v17, v6

    array-length v6, v12

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    move/from16 v19, v6

    aget v6, v12, v7

    .line 325
    invoke-virtual {v11, v6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v19

    goto :goto_1

    :cond_3
    const-string v6, "targetRect"

    .line 327
    invoke-virtual {v15, v6, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_2

    :cond_4
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v16, v12

    .line 329
    :goto_2
    iget v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->bitRate:I

    invoke-virtual {v15, v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 330
    iget v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->frameRate:I

    invoke-virtual {v15, v4, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 331
    iget v6, v13, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    invoke-virtual {v15, v9, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 332
    iget v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    invoke-virtual {v15, v3, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 333
    iget-object v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/narvii/cropping/CroppingData;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const-string v7, "isDynamicCropping"

    invoke-virtual {v15, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 334
    iget-object v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-nez v6, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    iget v6, v6, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    :goto_4
    invoke-virtual {v15, v8, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 335
    iget-wide v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->decimalFormat(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "speedTimes"

    invoke-virtual {v15, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 336
    iget-object v6, v0, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    if-eqz v6, :cond_7

    .line 337
    iget-object v6, v6, Lcom/narvii/videotemplate/Template;->id:Ljava/lang/String;

    const-string v7, "videoTemplate"

    invoke-virtual {v15, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 340
    :cond_7
    invoke-virtual {v10, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string v6, "childClips"

    .line 342
    invoke-virtual {v14, v6, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 344
    invoke-virtual {v2, v14}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object/from16 v12, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    const-string v6, "videoClipList"

    .line 346
    invoke-virtual {v1, v6, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/model/SceneInfo;->getSceneType()I

    move-result v2

    const-string v6, "sceneType"

    invoke-virtual {v1, v6, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_5

    :cond_9
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 350
    :goto_5
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    const-string v6, "type"

    if-eqz v2, :cond_c

    .line 351
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 352
    iget-object v7, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v10, :cond_a

    goto :goto_6

    .line 356
    :cond_a
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v11

    .line 357
    iget-object v12, v10, Lcom/narvii/video/model/AVClipInfoPack;->musicId:Ljava/lang/String;

    const-string v13, "musicId"

    invoke-virtual {v11, v13, v12}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 358
    iget-object v12, v10, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    const-string v13, "title"

    invoke-virtual {v11, v13, v12}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 359
    iget v12, v10, Lcom/narvii/video/model/AVClipInfoPack;->musicType:I

    invoke-virtual {v11, v6, v12}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 360
    iget-object v10, v10, Lcom/narvii/video/model/AVClipInfoPack;->categoryId:Ljava/lang/String;

    const-string v12, "categoryId"

    invoke-virtual {v11, v12, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 361
    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    :cond_b
    const-string v7, "musicTrackList"

    .line 363
    invoke-virtual {v1, v7, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 366
    :cond_c
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    const-string v7, "translation"

    const-string v10, "scale"

    if-eqz v2, :cond_10

    .line 367
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 368
    iget-object v11, v0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/narvii/video/model/Caption;

    if-nez v12, :cond_d

    goto :goto_7

    .line 372
    :cond_d
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v13

    .line 373
    iget-object v14, v12, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    const-string v15, "content"

    invoke-virtual {v13, v15, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const v14, 0xffffff

    move-object/from16 v16, v11

    .line 374
    iget v11, v12, Lcom/narvii/video/model/Caption;->textColor:I

    and-int/2addr v11, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v15, v14

    const-string v11, "#%06X"

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "color"

    invoke-virtual {v13, v15, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 375
    iget v11, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-virtual {v13, v8, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 376
    iget v11, v12, Lcom/narvii/video/model/Caption;->fontSize:F

    const-string v15, "fontSize"

    invoke-virtual {v13, v15, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 378
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v11

    .line 379
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 380
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 381
    invoke-virtual {v13, v10, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 383
    iget-object v11, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v11, :cond_e

    .line 384
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v11

    .line 385
    iget-object v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 386
    iget-object v12, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 387
    invoke-virtual {v13, v7, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 390
    :cond_e
    invoke-virtual {v2, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object/from16 v11, v16

    goto :goto_7

    :cond_f
    const-string v11, "textTrackList"

    .line 392
    invoke-virtual {v1, v11, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 395
    :cond_10
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    .line 396
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 397
    iget-object v11, v0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/narvii/video/model/StickerInfoPack;

    if-nez v12, :cond_11

    goto :goto_8

    .line 401
    :cond_11
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v13

    .line 402
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    const-string v15, "name"

    invoke-virtual {v13, v15, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 403
    iget v14, v12, Lcom/narvii/video/model/StickerInfoPack;->sourceType:I

    const-string v15, "source"

    invoke-virtual {v13, v15, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 404
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string v14, "webp"

    .line 405
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_9

    .line 406
    :cond_12
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, "gif"

    .line 407
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_9

    .line 408
    :cond_13
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string v14, "png"

    .line 409
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_9

    .line 410
    :cond_14
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    const-string v14, "jpg"

    .line 411
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 413
    :cond_15
    :goto_9
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    .line 414
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 415
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 416
    invoke-virtual {v13, v10, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 417
    iget-object v14, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v14, :cond_16

    .line 418
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    .line 419
    iget-object v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 420
    iget-object v12, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 421
    invoke-virtual {v13, v7, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 423
    :cond_16
    invoke-virtual {v2, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto/16 :goto_8

    :cond_17
    const-string v6, "stickerList"

    .line 425
    invoke-virtual {v1, v6, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 427
    :cond_18
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 428
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 429
    iget-object v6, v0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/narvii/pip/PipInfoPack;

    if-nez v11, :cond_19

    goto :goto_a

    .line 433
    :cond_19
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v12

    .line 434
    iget-object v13, v11, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    if-eqz v13, :cond_1a

    .line 436
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->width:I

    move-object/from16 v15, v18

    invoke-virtual {v12, v15, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 437
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->height:I

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 438
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->bitrateInKbps:I

    invoke-virtual {v12, v5, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 439
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->fps:I

    invoke-virtual {v12, v4, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 440
    iget v13, v13, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    invoke-virtual {v12, v9, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_b

    :cond_1a
    move-object/from16 v0, v17

    move-object/from16 v15, v18

    :goto_b
    const/4 v13, 0x1

    .line 442
    invoke-virtual {v12, v3, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 443
    iget v14, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-virtual {v12, v8, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 444
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    .line 445
    iget v13, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {v14, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 446
    iget v13, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-virtual {v14, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 447
    invoke-virtual {v12, v10, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 448
    iget-object v13, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v13, :cond_1b

    .line 449
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v13

    .line 450
    iget-object v14, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 451
    iget-object v11, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 452
    invoke-virtual {v12, v7, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 454
    :cond_1b
    invoke-virtual {v2, v12}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, p0

    goto :goto_a

    :cond_1c
    const-string v0, "pipTrackList"

    .line 456
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 459
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v1
.end method

.method public getAttachDataStatus()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->correctDuration()V

    .line 237
    iget-wide v0, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    return-wide v0
.end method

.method public getPoll()Lcom/narvii/model/PollAttach;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    return-object v0
.end method

.method public getPreviewDuration()J
    .locals 5

    .line 249
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v0

    :goto_0
    long-to-int v1, v0

    .line 250
    sget v0, Lcom/narvii/scene/model/SceneInfo;->MAX_DURATION_PER_SCENE:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getQuestion()Lcom/narvii/model/QuizQuestion;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method public getQuizQuestion()Lcom/narvii/model/QuizQuestion;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 530
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 531
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 532
    iget-wide v2, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 533
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 534
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 535
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 536
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 537
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 538
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isCanEncode()Z
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v2, :cond_1

    return v1

    .line 211
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v2, :cond_4

    return v1

    .line 222
    :cond_4
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public isCanPlay()Z
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    if-nez v1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return v3

    .line 195
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isDurationNotCorrect()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isTooLong()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isTooShort()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isError()Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isCanPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isDurationNotCorrect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isCanEncode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isGeneratedFromTemplate()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooLong()Z
    .locals 5

    .line 179
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v0

    sget v2, Lcom/narvii/scene/model/SceneInfo;->MAX_DURATION_PER_SCENE:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooShort()Z
    .locals 5

    .line 183
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public milestoneId()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    return-object v0
.end method

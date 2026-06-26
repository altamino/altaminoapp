.class public Lcom/narvii/scene/helper/SceneUtils;
.super Ljava/lang/Object;
.source "SceneUtils.java"


# static fields
.field public static final AUDIO_FADE_IN_INTERVAL:I = 0xfa0

.field public static final AUDIO_FADE_OUT_INTERVAL:I = 0xfa0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudioClipInfo(Lcom/narvii/model/Media;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;JLcom/narvii/photos/PhotoManager;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 4

    .line 80
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    const/4 v1, 0x0

    .line 81
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 82
    iget-object v2, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p5, v2}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 83
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    const-string p5, ""

    :goto_0
    iput-object p5, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 84
    iget-wide v2, p0, Lcom/narvii/model/Media;->duration:J

    long-to-int p5, v2

    iput p5, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    long-to-int p5, v2

    .line 85
    iput p5, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 86
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 87
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    long-to-int p4, p3

    iput p4, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 88
    iget-object p3, p0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    iput-object p3, v0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 89
    iget-object p0, p0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    iput-object p0, v0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    const/high16 p0, 0x3f000000    # 0.5f

    .line 90
    iput p0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 92
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/video/services/SceneMediaProcessor;->fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p0

    return-object p0
.end method

.method public static durationMsToUIText(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 34
    div-long v2, p0, v0

    const-wide/16 v4, 0xe10

    .line 35
    div-long v6, v2, v4

    .line 36
    rem-long v4, v2, v4

    const-wide/16 v8, 0x3c

    div-long/2addr v4, v8

    .line 37
    rem-long/2addr v2, v8

    .line 38
    rem-long/2addr p0, v0

    const-wide/16 v0, 0x64

    div-long/2addr p0, v0

    .line 40
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "%02d:%02d.%1d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long p1, v6, v0

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "%d:"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static fillSceneInfoWithMediaList(Lcom/narvii/scene/model/SceneInfo;Ljava/util/List;Ljava/util/List;Lcom/narvii/photos/PhotoManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneInfo;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/narvii/photos/PhotoManager;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    if-nez p3, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    if-eqz v2, :cond_6

    .line 58
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 61
    :cond_1
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    .line 64
    :goto_1
    iget-object v4, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    iget-wide v3, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    iget-wide v5, v2, Lcom/narvii/model/Media;->duration:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 66
    iget-object v3, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    iget v3, v2, Lcom/narvii/model/Media;->type:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v2, v2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    :cond_4
    if-eqz p2, :cond_5

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 71
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 73
    :cond_5
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public static getAttachPreviewSceneList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/narvii/model/Scene;

    invoke-static {p0, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 106
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 107
    iget-object v2, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 108
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 110
    :cond_1
    iget-object v2, v1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v2, :cond_4

    .line 111
    invoke-virtual {v2}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/QuizOption;

    .line 114
    iget-object v5, v4, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_3
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 119
    iget-object v3, v1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    invoke-virtual {v3, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 122
    :cond_4
    iget-object v1, v1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PollOption;

    .line 124
    iget-object v3, v2, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 125
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method public static getSceneDraftFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    .line 49
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStoryThemeColor(Lcom/narvii/app/NVContext;I)I
    .locals 1

    const-string v0, "config"

    .line 96
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p0

    invoke-interface {p0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const p0, -0x69a408

    return p0
.end method

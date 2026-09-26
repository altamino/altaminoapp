.class public Lcom/narvii/scene/helper/SceneUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_FADE_IN_INTERVAL:I = 0xfa0

.field public static final AUDIO_FADE_OUT_INTERVAL:I = 0xfa0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static createAudioClipInfo(Lcom/narvii/model/Media;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;JLcom/narvii/photos/PhotoManager;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 4
    .param p5    # Lcom/narvii/photos/PhotoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5, v2}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 14
    move-result-object p5

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    move-result-object p5

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const-string p5, ""

    .line 24
    .line 25
    :goto_0
    iput-object p5, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v2, p0, Lcom/narvii/model/Media;->duration:J

    .line 28
    long-to-int p5, v2

    .line 29
    .line 30
    iput p5, v0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 31
    long-to-int p5, v2

    .line 32
    .line 33
    iput p5, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 34
    .line 35
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 39
    move-result-wide p3

    .line 40
    long-to-int p3, p3

    .line 41
    .line 42
    iput p3, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 43
    .line 44
    iget-object p3, p0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p3, v0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p0, v0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 51
    .line 52
    const/high16 p0, 0x3f000000    # 0.5f

    .line 53
    .line 54
    iput p0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 55
    .line 56
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/video/services/SceneMediaProcessor;->fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static durationMsToUIText(J)Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    .line 4
    div-long v2, p0, v0

    .line 5
    .line 6
    const-wide/16 v4, 0xe10

    .line 7
    .line 8
    div-long v6, v2, v4

    .line 9
    .line 10
    rem-long v4, v2, v4

    .line 11
    .line 12
    const-wide/16 v8, 0x3c

    .line 13
    div-long/2addr v4, v8

    .line 14
    rem-long/2addr v2, v8

    .line 15
    rem-long/2addr p0, v0

    .line 16
    .line 17
    const-wide/16 v0, 0x64

    .line 18
    div-long/2addr p0, v0

    .line 19
    .line 20
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 21
    const/4 v1, 0x3

    .line 22
    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    aput-object v4, v1, v5

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    aput-object v2, v1, v3

    .line 38
    const/4 v2, 0x2

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    aput-object p0, v1, v2

    .line 45
    .line 46
    const-string p0, "%02d:%02d.%1d"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    .line 52
    const-wide/16 v1, 0x0

    .line 53
    .line 54
    cmp-long p1, v6, v1

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    new-array v1, v3, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    aput-object v2, v1, v5

    .line 70
    .line 71
    const-string v2, "%d:"

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
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

    .line 1
    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-ge v1, v2, :cond_7

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/model/Media;

    .line 29
    .line 30
    if-eqz v2, :cond_6

    .line 31
    .line 32
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    goto :goto_3

    .line 40
    .line 41
    :cond_1
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_2
    const-string v3, ""

    .line 55
    .line 56
    :goto_1
    iget-object v4, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    .line 61
    iget-wide v3, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 62
    .line 63
    iget-wide v5, v2, Lcom/narvii/model/Media;->duration:J

    .line 64
    add-long/2addr v3, v5

    .line 65
    .line 66
    iput-wide v3, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 67
    .line 68
    iget-object v3, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v3

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    iget v3, v2, Lcom/narvii/model/Media;->type:I

    .line 77
    .line 78
    const/16 v4, 0x64

    .line 79
    .line 80
    if-ne v3, v4, :cond_3

    .line 81
    .line 82
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_3
    iget-object v2, v2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 86
    .line 87
    :goto_2
    iput-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 88
    .line 89
    :cond_4
    if-eqz p2, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 93
    move-result v2

    .line 94
    .line 95
    if-le v2, v1, :cond_5

    .line 96
    .line 97
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    check-cast v3, Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_3

    .line 108
    .line 109
    :cond_5
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 110
    const/4 v3, 0x1

    .line 111
    .line 112
    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_0

    .line 121
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

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-class v0, Lcom/narvii/model/Scene;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-eqz p0, :cond_6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/Scene;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    iput-object v2, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    iget-object v2, v1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v4

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    check-cast v4, Lcom/narvii/model/QuizOption;

    .line 69
    .line 70
    iget-object v5, v4, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v5, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    iput-object v5, v4, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_3
    new-instance v3, Ljava/util/Random;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    move-result-wide v4

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 96
    .line 97
    iget-object v3, v1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2}, Lcom/narvii/model/QuizQuestion;->setQuizOptions(Ljava/util/List;)V

    .line 101
    .line 102
    :cond_4
    iget-object v1, v1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 103
    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    iget-object v1, v1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 107
    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v2

    .line 117
    .line 118
    if-eqz v2, :cond_0

    .line 119
    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    check-cast v2, Lcom/narvii/model/PollOption;

    .line 125
    .line 126
    iget-object v3, v2, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 127
    .line 128
    if-nez v3, :cond_5

    .line 129
    .line 130
    .line 131
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    iput-object v3, v2, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 139
    goto :goto_1

    .line 140
    :cond_6
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

.method public static getStoryThemeColor(Lcom/narvii/app/NVContext;I)I
    .locals 1
    .param p0    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const p0, -0x69a408

    .line 32
    return p0
.end method

.class public Lcom/narvii/scene/model/SceneInfo;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sput v0, Lcom/narvii/scene/model/SceneInfo;->MAX_DURATION_PER_SCENE:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFileFrom:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    iput-object p1, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    return-void
.end method

.method private getSceneType()I
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 17
    .line 18
    iput v0, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public clearUselessClip()Lcom/narvii/scene/model/SceneInfo;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/narvii/scene/model/SceneInfo;->reCalcClipIndex(Ljava/util/List;)V

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "captionStyle"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/asset/AssetDownloader;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Lcom/narvii/video/model/Caption;

    .line 85
    .line 86
    iget-object v3, v2, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 87
    const/4 v4, 0x0

    .line 88
    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    new-instance v3, Ljava/io/File;

    .line 92
    .line 93
    iget-object v5, v2, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 100
    move-result v3

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 107
    .line 108
    :cond_5
    iget-object v3, v2, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lcom/narvii/asset/AssetDownloader;->getDownloadedFile(Ljava/lang/String;)Ljava/io/File;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 120
    move-result v3

    .line 121
    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v4, v2, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 127
    goto :goto_1

    .line 128
    .line 129
    :cond_6
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 130
    .line 131
    if-eqz v0, :cond_d

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v1

    .line 140
    .line 141
    if-eqz v1, :cond_c

    .line 142
    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    check-cast v1, Lcom/narvii/video/model/StickerInfoPack;

    .line 148
    .line 149
    if-nez v1, :cond_8

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :cond_8
    iget-object v2, v1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    move-result v2

    .line 160
    .line 161
    if-nez v2, :cond_b

    .line 162
    .line 163
    iget-object v2, v1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    move-result v2

    .line 168
    .line 169
    if-eqz v2, :cond_9

    .line 170
    goto :goto_3

    .line 171
    .line 172
    :cond_9
    new-instance v2, Ljava/io/File;

    .line 173
    .line 174
    iget-object v3, v1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 181
    move-result v2

    .line 182
    .line 183
    if-nez v2, :cond_a

    .line 184
    .line 185
    new-instance v2, Ljava/io/File;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 194
    move-result v1

    .line 195
    .line 196
    if-eqz v1, :cond_7

    .line 197
    .line 198
    .line 199
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 200
    goto :goto_2

    .line 201
    .line 202
    .line 203
    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 204
    goto :goto_2

    .line 205
    .line 206
    :cond_c
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, v0}, Lcom/narvii/scene/model/SceneInfo;->reCalcClipIndex(Ljava/util/List;)V

    .line 210
    :cond_d
    return-object p0
.end method

.method public containsPollOrQuiz()Z
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

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

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-class v1, Lcom/narvii/scene/model/SceneInfo;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 13
    return-object v0
.end method

.method public copyScene(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->inputFilePathList:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 83
    .line 84
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 97
    .line 98
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    :cond_6
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 108
    .line 109
    iget p1, p1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 110
    .line 111
    iput p1, p0, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 112
    return-void
.end method

.method public correctDuration()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-long v0, v1

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 29
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 22
    .line 23
    iget-wide v1, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 24
    .line 25
    iget-wide v3, p1, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    return v0

    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    return v0

    .line 42
    .line 43
    :cond_3
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    return v0

    .line 53
    .line 54
    :cond_4
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-nez v1, :cond_5

    .line 63
    return v0

    .line 64
    .line 65
    :cond_5
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-nez v1, :cond_6

    .line 74
    return v0

    .line 75
    .line 76
    :cond_6
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-nez v1, :cond_7

    .line 85
    return v0

    .line 86
    .line 87
    :cond_7
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 88
    .line 89
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-nez v1, :cond_8

    .line 96
    return v0

    .line 97
    .line 98
    :cond_8
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 99
    .line 100
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 105
    .line 106
    if-nez v1, :cond_9

    .line 107
    return v0

    .line 108
    .line 109
    :cond_9
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-nez v1, :cond_a

    .line 118
    return v0

    .line 119
    .line 120
    :cond_a
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 121
    .line 122
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    if-nez v1, :cond_b

    .line 129
    return v0

    .line 130
    .line 131
    :cond_b
    iget-object v1, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 132
    .line 133
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    move-result v1

    .line 138
    .line 139
    if-nez v1, :cond_c

    .line 140
    return v0

    .line 141
    .line 142
    :cond_c
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    move-result p1

    .line 149
    return p1

    .line 150
    :cond_d
    :goto_0
    return v0
.end method

.method public generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string/jumbo v2, "targetWidth"

    const/16 v3, 0x2d0

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "targetHeight"

    const/16 v3, 0x500

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    const-string/jumbo v3, "videoSource"

    const-string v4, "frameRate"

    const-string v5, "bitrate"

    const-string v6, "rawHeight"

    const-string v7, "rawWidth"

    const-string v8, "rotate"

    const-string v9, "durationInMs"

    if-eqz v2, :cond_9

    .line 4
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    iget-object v12, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 5
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

    .line 6
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v14

    .line 7
    invoke-virtual {v13}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColorContent()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "backgroundColor"

    .line 8
    invoke-virtual {v13}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColorContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v11

    .line 10
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v15

    .line 11
    iget v10, v13, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    invoke-virtual {v15, v7, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 12
    iget v10, v13, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    invoke-virtual {v15, v6, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    iget-object v10, v13, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    if-eqz v10, :cond_4

    array-length v10, v10

    if-lez v10, :cond_4

    .line 14
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v10

    move-object/from16 v16, v12

    .line 15
    iget-object v12, v13, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    move-object/from16 v17, v6

    array-length v6, v12

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    move/from16 v19, v6

    aget v6, v12, v7

    .line 16
    invoke-virtual {v10, v6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v19

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "targetRect"

    .line 17
    invoke-virtual {v15, v6, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_2

    :cond_4
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v16, v12

    .line 18
    :goto_2
    iget v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->bitRate:I

    invoke-virtual {v15, v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    iget v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->frameRate:I

    invoke-virtual {v15, v4, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 20
    iget v6, v13, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    invoke-virtual {v15, v9, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 21
    iget v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->videoSource:I

    invoke-virtual {v15, v3, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 22
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

    .line 23
    iget-object v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-nez v6, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    iget v6, v6, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    :goto_4
    invoke-virtual {v15, v8, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    iget-wide v6, v13, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->decimalFormat(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "speedTimes"

    invoke-virtual {v15, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v6, v0, Lcom/narvii/scene/model/SceneInfo;->template:Lcom/narvii/videotemplate/Template;

    if-eqz v6, :cond_7

    const-string/jumbo v7, "videoTemplate"

    .line 25
    iget-object v6, v6, Lcom/narvii/videotemplate/Template;->id:Ljava/lang/String;

    invoke-virtual {v15, v7, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    :cond_7
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string v6, "childClips"

    .line 27
    invoke-virtual {v14, v6, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 28
    invoke-virtual {v2, v14}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object/from16 v12, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    const-string/jumbo v6, "videoClipList"

    .line 29
    invoke-virtual {v1, v6, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v2, "sceneType"

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/model/SceneInfo;->getSceneType()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_5

    :cond_9
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    :goto_5
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    const-string/jumbo v6, "type"

    if-eqz v2, :cond_c

    .line 31
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    iget-object v7, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 32
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

    .line 33
    :cond_a
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v11

    const-string v12, "musicId"

    .line 34
    iget-object v13, v10, Lcom/narvii/video/model/AVClipInfoPack;->musicId:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v12, "title"

    .line 35
    iget-object v13, v10, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 36
    iget v12, v10, Lcom/narvii/video/model/AVClipInfoPack;->musicType:I

    invoke-virtual {v11, v6, v12}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v12, "categoryId"

    .line 37
    iget-object v10, v10, Lcom/narvii/video/model/AVClipInfoPack;->categoryId:Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_6

    :cond_b
    const-string v7, "musicTrackList"

    .line 39
    invoke-virtual {v1, v7, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_c
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    const-string/jumbo v7, "translation"

    const-string v10, "scale"

    if-eqz v2, :cond_10

    .line 40
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    iget-object v11, v0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 41
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

    .line 42
    :cond_d
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v13

    const-string v14, "content"

    .line 43
    iget-object v15, v12, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const v14, 0xffffff

    move-object/from16 v16, v11

    .line 44
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

    .line 45
    iget v11, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-virtual {v13, v8, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v11, "fontSize"

    .line 46
    iget v15, v12, Lcom/narvii/video/model/Caption;->fontSize:F

    invoke-virtual {v13, v11, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 47
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v11

    .line 48
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 49
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 50
    invoke-virtual {v13, v10, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 51
    iget-object v11, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v11, :cond_e

    .line 52
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v11

    .line 53
    iget-object v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 54
    iget-object v12, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 55
    invoke-virtual {v13, v7, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 56
    :cond_e
    invoke-virtual {v2, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object/from16 v11, v16

    goto :goto_7

    :cond_f
    const-string/jumbo v11, "textTrackList"

    .line 57
    invoke-virtual {v1, v11, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_10
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    .line 58
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    iget-object v11, v0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 59
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

    .line 60
    :cond_11
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v13

    const-string v14, "name"

    .line 61
    iget-object v15, v12, Lcom/narvii/video/model/StickerInfoPack;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v14, "source"

    .line 62
    iget v15, v12, Lcom/narvii/video/model/StickerInfoPack;->sourceType:I

    invoke-virtual {v13, v14, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 63
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string/jumbo v14, "webp"

    .line 64
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_9

    .line 65
    :cond_12
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, "gif"

    .line 66
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_9

    .line 67
    :cond_13
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string v14, "png"

    .line 68
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_9

    .line 69
    :cond_14
    iget-object v14, v12, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v14}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    const-string v14, "jpg"

    .line 70
    invoke-virtual {v13, v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 71
    :cond_15
    :goto_9
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    .line 72
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 73
    iget v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 74
    invoke-virtual {v13, v10, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 75
    iget-object v14, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v14, :cond_16

    .line 76
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    .line 77
    iget-object v15, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 78
    iget-object v12, v12, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 79
    invoke-virtual {v13, v7, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 80
    :cond_16
    invoke-virtual {v2, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto/16 :goto_8

    :cond_17
    const-string v6, "stickerList"

    .line 81
    invoke-virtual {v1, v6, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_18
    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 82
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    iget-object v6, v0, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    .line 83
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

    .line 84
    :cond_19
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v12

    .line 85
    iget-object v13, v11, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    if-eqz v13, :cond_1a

    .line 86
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->width:I

    move-object/from16 v15, v18

    invoke-virtual {v12, v15, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 87
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->height:I

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 88
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->bitrateInKbps:I

    invoke-virtual {v12, v5, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 89
    iget v14, v13, Lcom/narvii/video/model/StreamInfo;->fps:I

    invoke-virtual {v12, v4, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 90
    iget v13, v13, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    invoke-virtual {v12, v9, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_b
    const/4 v13, 0x1

    goto :goto_c

    :cond_1a
    move-object/from16 v0, v17

    move-object/from16 v15, v18

    goto :goto_b

    .line 91
    :goto_c
    invoke-virtual {v12, v3, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 92
    iget v14, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-virtual {v12, v8, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 93
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v14

    .line 94
    iget v13, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {v14, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 95
    iget v13, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-virtual {v14, v13}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 96
    invoke-virtual {v12, v10, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 97
    iget-object v13, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v13, :cond_1b

    .line 98
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v13

    .line 99
    iget-object v14, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 100
    iget-object v11, v11, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(F)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 101
    invoke-virtual {v12, v7, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 102
    :cond_1b
    invoke-virtual {v2, v12}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, p0

    goto :goto_a

    :cond_1c
    const-string v0, "pipTrackList"

    .line 103
    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 104
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v1
.end method

.method public getAttachDataStatus()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x2

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v0, 0x3

    .line 12
    return v0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->correctDuration()V

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 6
    return-wide v0
.end method

.method public getPoll()Lcom/narvii/model/PollAttach;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    return-object v0
.end method

.method public getPreviewDuration()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    long-to-int v0, v0

    .line 19
    .line 20
    sget v1, Lcom/narvii/scene/model/SceneInfo;->MAX_DURATION_PER_SCENE:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v0

    .line 25
    int-to-long v0, v0

    .line 26
    return-wide v0
.end method

.method public getQuestion()Lcom/narvii/model/QuizQuestion;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method public getQuizQuestion()Lcom/narvii/model/QuizQuestion;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-wide v2, p0, Lcom/narvii/scene/model/SceneInfo;->duration:J

    .line 29
    .line 30
    const/16 v4, 0x20

    .line 31
    .line 32
    ushr-long v4, v2, v4

    .line 33
    xor-long/2addr v2, v4

    .line 34
    long-to-int v2, v2

    .line 35
    add-int/2addr v0, v2

    .line 36
    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    move-result v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v2, v1

    .line 48
    :goto_2
    add-int/2addr v0, v2

    .line 49
    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 58
    move-result v2

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move v2, v1

    .line 61
    :goto_3
    add-int/2addr v0, v2

    .line 62
    .line 63
    mul-int/lit8 v0, v0, 0x1f

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 71
    move-result v2

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    move v2, v1

    .line 74
    :goto_4
    add-int/2addr v0, v2

    .line 75
    .line 76
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 84
    move-result v2

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    move v2, v1

    .line 87
    :goto_5
    add-int/2addr v0, v2

    .line 88
    .line 89
    mul-int/lit8 v0, v0, 0x1f

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    .line 92
    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 97
    move-result v2

    .line 98
    goto :goto_6

    .line 99
    :cond_6
    move v2, v1

    .line 100
    :goto_6
    add-int/2addr v0, v2

    .line 101
    .line 102
    mul-int/lit8 v0, v0, 0x1f

    .line 103
    .line 104
    iget-object v2, p0, Lcom/narvii/scene/model/SceneInfo;->previewFilePath:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 110
    move-result v1

    .line 111
    :cond_7
    add-int/2addr v0, v1

    .line 112
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isCanEncode()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    return v1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v1

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 64
    .line 65
    if-nez v2, :cond_4

    .line 66
    return v1

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 80
    move-result v2

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    return v1

    .line 85
    :cond_6
    const/4 v0, 0x1

    .line 86
    return v0
.end method

.method public isCanPlay()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    if-eqz v1, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    return v3

    .line 32
    .line 33
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    return v3

    .line 44
    :cond_3
    const/4 v0, 0x1

    .line 45
    return v0
.end method

.method public isDurationNotCorrect()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isTooLong()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isTooShort()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public isError()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isCanPlay()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isDurationNotCorrect()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->isCanEncode()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    :cond_2
    return v1
.end method

.method public isGeneratedFromTemplate()Z
    .locals 1

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
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget v2, Lcom/narvii/scene/model/SceneInfo;->MAX_DURATION_PER_SCENE:I

    .line 7
    int-to-long v2, v2

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public isTooShort()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0xbb8

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public milestoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    return-object v0
.end method

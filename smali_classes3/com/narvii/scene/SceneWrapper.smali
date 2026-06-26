.class public Lcom/narvii/scene/SceneWrapper;
.super Ljava/lang/Object;
.source "SceneWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/SceneWrapper$SceneState;
    }
.end annotation


# static fields
.field public static final STATES_EMPTY:I = 0x1

.field public static final STATES_ERROR:I = 0x3

.field public static final STATES_NORMAL:I = 0x2


# instance fields
.field public canPlaying:Z

.field public isPlaying:Z

.field public scene:Lcom/narvii/model/Scene;

.field public sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field public selected:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 33
    iput-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->canPlaying:Z

    return-void
.end method

.method public static create(Lcom/narvii/model/Scene;)Lcom/narvii/scene/SceneWrapper;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_0
    new-instance v0, Lcom/narvii/scene/SceneWrapper;

    invoke-direct {v0}, Lcom/narvii/scene/SceneWrapper;-><init>()V

    .line 132
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/narvii/model/Scene;

    invoke-static {p0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/model/Scene;

    iput-object p0, v0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    return-object v0
.end method

.method public static create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_0
    new-instance v0, Lcom/narvii/scene/SceneWrapper;

    invoke-direct {v0}, Lcom/narvii/scene/SceneWrapper;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->copy()Lcom/narvii/scene/model/SceneInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public static createEmpty(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    new-instance v0, Lcom/narvii/scene/SceneWrapper;

    invoke-direct {v0}, Lcom/narvii/scene/SceneWrapper;-><init>()V

    .line 169
    iput-object p0, v0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public static createWrappers(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneDraft;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object p0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 206
    invoke-static {v1}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createWrappers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 219
    invoke-static {v1}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/model/Scene;)Lcom/narvii/scene/SceneWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSceneInfos(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    .line 180
    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getScenes(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    .line 192
    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isEdit()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public containsPollOrQuiz()Ljava/lang/Boolean;
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    invoke-virtual {v0}, Lcom/narvii/model/Scene;->containsPollOrQuiz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAttachDataStatus()I
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    iget-object v1, v0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    return v0

    .line 155
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->getAllVoteCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->getAttachDataStatus()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    iget-object v0, v0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    :goto_1
    return-object v1
.end method

.method public getDurationText()Ljava/lang/String;
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    iget-object v0, v0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/narvii/model/Media;->duration:J

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->getPreviewDuration()J

    move-result-wide v0

    .line 111
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPollVoteCount()I
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    iget-object v0, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->getAllVoteCount()I

    move-result v1

    :goto_0
    return v1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->getAllVoteCount()I

    move-result v1

    :cond_3
    :goto_1
    return v1
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    iget-object v0, v0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getStates()I
    .locals 2
    .annotation build Lcom/narvii/scene/SceneWrapper$SceneState;
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public isCanPlaying()Z
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->canPlaying:Z

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
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isError()Z
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setCanPlaying(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/scene/SceneWrapper;->canPlaying:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, v0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    :cond_0
    return-void
.end method

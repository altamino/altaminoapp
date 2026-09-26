.class public Lcom/narvii/scene/SceneWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->canPlaying:Z

    .line 12
    return-void
.end method

.method public static create(Lcom/narvii/model/Scene;)Lcom/narvii/scene/SceneWrapper;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/narvii/scene/SceneWrapper;

    invoke-direct {v0}, Lcom/narvii/scene/SceneWrapper;-><init>()V

    .line 4
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

    .line 1
    :cond_0
    new-instance v0, Lcom/narvii/scene/SceneWrapper;

    invoke-direct {v0}, Lcom/narvii/scene/SceneWrapper;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/narvii/scene/model/SceneInfo;->copy()Lcom/narvii/scene/model/SceneInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    return-object v0
.end method

.method public static createEmpty(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/scene/SceneWrapper;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/scene/SceneWrapper;-><init>()V

    .line 10
    .line 11
    iput-object p0, v0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 12
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

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 4
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

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    .line 7
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

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
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

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v0
.end method

.method private isEdit()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/Scene;->containsPollOrQuiz()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getAttachDataStatus()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 v0, 0x2

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->getAllVoteCount()I

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x5

    .line 24
    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x3

    .line 29
    :goto_0
    return v0

    .line 30
    :cond_2
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->getAttachDataStatus()I

    .line 41
    move-result v0

    .line 42
    :goto_1
    return v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 18
    :goto_0
    return-object v1

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_2
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    .line 26
    :goto_1
    return-object v1
.end method

.method public getDurationText()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-wide v0, v0, Lcom/narvii/model/Media;->duration:J

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    .line 32
    move-result-wide v0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->getPreviewDuration()J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public getPollVoteCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->getAllVoteCount()I

    .line 18
    move-result v1

    .line 19
    :goto_0
    return v1

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->getAllVoteCount()I

    .line 32
    move-result v1

    .line 33
    :cond_3
    :goto_1
    return v1
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 21
    :goto_0
    return-object v0
.end method

.method public getStates()I
    .locals 2
    .annotation build Lcom/narvii/scene/SceneWrapper$SceneState;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    const/4 v0, 0x3

    .line 28
    return v0

    .line 29
    :cond_2
    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-object v1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 17
    :goto_0
    return-object v1
.end method

.method public isCanPlaying()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/scene/SceneWrapper;->canPlaying:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

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

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

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
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public isError()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneWrapper;->isEdit()Z

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
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public setCanPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/SceneWrapper;->canPlaying:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object p1, v0, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    .line 7
    :cond_0
    return-void
.end method

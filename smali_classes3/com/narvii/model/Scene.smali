.class public Lcom/narvii/model/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/narvii/model/story/StorySceneMilestone;
.implements Lcom/narvii/model/story/ScenePollOrQuizHost;
.implements Ljava/lang/Cloneable;


# instance fields
.field public media:Lcom/narvii/model/Media;

.field public metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public pollAttach:Lcom/narvii/model/PollAttach;

.field public question:Lcom/narvii/model/QuizQuestion;

.field public sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScene(Ljava/lang/String;Ljava/util/List;)Lcom/narvii/model/Scene;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;)",
            "Lcom/narvii/model/Scene;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    if-eqz v1, :cond_1

    .line 59
    iget-object v2, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/narvii/model/Scene;
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-class v1, Lcom/narvii/model/Scene;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Scene;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/narvii/model/Scene;->clone()Lcom/narvii/model/Scene;

    move-result-object v0

    return-object v0
.end method

.method public containsPollOrQuiz()Z
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Scene;->getPoll()Lcom/narvii/model/PollAttach;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/Scene;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/Scene;

    if-eqz v1, :cond_2

    .line 97
    check-cast p1, Lcom/narvii/model/Scene;

    .line 98
    iget-object v1, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    iget-object v2, p1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 99
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 100
    invoke-virtual {v1, p1}, Lcom/narvii/model/QuizQuestion;->isSame(Lcom/narvii/model/QuizQuestion;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    iget-object p1, p1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 101
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public getPoll()Lcom/narvii/model/PollAttach;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    return-object v0
.end method

.method public getQuizQuestion()Lcom/narvii/model/QuizQuestion;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    const/16 v1, 0x3f81

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/narvii/model/Media;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public milestoneId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    return-object v0
.end method

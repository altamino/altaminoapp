.class public Lcom/narvii/model/Scene;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/model/Scene;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v2, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    return-object v1

    .line 38
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/narvii/model/Scene;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

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

    .line 1
    invoke-virtual {p0}, Lcom/narvii/model/Scene;->clone()Lcom/narvii/model/Scene;

    move-result-object v0

    return-object v0
.end method

.method public containsPollOrQuiz()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Scene;->getPoll()Lcom/narvii/model/PollAttach;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    return v1

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/Scene;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/Scene;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/model/Scene;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 33
    .line 34
    iget-object v2, p1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/narvii/model/QuizQuestion;->isSame(Lcom/narvii/model/QuizQuestion;)Z

    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    iget-object v1, p1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    const/4 v0, 0x1

    .line 67
    :cond_2
    :goto_0
    return v0
.end method

.method public getPoll()Lcom/narvii/model/PollAttach;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    return-object v0
.end method

.method public getQuizQuestion()Lcom/narvii/model/QuizQuestion;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 3
    .line 4
    const/16 v1, 0x3f81

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    xor-int/2addr v1, v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/Media;->hashCode()I

    .line 19
    move-result v0

    .line 20
    xor-int/2addr v1, v0

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->hashCode()I

    .line 28
    move-result v0

    .line 29
    xor-int/2addr v1, v0

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/model/PollAttach;->hashCode()I

    .line 37
    move-result v0

    .line 38
    xor-int/2addr v1, v0

    .line 39
    :cond_3
    return v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public milestoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    return-object v0
.end method

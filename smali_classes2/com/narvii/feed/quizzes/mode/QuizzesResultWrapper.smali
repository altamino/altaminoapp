.class public Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;
.super Lcom/narvii/model/NVObject;
.source "QuizzesResultWrapper.java"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;


# instance fields
.field public beatRate:F

.field public hellIsFinished:Z

.field public highestMode:I

.field public highestScore:I

.field public isFinished:Z

.field public latestMode:I

.field public latestScore:I

.field public quizResult:Lcom/narvii/model/CurrentQuizzesResult;

.field public userProfile:Lcom/narvii/model/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "author"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/User;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x63

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;->userProfile:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.class public Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "QuizzesResultResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field public quizInBestQuizzes:Z

.field public quizPlayedTimes:I

.field public quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

.field public quizResultRankingList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/feed/quizzes/mode/QuizzesResultWrapper;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;->quizResultRankingList:Ljava/util/List;

    return-object v0
.end method

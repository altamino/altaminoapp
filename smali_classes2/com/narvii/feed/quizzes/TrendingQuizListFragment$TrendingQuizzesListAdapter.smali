.class Lcom/narvii/feed/quizzes/TrendingQuizListFragment$TrendingQuizzesListAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "TrendingQuizListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/TrendingQuizListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingQuizzesListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/TrendingQuizListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/TrendingQuizListFragment;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/feed/quizzes/TrendingQuizListFragment$TrendingQuizzesListAdapter;->this$0:Lcom/narvii/feed/quizzes/TrendingQuizListFragment;

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 44
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/feed/quiz-trending"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected fromQuizFeedList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    .line 39
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

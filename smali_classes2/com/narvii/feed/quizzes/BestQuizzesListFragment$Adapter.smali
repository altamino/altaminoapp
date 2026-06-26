.class Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "BestQuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/BestQuizzesListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/BestQuizzesListFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Best Quizzes Feed"

    .line 53
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 63
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/feed/quiz-best-quizzes"

    .line 64
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected fromQuizFeedList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 71
    iget-object p1, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    invoke-virtual {p1}, Lcom/narvii/feed/quizzes/BestQuizzesListFragment;->updateHeader()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

.class Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Best Quizzes Feed"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/feed/quiz-best-quizzes"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 14
    move-result-object p1

    .line 15
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment$Adapter;->this$0:Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/feed/quizzes/BestQuizzesListFragment;->updateHeader()V

    .line 9
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

    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

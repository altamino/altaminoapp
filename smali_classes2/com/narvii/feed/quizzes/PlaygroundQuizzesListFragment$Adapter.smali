.class Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "PlaygroundQuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment$Adapter;->this$0:Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Quiz Playground Feed"

    .line 50
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 60
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/blog"

    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string/jumbo v0, "type"

    const-string v1, "quizzes-recent"

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
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
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 55
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

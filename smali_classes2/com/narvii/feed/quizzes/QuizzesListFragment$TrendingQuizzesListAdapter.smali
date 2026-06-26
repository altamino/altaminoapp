.class Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "QuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingQuizzesListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 161
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Trending Quiz Feed"

    .line 162
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const p3, 0x7f0b05c1

    .line 193
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903ea

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;

    invoke-direct {p3, p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;-><init>(Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 172
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/feed/quiz-trending"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected fromQuizFeedList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v0

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

    .line 167
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

.method public showListEnd(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

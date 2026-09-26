.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;
.super Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlogQuizzesRankingListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 2
    invoke-direct {p0, p2}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/feed/quizzes/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/blog/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->u(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "/quiz/result"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string/jumbo p1, "start0"

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method protected getBackgroundColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, -0xf65122

    goto :goto_0

    :cond_0
    const p1, 0x20ffffff

    :goto_0
    return p1
.end method

.method protected getBlog()Lcom/narvii/model/Blog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->D(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected getRadius()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const-string/jumbo p3, "start0"

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 4
    iget-object p3, p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    invoke-static {p1, p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->H(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/CurrentQuizzesResult;)V

    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 5
    iget-boolean p2, p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;->quizInBestQuizzes:Z

    invoke-static {p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->L(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)V

    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->W(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V

    return-void
.end method

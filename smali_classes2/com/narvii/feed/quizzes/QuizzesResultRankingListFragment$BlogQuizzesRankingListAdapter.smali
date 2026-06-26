.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;
.super Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;
.source "QuizzesResultRankingListFragment.java"


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

    .line 724
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 725
    invoke-direct {p0, p2}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 745
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2100(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/quiz/result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "start0"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 746
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 747
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 740
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    return-object v0
.end method

.method protected getRadius()I
    .locals 2

    .line 735
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V
    .locals 0

    .line 752
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 753
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "start0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 754
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    iget-object p3, p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    invoke-static {p1, p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$402(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/CurrentQuizzesResult;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 755
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    iget-boolean p2, p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;->quizInBestQuizzes:Z

    invoke-static {p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2002(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)Z

    .line 756
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2200(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 722
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V

    return-void
.end method

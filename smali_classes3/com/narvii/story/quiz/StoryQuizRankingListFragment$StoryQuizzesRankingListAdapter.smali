.class Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;
.super Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;
.source "StoryQuizRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoryQuizzesRankingListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/quiz/StoryQuizRankingListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    .line 102
    invoke-direct {p0, p2}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const p3, 0x7f0b066a

    .line 139
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09094a

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/story/quiz/-$$Lambda$StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter$35dlmUqVyXIlN8ffeTLAdFIju5I;

    invoke-direct {p3, p0}, Lcom/narvii/story/quiz/-$$Lambda$StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter$35dlmUqVyXIlN8ffeTLAdFIju5I;-><init>(Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 113
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    invoke-static {v1}, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->access$000(Lcom/narvii/story/quiz/StoryQuizRankingListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    invoke-static {v2}, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->access$000(Lcom/narvii/story/quiz/StoryQuizRankingListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

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

    .line 114
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getBlog()Lcom/narvii/model/Blog;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->access$000(Lcom/narvii/story/quiz/StoryQuizRankingListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$createListEndItem$0$StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 99
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V

    return-void
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

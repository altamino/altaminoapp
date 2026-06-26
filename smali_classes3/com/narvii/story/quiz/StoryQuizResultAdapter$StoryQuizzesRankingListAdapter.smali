.class Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;
.super Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;
.source "StoryQuizResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoryQuizzesRankingListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    .line 194
    invoke-direct {p0, p2}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2

    const p3, 0x7f0b066b

    .line 248
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09094a

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/story/quiz/-$$Lambda$StoryQuizResultAdapter$StoryQuizzesRankingListAdapter$tMEcfNUHrIOnGNV7A_AcYuq2-tM;

    invoke-direct {p3, p0}, Lcom/narvii/story/quiz/-$$Lambda$StoryQuizResultAdapter$StoryQuizzesRankingListAdapter$tMEcfNUHrIOnGNV7A_AcYuq2-tM;-><init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 250
    invoke-virtual {p0, p2}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->getBackgroundColor(Z)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 251
    instance-of p3, p1, Lcom/narvii/widget/RadiusLayout;

    if-eqz p3, :cond_0

    .line 252
    move-object p3, p1

    check-cast p3, Lcom/narvii/widget/RadiusLayout;

    invoke-virtual {p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->getRadius()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->getRadius()I

    move-result v1

    invoke-virtual {p3, p2, p2, v0, v1}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    :cond_0
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 220
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v1}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$100(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/Blog;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v2}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$100(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/Blog;

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

    .line 221
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 222
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getBackgroundColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x39ffffff

    goto :goto_0

    :cond_0
    const p1, 0x20ffffff

    :goto_0
    return p1
.end method

.method protected getBlog()Lcom/narvii/model/Blog;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$100(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/Blog;

    move-result-object v0

    return-object v0
.end method

.method protected getRadius()I
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$createListEndItem$0$StoryQuizResultAdapter$StoryQuizzesRankingListAdapter(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 228
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "start0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    iget-object p3, p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    invoke-static {p1, p3}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$002(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/model/CurrentQuizzesResult;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 230
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    iget p2, p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;->quizPlayedTimes:I

    invoke-static {p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$202(Lcom/narvii/story/quiz/StoryQuizResultAdapter;I)I

    .line 231
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {p1}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$300(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 191
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;I)V

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

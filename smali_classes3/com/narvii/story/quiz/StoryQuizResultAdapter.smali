.class public Lcom/narvii/story/quiz/StoryQuizResultAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "StoryQuizResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/quiz/StoryQuizResultAdapter$BottomStatisticsAdapter;,
        Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;,
        Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;,
        Lcom/narvii/story/quiz/StoryQuizResultAdapter$LoginAdapter;
    }
.end annotation


# instance fields
.field protected accountService:Lcom/narvii/account/AccountService;

.field private quizPlayedTimes:I

.field private quizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

.field private final rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

.field private story:Lcom/narvii/model/Blog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizPlayedTimes:I

    const-string p1, "account"

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 41
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizResultAdapter$LoginAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$LoginAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$ScoreAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

    .line 45
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

    invoke-virtual {p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->needImpression()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->setNeedImpression(Z)V

    .line 46
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0, p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;Lcom/narvii/app/NVContext;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 50
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizResultAdapter$BottomStatisticsAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter$BottomStatisticsAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/CurrentQuizzesResult;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/model/CurrentQuizzesResult;)Lcom/narvii/model/CurrentQuizzesResult;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)Lcom/narvii/model/Blog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizPlayedTimes:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/story/quiz/StoryQuizResultAdapter;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizPlayedTimes:I

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public fitHoverTitleView(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->fitHoverTitleView(Landroid/view/View;)V

    return-void
.end method

.method public getQuizzesResult()Lcom/narvii/model/CurrentQuizzesResult;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    return-object v0
.end method

.method protected needImpression()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onClickLogin()V
    .locals 0

    return-void
.end method

.method public setData(Lcom/narvii/model/Blog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->story:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getQuizPlayedTimes()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizPlayedTimes:I

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->quizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 65
    invoke-direct {p0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->updateViews()V

    return-void
.end method

.method public setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizResultAdapter$StoryQuizzesRankingListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    return-void
.end method

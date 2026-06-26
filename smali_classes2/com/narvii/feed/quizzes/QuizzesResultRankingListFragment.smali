.class public Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "QuizzesResultRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_BG_COLOR:I = -0xd3d3d4

.field public static final KEY_CURRENT_QUESTION:Ljava/lang/String; = "current_question"

.field public static final KEY_CURRENT_QUIZ:Ljava/lang/String; = "quizzes"

.field private static final KEY_CURRENT_QUIZ_RESULT:Ljava/lang/String; = "current_quizzes_result"

.field public static final KEY_GUEST_MODE:Ljava/lang/String; = "isGuestMode"

.field private static final KEY_NEXT_QUIZ:Ljava/lang/String; = "next_quizzes"

.field public static final KEY_QUIZ_IN_BEST:Ljava/lang/String; = "quizInBest"

.field public static final KEY_SHOW_NEXT_QUIZ_LAYOUT:Ljava/lang/String; = "showNextQuizLayout"

.field private static final THRESHOLD:I = 0x32

.field private static final TOP_COUNT_BEFORE_HOVER:I = 0x3


# instance fields
.field private beatResultView:Landroid/widget/LinearLayout;

.field private blogId:Ljava/lang/String;

.field cFeedListStr:Ljava/lang/String;

.field cFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field cPosition:I

.field cRequestUrl:Ljava/lang/String;

.field cTimeStamp:Ljava/lang/String;

.field private currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

.field hellModeAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

.field private hoverTopCount:I

.field private isGuestMode:Z

.field private listView:Landroid/widget/ListView;

.field mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private nextQuiz:Lcom/narvii/model/Blog;

.field private nextQuizzesContainer:Landroid/widget/FrameLayout;

.field private oldFirstVisibleItem:I

.field private oldTop:I

.field private quizInBestQuizzes:Z

.field quizQuestion:Lcom/narvii/model/QuizQuestion;

.field private quizzes:Lcom/narvii/model/Blog;

.field rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

.field private readyToShowRightShare:Z

.field resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

.field private rootView:Landroid/view/View;

.field scoreHintAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field shareAndReplayAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

.field private showNextQuizLayout:Z

.field startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

.field titleAdapter:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

.field private titleHoverView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 336
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/ListView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->beatResultView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->beatResultView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->getRebounceAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareQuizzesScore()V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->replayCurrentQuizzes()V

    return-void
.end method

.method static synthetic access$1700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->playQuiz(Lcom/narvii/model/Blog;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    return p0
.end method

.method static synthetic access$2000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateAdriftViews()V

    return-void
.end method

.method static synthetic access$2300(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->saveContinousState(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/util/List;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->filterNextQuizFromList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->sendNextQuizzesRequest()V

    return-void
.end method

.method static synthetic access$2800(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->readyToShowRightShare:Z

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->readyToShowRightShare:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/CurrentQuizzesResult;)Lcom/narvii/model/CurrentQuizzesResult;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldFirstVisibleItem:I

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldTop:I

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldTop:I

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->onUpScrolling(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->onDownScrolling(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/widget/ColorTextView;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateColorScoreView(Lcom/narvii/widget/ColorTextView;Z)V

    return-void
.end method

.method private changeListPadding(I)V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 430
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 431
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    .line 428
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method private filterNextQuizFromList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 821
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 822
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    .line 823
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    .line 824
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1

    .line 826
    check-cast v0, Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 827
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 832
    :cond_2
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 833
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    .line 835
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method private getRebounceAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 1082
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 1083
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v1, -0x1

    .line 1084
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 1085
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-object v0
.end method

.method private handleContinousFeeds()V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 779
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->filterNextQuizFromList(Ljava/util/List;)V

    .line 780
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    goto :goto_0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 783
    new-instance v0, Lcom/narvii/feed/FeedContinuousViewer;

    invoke-direct {v0}, Lcom/narvii/feed/FeedContinuousViewer;-><init>()V

    .line 784
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 786
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 787
    new-instance v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;

    const-class v3, Lcom/narvii/model/api/BlogListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 810
    :cond_1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->sendNextQuizzesRequest()V

    :goto_0
    return-void
.end method

.method private handleNextQuizzes()V
    .locals 2

    .line 762
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 764
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 766
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_2

    .line 770
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    goto :goto_0

    .line 772
    :cond_2
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->handleContinousFeeds()V

    :cond_3
    :goto_0
    return-void
.end method

.method private initFragmentView(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f090048

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f0802ae

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xebebec    # -1.9683E38f

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v0, 0x7f090902

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FullscreenBackgroundView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/narvii/image/BackgroundSource;

    .line 293
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f090bb3

    .line 296
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const v2, 0x7f08048a

    .line 299
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 302
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    const v1, 0x7f0903ed

    .line 305
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 306
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 307
    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0e7d

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 311
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_5

    .line 312
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 313
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    instance-of v2, v1, Lcom/narvii/widget/NVListView;

    if-eqz v2, :cond_6

    .line 319
    check-cast v1, Lcom/narvii/widget/NVListView;

    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_6
    const v1, 0x7f090ba0

    .line 321
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 322
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 325
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 326
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 327
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_7

    .line 328
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 329
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 330
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_7
    const v0, 0x7f090762

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private onDownScrolling(II)V
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateListView(IIZ)V

    return-void
.end method

.method private onUpScrolling(II)V
    .locals 1

    const/4 v0, 0x1

    .line 399
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateListView(IIZ)V

    return-void
.end method

.method private playQuiz(Lcom/narvii/model/Blog;Z)V
    .locals 5

    .line 999
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1000
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    const-string v3, "key_continuous_feed_api_request"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    const-string v3, "key_continuous_feed_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    const-string v3, "key_continuous_feed_list_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    iget v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, "key_continuous_feed_current_position"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromQuizFeedList"

    .line 1006
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1008
    :cond_0
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    iput-object v2, v0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p2, :cond_1

    .line 1010
    sget-object v2, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    iput-object v2, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    goto :goto_0

    .line 1012
    :cond_1
    sget-object v2, Lcom/narvii/util/logging/LoggingSource;->Next:Lcom/narvii/util/logging/LoggingSource;

    iput-object v2, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 1014
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    return-void
.end method

.method private replayCurrentQuizzes()V
    .locals 3

    .line 1024
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1025
    sget-object v1, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 1026
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 1027
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    return-void
.end method

.method private saveContinousState(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 815
    iput-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 816
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 817
    iput-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    return-void
.end method

.method private sendNextQuizzesRequest()V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 841
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/quiz/next"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 843
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 844
    new-instance v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$4;

    const-class v3, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$4;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private shareQuizzesScore()V
    .locals 2

    .line 984
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 985
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;

    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    invoke-static {p0, v0, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private showNextQuizzesLayout()V
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 968
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 969
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 971
    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 980
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private updateAdriftViews()V
    .locals 2

    .line 1055
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 1059
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    if-eqz v0, :cond_1

    .line 1062
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scoreHintAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    if-eqz v0, :cond_2

    .line 1065
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleAdapter:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    if-eqz v0, :cond_3

    .line 1068
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareAndReplayAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    if-eqz v0, :cond_4

    .line 1071
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1073
    :cond_4
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hellModeAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    if-eqz v0, :cond_5

    .line 1074
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1076
    :cond_5
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuiz()V

    .line 1078
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    :cond_7
    :goto_1
    return-void
.end method

.method private updateColorScoreView(Lcom/narvii/widget/ColorTextView;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eqz p2, :cond_1

    new-array p2, v0, [I

    .line 1113
    fill-array-data p2, :array_0

    goto :goto_0

    :cond_1
    new-array p2, v0, [I

    fill-array-data p2, :array_1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ColorTextView;->setTextColors([I)V

    .line 1114
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0xd88d4
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private updateListView(IIZ)V
    .locals 2

    .line 408
    iget p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    if-nez p3, :cond_1

    .line 410
    iget p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    if-ne p3, p1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x41f80000    # 31.0f

    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    :cond_1
    const/4 p3, 0x0

    if-le p1, p2, :cond_2

    .line 414
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->changeListPadding(I)V

    .line 415
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 416
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-direct {p0, p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->changeListPadding(I)V

    .line 420
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 p2, 0x4

    .line 421
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateNextQuiz()V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f090903

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/narvii/model/CurrentQuizzesResult;->isFinished:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 953
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 939
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->getRebounceAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 940
    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$7;

    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$7;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 956
    :goto_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f090842

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 958
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v1, :cond_4

    const v1, 0x7f0f1017

    .line 959
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const v1, 0x7f0f0c26

    .line 961
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V
    .locals 4

    .line 862
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p1, :cond_1

    .line 864
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 867
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 870
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0b05d3

    .line 872
    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    const v1, 0x7f090902

    .line 876
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    if-eqz v1, :cond_5

    .line 878
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 880
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_1

    .line 881
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v2

    if-eqz v2, :cond_4

    .line 882
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    const v2, -0xd3d3d4

    .line 884
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_5
    :goto_1
    const v1, 0x7f090761

    .line 888
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 889
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    if-eqz v2, :cond_6

    const v2, 0x7f0f0da0

    .line 890
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const v1, 0x7f090842

    .line 893
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 895
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    if-eqz v2, :cond_7

    const v2, 0x7f0f1017

    .line 896
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    const v2, 0x7f0f0c26

    .line 898
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    const v1, 0x7f0908f7

    .line 902
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 904
    new-instance v2, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v2, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 905
    invoke-virtual {v2, p1}, Lcom/narvii/feed/FeedHelper;->getQuizHintInfo(Lcom/narvii/model/Blog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const v1, 0x7f090906

    .line 908
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 910
    iget-object v2, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const v1, 0x7f090903

    .line 913
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 915
    new-instance v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    :cond_b
    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizzesLayout()V

    :cond_c
    :goto_3
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 256
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 257
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 258
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scoreHintAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    .line 259
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 260
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0, p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleAdapter:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    .line 261
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareAndReplayAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    .line 262
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 263
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hellModeAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    .line 264
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareAndReplayAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hellModeAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scoreHintAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleAdapter:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 272
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0x7f0b05ce

    aput v2, v0, v1

    .line 273
    invoke-virtual {p1, v0}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 274
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 154
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "showNextQuizLayout"

    const-string v1, "key_continuous_feed_current_position"

    const-string v2, "key_continuous_feed_list_timestamp"

    const-string v3, "key_continuous_feed_api_request"

    const-string v4, "key_continuous_feed_list"

    const-string v5, "isGuestMode"

    const-string v6, "quizzes"

    const-string v7, "current_quizzes_result"

    const-string v8, "next_quizzes"

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    const-string v5, "blogId"

    .line 163
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    .line 164
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 165
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 167
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    const-string v0, "quizInBest"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-virtual {p0, v7}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 175
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 176
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 178
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    const/4 p1, 0x1

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    .line 182
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    const-class p1, Lcom/narvii/model/Blog;

    invoke-static {v8, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    .line 185
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 186
    const-class p1, Lcom/narvii/model/CurrentQuizzesResult;

    invoke-static {v7, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/CurrentQuizzesResult;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 188
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 189
    const-class p1, Lcom/narvii/model/Blog;

    invoke-static {v6, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_4

    .line 192
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    .line 195
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    :goto_1
    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1034
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1035
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080309

    .line 1036
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 1037
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02d1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1048
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-ne v0, v1, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareQuizzesScore()V

    .line 1051
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0f0fa2

    .line 1042
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->readyToShowRightShare:Z

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1043
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 224
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "next_quizzes"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_quizzes_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    const-string v1, "blogId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quizzes"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    const-string v1, "isGuestMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    const-string v1, "showNextQuizLayout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    const-string v1, "quizInBest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    const-string v1, "key_continuous_feed_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    const-string v1, "key_continuous_feed_api_request"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    const-string v1, "key_continuous_feed_list_timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    const-string v1, "key_continuous_feed_current_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 207
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 208
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 210
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/QuizQuestion;

    iput-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 215
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->initFragmentView(Landroid/view/View;)V

    .line 217
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->handleNextQuizzes()V

    .line 218
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateAdriftViews()V

    .line 219
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateViews()V
    .locals 3

    .line 1091
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 1092
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1097
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1101
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 1102
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1105
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 1103
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.class public Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 18
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldFirstVisibleItem:I

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldTop:I

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    return p0
.end method

.method static bridge synthetic D(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->readyToShowRightShare:Z

    return p0
.end method

.method static bridge synthetic F(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    return p0
.end method

.method static bridge synthetic G(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->beatResultView:Landroid/widget/LinearLayout;

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/CurrentQuizzesResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldFirstVisibleItem:I

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->oldTop:I

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->readyToShowRightShare:Z

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->filterNextQuizFromList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic O(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->getRebounceAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic P(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->onDownScrolling(II)V

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->onUpScrolling(II)V

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->playQuiz(Lcom/narvii/model/Blog;Z)V

    return-void
.end method

.method static bridge synthetic S(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->replayCurrentQuizzes()V

    return-void
.end method

.method static bridge synthetic T(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->saveContinousState(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic U(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->sendNextQuizzesRequest()V

    return-void
.end method

.method static bridge synthetic V(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareQuizzesScore()V

    return-void
.end method

.method static bridge synthetic W(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateAdriftViews()V

    return-void
.end method

.method static bridge synthetic X(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/widget/ColorTextView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateColorScoreView(Lcom/narvii/widget/ColorTextView;Z)V

    return-void
.end method

.method static bridge synthetic Y(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method private changeListPadding(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    move-result v1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 15
    move-result v2

    .line 16
    .line 17
    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    move-result v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 25
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

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/model/Feed;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    instance-of v1, v0, Lcom/narvii/model/Blog;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/model/Blog;

    .line 55
    .line 56
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 57
    const/4 v2, 0x6

    .line 58
    .line 59
    if-ne v1, v2, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 71
    move-result p1

    .line 72
    .line 73
    if-lez p1, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    .line 76
    const/4 v0, 0x0

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    check-cast p1, Lcom/narvii/model/Blog;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    .line 85
    .line 86
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFiltered:Ljava/util/List;

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 93
    :cond_4
    :goto_1
    return-void
.end method

.method private getRebounceAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f01004c

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 16
    const/4 v1, -0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 24
    return-object v0
.end method

.method private handleContinousFeeds()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->filterNextQuizFromList(Ljava/util/List;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/feed/FeedContinuousViewer;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lcom/narvii/feed/FeedContinuousViewer;-><init>()V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    iget v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "api"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;

    .line 69
    .line 70
    const-class v3, Lcom/narvii/model/api/BlogListResponse;

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$3;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->sendNextQuizzesRequest()V

    .line 81
    :goto_0
    return-void
.end method

.method private handleNextQuizzes()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->handleContinousFeeds()V

    .line 35
    :cond_3
    :goto_0
    return-void
.end method

.method private initFragmentView(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a0079

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0803b5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 57
    .line 58
    .line 59
    const v2, -0xebebec    # -1.9683E38f

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const v0, 0x7f0a0bbf

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    check-cast v0, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 75
    const/4 v1, 0x1

    .line 76
    .line 77
    new-array v1, v1, [Lcom/narvii/image/BackgroundSource;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    aput-object v2, v1, v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 86
    const/4 v0, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0a0ed0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    check-cast v1, Landroid/widget/ImageView;

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    .line 103
    const v2, 0x7f0805b2

    .line 104
    .line 105
    .line 106
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    const v1, 0x7f0a04eb

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    instance-of v2, v1, Landroid/widget/TextView;

    .line 121
    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    check-cast v1, Landroid/widget/TextView;

    .line 125
    .line 126
    .line 127
    const v2, 0x7f120f9e

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    iput-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 141
    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 154
    move-result v0

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    .line 161
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    .line 162
    .line 163
    instance-of v2, v1, Lcom/narvii/widget/NVListView;

    .line 164
    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    const v1, 0x7f0a0eae

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    iput-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 182
    const/4 v2, 0x4

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    const/high16 v2, 0x40c00000    # 6.0f

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 195
    move-result v1

    .line 196
    float-to-int v1, v1

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 200
    move-result v2

    .line 201
    .line 202
    if-eqz v2, :cond_7

    .line 203
    .line 204
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 205
    .line 206
    if-eqz v2, :cond_7

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    .line 214
    if-eqz v3, :cond_7

    .line 215
    .line 216
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 217
    .line 218
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 219
    .line 220
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 221
    .line 222
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 223
    .line 224
    .line 225
    :cond_7
    const v0, 0x7f0a09f7

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    check-cast p1, Landroid/widget/FrameLayout;

    .line 232
    .line 233
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 234
    return-void
.end method

.method private onDownScrolling(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateListView(IIZ)V

    .line 5
    return-void
.end method

.method private onUpScrolling(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateListView(IIZ)V

    .line 5
    return-void
.end method

.method private playQuiz(Lcom/narvii/model/Blog;Z)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v2, "key_continuous_feed_api_request"

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    const-string v2, "key_continuous_feed_list"

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    const-string v2, "key_continuous_feed_list_timestamp"

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    .line 39
    const/4 v3, 0x1

    .line 40
    add-int/2addr v2, v3

    .line 41
    .line 42
    const-string v4, "key_continuous_feed_current_position"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    const-string v2, "fromQuizFeedList"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    .line 52
    :cond_0
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 53
    .line 54
    iput-object v2, v0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    sget-object v2, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    .line 59
    .line 60
    iput-object v2, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    sget-object v2, Lcom/narvii/util/logging/LoggingSource;->Next:Lcom/narvii/util/logging/LoggingSource;

    .line 64
    .line 65
    iput-object v2, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    .line 69
    .line 70
    const-string/jumbo p1, "statistics"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    const-string p2, "Start Quiz"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string p2, "Ranking Page"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    const-string p2, "Start Quiz Total"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_2
    const-string p2, "Next Quiz"

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    const-string p2, "Next Quiz Total"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 108
    :goto_1
    return-void
.end method

.method private replayCurrentQuizzes()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    .line 27
    .line 28
    const-string/jumbo v0, "statistics"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 35
    .line 36
    const-string v1, "Replay Quiz"

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "Results View"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "Replay Quiz Total"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 52
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

    .line 1
    .line 2
    iput-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private sendNextQuizzesRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "/blog/"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "/quiz/next"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "api"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 55
    .line 56
    new-instance v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$4;

    .line 57
    .line 58
    const-class v3, Lcom/narvii/model/api/BlogResponse;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$4;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 65
    return-void
.end method

.method private shareQuizzesScore()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    .line 23
    return-void
.end method

.method private showNextQuizzesLayout()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 26
    .line 27
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 31
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->beatResultView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    return-object p0
.end method

.method private updateAdriftViews()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scoreHintAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleAdapter:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareAndReplayAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hellModeAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    :cond_5
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuiz()V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 56
    .line 57
    if-nez v0, :cond_6

    .line 58
    const/4 v0, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_6
    const/4 v0, 0x3

    .line 61
    .line 62
    :goto_0
    iput v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    .line 63
    :cond_7
    :goto_1
    return-void
.end method

.method private updateColorScoreView(Lcom/narvii/widget/ColorTextView;Z)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, -0x1

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    .line 9
    const p2, -0xd88d4

    .line 10
    .line 11
    .line 12
    filled-new-array {v0, p2}, [I

    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    filled-new-array {v0, v0}, [I

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ColorTextView;->setTextColors([I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 25
    return-void
.end method

.method private updateListView(IIZ)V
    .locals 2

    .line 1
    .line 2
    iget p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    add-int/lit8 p2, p2, 0x1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    iget p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    .line 20
    .line 21
    if-ne p3, p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    const/high16 v1, 0x41f80000    # 31.0f

    .line 28
    .line 29
    .line 30
    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 31
    :cond_1
    const/4 p3, 0x0

    .line 32
    .line 33
    if-le p1, p2, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 39
    move-result p1

    .line 40
    add-int/2addr v0, p1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->changeListPadding(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-direct {p0, p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->changeListPadding(I)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    const/4 p2, 0x4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method private updateNextQuiz()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a0bc0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-boolean v1, v1, Lcom/narvii/model/CurrentQuizzesResult;->isFinished:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->getRebounceAnimation()Landroid/view/animation/Animation;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    .line 51
    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$7;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$7;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 58
    .line 59
    :goto_1
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a0af9

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 73
    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    .line 77
    const v1, 0x7f12112e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :cond_4
    const v1, 0x7f120d53

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_5
    :goto_2
    return-void
.end method

.method private updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_c

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 23
    const/4 v0, 0x4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    const v1, 0x7f0d068a

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const v1, 0x7f0a0bbf

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 96
    move-result v2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :cond_4
    const v2, -0xd3d3d4

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_1
    const v1, 0x7f0a09f6

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    check-cast v1, Landroid/widget/TextView;

    .line 116
    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 120
    .line 121
    if-nez v2, :cond_6

    .line 122
    .line 123
    iget-boolean v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 124
    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    .line 128
    const v2, 0x7f120ecc

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    const v1, 0x7f0a0af9

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    check-cast v1, Landroid/widget/TextView;

    .line 145
    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    iget-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 149
    .line 150
    if-nez v2, :cond_7

    .line 151
    .line 152
    iget-boolean v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 153
    .line 154
    if-eqz v2, :cond_7

    .line 155
    .line 156
    .line 157
    const v2, 0x7f12112e

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    goto :goto_2

    .line 166
    .line 167
    .line 168
    :cond_7
    const v2, 0x7f120d53

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    :goto_2
    const v1, 0x7f0a0bb6

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    check-cast v1, Landroid/widget/TextView;

    .line 185
    .line 186
    if-eqz v1, :cond_9

    .line 187
    .line 188
    new-instance v2, Lcom/narvii/feed/FeedHelper;

    .line 189
    .line 190
    .line 191
    invoke-direct {v2, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, p1}, Lcom/narvii/feed/FeedHelper;->getQuizHintInfo(Lcom/narvii/model/Blog;)Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    :cond_9
    const v1, 0x7f0a0bc3

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object v1

    .line 206
    .line 207
    check-cast v1, Landroid/widget/TextView;

    .line 208
    .line 209
    if-eqz v1, :cond_a

    .line 210
    .line 211
    iget-object v2, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    :cond_a
    const v1, 0x7f0a0bc0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    if-eqz v1, :cond_b

    .line 224
    .line 225
    new-instance v2, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;

    .line 226
    .line 227
    .line 228
    invoke-direct {v2, p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    :cond_b
    new-instance v1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;

    .line 234
    .line 235
    .line 236
    invoke-direct {v1, p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizzesLayout()V

    .line 243
    :cond_c
    :goto_3
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scoreHintAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/feed/quizzes/a;)V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 30
    .line 31
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0, p0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;Lcom/narvii/app/NVContext;)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleAdapter:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    .line 42
    .line 43
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareAndReplayAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 54
    .line 55
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hellModeAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareAndReplayAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hellModeAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->scoreHintAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ScoreHintAdapter;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleAdapter:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 105
    const/4 v1, 0x1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 109
    .line 110
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 114
    .line 115
    .line 116
    const v0, 0x7f0d0685

    .line 117
    .line 118
    .line 119
    filled-new-array {v0}, [I

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 131
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string/jumbo v0, "showNextQuizLayout"

    .line 6
    .line 7
    const-string v1, "key_continuous_feed_current_position"

    .line 8
    .line 9
    const-string v2, "key_continuous_feed_list_timestamp"

    .line 10
    .line 11
    const-string v3, "key_continuous_feed_api_request"

    .line 12
    .line 13
    const-string v4, "key_continuous_feed_list"

    .line 14
    .line 15
    const-string v5, "isGuestMode"

    .line 16
    .line 17
    const-string v6, "quizzes"

    .line 18
    .line 19
    const-string v7, "current_quizzes_result"

    .line 20
    .line 21
    const-string v8, "next_quizzes"

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v8

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 39
    move-result v5

    .line 40
    .line 41
    iput-boolean v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 42
    .line 43
    const-string v5, "blogId"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    iput-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    iput-object v4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    iput-object v3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    iput-object v2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 71
    move-result v1

    .line 72
    .line 73
    iput v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    .line 80
    .line 81
    const-string v0, "quizInBest"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 85
    move-result p1

    .line 86
    .line 87
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v8

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v7}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 104
    move-result p1

    .line 105
    .line 106
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 128
    move-result p1

    .line 129
    .line 130
    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    .line 131
    const/4 p1, 0x1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 135
    move-result p1

    .line 136
    .line 137
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    .line 138
    .line 139
    .line 140
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result p1

    .line 142
    .line 143
    const-class v0, Lcom/narvii/model/Blog;

    .line 144
    .line 145
    if-nez p1, :cond_1

    .line 146
    .line 147
    .line 148
    invoke-static {v8, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    check-cast p1, Lcom/narvii/model/Blog;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    .line 154
    .line 155
    .line 156
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    move-result p1

    .line 158
    .line 159
    if-nez p1, :cond_2

    .line 160
    .line 161
    const-class p1, Lcom/narvii/model/CurrentQuizzesResult;

    .line 162
    .line 163
    .line 164
    invoke-static {v7, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    check-cast p1, Lcom/narvii/model/CurrentQuizzesResult;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 170
    .line 171
    .line 172
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    move-result p1

    .line 174
    .line 175
    if-nez p1, :cond_3

    .line 176
    .line 177
    .line 178
    invoke-static {v6, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    check-cast p1, Lcom/narvii/model/Blog;

    .line 182
    .line 183
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 184
    .line 185
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 186
    .line 187
    if-eqz p1, :cond_4

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    .line 194
    .line 195
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 196
    .line 197
    if-eqz p1, :cond_5

    .line 198
    const/4 p1, 0x0

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    const/4 p1, 0x3

    .line 201
    .line 202
    :goto_1
    iput p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->hoverTopCount:I

    .line 203
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f1210ad

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0304

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    .line 11
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210ad

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareQuizzesScore()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f1210ad

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->readyToShowRightShare:Z

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 22
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->nextQuiz:Lcom/narvii/model/Blog;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "next_quizzes"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "current_quizzes_result"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "blogId"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->blogId:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "quizzes"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    const-string v0, "isGuestMode"

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->isGuestMode:Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    const-string/jumbo v0, "showNextQuizLayout"

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizLayout:Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    .line 59
    const-string v0, "quizInBest"

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizInBestQuizzes:Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    .line 66
    const-string v0, "key_continuous_feed_list"

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cFeedListStr:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    const-string v0, "key_continuous_feed_api_request"

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cRequestUrl:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    const-string v0, "key_continuous_feed_list_timestamp"

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cTimeStamp:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    const-string v0, "key_continuous_feed_current_position"

    .line 88
    .line 89
    iget v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->cPosition:I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizzes:Lcom/narvii/model/Blog;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, p2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->quizQuestion:Lcom/narvii/model/QuizQuestion;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->initFragmentView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->handleNextQuizzes()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateAdriftViews()V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->titleHoverView:Landroid/view/View;

    .line 40
    const/4 p2, 0x4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-void
.end method

.method protected updateViews()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->currentQuizzesResult:Lcom/narvii/model/CurrentQuizzesResult;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    const v1, 0x1020004

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rootView:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    const v1, 0x102000d

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->rankingListAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$BlogQuizzesRankingListAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 80
    move-result v0

    .line 81
    .line 82
    if-nez v0, :cond_1

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_3
    :goto_1
    return-void
.end method

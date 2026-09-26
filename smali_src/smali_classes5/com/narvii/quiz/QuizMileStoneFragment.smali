.class public Lcom/narvii/quiz/QuizMileStoneFragment;
.super Lcom/narvii/quiz/theme/QuizBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;,
        Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;,
        Lcom/narvii/quiz/QuizMileStoneFragment$EdgePlaceholderViewHolder;,
        Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;
    }
.end annotation


# static fields
.field public static final ANSWER_QUESTION_REQUEST:I = 0x1

.field public static final HELL_MODE_NEXT_DEFAULT_REMAINING_SECONDS:I = 0x3

.field public static final MILESTONE_ITEM_RATIO:F = 3.0f

.field public static final NEXT_DEFAULT_REMAINING_SECONDS:I = 0x5


# instance fields
.field private actionTextView:Landroid/widget/TextView;

.field private adapter:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

.field private answerAnimated:Z

.field apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

.field backgroundColor:I

.field private cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

.field private currentQuestion:I

.field private failed:Z

.field private finished:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private linearSmoothScroller:Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

.field private milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

.field private milestoneColor:I

.field private milestoneItemWidth:I

.field private nextCountDownRunnable:Ljava/lang/Runnable;

.field private placeholderWidth:I

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private questionListSize:I

.field private qustionNumber:Landroid/widget/TextView;

.field private recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

.field private recyclerWidth:I

.field remainingSeconds:I

.field private replayView:Landroid/widget/TextView;

.field private userIcon:Ljava/lang/String;

.field private waitingUploadResult:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$6;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/narvii/quiz/QuizMileStoneFragment$6;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Ljava/lang/Class;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 13
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->questionListSize:I

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->waitingUploadResult:Z

    return p0
.end method

.method static bridge synthetic D(Lcom/narvii/quiz/QuizMileStoneFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->answerAnimated:Z

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/quiz/QuizMileStoneFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->waitingUploadResult:Z

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->gotoCommunityDetail(Lcom/narvii/model/Community;)V

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->gotoQuizResultPage()V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->showJoinCommunityDialog()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploaded:Z

    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    .line 3
    return p1
.end method

.method private gotoCommunityDetail(Lcom/narvii/model/Community;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 9
    .line 10
    const-string v2, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "icon"

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "prefetch"

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method private gotoQuizResultPage()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-class v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "quiz"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "quizzes"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "current_question"

    .line 26
    .line 27
    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const-string v0, "liveLayer"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "/"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iput-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    .line 89
    .line 90
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_PLAYING:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 98
    .line 99
    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    const-string v3, "blogType"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 121
    .line 122
    const-string v0, "statistics"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 129
    .line 130
    const-string v1, "Quiz Results"

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    const-string v1, "Quiz Results Total"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 140
    :cond_1
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->answerAnimated:Z

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/cofetti/CofettiView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    return p0
.end method

.method private resetActionText()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f121076

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const v1, 0x7f120d51

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    :cond_1
    return-void
.end method

.method private resetQuestionNumberView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->qustionNumber:Landroid/widget/TextView;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->qustionNumber:Landroid/widget/TextView;

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 22
    const/4 v4, 0x1

    .line 23
    add-int/2addr v3, v4

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->questionListSize:I

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    aput-object v2, v1, v4

    .line 38
    .line 39
    .line 40
    const v2, 0x7f120f92

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    return p0
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setFailed()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 11
    return-void
.end method

.method private setSuccessful()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$7;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$7;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    .line 14
    .line 15
    const-wide/16 v1, 0x258

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 19
    return-void
.end method

.method private showJoinCommunityDialog()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string v0, "community"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 19
    .line 20
    const-string v1, "__communityId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/quiz/QuizMileStoneFragment$5;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0, v0}, Lcom/narvii/quiz/QuizMileStoneFragment$5;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 45
    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearSmoothScroller:Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMilestoneAvatarView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneColor:I

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneItemWidth:I

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->placeholderWidth:I

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method


# virtual methods
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

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0059

    .line 8
    .line 9
    const-string v1, "hellMode"

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0c15

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    .line 26
    .line 27
    iput-object v0, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 48
    .line 49
    const-string p1, "statistics"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 56
    .line 57
    const-string v0, "Replay Quiz"

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    const-string v0, "Quiz Ended View"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    const-string v0, "Replay Quiz Total"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 77
    const/4 v0, 0x1

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->isJoinedThisCommunity()Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    .line 89
    move-result p1

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_2
    new-instance p1, Lcom/narvii/model/Community;

    .line 98
    .line 99
    .line 100
    invoke-direct {p1}, Lcom/narvii/model/Community;-><init>()V

    .line 101
    .line 102
    const-string v0, "config"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 112
    move-result v0

    .line 113
    .line 114
    iput v0, p1, Lcom/narvii/model/Community;->id:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    new-instance v1, Lcom/narvii/quiz/QuizMileStoneFragment$4;

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$4;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0, p1, v1}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    .line 127
    :goto_0
    return-void

    .line 128
    .line 129
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploaded:Z

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->gotoQuizResultPage()V

    .line 135
    goto :goto_1

    .line 136
    .line 137
    :cond_4
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->waitingUploadResult:Z

    .line 138
    .line 139
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 152
    .line 153
    iget-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    .line 154
    .line 155
    if-nez p1, :cond_6

    .line 156
    .line 157
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 161
    goto :goto_1

    .line 162
    .line 163
    :cond_5
    const-class p1, Lcom/narvii/quiz/QuizQuestionFragment;

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    const-string v2, "currentQuestion"

    .line 170
    .line 171
    iget v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    .line 176
    const-string v2, "quiz"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 187
    move-result v2

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    .line 192
    const-string v1, "resultList"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v2

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    .line 203
    .line 204
    .line 205
    invoke-static {p0, p1, v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    const v0, 0x7f01005a

    .line 213
    .line 214
    .line 215
    const v1, 0x7f01005f

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 222
    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->questionListSize:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerWidth:I

    .line 30
    int-to-float v1, v0

    .line 31
    .line 32
    const/high16 v2, 0x40400000    # 3.0f

    .line 33
    div-float/2addr v1, v2

    .line 34
    float-to-int v1, v1

    .line 35
    .line 36
    iput v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneItemWidth:I

    .line 37
    sub-int/2addr v0, v1

    .line 38
    .line 39
    div-int/lit8 v0, v0, 0x2

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->placeholderWidth:I

    .line 42
    .line 43
    const-string v0, "hellMode"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x5

    .line 53
    .line 54
    :goto_0
    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    const-string v0, "remainingSeconds"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 62
    move-result p1

    .line 63
    .line 64
    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 65
    .line 66
    :cond_1
    const-string p1, "currentQuestion"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 70
    move-result p1

    .line 71
    .line 72
    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 83
    .line 84
    if-nez p1, :cond_2

    .line 85
    const/4 p1, 0x0

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    .line 90
    move-result p1

    .line 91
    .line 92
    :goto_1
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_3
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 101
    move-result p1

    .line 102
    .line 103
    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    .line 104
    .line 105
    :goto_2
    const-string p1, "answerRight"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 109
    move-result p1

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    iget p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 114
    .line 115
    add-int/lit8 p1, p1, 0x1

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 123
    move-result v0

    .line 124
    .line 125
    if-ge p1, v0, :cond_4

    .line 126
    .line 127
    iget p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 128
    .line 129
    add-int/lit8 p1, p1, 0x1

    .line 130
    .line 131
    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 132
    goto :goto_3

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->setSuccessful()V

    .line 136
    goto :goto_3

    .line 137
    .line 138
    .line 139
    :cond_5
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->setFailed()V

    .line 140
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02fe

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 13
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 11
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "remainingSeconds"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0e9e

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a03d6

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0a0169

    .line 22
    .line 23
    .line 24
    const v3, 0x7f0a0167

    .line 25
    const/4 v4, 0x1

    .line 26
    .line 27
    const/16 v5, 0x8

    .line 28
    const/4 v6, 0x0

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    move v0, v4

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 93
    move-object v1, v0

    .line 94
    move v0, v6

    .line 95
    .line 96
    :goto_0
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    .line 103
    const v2, 0x7f0a0f36

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 112
    .line 113
    iget-object v3, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 117
    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a0168

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    check-cast p2, Landroid/widget/TextView;

    .line 128
    goto :goto_1

    .line 129
    .line 130
    .line 131
    :cond_2
    const v0, 0x7f0a016a

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    check-cast p2, Landroid/widget/TextView;

    .line 138
    .line 139
    :goto_1
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    const p2, 0x7f0a03cf

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p2

    .line 156
    .line 157
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 167
    .line 168
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 169
    .line 170
    iget-object p2, p2, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    .line 176
    .line 177
    if-eqz p2, :cond_4

    .line 178
    .line 179
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 180
    .line 181
    iget-object p2, p2, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 182
    .line 183
    iget v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 184
    .line 185
    .line 186
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object p2

    .line 188
    .line 189
    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    move-result v0

    .line 198
    .line 199
    if-nez v0, :cond_4

    .line 200
    .line 201
    .line 202
    const v0, 0x7f0a0baf

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    check-cast v0, Landroid/widget/TextView;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 215
    move-result-object p2

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    :cond_4
    const p2, 0x7f0a0baa

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object p2

    .line 226
    .line 227
    check-cast p2, Landroid/widget/TextView;

    .line 228
    .line 229
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->qustionNumber:Landroid/widget/TextView;

    .line 230
    .line 231
    .line 232
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->resetQuestionNumberView()V

    .line 233
    .line 234
    .line 235
    const p2, 0x7f0a0059

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    move-result-object p2

    .line 240
    .line 241
    check-cast p2, Landroid/widget/TextView;

    .line 242
    .line 243
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    .line 244
    .line 245
    .line 246
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->resetActionText()V

    .line 247
    .line 248
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$1;

    .line 249
    .line 250
    .line 251
    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    .line 252
    .line 253
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    .line 254
    .line 255
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 261
    const/4 v0, 0x2

    .line 262
    .line 263
    if-eqz p2, :cond_5

    .line 264
    .line 265
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    .line 266
    .line 267
    if-nez p2, :cond_5

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 271
    move-result-object p2

    .line 272
    .line 273
    .line 274
    const v1, 0x7f01004c

    .line 275
    .line 276
    .line 277
    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 278
    move-result-object p2

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 282
    const/4 v1, -0x1

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 289
    .line 290
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    .line 295
    .line 296
    :cond_5
    const p2, 0x7f0a0c15

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object p2

    .line 301
    .line 302
    check-cast p2, Landroid/widget/TextView;

    .line 303
    .line 304
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->replayView:Landroid/widget/TextView;

    .line 305
    .line 306
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 307
    .line 308
    if-eqz v1, :cond_6

    .line 309
    .line 310
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    .line 311
    .line 312
    if-eqz v1, :cond_6

    .line 313
    move v5, v6

    .line 314
    .line 315
    .line 316
    :cond_6
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->replayView:Landroid/widget/TextView;

    .line 319
    .line 320
    .line 321
    const v1, 0x7f080886

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 325
    .line 326
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->replayView:Landroid/widget/TextView;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    .line 331
    const-string p2, "account"

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 335
    move-result-object p2

    .line 336
    .line 337
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 341
    move-result-object p2

    .line 342
    .line 343
    if-nez p2, :cond_7

    .line 344
    const/4 v1, 0x0

    .line 345
    goto :goto_2

    .line 346
    .line 347
    .line 348
    :cond_7
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 349
    move-result-object v1

    .line 350
    .line 351
    :goto_2
    iput-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->userIcon:Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    const v1, 0x7f0a0bb2

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 358
    move-result-object v1

    .line 359
    .line 360
    check-cast v1, Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 361
    .line 362
    iput-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, p2}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setUser(Lcom/narvii/model/User;)V

    .line 366
    .line 367
    iget p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    .line 368
    .line 369
    if-eqz p2, :cond_8

    .line 370
    .line 371
    .line 372
    invoke-static {p2}, Lcom/narvii/util/Utils;->lightColor(I)I

    .line 373
    move-result p2

    .line 374
    goto :goto_3

    .line 375
    .line 376
    .line 377
    :cond_8
    const p2, -0xb9b9ba

    .line 378
    .line 379
    :goto_3
    iput p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneColor:I

    .line 380
    .line 381
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, p2}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setMileStoneColor(I)V

    .line 385
    .line 386
    .line 387
    const p2, 0x7f0a0974

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 391
    move-result-object p2

    .line 392
    .line 393
    check-cast p2, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 394
    .line 395
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 396
    .line 397
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 398
    .line 399
    .line 400
    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    .line 401
    .line 402
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->adapter:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 403
    .line 404
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 408
    .line 409
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 410
    .line 411
    iput-boolean v4, p2, Lcom/narvii/widget/HorizontalRecyclerView;->disableTouch:Z

    .line 412
    .line 413
    new-instance v1, Lcom/narvii/quiz/QuizMileStoneFragment$2;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 417
    move-result-object p2

    .line 418
    .line 419
    .line 420
    invoke-direct {v1, p0, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$2;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;)V

    .line 421
    .line 422
    iput-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearSmoothScroller:Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    .line 423
    .line 424
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$3;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 428
    move-result-object v1

    .line 429
    .line 430
    .line 431
    invoke-direct {p2, p0, v1, v6, v6}, Lcom/narvii/quiz/QuizMileStoneFragment$3;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;IZ)V

    .line 432
    .line 433
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 434
    .line 435
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 439
    .line 440
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 441
    .line 442
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 443
    .line 444
    if-eqz v1, :cond_9

    .line 445
    .line 446
    iget v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 447
    add-int/2addr v1, v4

    .line 448
    goto :goto_4

    .line 449
    .line 450
    :cond_9
    iget v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 451
    .line 452
    :goto_4
    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerWidth:I

    .line 453
    .line 454
    iget v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneItemWidth:I

    .line 455
    sub-int/2addr v2, v3

    .line 456
    div-int/2addr v2, v0

    .line 457
    .line 458
    .line 459
    invoke-virtual {p2, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 460
    .line 461
    .line 462
    const p2, 0x7f0a032e

    .line 463
    .line 464
    .line 465
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    move-result-object p1

    .line 467
    .line 468
    check-cast p1, Lcom/narvii/widget/cofetti/CofettiView;

    .line 469
    .line 470
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 471
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    return-void
.end method

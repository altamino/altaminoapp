.class public Lcom/narvii/quiz/QuizMileStoneFragment;
.super Lcom/narvii/quiz/theme/QuizBaseFragment;
.source "QuizMileStoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;,
        Lcom/narvii/quiz/QuizMileStoneFragment$EdgePlaceholderViewHolder;,
        Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;,
        Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;
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

.field private linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

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

    .line 67
    invoke-direct {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;-><init>()V

    .line 409
    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$6;

    const-class v1, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/quiz/QuizMileStoneFragment$6;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/cofetti/CofettiView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->placeholderWidth:I

    return p0
.end method

.method static synthetic access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    return p0
.end method

.method static synthetic access$1400(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneColor:I

    return p0
.end method

.method static synthetic access$1800(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->answerAnimated:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->answerAnimated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearSmoothScroller:Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMilestoneAvatarView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneItemWidth:I

    return p0
.end method

.method static synthetic access$2200(Lcom/narvii/quiz/QuizMileStoneFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->questionListSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->gotoCommunityDetail(Lcom/narvii/model/Community;)V

    return-void
.end method

.method static synthetic access$402(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploaded:Z

    return p1
.end method

.method static synthetic access$502(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/narvii/quiz/QuizMileStoneFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->waitingUploadResult:Z

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->waitingUploadResult:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->gotoQuizResultPage()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->showJoinCommunityDialog()V

    return-void
.end method

.method private gotoCommunityDetail(Lcom/narvii/model/Community;)V
    .locals 3

    .line 289
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "prefetch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private gotoQuizResultPage()V
    .locals 4

    .line 379
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    const-class v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "quiz"

    .line 381
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quizzes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    const-string v2, "current_question"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    .line 384
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 387
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "liveLayer"

    .line 388
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_PLAYING:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blogType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    return-void
.end method

.method private resetActionText()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 278
    iget-boolean v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f0f6a

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0c24

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method private resetQuestionNumberView()V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->qustionNumber:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->qustionNumber:Landroid/widget/TextView;

    const v1, 0x7f0f0e71

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->questionListSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setFailed()V
    .locals 1

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 405
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    .line 406
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setSuccessful()V
    .locals 3

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    .line 450
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p0, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 451
    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$7;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    const-wide/16 v1, 0x258

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showJoinCommunityDialog()V
    .locals 3

    .line 357
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    const-string v0, "community"

    .line 360
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    const-string v1, "__communityId"

    .line 361
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/narvii/quiz/QuizMileStoneFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/narvii/quiz/QuizMileStoneFragment$5;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V

    invoke-static {v1, v0, v2}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
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

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09002c

    const-string v1, "hellMode"

    if-eq p1, v0, :cond_1

    const v0, 0x7f090959

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 343
    :cond_0
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 344
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 345
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    .line 346
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto/16 :goto_1

    .line 301
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 302
    invoke-virtual {p0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->isJoinedThisCommunity()Z

    move-result p1

    if-nez p1, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    goto :goto_0

    .line 306
    :cond_2
    new-instance p1, Lcom/narvii/model/Community;

    invoke-direct {p1}, Lcom/narvii/model/Community;-><init>()V

    const-string v0, "config"

    .line 307
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 308
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p1, Lcom/narvii/model/Community;->id:I

    .line 309
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/narvii/quiz/QuizMileStoneFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$4;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V

    invoke-static {v0, p1, v1}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    :goto_0
    return-void

    .line 320
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploaded:Z

    if-eqz p1, :cond_4

    .line 321
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->gotoQuizResultPage()V

    goto :goto_1

    .line 323
    :cond_4
    iput-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->waitingUploadResult:Z

    .line 324
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 325
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 326
    iget-boolean p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploading:Z

    if-nez p1, :cond_6

    .line 327
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->apiResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_1

    .line 331
    :cond_5
    const-class p1, Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 332
    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    const-string v3, "currentQuestion"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "quiz"

    .line 333
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "resultList"

    .line 335
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->addQuizListExtra(Landroid/content/Intent;)V

    .line 337
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f01003c

    const v1, 0x7f010041

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 339
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 107
    invoke-super {p0, p1}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->questionListSize:I

    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerWidth:I

    .line 111
    iget v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerWidth:I

    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneItemWidth:I

    .line 112
    iget v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneItemWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->placeholderWidth:I

    const-string v0, "hellMode"

    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    if-eqz p1, :cond_1

    const-string v0, "remainingSeconds"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    :cond_1
    const-string p1, "currentQuestion"

    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    .line 122
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    iget v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    .line 125
    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    goto :goto_2

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result p1

    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    :goto_2
    const-string p1, "answerRight"

    .line 130
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 132
    iget p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 133
    iget p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    goto :goto_3

    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->setSuccessful()V

    goto :goto_3

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->setFailed()V

    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02cb

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 626
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 628
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 469
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 461
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 462
    iget-boolean v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    if-nez v0, :cond_0

    .line 463
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 284
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    iget v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->remainingSeconds:I

    const-string v1, "remainingSeconds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 155
    invoke-super {p0, p1, p2}, Lcom/narvii/quiz/theme/QuizBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    if-nez p2, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {p2}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p2

    const v0, 0x7f090303

    const v1, 0x7f090b9a

    const v2, 0x7f0900df

    const v3, 0x7f0900e0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_1

    .line 164
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 165
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 173
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    const v1, 0x7f090c10

    .line 182
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 183
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v2, v2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const v1, 0x7f090764

    .line 184
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const p2, 0x7f0902fc

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 189
    iget-object v1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-eqz v0, :cond_3

    .line 192
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object p2, p2, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_3
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    if-eqz p2, :cond_4

    .line 196
    iget-object p2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget-object p2, p2, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    iget v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 197
    invoke-virtual {p2}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0908f0

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    invoke-virtual {p2}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const p2, 0x7f0908eb

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->qustionNumber:Landroid/widget/TextView;

    .line 205
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->resetQuestionNumberView()V

    const p2, 0x7f09002c

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    .line 208
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment;->resetActionText()V

    .line 209
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    .line 223
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-boolean p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    if-nez p2, :cond_5

    .line 225
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f01002e

    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 226
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v2, -0x1

    .line 227
    invoke-virtual {p2, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 228
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 229
    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->actionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    const p2, 0x7f090959

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->replayView:Landroid/widget/TextView;

    .line 234
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->replayView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->failed:Z

    if-eqz v2, :cond_6

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->replayView:Landroid/widget/TextView;

    const v2, 0x7f08068b

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 236
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->replayView:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "account"

    .line 238
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 239
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    if-nez p2, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    .line 240
    :cond_7
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->userIcon:Ljava/lang/String;

    const v2, 0x7f0908f3

    .line 241
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/quiz/QuizMilestoneAvatarView;

    iput-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 242
    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    invoke-virtual {v2, p2}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setUser(Lcom/narvii/model/User;)V

    .line 243
    iget p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    if-eqz p2, :cond_8

    invoke-static {p2}, Lcom/narvii/util/Utils;->lightColor(I)I

    move-result p2

    goto :goto_2

    :cond_8
    const p2, -0xb9b9ba

    :goto_2
    iput p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneColor:I

    .line 244
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneAvatarView:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneColor:I

    invoke-virtual {p2, v2}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setMileStoneColor(I)V

    const p2, 0x7f090712

    .line 246
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/HorizontalRecyclerView;

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 247
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->adapter:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 248
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->adapter:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 249
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    iput-boolean v1, p2, Lcom/narvii/widget/HorizontalRecyclerView;->disableTouch:Z

    .line 251
    new-instance v2, Lcom/narvii/quiz/QuizMileStoneFragment$2;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v2, p0, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$2;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearSmoothScroller:Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    .line 258
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$3;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, p0, v2, v5, v5}, Lcom/narvii/quiz/QuizMileStoneFragment$3;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;IZ)V

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 265
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerView:Lcom/narvii/widget/HorizontalRecyclerView;

    iget-object v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 266
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-boolean v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->finished:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    add-int/2addr v2, v1

    goto :goto_3

    :cond_9
    iget v2, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->currentQuestion:I

    :goto_3
    iget v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->recyclerWidth:I

    iget v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->milestoneItemWidth:I

    sub-int/2addr v1, v3

    div-int/2addr v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const p2, 0x7f090266

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 475
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment;->nextCountDownRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 476
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

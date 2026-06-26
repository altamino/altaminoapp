.class public Lcom/narvii/story/widgets/StoryItemView;
.super Landroid/widget/FrameLayout;
.source "StoryItemView.java"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;

.field private bgView:Landroid/view/View;

.field bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

.field btnCommentBar:Landroid/view/View;

.field private disableHint:Landroid/view/View;

.field private fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

.field private fansOnlyPostMaskContainer:Landroid/view/View;

.field private hasNext:Z

.field public imgStoryThumb:Lcom/narvii/widget/NVImageView;

.field index:I

.field private interceptLayout:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

.field private interstitialPageContainer:Landroid/widget/FrameLayout;

.field private interstitialPageContainerChild:Landroid/view/View;

.field isImmersionModel:Z

.field private isPreview:Z

.field listener:Landroid/view/View$OnClickListener;

.field private loadingView:Landroid/view/View;

.field private nextBtn:Lcom/narvii/widget/EasyButton;

.field nvContext:Lcom/narvii/app/NVContext;

.field private playBtn:Lcom/narvii/widget/EasyButton;

.field private pollQuizContainer:Landroid/view/ViewGroup;

.field private position:I

.field private preBtn:Lcom/narvii/widget/EasyButton;

.field public progressBar:Lcom/narvii/widgets/StoryProgressBar;

.field private quizResultRankingView:Landroid/view/View;

.field scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

.field private story:Lcom/narvii/model/Blog;

.field private storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

.field private storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

.field private storyItemClickListener:Lcom/narvii/story/widgets/StoryItemClickListener;

.field private storyItemPlayControlListener:Lcom/narvii/story/widgets/StoryItemPlayControlListener;

.field storyLongClickListener:Lcom/narvii/story/IStoryLongClickListener;

.field storyVoteView:Lcom/narvii/story/widgets/StoryVoteView;

.field private videoView:Lcom/narvii/nvplayerview/NVVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/narvii/story/widgets/StoryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 92
    iput p1, p0, Lcom/narvii/story/widgets/StoryItemView;->index:I

    .line 238
    new-instance p1, Lcom/narvii/story/widgets/StoryItemView$3;

    invoke-direct {p1, p0}, Lcom/narvii/story/widgets/StoryItemView$3;-><init>(Lcom/narvii/story/widgets/StoryItemView;)V

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->listener:Landroid/view/View$OnClickListener;

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->nvContext:Lcom/narvii/app/NVContext;

    .line 104
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemClickListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyItemClickListener:Lcom/narvii/story/widgets/StoryItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/story/widgets/StoryItemView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/narvii/story/widgets/StoryItemView;->position:I

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryItemView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryItemView;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/influencer/FansOnlyPostMask;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/story/widgets/StoryItemView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/narvii/story/widgets/StoryItemView;->isPreview:Z

    return p0
.end method

.method static synthetic access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyItemPlayControlListener:Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    return-object p0
.end method

.method private getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    iget-boolean v1, p0, Lcom/narvii/story/widgets/StoryItemView;->isPreview:Z

    invoke-static {p0, v0, v1}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;Z)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "VideoArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeInterstitialPageId(Z)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainerChild:Landroid/view/View;

    if-eqz p1, :cond_0

    const p1, 0x7f0905bb

    goto :goto_0

    :cond_0
    const p1, 0x7f0905bc

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public getCoverImg()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->imgStoryThumb:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public getDoubleClickEnable()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->playBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryItemView;->isPreview:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoView()Lcom/narvii/nvplayerview/NVVideoView;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    return-object v0
.end method

.method public hideInterstitialPage(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->setReplayNextClickListener(Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V

    .line 563
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 566
    :cond_1
    iput-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    return-void
.end method

.method public hideInterstitialView()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public hidePollQuiz()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 486
    :goto_0
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 488
    instance-of v2, v1, Lcom/narvii/scene/SceneInteractLogView;

    if-eqz v2, :cond_0

    .line 489
    check-cast v1, Lcom/narvii/scene/SceneInteractLogView;

    invoke-interface {v1}, Lcom/narvii/scene/SceneInteractLogView;->logEnd()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/ScenePollQuizHelper;->hidePollQuiz()V

    return-void
.end method

.method public initInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    if-eqz v0, :cond_0

    return-void

    .line 509
    :cond_0
    sget-object v0, Lcom/narvii/story/StoryInterstitialPageFragment;->Companion:Lcom/narvii/story/StoryInterstitialPageFragment$Companion;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/narvii/story/StoryInterstitialPageFragment$Companion;->newInstance(Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)Lcom/narvii/story/StoryInterstitialPageFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    .line 510
    iget-object p2, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    new-instance p3, Lcom/narvii/story/widgets/StoryItemView$5;

    invoke-direct {p3, p0}, Lcom/narvii/story/widgets/StoryItemView$5;-><init>(Lcom/narvii/story/widgets/StoryItemView;)V

    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryInterstitialPageFragment;->setReplayNextClickListener(Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;)V

    .line 526
    instance-of p2, p1, Lcom/narvii/story/IStoryBottomSheetListener;

    if-eqz p2, :cond_1

    .line 527
    iget-object p2, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    move-object p3, p1

    check-cast p3, Lcom/narvii/story/IStoryBottomSheetListener;

    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryInterstitialPageFragment;->setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V

    .line 529
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 530
    iget-object p2, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 532
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f0905bb

    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InterstitialPage"

    .line 534
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isFansOnly()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMaskContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayBtnVisible()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->playBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onFinishInflate$0$StoryItemView(Landroid/view/View;)V
    .locals 2

    .line 219
    iget-boolean p1, p0, Lcom/narvii/story/widgets/StoryItemView;->isPreview:Z

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 225
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_1

    .line 226
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    .line 227
    :cond_1
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_2

    .line 228
    move-object p1, v0

    check-cast p1, Landroid/app/Activity;

    .line 230
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_3

    .line 231
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryItemView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "TopPlayers"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 232
    check-cast p1, Lcom/narvii/app/NVActivity;

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->show(Lcom/narvii/app/NVActivity;Lcom/narvii/model/Blog;)Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    :cond_3
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 439
    instance-of v2, v1, Lcom/narvii/scene/ScenePlayView;

    if-eqz v2, :cond_0

    .line 440
    check-cast v1, Lcom/narvii/scene/ScenePlayView;

    invoke-interface {v1, p1}, Lcom/narvii/scene/ScenePlayView;->onActiveChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090586

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->imgStoryThumb:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090ae8

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widgets/StoryProgressBar;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    const v0, 0x7f090ae2

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/detail/StoryInfoCover;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    const v0, 0x7f090ce5

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryVoteView;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyVoteView:Lcom/narvii/story/widgets/StoryVoteView;

    const v0, 0x7f0905af

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interceptLayout:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    .line 127
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interceptLayout:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    new-instance v1, Lcom/narvii/story/widgets/StoryItemView$1;

    invoke-direct {v1, p0}, Lcom/narvii/story/widgets/StoryItemView$1;-><init>(Lcom/narvii/story/widgets/StoryItemView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->setItemClickListener(Lcom/narvii/story/widgets/StoryItemInterceptLayout$ClickListener;)V

    const v0, 0x7f090c8f

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayerview/NVVideoView;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 161
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    .line 162
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    const v0, 0x7f09028c

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->btnCommentBar:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->btnCommentBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    const v1, 0x7f090c5e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->loadingView:Landroid/view/View;

    const v0, 0x7f09083e

    .line 168
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->playBtn:Lcom/narvii/widget/EasyButton;

    const v0, 0x7f09075c

    .line 169
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->nextBtn:Lcom/narvii/widget/EasyButton;

    const v0, 0x7f0908bd

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->preBtn:Lcom/narvii/widget/EasyButton;

    const v0, 0x7f09012f

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->bgView:Landroid/view/View;

    const v0, 0x7f090356

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->disableHint:Landroid/view/View;

    const v0, 0x7f090429

    .line 173
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/influencer/FansOnlyPostMask;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    const v0, 0x7f09042a

    .line 174
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMaskContainer:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    new-instance v1, Lcom/narvii/story/widgets/StoryItemView$2;

    invoke-direct {v1, p0}, Lcom/narvii/story/widgets/StoryItemView$2;-><init>(Lcom/narvii/story/widgets/StoryItemView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/influencer/FansOnlyPostMask;->setBecomeFansClickListener(Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;)V

    const v0, 0x7f090860

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    .line 191
    new-instance v0, Lcom/narvii/scene/ScenePollQuizHelper;

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/narvii/scene/ScenePollQuizHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

    const v0, 0x7f0905ba

    .line 193
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainer:Landroid/widget/FrameLayout;

    .line 195
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainerChild:Landroid/view/View;

    const v0, 0x7f090ad7

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 198
    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/Utils;->isScreenRationOverThreshold(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 204
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 206
    :cond_1
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 207
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->btnCommentBar:Landroid/view/View;

    if-nez v0, :cond_2

    .line 210
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 211
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 213
    :cond_2
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 214
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    const v0, 0x7f0908fc

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->quizResultRankingView:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->quizResultRankingView:Landroid/view/View;

    new-instance v1, Lcom/narvii/story/widgets/-$$Lambda$StoryItemView$K97p3UIMRk8dWKvXBFqfUpFLfYA;

    invoke-direct {v1, p0}, Lcom/narvii/story/widgets/-$$Lambda$StoryItemView$K97p3UIMRk8dWKvXBFqfUpFLfYA;-><init>(Lcom/narvii/story/widgets/StoryItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public pauseProgressAnimation()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/narvii/widgets/StoryProgressBar;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method public performBecomeFansClick()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-virtual {v0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBecomeFansClickListener()Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-virtual {v0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBecomeFansClickListener()Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;->onBecomeFansClicked()V

    :cond_0
    return-void
.end method

.method public performVote()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    invoke-virtual {v0}, Lcom/narvii/story/detail/StoryInfoCover;->performVote()V

    return-void
.end method

.method public resetIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 346
    iput v0, p0, Lcom/narvii/story/widgets/StoryItemView;->index:I

    .line 347
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {v0}, Lcom/narvii/widgets/StoryProgressBar;->resetCurSceneIndex()V

    .line 348
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    invoke-virtual {v0}, Lcom/narvii/story/detail/StoryInfoCover;->resetViewState()V

    .line 349
    invoke-virtual {p0}, Lcom/narvii/story/widgets/StoryItemView;->hidePollQuiz()V

    return-void
.end method

.method public resetProgressBar()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {v0}, Lcom/narvii/widgets/StoryProgressBar;->resetCurSceneIndex()V

    return-void
.end method

.method public resumeProgressAnimation()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/narvii/widgets/StoryProgressBar;->resumeAnimation()V

    :cond_0
    return-void
.end method

.method public setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V
    .locals 1

    .line 408
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    .line 409
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    invoke-virtual {v0, p1}, Lcom/narvii/story/detail/StoryInfoCover;->setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V

    return-void
.end method

.method public setIsImmersionModel(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryItemView;->isImmersionModel:Z

    return-void
.end method

.method public setLoadingViewVisibility(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->loadingView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNexBtnVisibility(I)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->nextBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->nextBtn:Lcom/narvii/widget/EasyButton;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interceptLayout:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setPlayBtnVisibility(I)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->playBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, p1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->playBtn:Lcom/narvii/widget/EasyButton;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-ne p1, v1, :cond_2

    .line 371
    invoke-virtual {p0, v1}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    .line 372
    invoke-virtual {p0, v1}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    .line 373
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->bgView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->bgView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method public setPreBtnVisibility(I)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->preBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->preBtn:Lcom/narvii/widget/EasyButton;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setSceneIndex(I)V
    .locals 2

    .line 332
    iput p1, p0, Lcom/narvii/story/widgets/StoryItemView;->index:I

    .line 333
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->imgStoryThumb:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ge p1, v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Scene;

    iget-object v0, v0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->imgStoryThumb:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {v0, p1}, Lcom/narvii/widgets/StoryProgressBar;->setCurSceneIndex(I)V

    return-void
.end method

.method public setStory(Lcom/narvii/model/Blog;ILcom/narvii/model/Community;ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 279
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 282
    :cond_2
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    .line 283
    iput p2, p0, Lcom/narvii/story/widgets/StoryItemView;->position:I

    const/4 p2, 0x0

    if-eqz p5, :cond_3

    .line 284
    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryItemView;->isPreview:Z

    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 286
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 287
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :cond_3
    iput-boolean p5, p0, Lcom/narvii/story/widgets/StoryItemView;->isPreview:Z

    .line 290
    iput-boolean p4, p0, Lcom/narvii/story/widgets/StoryItemView;->hasNext:Z

    .line 291
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object p4

    if-nez p4, :cond_4

    .line 293
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 294
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/model/Media;

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->imgStoryThumb:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p4}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 299
    iget-object p4, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-virtual {p4, v0, v1}, Lcom/narvii/widgets/StoryProgressBar;->setStory(Ljava/lang/String;Ljava/util/List;)V

    .line 300
    iget-object p4, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    iget-object v0, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    invoke-virtual {p4, v0}, Lcom/narvii/widgets/StoryProgressBar;->setSceneSize(I)V

    .line 301
    iget-object p4, p0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    iget-object v0, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x4

    :goto_4
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object p4, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    invoke-virtual {p4, p1, p3, p5}, Lcom/narvii/story/detail/StoryInfoCover;->setStoryInfo(Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Z)V

    .line 303
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->disableHint:Landroid/view/View;

    iget p4, p1, Lcom/narvii/model/Feed;->status:I

    const/16 v0, 0x9

    const/16 v1, 0x8

    if-ne p4, v0, :cond_8

    const/4 p4, 0x0

    goto :goto_5

    :cond_8
    const/16 p4, 0x8

    :goto_5
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    iget-object p4, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p3, p4, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->setAuthor(Lcom/narvii/model/User;I)V

    .line 306
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMaskContainer:Landroid/view/View;

    if-nez p5, :cond_a

    iget-boolean p4, p1, Lcom/narvii/model/Feed;->needHidden:Z

    if-nez p4, :cond_9

    goto :goto_6

    :cond_9
    const/4 p4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 p4, 0x8

    :goto_7
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    if-eqz p3, :cond_b

    .line 309
    invoke-virtual {p3, p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->updateStory(Lcom/narvii/model/Blog;)V

    .line 311
    :cond_b
    iget-boolean p3, p0, Lcom/narvii/story/widgets/StoryItemView;->isImmersionModel:Z

    if-eqz p3, :cond_c

    .line 312
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 313
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->disableHint:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 315
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->interceptLayout:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 316
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->btnCommentBar:Landroid/view/View;

    if-eqz p3, :cond_c

    .line 317
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :cond_c
    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->quizResultRankingView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->containsSceneQuiz()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    const/16 p2, 0x8

    :goto_8
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStoryItemClickListener(Lcom/narvii/story/widgets/StoryItemClickListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->storyItemClickListener:Lcom/narvii/story/widgets/StoryItemClickListener;

    return-void
.end method

.method public setStoryItemPlayControlListener(Lcom/narvii/story/widgets/StoryItemPlayControlListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->storyItemPlayControlListener:Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    return-void
.end method

.method public setStoryLongClickListener(Lcom/narvii/story/IStoryLongClickListener;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->storyLongClickListener:Lcom/narvii/story/IStoryLongClickListener;

    return-void
.end method

.method public setStoryPlayEnable(Z)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->interceptLayout:Lcom/narvii/story/widgets/StoryItemInterceptLayout;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryItemInterceptLayout;->setStoryPlayEnable(Z)V

    :cond_0
    return-void
.end method

.method public setStoryShareListener(Lcom/narvii/story/IStoryShareListener;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInfoCover:Lcom/narvii/story/detail/StoryInfoCover;

    invoke-virtual {v0, p1}, Lcom/narvii/story/detail/StoryInfoCover;->setStoryShareListener(Lcom/narvii/story/IStoryShareListener;)V

    return-void
.end method

.method public showInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    if-nez v0, :cond_0

    .line 541
    invoke-virtual/range {p0 .. p5}, Lcom/narvii/story/widgets/StoryItemView;->initInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0, p4, p5}, Lcom/narvii/story/StoryInterstitialPageFragment;->setVisibleParam(ZZ)V

    .line 545
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 547
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f0905bb

    iget-object p3, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "InterstitialPage"

    .line 549
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->interstitialPageContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 553
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->storyInterstitialPageFragment:Lcom/narvii/story/StoryInterstitialPageFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public showPollQuiz(Lcom/narvii/model/Scene;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;)V
    .locals 6

    .line 481
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->scenePollQuizHelper:Lcom/narvii/scene/ScenePollQuizHelper;

    iget-boolean v4, p0, Lcom/narvii/story/widgets/StoryItemView;->isPreview:Z

    iget-object v5, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/scene/ScenePollQuizHelper;->showPollQuiz(Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;ZLcom/narvii/model/Blog;)V

    return-void
.end method

.method public showQuizResult(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/quiz/QuizQuestionResult;",
            ">;Z)V"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 454
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 455
    new-instance v1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;-><init>(Landroid/content/Context;)V

    .line 456
    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView;->story:Lcom/narvii/model/Blog;

    iget-boolean v3, p0, Lcom/narvii/story/widgets/StoryItemView;->hasNext:Z

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->setData(Lcom/narvii/model/Blog;Ljava/util/List;ZZ)V

    .line 457
    new-instance p1, Lcom/narvii/story/widgets/StoryItemView$4;

    invoke-direct {p1, p0}, Lcom/narvii/story/widgets/StoryItemView$4;-><init>(Lcom/narvii/story/widgets/StoryItemView;)V

    invoke-virtual {v1, p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->setQuizResultListener(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;)V

    .line 473
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    invoke-virtual {v1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->logStart()V

    .line 477
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f010029

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

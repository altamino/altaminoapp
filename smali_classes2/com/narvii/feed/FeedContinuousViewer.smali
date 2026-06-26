.class public Lcom/narvii/feed/FeedContinuousViewer;
.super Ljava/lang/Object;
.source "FeedContinuousViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    }
.end annotation


# static fields
.field public static final KEY_BLACK_FEED_IDS:Ljava/lang/String; = "key_continuous_black_feed_ids"

.field public static final KEY_CONTINUOUS_FEED_CURRENT_POSITION:Ljava/lang/String; = "key_continuous_feed_current_position"

.field public static final KEY_CONTINUOUS_FEED_FILTER_FEATURE:Ljava/lang/String; = "key_continuous_feed_filter_feature"

.field public static final KEY_CONTINUOUS_FEED_LIST:Ljava/lang/String; = "key_continuous_feed_list"

.field public static final KEY_CONTINUOUS_FEED_NEXT_TOKEN:Ljava/lang/String; = "key_continuous_feed_next_token"

.field public static final KEY_CONTINUOUS_FEED_PAGE_SIZE:Ljava/lang/String; = "key_continuous_feed_page_size"

.field public static final KEY_CONTINUOUS_FEED_POSITION_IN_CURRENT_PAGE:Ljava/lang/String; = "key_continuous_feed_position_current_page"

.field public static final KEY_CONTINUOUS_FEED_REQUEST:Ljava/lang/String; = "key_continuous_feed_api_request"

.field public static final KEY_CONTINUOUS_FEED_TIMESTAMP:Ljava/lang/String; = "key_continuous_feed_list_timestamp"


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field apiRequestUrl:Ljava/lang/String;

.field barAnimator:Landroid/animation/Animator;

.field private bottomBarDisplayMode:I

.field bottomBarHeight:I

.field public bottomView:Lcom/narvii/widget/FeedBottomLayout;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private context:Lcom/narvii/app/NVContext;

.field feed:Lcom/narvii/model/Feed;

.field feedHelper:Lcom/narvii/feed/FeedHelper;

.field private feeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field filterFeatureFeed:Z

.field private isGoNextButtonDisabled:Z

.field private isVotting:Z

.field private listView:Landroid/widget/ListView;

.field private nextToken:Ljava/lang/String;

.field private pageSize:I

.field positionInCurPage:I

.field progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/feed/FeedContinuousViewer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->loadNextPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/feed/FeedContinuousViewer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->showNoMoreDateDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/feed/FeedContinuousViewer;Lcom/narvii/model/Feed;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->launchNextFeed(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method private initBottomBar(Landroid/widget/FrameLayout;Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    .line 176
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    .line 178
    iput p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 180
    iput p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x2

    .line 182
    iput p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    .line 185
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0b0218

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/FeedBottomLayout;

    iput-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 186
    iget-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f07014b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-direct {p3, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x50

    .line 189
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/FeedBottomLayout;->hideFeatureButton()V

    .line 197
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    invoke-virtual {p1, p2}, Lcom/narvii/widget/FeedBottomLayout;->setBottomLayoutDisplayMode(I)V

    .line 199
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    invoke-static {p3}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p2

    :goto_1
    iget-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    if-nez p3, :cond_5

    const/4 p3, 0x0

    goto :goto_2

    .line 200
    :cond_5
    invoke-virtual {p3}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result p3

    :goto_2
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v1

    .line 199
    :goto_3
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/narvii/widget/FeedBottomLayout;->updateBottomView(IZII)V

    return-void
.end method

.method private launchNextFeed(Lcom/narvii/model/Feed;Z)V
    .locals 2

    .line 410
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    .line 411
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 412
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "key_continuous_feed_list"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    const-string v1, "key_continuous_feed_api_request"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    const-string v1, "key_continuous_feed_list_timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 415
    :cond_1
    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    add-int/2addr p2, v0

    :goto_1
    const-string v1, "key_continuous_feed_current_position"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    iget-boolean p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    const-string v1, "key_continuous_feed_filter_feature"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    const-string v1, "key_continuous_feed_next_token"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    const-string v1, "key_continuous_feed_page_size"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "SBB"

    const-string v1, "Source"

    .line 419
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    :try_start_0
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    check-cast p2, Lcom/narvii/app/NVFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 423
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f01003c

    const v0, 0x7f010041

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 424
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private loadNextPage()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->showNoMoreDateDialog()V

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 234
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 235
    new-instance v2, Lcom/narvii/feed/FeedContinuousViewer$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/FeedContinuousViewer$1;-><init>(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showNoMoreDateDialog()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0c3a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method


# virtual methods
.method public AttachFeedDetailFragment(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;ZLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 115
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 116
    iput-object p8, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    .line 117
    move-object p8, p1

    check-cast p8, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p8}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->listView:Landroid/widget/ListView;

    .line 118
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 120
    iput-object p6, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    .line 121
    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    .line 124
    iput-boolean p5, p0, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    .line 125
    iput p9, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    .line 126
    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    const/16 p3, 0x19

    if-le p2, p3, :cond_0

    .line 127
    iput p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    :cond_0
    const-string p2, "account"

    .line 130
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->account:Lcom/narvii/account/AccountService;

    .line 131
    instance-of p2, p1, Lcom/narvii/detail/FeedDetailFragment;

    if-eqz p2, :cond_1

    .line 132
    move-object p2, p1

    check-cast p2, Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    .line 135
    :cond_1
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->listView:Landroid/widget/ListView;

    if-eqz p2, :cond_4

    .line 139
    invoke-virtual {p2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    .line 140
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p2, p3, p7}, Lcom/narvii/feed/FeedContinuousViewer;->initBottomBar(Landroid/widget/FrameLayout;Landroid/content/Context;Z)V

    .line 144
    :cond_2
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 145
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    .line 146
    invoke-virtual {p0, p2, p3}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 149
    :cond_3
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 150
    invoke-virtual {p8}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07014a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarHeight:I

    return-void

    .line 136
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "the list of current fragment is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildNewRequestApi(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 340
    iget v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 356
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    if-eqz v0, :cond_d

    add-int/lit8 p3, p3, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    goto/16 :goto_5

    .line 359
    :cond_0
    new-instance p3, Landroid/net/Uri$Builder;

    invoke-direct {p3}, Landroid/net/Uri$Builder;-><init>()V

    .line 360
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    if-nez p2, :cond_1

    .line 361
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 362
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 363
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 364
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "stoptime"

    if-eqz p2, :cond_3

    .line 367
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 368
    invoke-virtual {p3, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 370
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 373
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "pageToken"

    const-string v4, "start"

    const-string v5, "pagingType"

    const-string v6, "size"

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 375
    iget v7, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 377
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 381
    :cond_6
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 385
    :cond_7
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 386
    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v6, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 389
    :cond_8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 390
    invoke-virtual {p3, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 393
    :cond_9
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 394
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_a

    goto :goto_2

    :cond_a
    move-object p2, p5

    :goto_2
    const-string p4, "t"

    .line 397
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 398
    invoke-virtual {p3, v5, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 399
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    invoke-virtual {p3, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_4

    :cond_b
    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    const-string p1, "0"

    .line 401
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 402
    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 404
    :goto_4
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 405
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 357
    :cond_d
    :goto_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public configureBottomBarEvent(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->configureBottomBarClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public hideBottomBar()V
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 460
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    iget v3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarHeight:I

    int-to-float v3, v3

    aput v3, v2, v1

    const-string/jumbo v1, "translationY"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 462
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 463
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void
.end method

.method public isFeedBottomBarVisible()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadNextFeed(Z)V
    .locals 1

    .line 215
    iget p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    add-int/lit8 p1, p1, 0x1

    .line 216
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->launchNextFeed(Lcom/narvii/model/Feed;Z)V

    return-void

    .line 217
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->loadNextPage()V

    return-void
.end method

.method public setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V

    :cond_0
    return-void
.end method

.method public setBottomViewVisible(Z)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 496
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->setDarkTheme(Z)V

    return-void
.end method

.method public setGoNextButtonEnable(Z)V
    .locals 2

    .line 157
    iput-boolean p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->isGoNextButtonDisabled:Z

    .line 158
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f09075f

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    const v1, 0x7f090760

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setGoNextButtonVisible(Z)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_2

    const v1, 0x7f090153

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    const v3, 0x7f090155

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setIsVotting(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->isVotting:Z

    return-void
.end method

.method public showBottomBar()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 470
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarHeight:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v1, v1

    aput v1, v2, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v2, v1

    const-string/jumbo v1, "translationY"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 472
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 473
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void
.end method

.method public showTipping(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->showTipping(Z)V

    return-void
.end method

.method public startLikeAnimation(I)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->startLikeAnimation(I)V

    :cond_0
    return-void
.end method

.method public updateBottomView(III)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-nez v0, :cond_0

    return-void

    .line 486
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->isVotting:Z

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateBottomView(IZII)V

    return-void
.end method

.method public updateVoteIcon(IZI)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteIcon(IZI)V

    :cond_0
    return-void
.end method

.method public updateVoteIcon(Lcom/narvii/model/Feed;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_1

    .line 446
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteIcon(IZI)V

    :cond_1
    return-void
.end method

.class public Lcom/narvii/feed/FeedContinuousViewer;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/feed/FeedContinuousViewer;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/feed/FeedContinuousViewer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/feed/FeedContinuousViewer;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/feed/FeedContinuousViewer;Lcom/narvii/model/Feed;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->launchNextFeed(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/feed/FeedContinuousViewer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->loadNextPage()V

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/feed/FeedContinuousViewer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->showNoMoreDateDialog()V

    return-void
.end method

.method private initBottomBar(Landroid/widget/FrameLayout;Landroid/content/Context;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->account:Lcom/narvii/account/AccountService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    const/4 p3, 0x3

    .line 13
    .line 14
    iput p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    .line 21
    move-result p3

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    const/4 p3, 0x1

    .line 25
    .line 26
    iput p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 33
    move-result p3

    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    const/4 p3, 0x2

    .line 37
    .line 38
    iput p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    .line 45
    const v1, 0x7f0d0246

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    check-cast p3, Lcom/narvii/widget/FeedBottomLayout;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0701b8

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 70
    move-result p2

    .line 71
    const/4 v1, -0x1

    .line 72
    .line 73
    .line 74
    invoke-direct {p3, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    const/16 p2, 0x50

    .line 77
    .line 78
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .line 80
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-nez p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/widget/FeedBottomLayout;->hideFeatureButton()V

    .line 102
    .line 103
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 104
    .line 105
    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarDisplayMode:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/narvii/widget/FeedBottomLayout;->setBottomLayoutDisplayMode(I)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    .line 113
    .line 114
    if-nez p2, :cond_4

    .line 115
    move p2, v0

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_4
    iget-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 119
    .line 120
    .line 121
    invoke-static {p3}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 122
    move-result p3

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 126
    move-result p2

    .line 127
    .line 128
    :goto_1
    iget-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    .line 129
    .line 130
    if-nez p3, :cond_5

    .line 131
    move p3, v0

    .line 132
    goto :goto_2

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {p3}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 136
    move-result p3

    .line 137
    .line 138
    :goto_2
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    .line 139
    .line 140
    if-nez v1, :cond_6

    .line 141
    move v1, v0

    .line 142
    goto :goto_3

    .line 143
    .line 144
    .line 145
    :cond_6
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 146
    move-result v1

    .line 147
    .line 148
    .line 149
    :goto_3
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/narvii/widget/FeedBottomLayout;->updateBottomView(IZII)V

    .line 150
    return-void
.end method

.method private launchNextFeed(Lcom/narvii/model/Feed;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    .line 34
    :goto_0
    const-string v1, "key_continuous_feed_list"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    const-string v0, "key_continuous_feed_api_request"

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    const-string v0, "key_continuous_feed_list_timestamp"

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/4 v0, 0x1

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    const/4 p2, 0x0

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    .line 59
    add-int/2addr p2, v0

    .line 60
    .line 61
    :goto_1
    const-string v1, "key_continuous_feed_current_position"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    .line 66
    const-string p2, "key_continuous_feed_filter_feature"

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    .line 73
    const-string p2, "key_continuous_feed_next_token"

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    const-string p2, "key_continuous_feed_page_size"

    .line 81
    .line 82
    iget v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    .line 87
    const-string p2, "Source"

    .line 88
    .line 89
    const-string v1, "SBB"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    .line 97
    :try_start_0
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 98
    .line 99
    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {p2, p1}, Lcom/narvii/feed/FeedContinuousViewer;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 105
    .line 106
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    const p2, 0x7f01005a

    .line 114
    .line 115
    .line 116
    const v0, 0x7f01005f

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    :cond_2
    return-void
.end method

.method private loadNextPage()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->showNoMoreDateDialog()V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 28
    .line 29
    const-string v1, "api"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/feed/FeedContinuousViewer$1;

    .line 53
    .line 54
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/FeedContinuousViewer$1;-><init>(Lcom/narvii/feed/FeedContinuousViewer;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 61
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

.method private showNoMoreDateDialog()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    const v2, 0x7f120d68

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 28
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 10
    .line 11
    iput-object p8, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    .line 12
    move-object p8, p1

    .line 13
    .line 14
    check-cast p8, Lcom/narvii/list/NVListFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p8}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 18
    move-result-object p8

    .line 19
    .line 20
    iput-object p8, p0, Lcom/narvii/feed/FeedContinuousViewer;->listView:Landroid/widget/ListView;

    .line 21
    .line 22
    new-instance p8, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 23
    .line 24
    .line 25
    invoke-direct {p8, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    .line 27
    iput-object p8, p0, Lcom/narvii/feed/FeedContinuousViewer;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 28
    .line 29
    iput-object p6, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    .line 34
    .line 35
    iput p4, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    .line 36
    .line 37
    iput-boolean p5, p0, Lcom/narvii/feed/FeedContinuousViewer;->filterFeatureFeed:Z

    .line 38
    .line 39
    iput p9, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    .line 40
    .line 41
    const/16 p2, 0x19

    .line 42
    .line 43
    if-le p9, p2, :cond_0

    .line 44
    .line 45
    iput p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    .line 46
    .line 47
    :cond_0
    const-string p2, "account"

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->account:Lcom/narvii/account/AccountService;

    .line 56
    .line 57
    instance-of p2, p1, Lcom/narvii/detail/FeedDetailFragment;

    .line 58
    .line 59
    if-eqz p2, :cond_1

    .line 60
    move-object p2, p1

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/detail/FeedDetailFragment;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->feed:Lcom/narvii/model/Feed;

    .line 69
    .line 70
    :cond_1
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->listView:Landroid/widget/ListView;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    instance-of p2, p2, Landroid/widget/FrameLayout;

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->listView:Landroid/widget/ListView;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    check-cast p2, Landroid/widget/FrameLayout;

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 92
    move-result-object p3

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p2, p3, p7}, Lcom/narvii/feed/FeedContinuousViewer;->initBottomBar(Landroid/widget/FrameLayout;Landroid/content/Context;Z)V

    .line 96
    .line 97
    :cond_2
    iget-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    move-result-object p2

    .line 104
    const/4 p3, 0x0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->apiRequestUrl:Ljava/lang/String;

    .line 111
    .line 112
    :cond_3
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 113
    .line 114
    .line 115
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 116
    move-result-object p3

    .line 117
    .line 118
    .line 119
    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    iput-object p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/list/NVListFragment;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    const p2, 0x7f0701b7

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    move-result p1

    .line 135
    .line 136
    iput p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarHeight:I

    .line 137
    return-void

    .line 138
    .line 139
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    const-string p2, "the list of current fragment is null"

    .line 142
    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p1
.end method

.method public buildNewRequestApi(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->timeStamp:Ljava/lang/String;

    .line 1
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

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/feed/FeedContinuousViewer;->buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildNewRequestApi(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    if-eqz v0, :cond_d

    add-int/lit8 p3, p3, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    new-instance p3, Landroid/net/Uri$Builder;

    invoke-direct {p3}, Landroid/net/Uri$Builder;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "stoptime"

    if-eqz p2, :cond_3

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p3, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
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

    .line 16
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    .line 17
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
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

    .line 19
    :cond_6
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 20
    :cond_7
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v6, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    :cond_8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 23
    invoke-virtual {p3, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    :cond_9
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_a

    move-object p5, p2

    :cond_a
    const-string p2, "t"

    .line 27
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 28
    invoke-virtual {p3, v5, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->nextToken:Ljava/lang/String;

    .line 29
    invoke-virtual {p3, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    const-string p1, "0"

    .line 30
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/narvii/feed/FeedContinuousViewer;->pageSize:I

    add-int/2addr p1, p2

    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 32
    :goto_3
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 34
    :cond_d
    :goto_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public configureBottomBarEvent(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->configureBottomBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    return-void
.end method

.method public hideBottomBar()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    .line 30
    cmpl-float v0, v0, v1

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 35
    const/4 v2, 0x2

    .line 36
    .line 37
    new-array v2, v2, [F

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    aput v1, v2, v3

    .line 41
    .line 42
    iget v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarHeight:I

    .line 43
    int-to-float v1, v1

    .line 44
    const/4 v3, 0x1

    .line 45
    .line 46
    aput v1, v2, v3

    .line 47
    .line 48
    const-string v1, "translationY"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 55
    .line 56
    const-wide/16 v1, 0x8c

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 65
    :cond_2
    return-void
.end method

.method public isFeedBottomBarVisible()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public loadNextFeed(Z)V
    .locals 1

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->positionInCurPage:I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lt p1, v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->feeds:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/model/Feed;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->launchNextFeed(Lcom/narvii/model/Feed;Z)V

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/feed/FeedContinuousViewer;->loadNextPage()V

    .line 40
    return-void
.end method

.method public setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setBottomViewVisible(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p1, 0x4

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->setDarkTheme(Z)V

    .line 9
    return-void
.end method

.method public setGoNextButtonEnable(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->isGoNextButtonDisabled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a09f4

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a01f0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a09f5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 43
    .line 44
    .line 45
    const v1, 0x7f0a01f2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public setGoNextButtonVisible(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a01ef

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 25
    .line 26
    .line 27
    const v3, 0x7f0a01f1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    move v1, v2

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_2
    return-void
.end method

.method public setIsVotting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/feed/FeedContinuousViewer;->isVotting:Z

    return-void
.end method

.method public showBottomBar()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    :cond_1
    iget v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomBarHeight:I

    .line 30
    int-to-float v2, v1

    .line 31
    .line 32
    cmpl-float v0, v0, v2

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 37
    const/4 v2, 0x2

    .line 38
    .line 39
    new-array v2, v2, [F

    .line 40
    const/4 v3, 0x0

    .line 41
    int-to-float v1, v1

    .line 42
    .line 43
    aput v1, v2, v3

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    aput v3, v2, v1

    .line 48
    .line 49
    const-string v1, "translationY"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 56
    .line 57
    const-wide/16 v1, 0x8c

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->barAnimator:Landroid/animation/Animator;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 66
    :cond_2
    return-void
.end method

.method public showTipping(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->showTipping(Z)V

    .line 9
    return-void
.end method

.method public startLikeAnimation(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FeedBottomLayout;->startLikeAnimation(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public updateBottomView(III)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->isVotting:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateBottomView(IZII)V

    .line 11
    return-void
.end method

.method public updateVoteIcon(IZI)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteIcon(IZI)V

    :cond_0
    return-void
.end method

.method public updateVoteIcon(Lcom/narvii/model/Feed;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/feed/FeedContinuousViewer;->context:Lcom/narvii/app/NVContext;

    .line 1
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

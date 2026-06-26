.class public abstract Lcom/narvii/detail/FeedDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "FeedDetailFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;
.implements Lcom/narvii/list/HoverAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/Feed;",
        ">",
        "Lcom/narvii/detail/DetailFragment;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;",
        "Lcom/narvii/list/HoverAdapter;"
    }
.end annotation


# static fields
.field public static final HEADER_AREA:Ljava/lang/String; = "HeaderArea"

.field public static final KEY_HIDE_BOTTOM_BAR:Ljava/lang/String; = "key_hide_bottom_bar"

.field private static final THRESHOLD:I = 0x32

.field protected static final VOTE_FROM_BOTTOM:Ljava/lang/String; = "voteFromBottom"


# instance fields
.field addCommentClickListener:Landroid/view/View$OnClickListener;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field public final blockPass:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field bottomItemsClickListener:Landroid/view/View$OnClickListener;

.field private checkTooltipNextActive:Z

.field checkTooltipRunnable:Ljava/lang/Runnable;

.field configService:Lcom/narvii/config/ConfigService;

.field protected continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

.field protected continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

.field private fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

.field protected fromHeadline:Z

.field headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

.field private hideBottomBar:Z

.field isVoteAnimationFinished:Z

.field private lastDuration:J

.field private lastEnterTime:J

.field listViewRoot:Landroid/view/View;

.field private logggingListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected notJoined:Z

.field private oldFirstVisibleItem:I

.field private oldTop:I

.field onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

.field onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field protected onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field pageClickListener:Landroid/view/View$OnClickListener;

.field private preferenceHelper:Lcom/narvii/amino/CommunityPreferenceHelper;

.field public requestOnlineMembersRunnable:Ljava/lang/Runnable;

.field showPageMembersRunnable:Ljava/lang/Runnable;

.field tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

.field tippingTooltipTried:Z

.field toolTipHelper:Lcom/narvii/util/ToolTipHelper;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 151
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    .line 176
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$1;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->addCommentClickListener:Landroid/view/View$OnClickListener;

    .line 190
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$2;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->pageClickListener:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$3;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipRunnable:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$4;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$5;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    .line 888
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$15;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$15;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->logggingListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1144
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$16;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$16;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1395
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$19;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$19;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->bottomItemsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/detail/FeedDetailFragment;Z)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersOnThisPage()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->preferenceHelper:Lcom/narvii/amino/CommunityPreferenceHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/detail/FeedDetailFragment;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/detail/FeedDetailFragment;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/detail/FeedDetailFragment;)I
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->getPosOfCommentHeader()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/detail/FeedDetailFragment;)I
    .locals 0

    .line 130
    iget p0, p0, Lcom/narvii/detail/FeedDetailFragment;->oldFirstVisibleItem:I

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/detail/FeedDetailFragment;I)I
    .locals 0

    .line 130
    iput p1, p0, Lcom/narvii/detail/FeedDetailFragment;->oldFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$600(Lcom/narvii/detail/FeedDetailFragment;)I
    .locals 0

    .line 130
    iget p0, p0, Lcom/narvii/detail/FeedDetailFragment;->oldTop:I

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/detail/FeedDetailFragment;I)I
    .locals 0

    .line 130
    iput p1, p0, Lcom/narvii/detail/FeedDetailFragment;->oldTop:I

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->onUpScrolling()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->onDownScrolling()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->handleBookMark()V

    return-void
.end method

.method private allowBottomTooltip()Z
    .locals 1

    .line 616
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private attachSBB()V
    .locals 12

    const-string v0, "key_continuous_feed_list"

    .line 550
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "key_continuous_feed_api_request"

    .line 551
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "key_continuous_feed_list_timestamp"

    .line 552
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "key_continuous_feed_current_position"

    .line 553
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v6

    const-string v1, "key_continuous_feed_filter_feature"

    .line 554
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v7

    const-string v1, "key_continuous_feed_next_token"

    .line 555
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "key_continuous_feed_page_size"

    .line 556
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v11

    .line 557
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->showBottomBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    iget-boolean v9, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    move-object v3, p0

    move-object v8, v0

    invoke-virtual/range {v2 .. v11}, Lcom/narvii/feed/FeedContinuousViewer;->AttachFeedDetailFragment(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;ZLjava/lang/String;I)V

    .line 559
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$10;

    invoke-direct {v1, p0}, Lcom/narvii/detail/FeedDetailFragment$10;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 585
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->bottomItemsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->configureBottomBarEvent(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    new-instance v2, Lcom/narvii/detail/FeedDetailFragment$11;

    invoke-direct {v2, p0}, Lcom/narvii/detail/FeedDetailFragment$11;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V

    .line 594
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    if-eqz v0, :cond_0

    const-string v0, "fromLink"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->setGoNextButtonVisible(Z)V

    .line 605
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 608
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 609
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private configLiverBar()V
    .locals 5

    .line 1583
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1584
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/narvii/app/DrawerActivity;

    if-eqz v3, :cond_7

    .line 1585
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->hasOnlineBar()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/narvii/app/DrawerActivity;->setLiverLayerBarVisible(Z)V

    .line 1586
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->hasOnlineBar()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    invoke-virtual {v3, v1}, Lcom/narvii/app/DrawerActivity;->setDisableCBB(Z)V

    .line 1589
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/amino/HomeFragment;

    if-eqz v0, :cond_4

    .line 1590
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/HomeFragment;

    .line 1591
    invoke-virtual {v0, p0}, Lcom/narvii/amino/HomeFragment;->isFragmentSelected(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1596
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "cbbHost"

    .line 1597
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CBBHost;

    if-eqz v0, :cond_6

    .line 1599
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    move-result v2

    :cond_5
    invoke-virtual {v0, v2}, Lcom/narvii/community/CBBHost;->setLift(I)V

    .line 1603
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "liveLayerHost"

    .line 1604
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    if-eqz v0, :cond_7

    .line 1605
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v0, :cond_7

    .line 1606
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getOnlineBarLift()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 1611
    :cond_7
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v0, :cond_8

    .line 1612
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getOnlineBarLift()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    :cond_8
    return-void
.end method

.method private getLiveLayerView()Lcom/narvii/widget/ProxyView;
    .locals 2

    .line 417
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 423
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090689

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ProxyView;

    return-object v0
.end method

.method private getPosOfCommentHeader()I
    .locals 4

    .line 906
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 909
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 910
    sget-object v3, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getSBBBlurOverlayColor(I)I
    .locals 3

    .line 1265
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/high16 p1, 0x3c000000    # 0.0078125f

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 1266
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, -0x2f000001

    :goto_0
    return p1
.end method

.method private getVoteTooltipContainer()Landroid/view/View;
    .locals 2

    .line 683
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 687
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 691
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090637

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private handleBookMark()V
    .locals 4

    const-string v0, "affiliations"

    .line 1470
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    const-string v1, "__communityId"

    .line 1471
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    .line 1472
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Post Detail SBB"

    .line 1473
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f075b

    .line 1476
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x7f0f0193

    const/4 v3, 0x0

    .line 1477
    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f0aa0

    .line 1478
    new-instance v3, Lcom/narvii/detail/FeedDetailFragment$20;

    invoke-direct {v3, p0, v1}, Lcom/narvii/detail/FeedDetailFragment$20;-><init>(Lcom/narvii/detail/FeedDetailFragment;I)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1490
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method

.method public static intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Feed;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 738
    invoke-static/range {v0 .. v7}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Feed;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 744
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    .line 745
    invoke-static {p0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-ltz p5, :cond_1

    if-eqz p2, :cond_1

    .line 746
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p2, "key_continuous_feed_list"

    invoke-static {p1, p2, p0}, Lcom/narvii/util/Utils;->safeAddExtraInIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_continuous_feed_api_request"

    .line 747
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_list_timestamp"

    .line 748
    invoke-virtual {p1, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_current_position"

    .line 749
    invoke-virtual {p1, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_next_token"

    .line 750
    invoke-virtual {p1, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_page_size"

    .line 751
    invoke-virtual {p1, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    invoke-virtual {p1, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string p2, "key_continuous_feed_filter_feature"

    .line 753
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method

.method public static intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;
    .locals 1

    const-string v0, "community-player"

    .line 701
    invoke-static {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static intent(Lcom/narvii/model/Feed;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 705
    instance-of v0, p0, Lcom/narvii/model/Blog;

    const-string v1, "prefetch"

    const-string v2, "id"

    if-eqz v0, :cond_2

    .line 706
    check-cast p0, Lcom/narvii/model/Blog;

    .line 707
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 708
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 710
    :cond_0
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 711
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 712
    invoke-virtual {v0, v3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p0

    .line 713
    invoke-virtual {p0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p0

    .line 714
    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 716
    :cond_1
    const-class p1, Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 717
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-boolean p0, p0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    const-string v0, "isAnnouncement"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1

    .line 723
    :cond_2
    instance-of p1, p0, Lcom/narvii/model/Item;

    if-eqz p1, :cond_3

    .line 724
    check-cast p0, Lcom/narvii/model/Item;

    .line 725
    const-class p1, Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 726
    invoke-virtual {p0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_3
    if-eqz p0, :cond_4

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown feed type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadNextPage()V
    .locals 2

    .line 1197
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1198
    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedContinuousViewer;->loadNextFeed(Z)V

    :cond_0
    return-void
.end method

.method private onDownScrolling()V
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {v0}, Lcom/narvii/feed/FeedContinuousViewer;->hideBottomBar()V

    return-void
.end method

.method private onUpScrolling()V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {v0}, Lcom/narvii/feed/FeedContinuousViewer;->showBottomBar()V

    return-void
.end method

.method private requestOnlineMembersOnThisPage()V
    .locals 5

    const-string v0, "liveLayer"

    .line 449
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-instance v4, Lcom/narvii/detail/FeedDetailFragment$9;

    invoke-direct {v4, p0}, Lcom/narvii/detail/FeedDetailFragment$9;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/livelayer/LiveLayerService;->requestOnlineMembers(Ljava/lang/String;IZLcom/narvii/util/Callback;)V

    return-void
.end method

.method private sendNoInterestRequest(Lcom/narvii/model/Feed;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1498
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1499
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$21;

    invoke-direct {v1, p0, p1}, Lcom/narvii/detail/FeedDetailFragment$21;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/model/Feed;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    const-string v1, "content_language"

    .line 1511
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    const-string v2, "deviceid"

    .line 1512
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 1513
    invoke-virtual {v2}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 1514
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 1515
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "headline/feedback/report"

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v4, 0x1

    .line 1516
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v5, "deviceID"

    .line 1517
    invoke-virtual {v3, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1518
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "__communityId"

    .line 1519
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ndcId"

    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1520
    instance-of v1, p1, Lcom/narvii/model/Item;

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "objectType"

    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1521
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    const-string v1, "objectId"

    invoke-virtual {v3, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "channelId"

    .line 1522
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "channel"

    invoke-virtual {v3, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "api"

    .line 1523
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1524
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1525
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method private shareFeed(Ljava/lang/String;)V
    .locals 4

    .line 1204
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    .line 1205
    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Blog;

    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1206
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 1207
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$17;

    invoke-direct {v0, p0, p1}, Lcom/narvii/detail/FeedDetailFragment$17;-><init>(Lcom/narvii/detail/FeedDetailFragment;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1218
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$18;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/narvii/detail/FeedDetailFragment$18;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Feed;)V

    invoke-static {p0, v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    .line 1223
    invoke-virtual {v0, p1}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldShowMemberOnThisPage()Z
    .locals 4

    const-string v0, "config"

    .line 407
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 408
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 409
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method private showLiveLayer(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 428
    invoke-direct {p0, p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(ZZ)V

    return-void
.end method

.method private showLiveLayer(ZZ)V
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "liveLayerHost"

    .line 436
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    if-eqz v0, :cond_3

    .line 437
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 438
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_2

    const p1, 0x7f010029

    goto :goto_1

    :cond_2
    const p1, 0x7f01002a

    :goto_1
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 441
    iget-object p2, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method

.method private updateListViewRoot()V
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->listViewRoot:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    if-eqz v1, :cond_0

    .line 1573
    check-cast v0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->setShouldInterceptScrollEvent(Z)V

    :cond_0
    return-void
.end method

.method private updatePrivateContentView()V
    .locals 0

    .line 1578
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->configLiverBar()V

    .line 1579
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->updateFansOnlyMask()V

    return-void
.end method


# virtual methods
.method protected bookmark(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected bottomActionBroadCast()V
    .locals 2

    .line 1373
    new-instance v0, Lcom/narvii/poweruser/PowerFeedHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 1374
    invoke-virtual {v0}, Lcom/narvii/poweruser/PowerFeedHelper;->sendBroadCast()V

    return-void
.end method

.method protected bottomActionFeaturePost()V
    .locals 2

    .line 1368
    new-instance v0, Lcom/narvii/poweruser/PowerFeedHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    const/4 v1, 0x0

    .line 1369
    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected bottomActionGoNext()V
    .locals 1

    .line 1359
    sget-object v0, Lcom/narvii/logging/ActSemantic;->nextPost:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 1360
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->loadNextPage()V

    return-void
.end method

.method protected bottomActionModMenu()V
    .locals 0

    .line 1364
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->showModerationDialog()V

    return-void
.end method

.method protected bottomActionShare()V
    .locals 1

    const-string v0, "Post Detail SBB"

    .line 1328
    invoke-direct {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->shareFeed(Ljava/lang/String;)V

    return-void
.end method

.method protected bottomActionTipping()V
    .locals 3

    .line 1290
    sget-object v0, Lcom/narvii/logging/ActSemantic;->prop:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 1291
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipDone()V

    .line 1292
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowLoginPage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1295
    :cond_0
    new-instance v0, Lcom/narvii/tipping/TippingHelper;

    invoke-direct {v0, p0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "SBB"

    .line 1296
    invoke-virtual {v0, v1}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 1297
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    .line 1298
    invoke-virtual {v0, v1}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getPublishNdcId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/narvii/detail/FeedDetailFragment;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 1302
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    :goto_0
    return-void
.end method

.method protected bottomActionVote()V
    .locals 5

    .line 1332
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1336
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1337
    iget-boolean v1, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 1338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/narvii/detail/FeedDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    goto :goto_0

    .line 1340
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "voteFromBottom"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 1343
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->unVote()V

    :goto_0
    return-void
.end method

.method protected bottomComment()V
    .locals 0

    return-void
.end method

.method protected checkCommunityJoined()Z
    .locals 2

    .line 1646
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 1647
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    if-eqz v0, :cond_1

    const-string v0, "__community"

    .line 1648
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 1649
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    goto :goto_0

    .line 1652
    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/community/JoinCommunityDialog;->join(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)Landroid/app/Dialog;

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected fansOnlyPostMarginBottom()I
    .locals 2

    .line 1558
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1561
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method protected getCommunity(I)Lcom/narvii/model/Community;
    .locals 1

    const-string v0, "community"

    .line 1307
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 1308
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "__community"

    .line 1310
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    :cond_0
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getDetailNVObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed()Lcom/narvii/model/Feed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 955
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    :goto_0
    return-object v0
.end method

.method public abstract getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/detail/FeedDetailAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getLiveLayerTopic()Ljava/lang/String;
.end method

.method public getOnlineBarLift()I
    .locals 4

    const/16 v0, 0x10

    .line 537
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    move-result v0

    .line 538
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->showBottomBar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {v1}, Lcom/narvii/feed/FeedContinuousViewer;->isFeedBottomBarVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected getPublishNdcId()I
    .locals 3

    .line 1316
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1320
    :cond_0
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 1321
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_1

    .line 1322
    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v1

    :cond_1
    return v1
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    .line 960
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x44ffffff    # 2047.9999f

    return v0

    .line 964
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->getSelectorDarkColor()I

    move-result v0

    return v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    .line 543
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    .line 765
    invoke-static {p0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1642
    new-instance v0, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected isCurrentUserNotJoined()Z
    .locals 3

    .line 382
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "prefetch"

    .line 384
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez v2, :cond_0

    .line 385
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    .line 387
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_3

    .line 391
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v0, :cond_2

    return v2

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    return v2

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isMeAccessibleToThisPost()Z
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1545
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v0

    return v0
.end method

.method public isMine()Z
    .locals 2

    .line 968
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "account"

    .line 970
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 971
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMineWithCommunityCheck()Z
    .locals 4

    .line 977
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 981
    :cond_0
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v3

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected isTippingTooltipDone()Z
    .locals 3

    const-string v0, "prefs"

    .line 1280
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "tooltip_tipping_done"

    const/4 v2, 0x0

    .line 1281
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected newPreview()Z
    .locals 1

    .line 1246
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 6

    .line 302
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    const-string v0, "liveLayerHost"

    .line 303
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    if-eqz v0, :cond_2

    .line 304
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    .line 305
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->pageClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerHost;->onClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->shouldShowMemberOnThisPage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnFoldChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v0, :cond_4

    const-string v0, "prefs"

    .line 312
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "liveLayerFold"

    .line 313
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(ZZ)V

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isAvatarShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    invoke-direct {p0, v1, v1}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(ZZ)V

    .line 323
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tryReportActiveStatus()V

    .line 324
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_5

    .line 325
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->hasPostEntry()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/DrawerActivity;->updatePostEntryFrameVisible(Z)V

    :cond_5
    if-eqz p1, :cond_6

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    goto :goto_2

    .line 331
    :cond_6
    iget-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastDuration:J

    :goto_2
    if-eqz p1, :cond_7

    .line 335
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->configLiverBar()V

    .line 336
    iget-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipNextActive:Z

    if-eqz p1, :cond_8

    .line 337
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 340
    :cond_7
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 2

    .line 1530
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    move-result v0

    .line 1531
    iget-boolean v1, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1532
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    if-eqz v1, :cond_1

    .line 1534
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1536
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 261
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "config"

    .line 263
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 264
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getLiveLayerTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    .line 267
    new-instance p1, Lcom/narvii/feed/FeedContinuousViewer;

    invoke-direct {p1}, Lcom/narvii/feed/FeedContinuousViewer;-><init>()V

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    const-string p1, "affiliations"

    .line 268
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 269
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 271
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    const/4 p1, 0x0

    const-string v0, "fromHeadline"

    .line 275
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    const-string v0, "key_hide_bottom_bar"

    .line 276
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->hideBottomBar:Z

    .line 278
    new-instance p1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    invoke-direct {p1, p0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 279
    iget-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez p1, :cond_1

    .line 280
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 283
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "communityNavBar"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    .line 284
    new-instance p1, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {p1}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    .line 285
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "showBackButton"

    .line 286
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 995
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 996
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v2, 0x7f080309

    .line 997
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v2, 0x2

    .line 998
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f0ee0

    .line 999
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f02f5

    .line 1000
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p2, 0x5

    const v0, 0x7f0f03cd

    .line 1001
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0f0348

    .line 1002
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f06d5

    const/16 v0, 0x8

    .line 1004
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 1005
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b021b

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 10

    .line 514
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->unsubscribeTopic()V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 519
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->preferenceHelper:Lcom/narvii/amino/CommunityPreferenceHelper;

    invoke-virtual {v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 526
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 527
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 528
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    if-eqz v0, :cond_6

    .line 529
    iget-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    move-wide v0, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    sub-long/2addr v0, v4

    .line 530
    :goto_0
    iget-wide v4, p0, Lcom/narvii/detail/FeedDetailFragment;->lastDuration:J

    add-long/2addr v0, v4

    .line 531
    iget-object v4, p0, Lcom/narvii/detail/FeedDetailFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v5

    cmp-long v6, v0, v2

    if-lez v6, :cond_4

    move-wide v6, v0

    goto :goto_1

    :cond_4
    move-wide v6, v2

    :goto_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/detail/FeedDetailAdapter;->touchFeedContentEnd:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x64

    const/16 v8, 0x64

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_2
    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logPostDetailViewQuit(Lcom/narvii/model/Feed;JILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onFeedObjectResponse()V
    .locals 3

    .line 623
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipTried:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 627
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipTried:Z

    .line 628
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$12;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onHoveItemCreated(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 778
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 780
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->getSBBBlurOverlayColor(I)I

    move-result v0

    .line 781
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 783
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 784
    invoke-virtual {v3}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 785
    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 784
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 786
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoveFrameMarginTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 787
    iget-object v3, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 791
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 792
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 793
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 797
    :cond_2
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->addCommentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p1, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    :cond_3
    return-void
.end method

.method protected onHoverRecycled()V
    .locals 2

    .line 806
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onHoverRecycled()V

    .line 807
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 817
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 818
    instance-of p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;

    if-eqz p2, :cond_0

    .line 819
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "inBlogDetail"

    .line 820
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 821
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string v1, "preview"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 833
    :cond_0
    invoke-virtual {p0, p0}, Lcom/narvii/list/NVListFragment;->setHoverAdapter(Lcom/narvii/list/HoverAdapter;)V

    .line 835
    new-instance p2, Lcom/narvii/amino/CommunityPreferenceHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->preferenceHelper:Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 837
    new-instance p2, Lcom/narvii/detail/FeedDetailFragment$14;

    invoke-direct {p2, p0, p1}, Lcom/narvii/detail/FeedDetailFragment$14;-><init>(Lcom/narvii/detail/FeedDetailFragment;Landroid/widget/ListView;)V

    const-wide/16 v0, 0xc8

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 880
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->attachSBB()V

    .line 882
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    if-eqz p2, :cond_1

    .line 883
    check-cast p1, Lcom/narvii/widget/NVListView;

    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->logggingListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1619
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "becomeFans"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1620
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1625
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1626
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_1

    .line 1628
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1630
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f10b0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 1632
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1633
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page Detailed View"

    invoke-static {p0, v0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1120
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    if-ne v0, v1, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 1126
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1127
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/influencer/FanClub;

    iget-object v1, v1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1128
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/model/Feed;->needHidden:Z

    if-eqz v0, :cond_3

    const-string v0, "account"

    .line 1129
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1130
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/influencer/FanClub;

    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1131
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1132
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    iput-boolean v0, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 1133
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    .line 1134
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1138
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1033
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1062
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1039
    :sswitch_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    const-string p1, "Post Detail Navbar"

    .line 1040
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->shareFeed(Ljava/lang/String;)V

    return v1

    .line 1035
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->repost:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 1036
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Navbar"

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    return v1

    .line 1058
    :sswitch_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->flag:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 1059
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    return v1

    .line 1049
    :sswitch_3
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Post Detail View"

    .line 1050
    iput-object v0, p1, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    .line 1051
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 1052
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    return v1

    .line 1055
    :sswitch_4
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    return v1

    .line 1043
    :sswitch_5
    sget-object p1, Lcom/narvii/logging/ActSemantic;->copyLink:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 1044
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Post Detail Menu"

    .line 1045
    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 1046
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f02f5 -> :sswitch_5
        0x7f0f0348 -> :sswitch_4
        0x7f0f03cd -> :sswitch_3
        0x7f0f06d5 -> :sswitch_2
        0x7f0f0ee0 -> :sswitch_1
        0x7f0f0fa2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 1011
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1012
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1013
    iget v3, v0, Lcom/narvii/model/Feed;->status:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1017
    iget-object v4, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const v6, 0x7f0f0fa2

    .line 1022
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f02f5

    .line 1023
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f0ee0

    .line 1024
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f03cd

    .line 1025
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f0348

    .line 1026
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f06d5

    .line 1027
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f09080b

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 348
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090678

    .line 350
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->listViewRoot:Landroid/view/View;

    .line 351
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p2

    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$6;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 357
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090816

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 358
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 359
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getOnlineBarLift()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 361
    new-instance p2, Lcom/narvii/detail/FeedDetailFragment$7;

    invoke-direct {p2, p0}, Lcom/narvii/detail/FeedDetailFragment$7;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersRunnable:Ljava/lang/Runnable;

    .line 367
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->shouldShowMemberOnThisPage()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    const p2, 0x7f090429

    .line 370
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FansOnlyPostMask;

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 371
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    new-instance p2, Lcom/narvii/detail/FeedDetailFragment$8;

    invoke-direct {p2, p0}, Lcom/narvii/detail/FeedDetailFragment$8;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/influencer/FansOnlyPostMask;->setBecomeFansClickListener(Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;)V

    .line 377
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updatePrivateContentView()V

    .line 378
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updateListViewRoot()V

    return-void
.end method

.method protected onVoteClicked()V
    .locals 0

    return-void
.end method

.method protected sendFeedUpdateGlobalNotification(Lcom/narvii/model/Feed;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1108
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 1110
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1111
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    if-eqz p1, :cond_0

    .line 1113
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_0
    return-void
.end method

.method protected sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V
    .locals 2

    .line 1067
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/LogUtils;->optionMenuClickArea:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HeaderArea"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    .line 1285
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "BottomArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected setSectionHeaderTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 2

    .line 1072
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 1073
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    if-eqz v0, :cond_8

    .line 1074
    instance-of v0, p1, Lcom/narvii/model/Media;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1077
    :cond_0
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_1

    return v1

    .line 1080
    :cond_1
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_2

    return v1

    .line 1083
    :cond_2
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_3

    return v1

    .line 1086
    :cond_3
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_4

    return v1

    .line 1089
    :cond_4
    instance-of v0, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    if-eqz v0, :cond_5

    return v1

    .line 1092
    :cond_5
    instance-of p1, p1, Lcom/narvii/model/Comment;

    if-eqz p1, :cond_6

    return v1

    :cond_6
    const-string p1, "__community"

    .line 1095
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    .line 1096
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1097
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    goto :goto_0

    .line 1099
    :cond_7
    invoke-static {p0, p1}, Lcom/narvii/community/JoinCommunityDialog;->join(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)Landroid/app/Dialog;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1103
    :cond_8
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected showBottomBar()Z
    .locals 1

    .line 1242
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->hideBottomBar:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected showModerationDialog()V
    .locals 0

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 986
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method protected tippingTooltipDone()V
    .locals 3

    .line 1272
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    :cond_0
    const-string v0, "prefs"

    .line 1275
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 1276
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "tooltip_tipping_done"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected tryReportActiveStatus()V
    .locals 6

    .line 919
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    const-string v1, "eventOrigin"

    const-string v2, "loggingOrigin"

    const-string v3, "liveLayer"

    if-eqz v0, :cond_2

    .line 921
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "config"

    .line 922
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 923
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->objectType()I

    move-result v4

    invoke-static {v4}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 927
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v3

    instance-of v3, v3, Lcom/narvii/model/Blog;

    if-eqz v3, :cond_0

    .line 928
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "blogType"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 932
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_1
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 939
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 940
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 942
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :cond_3
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    .line 945
    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method

.method protected tryShowTippingTooltip()V
    .locals 4

    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipNextActive:Z

    .line 640
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->allowBottomTooltip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "account"

    .line 644
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 645
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 651
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    if-eqz v2, :cond_5

    .line 657
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isTippingTooltipDone()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v1, Lcom/narvii/model/Feed;->status:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_5

    .line 658
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 659
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    iget-object v0, v0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 662
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipNextActive:Z

    return-void

    .line 667
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    const v1, 0x7f0f10c2

    .line 670
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->getVoteTooltipContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->text(Ljava/lang/String;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$13;

    invoke-direct {v1, p0}, Lcom/narvii/detail/FeedDetailFragment$13;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object v0

    .line 677
    new-instance v1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {v1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 678
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    :cond_5
    return-void
.end method

.method protected unVote()V
    .locals 0

    return-void
.end method

.method protected updateFansOnlyMask()V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1553
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/narvii/influencer/FansOnlyPostMask;->setAuthor(Lcom/narvii/model/User;)V

    .line 1554
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMarginBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/influencer/FansOnlyPostMask;->setMarginBottomHeight(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public updateListViewConfig()V
    .locals 0

    return-void
.end method

.method protected updateSBB(I)V
    .locals 2

    .line 1251
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0909a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1253
    instance-of v1, v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v1, :cond_0

    .line 1254
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->getSBBBlurOverlayColor(I)I

    move-result p1

    .line 1255
    move-object v1, v0

    check-cast v1, Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v1, p1}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 1256
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1258
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->setDarkTheme(Z)V

    .line 1259
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    const-string v0, "fromLink"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->setGoNextButtonEnable(Z)V

    :cond_1
    return-void
.end method

.method protected updateViews()V
    .locals 0

    .line 1566
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 1567
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updatePrivateContentView()V

    .line 1568
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updateListViewRoot()V

    return-void
.end method

.method protected updateteBottomLayout(Lcom/narvii/model/Feed;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    if-eqz v0, :cond_1

    .line 1232
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/feed/FeedContinuousViewer;->updateBottomView(III)V

    .line 1233
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/narvii/detail/DetailAdapter;->allowTipping(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedContinuousViewer;->showTipping(Z)V

    :cond_1
    return-void
.end method

.method protected vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
    .locals 0

    return-void
.end method

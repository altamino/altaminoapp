.class public abstract Lcom/narvii/detail/FeedDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/detail/e;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/detail/e;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->addCommentClickListener:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$1;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->pageClickListener:Landroid/view/View$OnClickListener;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/detail/f;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/detail/f;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipRunnable:Ljava/lang/Runnable;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$2;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$3;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$3;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$10;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$10;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->logggingListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$11;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$11;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$14;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$14;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->bottomItemsClickListener:Landroid/view/View$OnClickListener;

    .line 67
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/detail/FeedDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/detail/FeedDetailFragment;->oldFirstVisibleItem:I

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/detail/FeedDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/detail/FeedDetailFragment;->oldTop:I

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/detail/FeedDetailFragment;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->preferenceHelper:Lcom/narvii/amino/CommunityPreferenceHelper;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/detail/FeedDetailFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/detail/FeedDetailFragment;->oldFirstVisibleItem:I

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/detail/FeedDetailFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/detail/FeedDetailFragment;->oldTop:I

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/detail/FeedDetailFragment;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/detail/FeedDetailFragment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->getPosOfCommentHeader()I

    move-result p0

    return p0
.end method

.method static bridge synthetic I(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->handleBookMark()V

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->onDownScrolling()V

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->onUpScrolling()V

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/detail/FeedDetailFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(Z)V

    return-void
.end method

.method private allowBottomTooltip()Z
    .locals 1

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
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    return v0

    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 47
    return v0
.end method

.method private attachSBB()V
    .locals 12

    .line 1
    .line 2
    const-string v0, "key_continuous_feed_list"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "key_continuous_feed_api_request"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    const-string v1, "key_continuous_feed_list_timestamp"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    const-string v1, "key_continuous_feed_current_position"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 33
    move-result v6

    .line 34
    .line 35
    const-string v1, "key_continuous_feed_filter_feature"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 39
    move-result v7

    .line 40
    .line 41
    const-string v1, "key_continuous_feed_next_token"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v10

    .line 46
    .line 47
    const-string v1, "key_continuous_feed_page_size"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 51
    move-result v11

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->showBottomBar()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 60
    .line 61
    iget-boolean v9, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 62
    move-object v3, p0

    .line 63
    move-object v8, v0

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {v2 .. v11}, Lcom/narvii/feed/FeedContinuousViewer;->AttachFeedDetailFragment(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;ZLjava/lang/String;I)V

    .line 67
    .line 68
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$5;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/narvii/detail/FeedDetailFragment$5;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 72
    .line 73
    iput-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->bottomItemsClickListener:Landroid/view/View$OnClickListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->configureBottomBarEvent(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 83
    .line 84
    new-instance v2, Lcom/narvii/detail/FeedDetailFragment$6;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, p0}, Lcom/narvii/detail/FeedDetailFragment$6;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 93
    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    const-string v0, "fromLink"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->setGoNextButtonVisible(Z)V

    .line 109
    :cond_1
    return-void
.end method

.method private configLiverBar()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    instance-of v3, v3, Lcom/narvii/app/DrawerActivity;

    .line 24
    .line 25
    if-eqz v3, :cond_7

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/app/DrawerActivity;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->hasOnlineBar()Ljava/lang/Boolean;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    move v4, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v4, v2

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v3, v4}, Lcom/narvii/app/DrawerActivity;->setLiverLayerBarVisible(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    check-cast v3, Lcom/narvii/app/DrawerActivity;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->hasOnlineBar()Ljava/lang/Boolean;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    move-result v4

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v1, v2

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_2
    invoke-virtual {v3, v1}, Lcom/narvii/app/DrawerActivity;->setDisableCBB(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    instance-of v0, v0, Lcom/narvii/amino/HomeFragment;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    check-cast v0, Lcom/narvii/amino/HomeFragment;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lcom/narvii/amino/HomeFragment;->isFragmentSelected(Landroidx/fragment/app/Fragment;)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    .line 103
    move-result v0

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    const-string v0, "cbbHost"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    check-cast v0, Lcom/narvii/community/CBBHost;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 119
    move-result v1

    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    .line 125
    move-result v2

    .line 126
    .line 127
    .line 128
    :cond_5
    invoke-virtual {v0, v2}, Lcom/narvii/community/CBBHost;->setLift(I)V

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    const-string v0, "liveLayerHost"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 153
    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getOnlineBarLift()I

    .line 158
    move-result v1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 162
    .line 163
    :cond_7
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getOnlineBarLift()I

    .line 169
    move-result v1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 173
    :cond_8
    return-void
.end method

.method private getLiveLayerView()Lcom/narvii/widget/ProxyView;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    return-object v1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a080e

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/widget/ProxyView;

    .line 37
    return-object v0
.end method

.method private getPosOfCommentHeader()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    sget-object v3, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    return v1

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, -0x1

    .line 35
    return v0
.end method

.method private getSBBBlurOverlayColor(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/high16 p1, 0x3c000000    # 0.0078125f

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    const/16 v2, 0x64

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    const p1, -0x2f000001

    .line 34
    :goto_0
    return p1
.end method

.method private getVoteTooltipContainer()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    return-object v1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a07b8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method private handleBookMark()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "affiliations"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 9
    .line 10
    const-string v1, "__communityId"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, "Post Detail SBB"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const v2, 0x7f120808

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 42
    .line 43
    .line 44
    const v2, 0x7f1201e2

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    .line 50
    new-instance v2, Lcom/narvii/detail/FeedDetailFragment$15;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0, v1}, Lcom/narvii/detail/FeedDetailFragment$15;-><init>(Lcom/narvii/detail/FeedDetailFragment;I)V

    .line 54
    .line 55
    .line 56
    const v1, 0x7f120b53

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 63
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

    .line 15
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

    .line 16
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    .line 17
    invoke-static {p0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-ltz p5, :cond_1

    if-eqz p2, :cond_1

    .line 18
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

    .line 19
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_list_timestamp"

    .line 20
    invoke-virtual {p1, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_current_position"

    .line 21
    invoke-virtual {p1, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_next_token"

    .line 22
    invoke-virtual {p1, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_page_size"

    .line 23
    invoke-virtual {p1, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "key_continuous_feed_filter_feature"

    const/4 p2, 0x1

    .line 25
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method

.method public static intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/narvii/model/Blog;

    const-string v1, "prefetch"

    const-string v2, "id"

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/narvii/model/Blog;

    .line 3
    iget v0, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isAnnouncement"

    .line 8
    iget-boolean p0, p0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    .line 9
    :cond_1
    instance-of v0, p0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_2

    .line 10
    check-cast p0, Lcom/narvii/model/Item;

    const-class v0, Lcom/narvii/item/detail/ItemDetailFragment;

    .line 11
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_2
    if-eqz p0, :cond_3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown feed type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    .line 22
    :cond_1
    return-void
.end method

.method private synthetic lambda$onListViewCreated$5(Landroid/widget/ListView;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$9;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$9;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 15
    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$1()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "becomeFans"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 11
    return-void
.end method

.method private synthetic lambda$requestOnlineMembersOnThisPage$2(Z)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "prefs"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/SharedPreferences;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v2, "liveLayerFold"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    const-string v0, "liveLayerHost"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isTapping()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    .line 49
    const v2, 0x7f010037

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_3
    const v2, 0x7f010038

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_4
    const/16 v1, 0x8

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    .line 74
    xor-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(Z)V

    .line 78
    return-void
.end method

.method private synthetic lambda$requestOnlineMembersOnThisPage$3(Z)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f010038

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    const-string v0, "liveLayerHost"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 39
    const/4 p1, 0x1

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method private synthetic lambda$requestOnlineMembersOnThisPage$4(Lcom/narvii/model/api/UserListResponse;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/detail/a;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/detail/a;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnAvatarShownChangeListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/detail/b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/detail/b;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnFoldChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 32
    .line 33
    iget p1, p1, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->pageClickListener:Landroid/view/View$OnClickListener;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->subscribeTopic(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private loadNextPage()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedContinuousViewer;->loadNextFeed(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method private onDownScrolling()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/feed/FeedContinuousViewer;->hideBottomBar()V

    .line 6
    return-void
.end method

.method private onUpScrolling()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/feed/FeedContinuousViewer;->showBottomBar()V

    .line 6
    return-void
.end method

.method private requestOnlineMembersOnThisPage()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "liveLayer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/detail/d;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/narvii/detail/d;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 19
    .line 20
    const/16 v3, 0xa

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/narvii/livelayer/LiveLayerService;->requestOnlineMembers(Ljava/lang/String;IZLcom/narvii/util/Callback;)V

    .line 25
    return-void
.end method

.method public static safedk_Fragment_startActivity_bbf01433422f9a2703493ed5b15482ed(Landroidx/fragment/app/Fragment;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendNoInterestRequest(Lcom/narvii/model/Feed;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$16;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/narvii/detail/FeedDetailFragment$16;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/model/Feed;)V

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 20
    .line 21
    const-string v1, "content_language"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    .line 28
    .line 29
    .line 30
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    const-string v5, "headline/feedback/report"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    const-string v4, "type"

    .line 51
    const/4 v5, 0x1

    .line 52
    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    .line 60
    sget-object v4, La0/a;->o:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    .line 65
    const-string v2, "language"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    .line 74
    const-string v1, "__communityId"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    const-string v2, "ndcId"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    .line 89
    instance-of v1, p1, Lcom/narvii/model/Item;

    .line 90
    .line 91
    if-eqz v1, :cond_1

    .line 92
    const/4 v5, 0x2

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    const-string v2, "objectType"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    .line 103
    const-string v1, "objectId"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 111
    .line 112
    const-string p1, "channelId"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    const-string v1, "channel"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    .line 123
    const-string p1, "api"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    iget-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 142
    return-void
.end method

.method private shareFeed(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    .line 14
    const/4 v3, 0x6

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$12;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lcom/narvii/detail/FeedDetailFragment$12;-><init>(Lcom/narvii/detail/FeedDetailFragment;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v1, v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$13;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, p0, p1, v0}, Lcom/narvii/detail/FeedDetailFragment$13;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Feed;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method private shouldShowMemberOnThisPage()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    return v3

    .line 47
    :cond_1
    return v2
.end method

.method private showLiveLayer(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(ZZ)V

    return-void
.end method

.method private showLiveLayer(ZZ)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "liveLayerHost"

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 5
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_2

    const p1, 0x7f010037

    goto :goto_1

    :cond_2
    const p1, 0x7f010038

    :goto_1
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 7
    iget-object p2, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method

.method public static synthetic t(Lcom/narvii/detail/FeedDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/model/api/UserListResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->lambda$requestOnlineMembersOnThisPage$4(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method private updateListViewRoot()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->listViewRoot:Landroid/view/View;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    xor-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ScrollInterceptNestedFrameLayout;->setShouldInterceptScrollEvent(Z)V

    .line 18
    :cond_0
    return-void
.end method

.method private updatePrivateContentView()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->configLiverBar()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->updateFansOnlyMask()V

    .line 7
    return-void
.end method

.method public static synthetic v(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->lambda$onViewCreated$1()V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/detail/FeedDetailFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->lambda$requestOnlineMembersOnThisPage$3(Z)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/detail/FeedDetailFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->lambda$onListViewCreated$5(Landroid/widget/ListView;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersOnThisPage()V

    return-void
.end method

.method public static synthetic z(Lcom/narvii/detail/FeedDetailFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->lambda$requestOnlineMembersOnThisPage$2(Z)V

    return-void
.end method


# virtual methods
.method protected bookmark(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method protected bottomActionBroadCast()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/poweruser/PowerFeedHelper;->sendBroadCast()V

    .line 13
    return-void
.end method

.method protected bottomActionFeaturePost()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/PowerFeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method protected bottomActionGoNext()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->nextPost:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->loadNextPage()V

    .line 9
    return-void
.end method

.method protected bottomActionModMenu()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->showModerationDialog()V

    .line 4
    return-void
.end method

.method protected bottomActionShare()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Post Detail SBB"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->shareFeed(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method protected bottomActionTipping()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->prop:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipDone()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowLoginPage()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/narvii/tipping/TippingHelper;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    const-string v1, "SBB"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getPublishNdcId()I

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lcom/narvii/detail/FeedDetailFragment;->getCommunity(I)Lcom/narvii/model/Community;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 55
    :goto_0
    return-void
.end method

.method protected bottomActionVote()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    const/4 v0, 0x4

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/detail/FeedDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v3, "voteFromBottom"

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 43
    .line 44
    const-string v1, "statistics"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v3, "Like Post"

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    const-string v3, "SBB"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const-string v2, "post_type"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    const-string v1, "Page Detailed View"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    const-string v1, "Likes Total"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v0}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->unVote()V

    .line 91
    :goto_0
    return-void
.end method

.method protected bottomComment()V
    .locals 0

    return-void
.end method

.method protected checkCommunityJoined()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "__community"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/Community;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/model/Community;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/community/JoinCommunityDialog;->join(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)Landroid/app/Dialog;

    .line 36
    :goto_0
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    return v0
.end method

.method protected fansOnlyPostMarginBottom()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0700c5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 26
    :cond_1
    return v1
.end method

.method protected getAdView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "ItemDetailFragment"

    .line 7
    .line 8
    const-string v1, "MediaLab MedRect - Returning old ad view"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string p1, "FeedDetailFragment"

    .line 25
    .line 26
    const-string v0, "MediaLab MedRect - New ad view ready"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    const v0, 0x7f070056

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result p1

    .line 45
    .line 46
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .line 48
    mul-int/lit8 p1, p1, 0x2

    .line 49
    .line 50
    sget-object v1, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lai/medialab/medialabads2/data/AdSize;->getHeightPx(Landroid/content/Context;)I

    .line 58
    move-result v1

    .line 59
    add-int/2addr p1, v1

    .line 60
    const/4 v1, -0x1

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/util/MLUtilsKt;->centerMRECView(Lai/medialab/medialabads2/banners/MediaLabAdView;)Lw7/l0;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 76
    :cond_1
    return-object p1
.end method

.method protected getCommunity(I)Lcom/narvii/model/Community;
    .locals 1

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "__community"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-class v0, Lcom/narvii/model/Community;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/model/Community;

    .line 29
    :cond_0
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getDetailNVObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFeed()Lcom/narvii/model/Feed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Feed;

    .line 15
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
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->showBottomBar()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/feed/FeedContinuousViewer;->isFeedBottomBarVisible()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0701b7

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const/high16 v2, 0x41200000    # 10.0f

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 42
    move-result v1

    .line 43
    sub-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    .line 49
    move-result v0

    .line 50
    :goto_0
    return v0
.end method

.method protected getPublishNdcId()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 11
    .line 12
    instance-of v2, v0, Lcom/narvii/model/Blog;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/Blog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x44ffffff    # 2047.9999f

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->getSelectorDarkColor()I

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
    return-object v0
.end method

.method protected isCurrentUserNotJoined()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v1, "prefetch"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/model/Feed;

    .line 40
    .line 41
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    return v2

    .line 46
    .line 47
    :cond_1
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    return v2

    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    xor-int/lit8 v0, v0, 0x1

    .line 61
    return v0

    .line 62
    :cond_3
    return v2

    .line 63
    .line 64
    :cond_4
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 68
    move-result v0

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    xor-int/lit8 v0, v0, 0x1

    .line 77
    return v0
.end method

.method protected isMeAccessibleToThisPost()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public isMine()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public isMineWithCommunityCheck()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v0, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-ne v0, v3, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1
.end method

.method protected isTippingTooltipDone()Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "prefs"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/SharedPreferences;

    .line 9
    .line 10
    const-string v1, "tooltip_tipping_done"

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method protected newPreview()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 8
    move-result-object v0

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

.method public onActiveChanged(Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "liveLayerHost"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/livelayer/LiveLayerHost;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->pageClickListener:Landroid/view/View$OnClickListener;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerHost;->onClickListener:Landroid/view/View$OnClickListener;

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->shouldShowMemberOnThisPage()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnFoldChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;)V

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    const-string v0, "prefs"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/content/SharedPreferences;

    .line 57
    .line 58
    const-string v1, "liveLayerFold"

    .line 59
    const/4 v2, 0x0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const/4 v0, 0x1

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0, v2}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(ZZ)V

    .line 77
    .line 78
    :cond_3
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 82
    move-result v0

    .line 83
    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isAvatarShown()Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v2, v2}, Lcom/narvii/detail/FeedDetailFragment;->showLiveLayer(ZZ)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tryReportActiveStatus()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 102
    move-result v0

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->hasPostEntry()Ljava/lang/Boolean;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    move-result v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/narvii/app/DrawerActivity;->updatePostEntryFrameVisible(Z)V

    .line 130
    .line 131
    :cond_5
    if-eqz p1, :cond_6

    .line 132
    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    move-result-wide v0

    .line 136
    .line 137
    iput-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    .line 138
    goto :goto_2

    .line 139
    .line 140
    :cond_6
    iget-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastDuration:J

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    move-result-wide v2

    .line 145
    .line 146
    iget-wide v4, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    .line 147
    sub-long/2addr v2, v4

    .line 148
    add-long/2addr v0, v2

    .line 149
    .line 150
    iput-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastDuration:J

    .line 151
    .line 152
    :goto_2
    if-eqz p1, :cond_7

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->configLiverBar()V

    .line 156
    .line 157
    iget-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipNextActive:Z

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipRunnable:Ljava/lang/Runnable;

    .line 162
    .line 163
    const-wide/16 v0, 0x1f4

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 167
    goto :goto_3

    .line 168
    .line 169
    :cond_7
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipRunnable:Ljava/lang/Runnable;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_8
    :goto_3
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 25
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getLiveLayerTopic()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, ":"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    .line 47
    .line 48
    new-instance p1, Lcom/narvii/feed/FeedContinuousViewer;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1}, Lcom/narvii/feed/FeedContinuousViewer;-><init>()V

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 54
    .line 55
    const-string p1, "affiliations"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    .line 67
    move-result p1

    .line 68
    .line 69
    iput-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-nez p1, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 79
    move-result-object p1

    .line 80
    const/4 v0, 0x3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 84
    .line 85
    :cond_0
    const-string p1, "fromHeadline"

    .line 86
    const/4 v0, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 90
    move-result p1

    .line 91
    .line 92
    iput-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 93
    .line 94
    const-string p1, "key_hide_bottom_bar"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 98
    move-result p1

    .line 99
    .line 100
    iput-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->hideBottomBar:Z

    .line 101
    .line 102
    new-instance p1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 108
    .line 109
    iget-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 110
    const/4 v0, 0x1

    .line 111
    .line 112
    if-nez p1, :cond_1

    .line 113
    .line 114
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 115
    .line 116
    if-nez p1, :cond_1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 120
    .line 121
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 122
    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 127
    move-result p1

    .line 128
    .line 129
    if-eqz p1, :cond_2

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    const-string v1, "communityNavBar"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    if-nez p1, :cond_2

    .line 142
    .line 143
    new-instance p1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 144
    .line 145
    .line 146
    invoke-direct {p1}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    .line 147
    .line 148
    new-instance v2, Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    const-string v3, "showBackButton"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    const v2, 0x1020002

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 178
    .line 179
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 183
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f1210ad

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f120ff9

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f120349

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    const v0, 0x7f120438

    .line 39
    const/4 v1, 0x5

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 43
    .line 44
    .line 45
    const v0, 0x7f1203a0

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f120781

    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0249

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
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->unsubscribeTopic()V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->preferenceHelper:Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->getPrefs()Landroid/content/SharedPreferences;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->onSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    iget-wide v0, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long v0, v0, v2

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    move-wide v0, v2

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    iget-wide v4, p0, Lcom/narvii/detail/FeedDetailFragment;->lastEnterTime:J

    .line 64
    sub-long/2addr v0, v4

    .line 65
    .line 66
    :goto_0
    iget-wide v4, p0, Lcom/narvii/detail/FeedDetailFragment;->lastDuration:J

    .line 67
    add-long/2addr v4, v0

    .line 68
    .line 69
    iget-object v6, p0, Lcom/narvii/detail/FeedDetailFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 73
    move-result-object v7

    .line 74
    .line 75
    cmp-long v0, v4, v2

    .line 76
    .line 77
    if-lez v0, :cond_4

    .line 78
    move-wide v8, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-wide v8, v2

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iget-boolean v0, v0, Lcom/narvii/detail/FeedDetailAdapter;->touchFeedContentEnd:Z

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    const/16 v0, 0x64

    .line 97
    :goto_2
    move v10, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const/4 v0, 0x0

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :goto_3
    const-string v0, "channelId"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v11

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {v6 .. v11}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logPostDetailViewQuit(Lcom/narvii/model/Feed;JILjava/lang/String;)V

    .line 110
    :cond_6
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0e12

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->removeFriendlyObstruction(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroyView()V

    .line 32
    return-void
.end method

.method public onFeedObjectResponse()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipTried:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipTried:Z

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$7;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$7;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 14
    .line 15
    const-wide/16 v1, 0xbb8

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 19
    return-void
.end method

.method protected onHoveItemCreated(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->getSBBBlurOverlayColor(I)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v4

    .line 42
    .line 43
    const/high16 v5, 0x40000000    # 2.0f

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    move-result v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v3

    .line 52
    .line 53
    const/high16 v5, -0x80000000

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoveFrameMarginTop()I

    .line 68
    move-result v4

    .line 69
    add-int/2addr v3, v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 73
    move-result v4

    .line 74
    add-int/2addr v3, v4

    .line 75
    .line 76
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    .line 78
    iget-object v3, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    .line 84
    .line 85
    if-eqz v2, :cond_2

    .line 86
    move-object v2, p1

    .line 87
    .line 88
    check-cast v2, Landroid/view/ViewGroup;

    .line 89
    move v3, v1

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 93
    move-result v4

    .line 94
    .line 95
    if-ge v3, v4, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    move-result-object v4

    .line 100
    const/4 v5, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 111
    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :cond_2
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->addCommentClickListener:Landroid/view/View$OnClickListener;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 129
    :cond_3
    return-void
.end method

.method protected onHoverRecycled()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onHoverRecycled()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    instance-of p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    const-string v0, "inBlogDetail"

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    const-string v0, "preview"

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p0}, Lcom/narvii/list/NVListFragment;->setHoverAdapter(Lcom/narvii/list/HoverAdapter;)V

    .line 29
    .line 30
    new-instance p2, Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->preferenceHelper:Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 40
    .line 41
    new-instance p2, Lcom/narvii/detail/c;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p0, p1}, Lcom/narvii/detail/c;-><init>(Lcom/narvii/detail/FeedDetailFragment;Landroid/widget/ListView;)V

    .line 45
    .line 46
    const-wide/16 v0, 0xc8

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->attachSBB()V

    .line 53
    .line 54
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget-boolean p2, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->logggingListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 68
    :cond_1
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    const-string v0, "becomeFans"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    const v1, 0x7f1211ab

    .line 91
    const/4 v2, 0x1

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    const-string v1, "Page Detailed View"

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "delete"

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 30
    .line 31
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/influencer/FanClub;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/narvii/model/Feed;->needHidden:Z

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    const-string v0, "account"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 93
    move-result-object p1

    .line 94
    const/4 v0, 0x0

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iput-boolean v0, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    const/16 v1, 0x8

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 128
    move-result-object p1

    .line 129
    const/4 v1, 0x0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0, v1}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 133
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :sswitch_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 19
    .line 20
    const-string p1, "Post Detail Navbar"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->shareFeed(Ljava/lang/String;)V

    .line 24
    return v1

    .line 25
    .line 26
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->repost:Lcom/narvii/logging/ActSemantic;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 30
    .line 31
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    const-string v0, "Navbar"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    .line 48
    return v1

    .line 49
    .line 50
    :sswitch_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->flag:Lcom/narvii/logging/ActSemantic;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 54
    .line 55
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    .line 66
    return v1

    .line 67
    .line 68
    :sswitch_3
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 72
    .line 73
    const-string v0, "Post Detail View"

    .line 74
    .line 75
    iput-object v0, p1, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    .line 76
    .line 77
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 78
    .line 79
    iput-object v0, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    .line 87
    return v1

    .line 88
    .line 89
    :sswitch_4
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 96
    move-result-object v0

    .line 97
    const/4 v2, 0x0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v2}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    .line 101
    return v1

    .line 102
    .line 103
    :sswitch_5
    sget-object p1, Lcom/narvii/logging/ActSemantic;->copyLink:Lcom/narvii/logging/ActSemantic;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    .line 107
    .line 108
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 112
    .line 113
    const-string v0, "Post Detail Menu"

    .line 114
    .line 115
    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    .line 123
    return v1

    .line 124
    nop

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :sswitch_data_0
    .sparse-switch
        0x7f120349 -> :sswitch_5
        0x7f1203a0 -> :sswitch_4
        0x7f120438 -> :sswitch_3
        0x7f120781 -> :sswitch_2
        0x7f120ff9 -> :sswitch_1
        0x7f1210ad -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v3, v0, Lcom/narvii/model/Feed;->status:I

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    move v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    .line 35
    move-result v4

    .line 36
    .line 37
    xor-int/lit8 v5, v4, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    move v4, v2

    .line 40
    move v5, v4

    .line 41
    .line 42
    .line 43
    :goto_2
    const v6, 0x7f1210ad

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 47
    move-result-object v6

    .line 48
    .line 49
    .line 50
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    const v6, 0x7f120349

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 57
    move-result-object v6

    .line 58
    .line 59
    .line 60
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 61
    .line 62
    .line 63
    const v6, 0x7f120ff9

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    if-eqz v5, :cond_3

    .line 72
    move v7, v1

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v7, v2

    .line 75
    .line 76
    .line 77
    :goto_3
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    const v6, 0x7f120438

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 84
    move-result-object v6

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    if-eqz v4, :cond_4

    .line 89
    move v7, v1

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move v7, v2

    .line 92
    .line 93
    .line 94
    :goto_4
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    .line 96
    .line 97
    const v6, 0x7f1203a0

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    if-eqz v4, :cond_5

    .line 106
    move v0, v1

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    move v0, v2

    .line 109
    .line 110
    .line 111
    :goto_5
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    .line 113
    .line 114
    const v0, 0x7f120781

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    if-eqz v5, :cond_6

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    move v1, v2

    .line 125
    .line 126
    .line 127
    :goto_6
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0ab2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a07fe

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->listViewRoot:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/detail/FeedDetailFragment$4;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/detail/FeedDetailFragment$4;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0abf

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    check-cast p2, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getOnlineBarLift()I

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 65
    .line 66
    new-instance p2, Lcom/narvii/detail/g;

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p0}, Lcom/narvii/detail/g;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 70
    .line 71
    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersRunnable:Ljava/lang/Runnable;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->shouldShowMemberOnThisPage()Z

    .line 75
    move-result p2

    .line 76
    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersRunnable:Ljava/lang/Runnable;

    .line 80
    .line 81
    const-wide/16 v0, 0x7d0

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 85
    .line 86
    .line 87
    :cond_0
    const p2, 0x7f0a0561

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    check-cast p2, Lcom/narvii/influencer/FansOnlyPostMask;

    .line 94
    .line 95
    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 96
    .line 97
    new-instance v0, Lcom/narvii/detail/h;

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/narvii/detail/h;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->setBecomeFansClickListener(Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updatePrivateContentView()V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updateListViewRoot()V

    .line 110
    .line 111
    .line 112
    const p2, 0x7f0a0e12

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iget-object p2, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 119
    .line 120
    if-eqz p2, :cond_1

    .line 121
    .line 122
    if-eqz p1, :cond_1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->addFriendlyObstruction(Landroid/view/View;)V

    .line 126
    :cond_1
    return-void
.end method

.method protected onVoteClicked()V
    .locals 0

    return-void
.end method

.method protected sendFeedUpdateGlobalNotification(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 9
    .line 10
    const-string v1, "update"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v1, "notification"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/logging/LogUtils;->optionMenuClickArea:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    const-string v1, "HeaderArea"

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 35
    return-void
.end method

.method protected sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "BottomArea"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 22
    return-void
.end method

.method protected setSectionHeaderTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isCurrentUserNotJoined()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 7
    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    instance-of v0, p1, Lcom/narvii/model/Media;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/narvii/detail/FeedDetailAdapter;->SHARE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    return v1

    .line 20
    .line 21
    :cond_1
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    return v1

    .line 25
    .line 26
    :cond_2
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 27
    .line 28
    if-ne p1, v0, :cond_3

    .line 29
    return v1

    .line 30
    .line 31
    :cond_3
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 32
    .line 33
    if-ne p1, v0, :cond_4

    .line 34
    return v1

    .line 35
    .line 36
    :cond_4
    instance-of v0, p1, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    return v1

    .line 40
    .line 41
    :cond_5
    instance-of p1, p1, Lcom/narvii/model/Comment;

    .line 42
    .line 43
    if-eqz p1, :cond_6

    .line 44
    return v1

    .line 45
    .line 46
    :cond_6
    const-string p1, "__community"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-class v0, Lcom/narvii/model/Community;

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/model/Community;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_7
    invoke-static {p0, p1}, Lcom/narvii/community/JoinCommunityDialog;->join(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)Landroid/app/Dialog;

    .line 72
    :goto_0
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    .line 75
    .line 76
    :cond_8
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method protected showBottomBar()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->hideBottomBar:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/narvii/feed/FeedHelper;->isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method protected showModerationDialog()V
    .locals 0

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->safedk_Fragment_startActivity_bbf01433422f9a2703493ed5b15482ed(Landroidx/fragment/app/Fragment;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method protected tippingTooltipDone()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 8
    .line 9
    :cond_0
    const-string v0, "prefs"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "tooltip_tipping_done"

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    return-void
.end method

.method protected tryReportActiveStatus()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "eventOrigin"

    .line 7
    .line 8
    const-string v2, "loggingOrigin"

    .line 9
    .line 10
    const-string v3, "liveLayer"

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 15
    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    const-string v0, "config"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->objectType()I

    .line 75
    move-result v4

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v4, "/"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    iput-object v3, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    instance-of v3, v3, Lcom/narvii/model/Blog;

    .line 107
    .line 108
    if-eqz v3, :cond_0

    .line 109
    .line 110
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    check-cast v4, Lcom/narvii/model/Blog;

    .line 117
    .line 118
    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    const-string v5, "blogType"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    if-eqz v2, :cond_1

    .line 134
    .line 135
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    :cond_1
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 148
    goto :goto_0

    .line 149
    .line 150
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    if-eqz v2, :cond_3

    .line 165
    .line 166
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    :cond_3
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    .line 172
    .line 173
    iget-object v2, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v3, p0, Lcom/narvii/detail/DetailFragment;->params:Ljava/util/HashMap;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 179
    const/4 v0, 0x0

    .line 180
    .line 181
    iput-object v0, p0, Lcom/narvii/detail/DetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 182
    :cond_4
    :goto_0
    return-void
.end method

.method protected tryShowTippingTooltip()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipNextActive:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->allowBottomTooltip()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    const-string v0, "account"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    return-void

    .line 33
    .line 34
    :cond_2
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 35
    .line 36
    if-nez v2, :cond_5

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 39
    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    iget-object v2, v2, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isTippingTooltipDone()Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    iget v2, v1, Lcom/narvii/model/Feed;->status:I

    .line 53
    .line 54
    const/16 v3, 0x9

    .line 55
    .line 56
    if-eq v2, v3, :cond_5

    .line 57
    .line 58
    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/narvii/feed/FeedContinuousViewer;->bottomView:Lcom/narvii/widget/FeedBottomLayout;

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a01fe

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-nez v1, :cond_3

    .line 88
    const/4 v0, 0x1

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->checkTooltipNextActive:Z

    .line 91
    return-void

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-nez v1, :cond_4

    .line 98
    return-void

    .line 99
    .line 100
    .line 101
    :cond_4
    const v1, 0x7f1211bd

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->getVoteTooltipContainer()Landroid/view/View;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->text(Ljava/lang/String;)Lcom/narvii/util/Tooltip$Builder;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$8;

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, p0}, Lcom/narvii/detail/FeedDetailFragment$8;-><init>(Lcom/narvii/detail/FeedDetailFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    new-instance v1, Lcom/narvii/util/ToolTipHelper;

    .line 141
    .line 142
    .line 143
    invoke-direct {v1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    .line 144
    .line 145
    iput-object v1, p0, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 149
    :cond_5
    return-void
.end method

.method protected unVote()V
    .locals 0

    return-void
.end method

.method protected updateFansOnlyMask()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_2
    :goto_0
    const/16 v1, 0x8

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    const/4 v1, 0x0

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 70
    .line 71
    .line 72
    :goto_2
    invoke-virtual {v0, v1}, Lcom/narvii/influencer/FansOnlyPostMask;->setAuthor(Lcom/narvii/model/User;)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMask:Lcom/narvii/influencer/FansOnlyPostMask;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->fansOnlyPostMarginBottom()I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/narvii/influencer/FansOnlyPostMask;->setMarginBottomHeight(I)V

    .line 82
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a0c69

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v1, v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->getSBBBlurOverlayColor(I)I

    .line 31
    move-result p1

    .line 32
    move-object v1, v0

    .line 33
    .line 34
    check-cast v1, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->setDarkTheme(Z)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 52
    .line 53
    const-string v0, "fromLink"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    xor-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->setGoNextButtonEnable(Z)V

    .line 63
    :cond_1
    return-void
.end method

.method protected updateViews()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updatePrivateContentView()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;->updateListViewRoot()V

    .line 10
    return-void
.end method

.method protected updateteBottomLayout(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/feed/FeedContinuousViewer;->updateBottomView(III)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/narvii/detail/DetailAdapter;->allowTipping(Z)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedContinuousViewer;->showTipping(Z)V

    .line 43
    :cond_1
    return-void
.end method

.method protected vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
    .locals 0

    return-void
.end method

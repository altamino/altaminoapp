.class public Lcom/narvii/master/MasterTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;
.implements Lcom/narvii/notification/NotificationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;
.implements Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;


# static fields
.field public static final INDEX_CHAT:I = 0x2

.field public static final INDEX_DISCOVER:I = 0x0

.field public static final INDEX_MY_COMMUNITY:I = 0x1

.field public static final INDEX_PROFILE:I = 0x4

.field public static final INDEX_STORE:I = 0x3

.field public static final INITIAL_INDEX:I = -0x1


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private alertBadge:Landroid/view/View;

.field private avatarLayout:Landroid/view/View;

.field public bottomSheetLayout:Landroid/widget/FrameLayout;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private defaultIndex:Ljava/lang/Integer;

.field eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

.field public isTopBarAvailable:Z

.field languageManager:Lcom/narvii/language/LanguageManager;

.field languagePickListener:Landroid/view/View$OnClickListener;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field public masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

.field private masterTabTopOffset:Landroid/view/View;

.field masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/master/MasterAppearanceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private masterTopBar:Lcom/narvii/master/MasterTopBar;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field private noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

.field pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/master/MasterTabFragment$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/master/MasterTabFragment$1;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/master/t;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/master/t;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languagePickListener:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/master/MasterTabFragment$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/master/MasterTabFragment$2;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 35
    return-void
.end method

.method private getDefaultLandingIndex()Ljava/lang/Integer;
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getLandingPos()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_1
    const/4 v1, 0x4

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method private getDefaultTabIndex(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 30
    move-result v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    sub-int/2addr v0, p1

    .line 34
    return v0

    .line 35
    :cond_1
    return p1
.end method

.method private getMyCommunityIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/incubator/ContentLanguagePickHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/incubator/ContentLanguagePickHelper;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/incubator/ContentLanguagePickHelper;->showLanguagePickerDialog(Lcom/narvii/app/NVActivity;)V

    .line 15
    return-void
.end method

.method private static synthetic lambda$onViewCreated$0(Ljava/lang/Integer;Lcom/narvii/master/MasterAppearanceChangedListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/narvii/master/MasterAppearanceChangedListener;->onMasterAppearanceChanged(I)V

    .line 8
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/Integer;)Lw7/l0;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/master/q;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p3}, Lcom/narvii/master/q;-><init>(Ljava/lang/Integer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/PaletteUtils;->isLightTone(Landroid/widget/ImageView;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const/16 p1, 0x8

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :goto_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "ComposeIcon"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method

.method private logNavigationToProfileEvent()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "ProfileIcon"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    const-string v0, "global-profile"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterTabFragment;->sendEvent(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static synthetic n(Lcom/narvii/master/MasterTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/master/MasterTabFragment;Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/Integer;)Lw7/l0;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/MasterTabFragment;->lambda$onViewCreated$1(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/Integer;)Lw7/l0;

    move-result-object p0

    return-object p0
.end method

.method private onTabClicked(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-ne v0, p1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-ne p1, v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    instance-of v0, v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing()Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    instance-of v2, v2, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    instance-of v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 82
    move-result v3

    .line 83
    .line 84
    const/16 v4, 0x14

    .line 85
    .line 86
    if-ge v3, v4, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 110
    move-result v0

    .line 111
    .line 112
    if-ne p1, v0, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    instance-of v0, v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    check-cast v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay()Z

    .line 130
    move-result v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/master/MasterTabFragment;->setBottomTabOverlay(Z)V

    .line 134
    goto :goto_1

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0, v1}, Lcom/narvii/master/MasterTabFragment;->setBottomTabOverlay(Z)V

    .line 138
    :goto_1
    const/4 v0, 0x4

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 142
    move-result v0

    .line 143
    .line 144
    if-ne p1, v0, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    instance-of v0, v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    check-cast v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->tryOpenSetBirthday()V

    .line 162
    .line 163
    :cond_4
    const-string v0, "account"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 170
    const/4 v2, 0x3

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 174
    move-result v3

    .line 175
    .line 176
    if-ne p1, v3, :cond_5

    .line 177
    .line 178
    const/16 v1, 0x8

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 182
    move-result v0

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v1, v0}, Lcom/narvii/master/MasterTabFragment;->setTopBarElementsVisibility(IZ)V

    .line 186
    goto :goto_2

    .line 187
    .line 188
    .line 189
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 190
    move-result v0

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v1, v0}, Lcom/narvii/master/MasterTabFragment;->setTopBarElementsVisibility(IZ)V

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 197
    move-result v0

    .line 198
    .line 199
    if-ne p1, v0, :cond_6

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 203
    move-result-object p1

    .line 204
    .line 205
    const-string v0, "/store/sections"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 209
    .line 210
    const-string v0, "api"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 220
    move-result-object p1

    .line 221
    const/4 v1, 0x0

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->removeStoreBadged()V

    .line 228
    :cond_6
    return-void
.end method

.method private openLogin()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/narvii/master/MasterTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 15
    return-void
.end method

.method public static synthetic p(Lcom/narvii/master/MasterTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/Integer;Lcom/narvii/master/MasterAppearanceChangedListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/MasterTabFragment;->lambda$onViewCreated$0(Ljava/lang/Integer;Lcom/narvii/master/MasterAppearanceChangedListener;)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p0
.end method

.method public static safedk_Context_startActivity_0c4df6808b5c0cfc92f23c850e40a674(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

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

.method private sendContentLanguageRequest()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->languageStoredInThisDevice()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "client-config/content-language-settings"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    const-string v3, "language"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "api"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 45
    .line 46
    new-instance v3, Lcom/narvii/master/MasterTabFragment$3;

    .line 47
    .line 48
    const-class v4, Lcom/narvii/master/ContentLanguageSettingResponse;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/master/MasterTabFragment$3;-><init>(Lcom/narvii/master/MasterTabFragment;Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 55
    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    .line 10
    const-string v1, "Nav Click Global"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "global_nav_button"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 24
    return-void
.end method

.method private sendGlobalConfigRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/community/configuration"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "api"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/master/MasterTabFragment$4;

    .line 29
    .line 30
    const-class v3, Lcom/narvii/community/request/ConfigurationApiResponse;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/MasterTabFragment$4;-><init>(Lcom/narvii/master/MasterTabFragment;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 37
    return-void
.end method

.method private sendGlobalProfileRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileHelper;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;Z)V

    .line 28
    return-void
.end method

.method private statisticsEvent(I)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const-string p1, "Global Chats Tab Opened"

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "Global Chats Tab Opened Total"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 27
    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/master/MasterTabFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    return-object p0
.end method

.method private updateContentLanguage()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithEnAsDefault()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/narvii/master/MasterTopBar;->setContentLanguage(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method private updateGlobalNoticeBadge()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->alertBadge:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    const/4 v1, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/master/MasterTopBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/util/PreferencesHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/master/MasterTabFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment;->statisticsEvent(I)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateContentLanguage()V

    return-void
.end method


# virtual methods
.method public addMasterThemeChangedListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 16
    move-result v5

    .line 17
    .line 18
    if-le v5, v4, :cond_0

    .line 19
    move v5, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v5, v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 32
    move-result v5

    .line 33
    .line 34
    if-le v5, v4, :cond_2

    .line 35
    move v2, v3

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_3
    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public defaultTabIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterTabFragment;->getDefaultTabIndex(I)I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterTabFragment;->getDefaultTabIndex(I)I

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class p1, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    return-object p1

    :cond_1
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    return-object p1

    :cond_2
    const-class p1, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    return-object p1

    :cond_3
    const-class p1, Lcom/narvii/master/home/MyAminosFragment;

    return-object p1

    :cond_4
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    return-object p1
.end method

.method public getMasterTabTopOffset()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    return-object v0
.end method

.method public getMasterTopBar()Lcom/narvii/master/MasterTopBar;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "home"

    return-object v0
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    const p1, 0x7f1203ff

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    const p1, 0x7f12030a

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    :cond_1
    return-object v1

    .line 31
    :cond_2
    const/4 v0, 0x2

    .line 32
    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    .line 36
    const p1, 0x7f12028d

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_3
    const/4 v0, 0x4

    .line 43
    .line 44
    if-ne p1, v0, :cond_4

    .line 45
    .line 46
    .line 47
    const p1, 0x7f120c2a

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_4
    const/4 v0, 0x3

    .line 54
    .line 55
    if-ne p1, v0, :cond_5

    .line 56
    .line 57
    .line 58
    const p1, 0x7f121144

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_5
    return-object v1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    new-instance p2, Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    return-object p2
.end method

.method public gotoDefaultTab()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->getDefaultLandingIndex()Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->defaultTabIndex()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    .line 14
    return-void
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->setActive(Z)V

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    .line 19
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/narvii/master/widget/MasterBottomBar;->setShowLiveTooltipExpired(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    instance-of v3, v1, Lcom/narvii/app/FragmentOnBackListener;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    if-eq v1, p0, :cond_0

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/app/FragmentOnBackListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v3}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    instance-of v0, v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, p1}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_2
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a00f4

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const-string p1, "notifications"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment;->sendEvent(Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "AlertIcon"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 31
    .line 32
    const-class p1, Lcom/narvii/notice/AggregationNoticeFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-string v0, "forceRefreshReminder"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/narvii/master/MasterTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    .line 49
    :cond_0
    const v0, 0x7f0a0928

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->logNavigationToProfileEvent()V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->openGlobalProfile()V

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->openLogin()V

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    .line 75
    :cond_2
    const v0, 0x7f0a0f36

    .line 76
    .line 77
    if-ne p1, v0, :cond_3

    .line 78
    .line 79
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    const-string v0, "UserIcon"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->openGlobalProfile()V

    .line 106
    goto :goto_2

    .line 107
    .line 108
    .line 109
    :cond_3
    const v0, 0x7f0a0ca5

    .line 110
    .line 111
    if-ne p1, v0, :cond_7

    .line 112
    .line 113
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 114
    .line 115
    .line 116
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    const-string v0, "GlobalSearch"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 127
    .line 128
    new-instance p1, Lcom/narvii/community/search/MasterThemeHelper;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 139
    .line 140
    const-class p1, Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 148
    move-result v0

    .line 149
    const/4 v2, 0x2

    .line 150
    .line 151
    if-ne v0, v2, :cond_4

    .line 152
    .line 153
    const-string v0, "Global Chats"

    .line 154
    goto :goto_0

    .line 155
    .line 156
    :cond_4
    const-string v0, "My Community List"

    .line 157
    .line 158
    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 160
    move-result v3

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 164
    move-result v3

    .line 165
    .line 166
    const-string v4, "tab"

    .line 167
    .line 168
    if-eq v3, v1, :cond_6

    .line 169
    .line 170
    if-eq v3, v2, :cond_5

    .line 171
    goto :goto_1

    .line 172
    .line 173
    :cond_5
    const-string v1, "chat"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    goto :goto_1

    .line 178
    .line 179
    :cond_6
    const-string v1, "community"

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    .line 184
    :goto_1
    const-string v1, "Source"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    invoke-static {p0, p1}, Lcom/narvii/master/MasterTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    const v0, 0x7f010037

    .line 198
    .line 199
    .line 200
    const v1, 0x7f010038

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 204
    :cond_7
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "content_language"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 17
    .line 18
    const-string v0, "chat"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/chat/core/ChatService;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 30
    .line 31
    const-string v1, "account"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 40
    .line 41
    const-string v1, "membership"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 50
    const/4 v2, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 54
    .line 55
    const-string v1, "language"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/language/LanguageManager;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 64
    .line 65
    const-string v1, "eventLogProfile"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    check-cast v1, Lcom/narvii/services/EventLogProfileService;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 74
    .line 75
    const-string v1, "_notice"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 84
    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    .line 94
    .line 95
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->addReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    .line 99
    .line 100
    :cond_0
    new-instance v1, Lcom/narvii/util/PreferencesHelper;

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 104
    .line 105
    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 106
    .line 107
    const-string v1, "tab"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    const-string v2, "my"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v2

    .line 118
    .line 119
    if-eqz v2, :cond_1

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->getMyCommunityIndex()I

    .line 123
    move-result v0

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 130
    goto :goto_0

    .line 131
    .line 132
    .line 133
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v0

    .line 135
    .line 136
    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x2

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 144
    goto :goto_0

    .line 145
    .line 146
    :cond_2
    const-string v0, "discover"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v0

    .line 151
    .line 152
    if-eqz v0, :cond_3

    .line 153
    const/4 v0, 0x0

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 160
    goto :goto_0

    .line 161
    .line 162
    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->getDefaultLandingIndex()Ljava/lang/Integer;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 167
    .line 168
    :goto_0
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 169
    .line 170
    const/16 v1, 0x64

    .line 171
    .line 172
    if-ne v0, v1, :cond_4

    .line 173
    .line 174
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 175
    .line 176
    new-instance v1, Landroid/content/IntentFilter;

    .line 177
    .line 178
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 185
    .line 186
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 187
    .line 188
    new-instance v1, Landroid/content/IntentFilter;

    .line 189
    .line 190
    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 191
    .line 192
    .line 193
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 197
    .line 198
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 199
    .line 200
    new-instance v1, Landroid/content/IntentFilter;

    .line 201
    .line 202
    const-string v2, "com.narvii.action.WALLET_CHANGED"

    .line 203
    .line 204
    .line 205
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 209
    .line 210
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 211
    .line 212
    new-instance v1, Landroid/content/IntentFilter;

    .line 213
    .line 214
    const-string v2, "com.narvii.action.COUPONS_CHANGED"

    .line 215
    .line 216
    .line 217
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->sendGlobalProfileRequest()V

    .line 224
    .line 225
    if-eqz p1, :cond_5

    .line 226
    .line 227
    const-string v0, "isTopBarAvailable"

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 231
    move-result p1

    .line 232
    .line 233
    iput-boolean p1, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 234
    :cond_5
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
    const p3, 0x7f0d039b

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
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->removeReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 27
    .line 28
    :cond_2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 29
    .line 30
    const/16 v1, 0x64

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/narvii/chat/core/ChatService;->removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 43
    return-void
.end method

.method public onHasReminderChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateGlobalNoticeBadge()V

    .line 4
    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateContentLanguage()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter(I)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomBar;->sectionChange()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateGlobalNoticeBadge()V

    .line 12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "isTopBarAvailable"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomBar;->checkGoLiveAndCommunityVisibility()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/master/MasterTopBar;->setUser(Lcom/narvii/model/User;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->setWalletVisible()V

    .line 39
    :cond_0
    return-void
.end method

.method public onTabSelected(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/MasterTabFragment;->selectTab(I)V

    .line 4
    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->getAllUnreadThreadCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/master/widget/MasterBottomBar;->setUnreadChatMessage(Z)V

    .line 19
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0ca5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const v0, 0x7f0a00f4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const v0, 0x7f0a00f6

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->alertBadge:Landroid/view/View;

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0928

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    const v0, 0x7f0a0f36

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    const v2, 0x7f0a0851

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    iput-object v2, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    const v2, 0x7f0a0852

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    check-cast v2, Lcom/narvii/master/MasterTopBar;

    .line 89
    .line 90
    iput-object v2, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->avatarLayout:Landroid/view/View;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->sendContentLanguageRequest()V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateContentLanguage()V

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment;->languagePickListener:Landroid/view/View$OnClickListener;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lcom/narvii/master/MasterTopBar;->setContentLanguageClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    new-instance v2, Lcom/narvii/master/r;

    .line 122
    .line 123
    .line 124
    invoke-direct {v2, p0}, Lcom/narvii/master/r;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lcom/narvii/master/theme/MasterThemeFragment;->setOnBackgroundChangedCallback(Le8/q;)V

    .line 128
    .line 129
    :cond_4
    if-eqz p2, :cond_5

    .line 130
    .line 131
    iget-object p2, p0, Lcom/narvii/master/MasterTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 132
    .line 133
    if-eqz p2, :cond_5

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 137
    move-result v0

    .line 138
    .line 139
    .line 140
    invoke-interface {p2, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 141
    .line 142
    .line 143
    :cond_5
    const p2, 0x7f0a01f4

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    check-cast p2, Landroid/widget/FrameLayout;

    .line 150
    .line 151
    iput-object p2, p0, Lcom/narvii/master/MasterTabFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    .line 152
    .line 153
    .line 154
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 155
    move-result-object p2

    .line 156
    const/4 v0, 0x0

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(I)V

    .line 160
    .line 161
    .line 162
    const p2, 0x7f0a0850

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    check-cast p1, Lcom/narvii/master/widget/MasterBottomBar;

    .line 169
    .line 170
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 171
    .line 172
    new-instance p2, Lcom/narvii/master/s;

    .line 173
    .line 174
    .line 175
    invoke-direct {p2, p0}, Lcom/narvii/master/s;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;->setComposePreClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 181
    .line 182
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 186
    move-result p2

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 190
    move-result p2

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;->updateTabBottomLayout(I)V

    .line 194
    .line 195
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 199
    move-result-object p2

    .line 200
    .line 201
    if-eqz p2, :cond_6

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 205
    move-result-object p2

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 209
    move-result p2

    .line 210
    .line 211
    if-le p2, v1, :cond_6

    .line 212
    goto :goto_0

    .line 213
    .line 214
    :cond_6
    const/16 v0, 0x8

    .line 215
    .line 216
    .line 217
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p0}, Lcom/narvii/master/widget/MasterBottomBar;->setTabSelectListener(Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;)V

    .line 223
    .line 224
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->refresh(Z)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->updateTopbar()V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->sendGlobalConfigRequest()V

    .line 234
    return-void
.end method

.method protected openGlobalProfile()V
    .locals 4

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "id"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "show_setting"

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "user"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->avatarLayout:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment;->avatarLayout:Landroid/view/View;

    .line 55
    .line 56
    const-string v3, "avatar"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v0, v1}, Lcom/narvii/master/MasterTabFragment;->safedk_Context_startActivity_0c4df6808b5c0cfc92f23c850e40a674(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/master/MasterTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 76
    :goto_0
    return-void
.end method

.method public removeMasterThemeChangeListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeStoreBadged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomBar;->removeStoreBadged()V

    .line 6
    return-void
.end method

.method public selectTab(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment;->onTabClicked(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    .line 16
    :cond_0
    return-void
.end method

.method public setBottomTabOverlay(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    const p1, 0x7f060475

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const p1, 0x7f0602c4

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    :cond_1
    return-void
.end method

.method public setStoreBadged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/widget/MasterBottomBar;->setStoreBadged()V

    .line 6
    return-void
.end method

.method public setTopBarElementsVisibility(IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/master/MasterTopBar;->setTopBarElementsVisibility(IZ)V

    .line 6
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public updateTopbar()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v0, v0, Lcom/narvii/master/MasterTopBarAvailable;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/master/MasterTopBarAvailable;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/narvii/master/MasterTopBarAvailable;->isTopBarAvailable()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 25
    .line 26
    const/16 v1, 0x12c

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;I)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->fadeOut(Landroid/view/View;I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 47
    :goto_0
    return-void
.end method

.class public Lcom/narvii/drawer/DrawerRightHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/drawer/DrawerRightHost$Header;,
        Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;,
        Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;,
        Lcom/narvii/drawer/DrawerRightHost$Adapter;,
        Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;,
        Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;,
        Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;,
        Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;
    }
.end annotation


# static fields
.field static final LAUNCH_TITLE_SHOW_DELAY:J = 0x2bcL

.field static final MODE_CLOSE_DRAWER_AND_START:I = 0x1

.field static final MODE_START_AND_CLOSE_DRAWER:I = 0x2

.field static final REFRESH_COMMUNITY_LIST_DURATION:J

.field static final REFRESH_SUGGEST_LIST_DURATION:J

.field static final REMINDER_CHECK_DURATION:J

.field static final RESET_SCROLL_TIME:J


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field activity:Landroid/app/Activity;

.field adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

.field blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

.field broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field cid:I

.field context:Lcom/narvii/app/NVContext;

.field currentAdapter:Landroid/widget/ListAdapter;

.field finalAdapter:Landroid/widget/ListAdapter;

.field isMaster:Z

.field launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

.field final launchRecentListener:Landroid/view/View$OnClickListener;

.field listView:Lcom/narvii/widget/NVListView;

.field listenerReged:Z

.field myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field prefs:Landroid/content/SharedPreferences;

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

.field recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

.field private removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

.field resetDelayed:Ljava/lang/Runnable;

.field suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

.field suggestOnBottom:Z

.field suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

.field suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field private final themeDownLoadReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    .line 5
    const-wide/32 v1, 0x493e0

    .line 6
    .line 7
    .line 8
    const-wide/32 v3, 0xea60

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    move-wide v5, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide v5, v1

    .line 14
    .line 15
    :goto_0
    sput-wide v5, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    move-wide v5, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-wide v5, v1

    .line 21
    .line 22
    :goto_1
    sput-wide v5, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    move-wide v1, v3

    .line 26
    .line 27
    :cond_2
    sput-wide v1, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_SUGGEST_LIST_DURATION:J

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    const-wide/16 v3, 0x3a98

    .line 32
    .line 33
    :cond_3
    sput-wide v3, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$1;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 11
    .line 12
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$4;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$4;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$5;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$5;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->launchRecentListener:Landroid/view/View$OnClickListener;

    .line 25
    .line 26
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$7;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$7;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    sget p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 34
    .line 35
    const/16 v0, 0x64

    .line 36
    .line 37
    if-ne p2, v0, :cond_0

    .line 38
    const/4 p2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x0

    .line 41
    .line 42
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerRightHost;->isMaster:Z

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 47
    .line 48
    const-string p2, "myCommunityList"

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    const-string p2, "chat"

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 71
    .line 72
    const-string p2, "account"

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->prefs:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 89
    .line 90
    const-string p2, "config"

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 100
    move-result p1

    .line 101
    .line 102
    iput p1, p0, Lcom/narvii/drawer/DrawerRightHost;->cid:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 115
    .line 116
    const-string p2, "recentCommunities"

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 123
    .line 124
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 125
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerRightHost;->updateThemeUI()V

    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/drawer/DrawerRightHost;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateThemeUI()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "config"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 23
    move-result v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 37
    move-result v0

    .line 38
    .line 39
    const/16 v4, 0x38

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method cancelLaunch()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->cancel()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 11
    return-void
.end method

.method explore()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/community/search/MasterThemeHelper;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 21
    .line 22
    const-class v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "__communityId"

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const/4 v1, 0x2

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    const-string v1, "statistics"

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 49
    .line 50
    const-string v1, "Explore Communities Tab Opened"

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v1, "Explore Communities Tab Opened Total"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-string v1, "Right Side Panel"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 66
    :cond_0
    return-void
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->update()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->prepare()V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->prepare()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateSuggestPosition(Lcom/narvii/community/MyCommunityListService;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersOnScreen(Z)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerRealtimeBlurView;->setProxyView(Landroid/view/View;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 56
    .line 57
    const-string v1, "config"

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 71
    move-result v0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 77
    move-result v2

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 81
    move-result v3

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 85
    move-result v0

    .line 86
    .line 87
    const/16 v4, 0x38

    .line 88
    .line 89
    .line 90
    invoke-static {v4, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 91
    move-result v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->unscheduleReset()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->cancelLaunch()V

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->setListenerReged(Z)V

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0c8f

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/community/search/MasterThemeHelper;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 30
    .line 31
    :cond_0
    const-class v0, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "section_type"

    .line 38
    const/4 v2, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v2, "language"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    const-string v1, "Source"

    .line 55
    .line 56
    const-string v2, "Right Side Panel"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/4 v1, 0x2

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 67
    move-result p1

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0a0788

    .line 71
    .line 72
    if-ne p1, v0, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->explore()V

    .line 76
    :cond_2
    return-void
.end method

.method protected onDetach(Lcom/narvii/widget/ProxyView;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerRealtimeBlurView;->setProxyView(Landroid/view/View;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->setListenerReged(Z)V

    .line 14
    .line 15
    sget-wide v0, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->scheduleReset(J)V

    .line 19
    return-void
.end method

.method public onEvent(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    const v0, 0xfb0002

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    const v3, 0xfb0001

    .line 9
    .line 10
    if-eq p1, v3, :cond_1

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/narvii/drawer/DrawerRightHost;->finalAdapter:Landroid/widget/ListAdapter;

    .line 20
    .line 21
    if-eq v4, v5, :cond_2

    .line 22
    .line 23
    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    iput-object v5, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    .line 30
    :cond_2
    if-ne p1, v3, :cond_3

    .line 31
    move-object v3, p2

    .line 32
    .line 33
    check-cast v3, Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    cmpl-float v3, v3, v4

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    sget-wide v3, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3, v4}, Lcom/narvii/drawer/DrawerRightHost;->scheduleReset(J)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->unscheduleReset()V

    .line 52
    :goto_1
    move v3, v1

    .line 53
    .line 54
    .line 55
    :goto_2
    const v4, 0xfb0003

    .line 56
    .line 57
    if-ne p1, v4, :cond_4

    .line 58
    .line 59
    sget-wide v3, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v3, v4}, Lcom/narvii/drawer/DrawerRightHost;->scheduleReset(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->cancelLaunch()V

    .line 66
    move v3, v1

    .line 67
    .line 68
    :cond_4
    if-ne p1, v0, :cond_5

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 71
    .line 72
    const-string p2, "statistics"

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 79
    .line 80
    const-string p2, "Right Side Panel"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string p2, "Right Side Panel Total"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->resumed()V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->resumed()V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->refreshReminders(Z)V

    .line 105
    goto :goto_3

    .line 106
    .line 107
    :cond_5
    if-eqz v3, :cond_6

    .line 108
    :goto_3
    return v1

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->onEvent(ILjava/lang/Object;)Z

    .line 112
    move-result p1

    .line 113
    return p1
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0c8f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a01db

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/drawer/DrawerRealtimeBlurView;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a0e12

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 40
    .line 41
    .line 42
    const v1, 0x102000a

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 61
    .line 62
    new-instance v1, Lcom/narvii/drawer/DrawerRightHost$Header;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    const v3, 0x7f120fbd

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p0, v2}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 77
    .line 78
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 82
    .line 83
    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 84
    .line 85
    iput-object v2, v1, Lcom/narvii/drawer/DrawerRightHost$Header;->showWith:Landroid/widget/ListAdapter;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 95
    move-result v2

    .line 96
    const/4 v3, 0x6

    .line 97
    const/4 v4, 0x0

    .line 98
    .line 99
    if-lt v2, v3, :cond_0

    .line 100
    move v2, v0

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    move v2, v4

    .line 103
    .line 104
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    .line 105
    .line 106
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 110
    .line 111
    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 112
    .line 113
    new-instance v2, Lcom/narvii/list/SwitchAdapter;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v3}, Lcom/narvii/list/SwitchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 119
    .line 120
    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3, v4}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 126
    .line 127
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    .line 128
    .line 129
    new-instance v3, Lcom/narvii/list/StaticViewAdapter;

    .line 130
    .line 131
    .line 132
    invoke-direct {v3}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3, v4}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 136
    .line 137
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    .line 138
    .line 139
    iget-boolean v3, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 143
    .line 144
    new-instance v2, Lcom/narvii/list/SwitchAdapter;

    .line 145
    .line 146
    iget-object v3, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 147
    .line 148
    .line 149
    invoke-direct {v2, v3}, Lcom/narvii/list/SwitchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 150
    .line 151
    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    .line 152
    .line 153
    iget-object v3, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v4}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 157
    .line 158
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    .line 159
    .line 160
    new-instance v3, Lcom/narvii/list/StaticViewAdapter;

    .line 161
    .line 162
    .line 163
    invoke-direct {v3}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3, v4}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 167
    .line 168
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    .line 169
    .line 170
    iget-boolean v3, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    .line 171
    xor-int/2addr v3, v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 175
    .line 176
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$Header;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    const v5, 0x7f121188

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    move-result-object v3

    .line 188
    .line 189
    .line 190
    invoke-direct {v2, p0, v3}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 191
    .line 192
    iget-object v3, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    .line 193
    .line 194
    iput-object v3, v2, Lcom/narvii/drawer/DrawerRightHost$Header;->showWith:Landroid/widget/ListAdapter;

    .line 195
    .line 196
    new-instance v3, Lcom/narvii/drawer/DrawerRightHost$Header;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 200
    move-result-object v6

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    .line 206
    .line 207
    invoke-direct {v3, p0, v5}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 208
    .line 209
    iget-object v5, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    .line 210
    .line 211
    iput-object v5, v3, Lcom/narvii/drawer/DrawerRightHost$Header;->showWith:Landroid/widget/ListAdapter;

    .line 212
    .line 213
    new-instance v5, Lcom/narvii/drawer/DrawerRightHost$Header;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 217
    move-result-object v6

    .line 218
    .line 219
    .line 220
    const v7, 0x7f120d15

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    move-result-object v6

    .line 225
    .line 226
    .line 227
    invoke-direct {v5, p0, v6}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 228
    .line 229
    new-instance v6, Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 230
    .line 231
    .line 232
    invoke-direct {v6, p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 233
    .line 234
    iput-object v6, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 235
    .line 236
    new-instance v6, Lcom/narvii/list/DivideColumnAdapter;

    .line 237
    .line 238
    iget-object v7, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 242
    move-result-object v8

    .line 243
    .line 244
    const/high16 v9, 0x40a00000    # 5.0f

    .line 245
    .line 246
    .line 247
    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 248
    move-result v8

    .line 249
    float-to-int v8, v8

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 253
    move-result-object v9

    .line 254
    .line 255
    const/high16 v10, 0x40400000    # 3.0f

    .line 256
    .line 257
    .line 258
    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 259
    move-result v9

    .line 260
    float-to-int v9, v9

    .line 261
    .line 262
    .line 263
    invoke-direct {v6, v7, v8, v9}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 264
    .line 265
    iget-object v7, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 266
    const/4 v8, 0x3

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v7, v8}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 270
    .line 271
    new-instance v7, Lcom/narvii/list/MergeAdapter;

    .line 272
    .line 273
    iget-object v8, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 274
    .line 275
    .line 276
    invoke-direct {v7, v8}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    .line 281
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    .line 289
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7, v5}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, v6, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    .line 303
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    .line 308
    new-instance v0, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;

    .line 309
    .line 310
    .line 311
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    .line 316
    iput-object v7, p0, Lcom/narvii/drawer/DrawerRightHost;->finalAdapter:Landroid/widget/ListAdapter;

    .line 317
    .line 318
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    .line 323
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 324
    const/4 v1, 0x0

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 328
    .line 329
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 333
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateSuggestPosition(Lcom/narvii/community/MyCommunityListService;)V

    .line 9
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/drawer/DrawerRightHost$6;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerRightHost$6;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->update()V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->refreshReminders(Z)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 28
    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersOnScreen(Z)V

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->update()V

    .line 10
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->update()V

    .line 6
    return-void
.end method

.method removeLaunchSplashAndCloseDrawer()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer(J)V

    return-void
.end method

.method removeLaunchSplashAndCloseDrawer(J)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 3
    instance-of v3, v2, Lcom/narvii/app/DrawerActivity;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 4
    :cond_2
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/drawer/DrawerRightHost$2;-><init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;Lcom/narvii/app/DrawerActivity;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 5
    invoke-static {v2, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->reset()V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->reset()V

    .line 21
    return-void
.end method

.method scheduleReset(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 23
    return-void
.end method

.method setListenerReged(Z)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listenerReged:Z

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/drawer/DrawerRightHost;->cid:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 43
    .line 44
    iget v1, p0, Lcom/narvii/drawer/DrawerRightHost;->cid:I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 50
    .line 51
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerRightHost;->listenerReged:Z

    .line 52
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    new-instance v2, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v3, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    .line 6
    const p2, 0xfa0001

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Lcom/narvii/widget/ProxyViewHost;->sendEvent(ILjava/lang/Object;)Z

    .line 11
    .line 12
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$3;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lcom/narvii/drawer/DrawerRightHost$3;-><init>(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;)V

    .line 16
    .line 17
    const-wide/16 v0, 0x15e

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerRightHost;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 29
    :cond_1
    const/4 p1, 0x2

    .line 30
    .line 31
    if-ne p2, p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer()V

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method

.method public unbind()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerRightHost;->setListenerReged(Z)V

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 8
    return-void
.end method

.method unscheduleReset()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

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
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    .line 13
    :cond_0
    return-void
.end method

.method updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 9

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 7
    .line 8
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 18
    .line 19
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v2, v1

    .line 25
    .line 26
    :goto_1
    if-nez p2, :cond_2

    .line 27
    move v3, v1

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_2
    iget-object v3, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 31
    .line 32
    iget v4, p2, Lcom/narvii/model/Community;->id:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 36
    move-result v3

    .line 37
    .line 38
    :goto_2
    if-nez v0, :cond_3

    .line 39
    move v4, v1

    .line 40
    goto :goto_3

    .line 41
    .line 42
    :cond_3
    iget v4, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 43
    add-int/2addr v4, v3

    .line 44
    .line 45
    iget v3, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 46
    add-int/2addr v4, v3

    .line 47
    .line 48
    .line 49
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-static {v3, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    .line 57
    const v5, 0x7f0a02e3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 67
    .line 68
    :cond_4
    const/16 v6, 0x8

    .line 69
    .line 70
    .line 71
    const v7, 0x7f010039

    .line 72
    .line 73
    .line 74
    const v8, 0x7f010037

    .line 75
    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    if-eqz v3, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 82
    move-result v2

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_6
    if-eqz v3, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 105
    move-result v2

    .line 106
    .line 107
    if-nez v2, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_4
    const v2, 0x7f0a0a29

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object p1

    .line 129
    move-object v2, p1

    .line 130
    .line 131
    check-cast v2, Landroid/widget/TextView;

    .line 132
    .line 133
    const/16 v5, 0x9

    .line 134
    .line 135
    if-le v4, v5, :cond_8

    .line 136
    .line 137
    const-string v5, "9+"

    .line 138
    goto :goto_5

    .line 139
    .line 140
    .line 141
    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    .line 144
    .line 145
    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    if-nez v3, :cond_9

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 151
    .line 152
    :cond_9
    if-lez v4, :cond_b

    .line 153
    .line 154
    if-eqz v3, :cond_a

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 158
    move-result v2

    .line 159
    .line 160
    if-eqz v2, :cond_a

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    goto :goto_6

    .line 176
    .line 177
    :cond_b
    if-eqz v3, :cond_c

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 181
    move-result v1

    .line 182
    .line 183
    if-nez v1, :cond_c

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    .line 196
    .line 197
    :cond_c
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    :goto_6
    if-eqz p3, :cond_e

    .line 200
    .line 201
    if-eqz p2, :cond_e

    .line 202
    .line 203
    if-eqz v0, :cond_d

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 206
    .line 207
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    .line 211
    move-result-wide v0

    .line 212
    .line 213
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 215
    move-result-wide v2

    .line 216
    .line 217
    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    .line 218
    sub-long/2addr v2, v4

    .line 219
    .line 220
    cmp-long p1, v0, v2

    .line 221
    .line 222
    if-gez p1, :cond_e

    .line 223
    .line 224
    :cond_d
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 225
    .line 226
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    .line 230
    .line 231
    :cond_e
    if-eqz p2, :cond_f

    .line 232
    .line 233
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 237
    move-result p1

    .line 238
    .line 239
    if-eqz p1, :cond_f

    .line 240
    .line 241
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 242
    .line 243
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 247
    :cond_f
    return-void
.end method

.method updateRemindersOnScreen(Z)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lcom/narvii/list/DivideColumnAdapter;->getDividedCells(Landroid/view/View;)[Landroid/view/View;

    .line 18
    move-result-object v4

    .line 19
    array-length v5, v4

    .line 20
    move v6, v2

    .line 21
    .line 22
    :goto_1
    if-ge v6, v5, :cond_1

    .line 23
    .line 24
    aget-object v7, v4, v6

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    move-result-object v8

    .line 29
    .line 30
    instance-of v8, v8, Lcom/narvii/model/Community;

    .line 31
    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 36
    move-result-object v8

    .line 37
    .line 38
    check-cast v8, Lcom/narvii/model/Community;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v7, v8, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 42
    .line 43
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method updateSuggestPosition(Lcom/narvii/community/MyCommunityListService;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x6

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    move p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    .line 18
    .line 19
    if-eq v0, p1, :cond_1

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    .line 29
    xor-int/2addr p1, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 33
    :cond_1
    return-void
.end method

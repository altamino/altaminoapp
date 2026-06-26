.class public Lcom/narvii/drawer/DrawerRightHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "DrawerRightHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;,
        Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;,
        Lcom/narvii/drawer/DrawerRightHost$Adapter;,
        Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;,
        Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;,
        Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;,
        Lcom/narvii/drawer/DrawerRightHost$Header;,
        Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;
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

.field broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

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

    .line 89
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xea60

    if-eqz v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    move-wide v5, v1

    :goto_0
    sput-wide v5, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    .line 90
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    sput-wide v5, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 91
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_2

    move-wide v1, v3

    :cond_2
    sput-wide v1, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_SUGGEST_LIST_DURATION:J

    .line 92
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x3a98

    :cond_3
    sput-wide v3, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$1;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$1;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 413
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$4;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$4;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 556
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$5;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$5;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->launchRecentListener:Landroid/view/View$OnClickListener;

    .line 1283
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$7;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerRightHost$7;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    sget p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerRightHost;->isMaster:Z

    .line 124
    check-cast p1, Lcom/narvii/app/NVContext;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 125
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    const-string p2, "myCommunityList"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 126
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    const-string p2, "chat"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 127
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    .line 128
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->prefs:Landroid/content/SharedPreferences;

    .line 129
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 130
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/drawer/DrawerRightHost;->cid:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 132
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo p2, "recentCommunities"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerRightHost;->updateThemeUI()V

    return-void
.end method

.method private updateThemeUI()V
    .locals 5

    .line 1275
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1278
    :cond_0
    check-cast v0, Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1279
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 1280
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    const/16 v2, 0x38

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method cancelLaunch()V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1271
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    return-void
.end method

.method explore()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_1

    .line 542
    new-instance v1, Lcom/narvii/community/search/MasterThemeHelper;

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-direct {v1, v0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 544
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 545
    const-class v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_0
    const-class v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "__communityId"

    .line 548
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x2

    .line 550
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 5

    .line 222
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    .line 223
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->update()V

    .line 224
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->prepare()V

    .line 225
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->prepare()V

    .line 226
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateSuggestPosition(Lcom/narvii/community/MyCommunityListService;)V

    const/4 p1, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersOnScreen(Z)V

    .line 228
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    invoke-virtual {p0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/drawer/DrawerRealtimeBlurView;->setProxyView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 234
    check-cast v0, Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 235
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    const/16 v2, 0x38

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->unscheduleReset()V

    .line 241
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->cancelLaunch()V

    .line 242
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 243
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->setListenerReged(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0909c7

    if-ne v0, v1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_0

    .line 525
    new-instance v1, Lcom/narvii/community/search/MasterThemeHelper;

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-direct {v1, v0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 528
    :cond_0
    const-class v0, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "section_type"

    .line 529
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    .line 531
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "Right Side Panel"

    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 533
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09060a

    if-ne p1, v0, :cond_2

    .line 536
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->explore()V

    :cond_2
    return-void
.end method

.method protected onDetach(Lcom/narvii/widget/ProxyView;)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    .line 252
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerRealtimeBlurView;->setProxyView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 253
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->setListenerReged(Z)V

    .line 254
    sget-wide v0, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->scheduleReset(J)V

    return-void
.end method

.method public onEvent(ILjava/lang/Object;)Z
    .locals 6

    const v0, 0xfb0002

    const v1, 0xfb0001

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 330
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/narvii/drawer/DrawerRightHost;->finalAdapter:Landroid/widget/ListAdapter;

    if-eq v4, v5, :cond_2

    .line 331
    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    iput-object v5, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    if-ne p1, v1, :cond_3

    .line 333
    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    .line 334
    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    invoke-virtual {p0, v4, v5}, Lcom/narvii/drawer/DrawerRightHost;->scheduleReset(J)V

    goto :goto_1

    .line 336
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->unscheduleReset()V

    :goto_1
    const/4 v1, 0x1

    :goto_2
    const v4, 0xfb0003

    if-ne p1, v4, :cond_4

    .line 341
    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->RESET_SCROLL_TIME:J

    invoke-virtual {p0, v4, v5}, Lcom/narvii/drawer/DrawerRightHost;->scheduleReset(J)V

    .line 342
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->cancelLaunch()V

    const/4 v1, 0x1

    :cond_4
    if-ne p1, v0, :cond_5

    .line 349
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->resumed()V

    .line 350
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->resumed()V

    .line 351
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->refreshReminders(Z)V

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    return v3

    .line 358
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->onEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const v1, 0x7f0909c7

    .line 140
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09013d

    .line 142
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/drawer/DrawerRealtimeBlurView;

    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->blurView:Lcom/narvii/drawer/DrawerRealtimeBlurView;

    const v1, 0x7f090b2d

    .line 145
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const v1, 0x102000a

    .line 146
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVListView;

    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 147
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 148
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 150
    new-instance v1, Lcom/narvii/drawer/DrawerRightHost$Header;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0e9a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 151
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    .line 152
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    iput-object v2, v1, Lcom/narvii/drawer/DrawerRightHost$Header;->showWith:Landroid/widget/ListAdapter;

    .line 154
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v2}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    .line 155
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    .line 156
    new-instance v2, Lcom/narvii/list/SwitchAdapter;

    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v4}, Lcom/narvii/list/SwitchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    .line 157
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    invoke-virtual {v2, v4, v3}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 158
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    new-instance v4, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v4}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    invoke-virtual {v2, v4, v3}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 159
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    iget-boolean v4, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    invoke-virtual {v2, v4}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 160
    new-instance v2, Lcom/narvii/list/SwitchAdapter;

    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v4}, Lcom/narvii/list/SwitchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    .line 161
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    invoke-virtual {v2, v4, v3}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 162
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    new-instance v4, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v4}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    invoke-virtual {v2, v4, v3}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 163
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    iget-boolean v4, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    xor-int/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 164
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$Header;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f1087

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    iput-object v4, v2, Lcom/narvii/drawer/DrawerRightHost$Header;->showWith:Landroid/widget/ListAdapter;

    .line 166
    new-instance v4, Lcom/narvii/drawer/DrawerRightHost$Header;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 167
    iget-object v5, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    iput-object v5, v4, Lcom/narvii/drawer/DrawerRightHost$Header;->showWith:Landroid/widget/ListAdapter;

    .line 169
    new-instance v5, Lcom/narvii/drawer/DrawerRightHost$Header;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f0bea

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/narvii/drawer/DrawerRightHost$Header;-><init>(Lcom/narvii/drawer/DrawerRightHost;Ljava/lang/String;)V

    .line 170
    new-instance v6, Lcom/narvii/drawer/DrawerRightHost$Adapter;

    invoke-direct {v6, p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object v6, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    .line 171
    new-instance v6, Lcom/narvii/list/DivideColumnAdapter;

    iget-object v7, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v6, v7, v8, v9}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 172
    iget-object v7, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 174
    new-instance v7, Lcom/narvii/list/MergeAdapter;

    iget-object v8, p0, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v7, v8}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 175
    invoke-virtual {v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    invoke-virtual {v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    invoke-virtual {v7, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    invoke-virtual {v7, v5}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-virtual {v7, v6, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 181
    invoke-virtual {v7, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {v7, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    new-instance v0, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerRightHost$LoadingErrorAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    invoke-virtual {v7, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iput-object v7, p0, Lcom/narvii/drawer/DrawerRightHost;->finalAdapter:Landroid/widget/ListAdapter;

    .line 186
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 502
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 503
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateSuggestPosition(Lcom/narvii/community/MyCommunityListService;)V

    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 571
    new-instance v0, Lcom/narvii/drawer/DrawerRightHost$6;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerRightHost$6;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 577
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    invoke-virtual {v1}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->update()V

    .line 578
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->refreshReminders(Z)V

    .line 579
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 580
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->adapter:Lcom/narvii/drawer/DrawerRightHost$Adapter;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    const/4 p1, 0x0

    .line 517
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersOnScreen(Z)V

    .line 518
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->update()V

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    .line 497
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->update()V

    return-void
.end method

.method removeLaunchSplashAndCloseDrawer()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer(J)V

    return-void
.end method

.method removeLaunchSplashAndCloseDrawer(J)V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 280
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 284
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 285
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    instance-of v3, v2, Lcom/narvii/app/DrawerActivity;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 287
    :cond_2
    new-instance v2, Lcom/narvii/drawer/DrawerRightHost$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/drawer/DrawerRightHost$2;-><init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;Lcom/narvii/app/DrawerActivity;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 298
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->currentAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 399
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->recentAdapter:Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->reset()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->reset()V

    return-void
.end method

.method scheduleReset(J)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerRightHost$ResetDelayed;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    goto :goto_0

    .line 366
    :cond_0
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method setListenerReged(Z)V
    .locals 3

    .line 258
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listenerReged:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 261
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 262
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, p0, Lcom/narvii/drawer/DrawerRightHost;->cid:I

    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 265
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 266
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, p0, Lcom/narvii/drawer/DrawerRightHost;->cid:I

    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 268
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerRightHost;->listenerReged:Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0xfa0001

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, p2, v0}, Lcom/narvii/widget/ProxyViewHost;->sendEvent(ILjava/lang/Object;)Z

    .line 308
    new-instance p2, Lcom/narvii/drawer/DrawerRightHost$3;

    invoke-direct {p2, p0, p1}, Lcom/narvii/drawer/DrawerRightHost$3;-><init>(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;)V

    const-wide/16 v0, 0x15e

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerRightHost;->setListenerReged(Z)V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method unscheduleReset()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 373
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->resetDelayed:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 436
    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez p2, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 437
    :cond_2
    iget-object v3, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v4, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v3, v4}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v3

    :goto_2
    if-nez v0, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    .line 438
    :cond_3
    iget v4, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    add-int/2addr v4, v3

    iget v3, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr v3, v4

    .line 440
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f090229

    .line 441
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v4, :cond_4

    .line 443
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    :cond_4
    const v6, 0x7f010029

    const v7, 0x7f01002b

    const/16 v8, 0x8

    if-eqz v2, :cond_6

    if-eqz v4, :cond_5

    .line 446
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 451
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 452
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 454
    :cond_7
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v2, 0x7f09078e

    .line 457
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 458
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const/16 v5, 0x9

    if-le v3, v5, :cond_8

    const-string v5, "9+"

    goto :goto_5

    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_9

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_9
    if-lez v3, :cond_b

    if-eqz v4, :cond_a

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    .line 464
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 466
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_b
    if-eqz v4, :cond_c

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 469
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 471
    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    if-eqz v0, :cond_d

    .line 474
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_e

    .line 475
    :cond_d
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    :cond_e
    if-eqz p2, :cond_f

    .line 477
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 478
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    :cond_f
    return-void
.end method

.method updateRemindersOnScreen(Z)V
    .locals 9

    .line 483
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost;->listView:Lcom/narvii/widget/NVListView;

    .line 484
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 485
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/list/DivideColumnAdapter;->getDividedCells(Landroid/view/View;)[Landroid/view/View;

    move-result-object v4

    .line 486
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 487
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/narvii/model/Community;

    if-eqz v8, :cond_0

    .line 488
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Community;

    .line 489
    invoke-virtual {p0, v7, v8, p1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateSuggestPosition(Lcom/narvii/community/MyCommunityListService;)V
    .locals 2

    .line 507
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 508
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    if-eq v1, p1, :cond_1

    .line 509
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestOnBottom:Z

    .line 510
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchTop:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 511
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost;->suggestSwitchBottom:Lcom/narvii/list/SwitchAdapter;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    :cond_1
    return-void
.end method

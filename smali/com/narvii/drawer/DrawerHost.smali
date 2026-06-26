.class public Lcom/narvii/drawer/DrawerHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;,
        Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;,
        Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;,
        Lcom/narvii/drawer/DrawerHost$ScrollToTop;,
        Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;
    }
.end annotation


# static fields
.field static final AUTO_REFRESH_DURATION:J

.field public static final DEBUG_PAGE_ENTRY:Z = false

.field public static final DRAWER_OPEN_SOURCE:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final GLOBAL_REFRESH_DURATION:J = 0x493e0L

.field static final REFRESH_CATEGORY:I = 0x1

.field static final REFRESH_COMMUNITY_INFO:I = 0x2

.field static final REFRESH_GENERAL_COUNT:I = 0x4

.field static final REFRESH_KINDRED_COMMUNITY:I = 0x10

.field static final REFRESH_REMINDER_CHECK:I = 0x8

.field static final RESET_SCROLL_TIME:J

.field public static curCommunitySelectedOffset:I

.field public static curCommunitySelectedPosition:I


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field private accountListener:Landroid/view/View$OnClickListener;

.field activity:Landroid/app/Activity;

.field public final badgeCountListener:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field blogCategoryError:Ljava/lang/String;

.field blogCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final categoryClickListener:Landroid/view/View$OnClickListener;

.field private final categoryResponseListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/BlogCategoryListResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private final checkInFire:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field checkInPopUpDone:Z

.field private checkInPressed:Z

.field private final checkInStart:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final checkInTouchListener:Landroid/view/View$OnTouchListener;

.field cid:I

.field private final clickListener:Landroid/view/View$OnClickListener;

.field community:Lcom/narvii/community/CommunityService;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field communityListView:Lcom/narvii/widget/NVListView;

.field private final communityResponseListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/community/FullCommunityResponse;",
            ">;"
        }
    .end annotation
.end field

.field config:Lcom/narvii/config/ConfigService;

.field context:Lcom/narvii/app/NVContext;

.field darkThemeColor:I

.field dontUpdateRanking:Z

.field fakeCheckin:Z

.field public fakePVId:Ljava/lang/String;

.field fromGlobalLaunch:Z

.field private generalCheckResponseListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/flag/model/GeneraCheckResponse;",
            ">;"
        }
    .end annotation
.end field

.field generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

.field hasNotificationTurnedOffWarning:Z

.field private isHomepage:Z

.field private isMaster:Z

.field isRequestingCommunity:Z

.field private final kindredClickListener:Landroid/view/View$OnClickListener;

.field kindredCommunity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field kindredCommunityError:Ljava/lang/String;

.field private final kindredCommunityListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/master/CommunityListResponse;",
            ">;"
        }
    .end annotation
.end field

.field launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

.field public lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

.field private moderationListener:Landroid/view/View$OnClickListener;

.field private moreOptionsListener:Landroid/view/View$OnClickListener;

.field myCommunityId:I

.field myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

.field private myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

.field overrideEnterAnim:Ljava/lang/Integer;

.field overrideExitAnim:Ljava/lang/Integer;

.field final pageItemClickListener:Lcom/narvii/amino/page/PageItemClickListener;

.field final pageItemClickListener2:Lcom/narvii/amino/page/PageItemClickListener;

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field rankingTitleView:Lcom/narvii/widget/RankingTitleView;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field refreshCommunityInfoTime:J

.field refreshGeneralCountTime:J

.field refreshReminderCheckTime:J

.field refreshingFlag:I

.field reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/community/ReminderCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

.field requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private returnedCommunity:Lcom/narvii/model/Community;

.field private scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

.field scrollToTop:Ljava/lang/Runnable;

.field scrollView:Lcom/narvii/widget/NVScrollView;

.field private secondEntriesHint:Landroid/widget/TextView;

.field private secondEntriesIndicator:Landroid/widget/ImageView;

.field private secondEntriesVisiable:Z

.field private secondEntryContainer:Landroid/view/View;

.field private secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

.field secondViewStub:Landroid/view/ViewStub;

.field final sendingEvent:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public streakRepairDialogShowing:Z

.field themeColor:I

.field private final themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;

.field private topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

.field valueAnimator:Landroid/animation/ObjectAnimator;

.field public willPlayLottery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 178
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-wide/16 v1, 0x3a98

    const-wide/32 v3, 0xea60

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    sput-wide v5, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    .line 180
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    sput-wide v1, Lcom/narvii/drawer/DrawerHost;->RESET_SCROLL_TIME:J

    .line 181
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/drawer/DrawerHost;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 182
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/drawer/DrawerHost;->DRAWER_OPEN_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    new-instance p2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    .line 241
    new-instance p2, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {p2}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->sendingEvent:Lcom/narvii/util/statistics/TmpValue;

    .line 268
    new-instance p2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    .line 462
    new-instance p2, Lcom/narvii/drawer/DrawerHost$1;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$1;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    .line 484
    new-instance p2, Lcom/narvii/drawer/DrawerHost$2;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$2;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 506
    new-instance p2, Lcom/narvii/drawer/DrawerHost$3;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$3;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 566
    new-instance p2, Lcom/narvii/drawer/DrawerHost$4;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$4;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 591
    new-instance p2, Lcom/narvii/drawer/DrawerHost$5;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$5;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 659
    new-instance p2, Lcom/narvii/drawer/DrawerHost$6;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$6;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->checkInTouchListener:Landroid/view/View$OnTouchListener;

    .line 736
    new-instance p2, Lcom/narvii/drawer/DrawerHost$7;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$7;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->checkInStart:Lcom/narvii/util/Callback;

    .line 759
    new-instance p2, Lcom/narvii/drawer/DrawerHost$8;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$8;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->checkInFire:Lcom/narvii/util/Callback;

    .line 1192
    new-instance p2, Lcom/narvii/drawer/DrawerHost$11;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$11;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->categoryClickListener:Landroid/view/View$OnClickListener;

    .line 1207
    new-instance p2, Lcom/narvii/drawer/DrawerHost$12;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$12;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->kindredClickListener:Landroid/view/View$OnClickListener;

    .line 1276
    new-instance p2, Lcom/narvii/drawer/DrawerHost$13;

    const-class v0, Lcom/narvii/master/CommunityListResponse;

    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$13;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1392
    new-instance p2, Lcom/narvii/drawer/DrawerHost$14;

    const-class v0, Lcom/narvii/flag/model/GeneraCheckResponse;

    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$14;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1444
    new-instance p2, Lcom/narvii/drawer/DrawerHost$16;

    const-class v0, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$16;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->communityResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1519
    new-instance p2, Lcom/narvii/drawer/DrawerHost$17;

    const-class v0, Lcom/narvii/community/ReminderCheckResult;

    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$17;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1543
    new-instance p2, Lcom/narvii/drawer/DrawerHost$18;

    const-class v0, Lcom/narvii/model/api/BlogCategoryListResponse;

    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$18;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->categoryResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1968
    new-instance p2, Lcom/narvii/drawer/DrawerHost$23;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$23;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 2150
    new-instance p2, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;-><init>(Lcom/narvii/drawer/DrawerHost;I)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener:Lcom/narvii/amino/page/PageItemClickListener;

    .line 2151
    new-instance p2, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1}, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;-><init>(Lcom/narvii/drawer/DrawerHost;I)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener2:Lcom/narvii/amino/page/PageItemClickListener;

    .line 2280
    new-instance p2, Lcom/narvii/drawer/DrawerHost$26;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$26;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 2364
    new-instance p2, Lcom/narvii/drawer/DrawerHost$27;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$27;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 2814
    new-instance p2, Lcom/narvii/drawer/DrawerHost$29;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$29;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    move-object p2, p1

    check-cast p2, Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 274
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->fakePVId:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 276
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iput v1, p0, Lcom/narvii/drawer/DrawerHost;->cid:I

    .line 277
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iput v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 278
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 279
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v2, "community"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    .line 280
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 281
    new-instance v1, Lcom/narvii/util/NotificationManagerHelper;

    invoke-direct {v1, p1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 282
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const-string p1, "chat"

    .line 283
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    const-string p1, "myCommunityList"

    .line 285
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 286
    new-instance p1, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p0, p2}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;-><init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 287
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 288
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateChat()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->exitCommunityTooltipDone()V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/drawer/DrawerHost;)Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/narvii/drawer/DrawerHost;)Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesVisiable:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/narvii/drawer/DrawerHost;Z)Z
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesVisiable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/amino/page/PageSecondLevelLayout;)Lcom/narvii/amino/page/PageSecondLevelLayout;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->showStreakRepairDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondEntryContainer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondLevelChatBadge()V

    return-void
.end method

.method static synthetic access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/drawer/DrawerHost;)Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/drawer/DrawerHost;Z)Z
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateThemeUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendCategoryRequest()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendKindredCommunityRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateGeneralCountView()V

    return-void
.end method

.method static synthetic access$702(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/model/Community;)Lcom/narvii/model/Community;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->returnedCommunity:Lcom/narvii/model/Community;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->notifyRequestCommunityListeners()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    return-void
.end method

.method private exitCommunityTooltipDone()V
    .locals 3

    .line 1642
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    return-void

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    if-eqz v0, :cond_1

    .line 1646
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "prefs"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 1649
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "tooltip_community_exit_done"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getChatUnreadCount()I
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getDebugPageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation

    .line 2240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2241
    sget-object v1, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2242
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2243
    new-instance v2, Lcom/narvii/modulization/page/Page;

    invoke-direct {v2}, Lcom/narvii/modulization/page/Page;-><init>()V

    .line 2244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 2245
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2247
    :cond_0
    new-instance v1, Lcom/narvii/modulization/page/Page;

    invoke-direct {v1}, Lcom/narvii/modulization/page/Page;-><init>()V

    const-string v2, "ndc://default"

    .line 2248
    iput-object v2, v1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2249
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2250
    new-instance v1, Lcom/narvii/modulization/page/Page;

    invoke-direct {v1}, Lcom/narvii/modulization/page/Page;-><init>()V

    const-string v2, "http://altamino.top"

    .line 2251
    iput-object v2, v1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 2252
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initAccountInfoLayout()V
    .locals 3

    const v0, 0x7f0900e4

    .line 1823
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090720

    .line 1824
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090764

    .line 1825
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903af

    .line 1826
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090395

    .line 1827
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090382

    .line 1828
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->checkInTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090383

    .line 1829
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090220

    .line 1830
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090386

    .line 1832
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/checkin/CheckInCircle;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->checkInFire:Lcom/narvii/util/Callback;

    iput-object v2, v1, Lcom/narvii/checkin/CheckInCircle;->fireCallback:Lcom/narvii/util/Callback;

    .line 1833
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/checkin/CheckInCircle;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->checkInStart:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/checkin/CheckInCircle;->startCallback:Lcom/narvii/util/Callback;

    const v0, 0x7f090027

    .line 1835
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initModerationLayout()V
    .locals 2

    const v0, 0x7f09038c

    .line 2258
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09039e

    .line 2259
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903ab

    .line 2260
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09039c

    .line 2261
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090397

    .line 2262
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090388

    .line 2263
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMoreOptionsLayout()V
    .locals 3

    const v0, 0x7f0903a8

    .line 2331
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09037c

    .line 2332
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09037a

    .line 2333
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903a9

    .line 2334
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090387

    .line 2335
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09038f

    .line 2336
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09038a

    .line 2337
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09038b

    .line 2338
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initSecondEntryContainer()V
    .locals 2

    const v0, 0x7f0909e7

    .line 2175
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    const v0, 0x7f0909e8

    .line 2176
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesHint:Landroid/widget/TextView;

    const v0, 0x7f0909e9

    .line 2177
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0909eb

    .line 2178
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondViewStub:Landroid/view/ViewStub;

    .line 2179
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    new-instance v1, Lcom/narvii/drawer/DrawerHost$25;

    invoke-direct {v1, p0}, Lcom/narvii/drawer/DrawerHost$25;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTopEntryContainer()V
    .locals 2

    const v0, 0x7f090bbb

    .line 2094
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/page/PageTopLevelLayout;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    .line 2095
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener:Lcom/narvii/amino/page/PageItemClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/amino/page/PageTopLevelLayout;->setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V

    .line 2096
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateTopEntryContainer()V

    return-void
.end method

.method private notifyRequestCommunityListeners()V
    .locals 2

    .line 1435
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/drawer/DrawerHost$15;

    invoke-direct {v1, p0}, Lcom/narvii/drawer/DrawerHost$15;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private sendCategoryRequest()V
    .locals 4

    .line 1249
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    .line 1250
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    .line 1251
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/blog-category?size=100"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 1252
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 1253
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->categoryResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    if-eqz v0, :cond_2

    .line 1255
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    :cond_2
    return-void
.end method

.method private sendKindredCommunityRequest()V
    .locals 4

    .line 1260
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    .line 1261
    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    .line 1263
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/community/kindred"

    .line 1264
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 1265
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "start"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0xa

    .line 1267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1268
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 1269
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 1270
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    if-eqz v0, :cond_2

    .line 1272
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    :cond_2
    return-void
.end method

.method private showStreakRepairDialog()V
    .locals 2

    .line 2054
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2055
    iput-boolean v1, p0, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    .line 2056
    new-instance v1, Lcom/narvii/checkin/CheckInHelper;

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-direct {v1, v0}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Left Side Panel"

    .line 2057
    iput-object v0, v1, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 2058
    new-instance v0, Lcom/narvii/drawer/DrawerHost$24;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$24;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method private updateAccountInfoLayout()V
    .locals 11

    .line 1839
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1840
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1844
    iget-object v4, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "isMemberOfTeamAmino"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1847
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const v6, 0x7f090c10

    .line 1848
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    .line 1849
    :goto_4
    invoke-virtual {v6, v5}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    const/16 v5, 0x8

    if-nez v0, :cond_5

    const/16 v7, 0x8

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 1850
    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v7, 0x40400000    # 3.0f

    .line 1851
    invoke-virtual {v6, v7, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 1852
    invoke-virtual {v6, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const v6, 0x7f0900e4

    .line 1853
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    iget-boolean v7, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    if-nez v7, :cond_6

    const v7, 0x3f19999a    # 0.6f

    goto :goto_6

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    const v6, 0x7f0900a3

    .line 1855
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    const/16 v4, 0x8

    .line 1856
    :goto_7
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0900ed

    .line 1867
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_8

    const/16 v6, 0x8

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    .line 1868
    :goto_8
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090764

    .line 1870
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/NicknameView;

    if-nez v0, :cond_9

    const/16 v6, 0x8

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    .line 1871
    :goto_9
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1872
    invoke-virtual {v4, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const v4, 0x7f0903af

    .line 1874
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/RankingTitleView;

    iput-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 1875
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->clearAnimation()V

    if-eqz v0, :cond_c

    if-eqz v3, :cond_a

    goto :goto_a

    .line 1880
    :cond_a
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1881
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->cancelFadeInAnimator(Landroid/view/View;)V

    .line 1882
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_b

    .line 1884
    :cond_b
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1885
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {v4, v1}, Lcom/narvii/widget/RankingTitleView;->setShowBadge(Z)V

    goto :goto_b

    .line 1877
    :cond_c
    :goto_a
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->cancelFadeInAnimator(Landroid/view/View;)V

    .line 1878
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1888
    :goto_b
    iget-boolean v4, p0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    if-nez v4, :cond_d

    .line 1889
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v4, v0, v6}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    :cond_d
    const v4, 0x7f090382

    .line 1892
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    .line 1894
    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->cancelFadeOutAnimator(Landroid/view/View;)V

    .line 1895
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_f

    .line 1896
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1897
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_c

    .line 1900
    :cond_e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_f

    .line 1901
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1903
    iget-boolean v6, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    if-eqz v6, :cond_f

    .line 1904
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v6}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1905
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v6, 0xfa

    .line 1906
    invoke-static {v4, v6}, Lcom/narvii/util/ViewUtils;->fadeOut(Landroid/view/View;I)V

    .line 1907
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;)V

    :cond_f
    :goto_c
    const v4, 0x7f090383

    .line 1913
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    const-string v5, "show_fake_checkin"

    invoke-static {v5, v6}, Lcom/narvii/util/DBAminoLightHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lcom/narvii/drawer/DrawerHost;->fakeCheckin:Z

    if-nez v6, :cond_10

    if-eqz v0, :cond_10

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_d

    :cond_10
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090386

    .line 1916
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_11

    const/4 v4, 0x0

    goto :goto_e

    :cond_11
    const/16 v4, 0x8

    .line 1917
    :goto_e
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09021e

    .line 1919
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/checkin/CheckInStreakBar;

    .line 1920
    new-instance v4, Lcom/narvii/checkin/CheckInHelper;

    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v4, v6}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1921
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    move-result-object v6

    .line 1922
    invoke-virtual {v4, v6}, Lcom/narvii/checkin/CheckInHelper;->getStreakLostList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    move-result-object v7

    .line 1923
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-eqz v0, :cond_12

    .line 1924
    invoke-static {v7}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_12

    const/4 v9, 0x1

    goto :goto_f

    :cond_12
    const/4 v9, 0x0

    .line 1925
    :goto_f
    invoke-static {v3, v9}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const v10, 0x7f09021f

    .line 1927
    invoke-virtual {p0, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1928
    invoke-static {v10, v9}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 1930
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    .line 1931
    iget-boolean v10, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    if-eqz v10, :cond_13

    if-eqz v8, :cond_13

    if-nez v9, :cond_13

    .line 1932
    invoke-static {v3}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;)V

    .line 1934
    :cond_13
    invoke-virtual {v3, v7}, Lcom/narvii/checkin/CheckInStreakBar;->updateCells(Ljava/util/List;)V

    const v3, 0x7f090afb

    .line 1937
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1938
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    .line 1939
    invoke-virtual {v4, v6}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    goto :goto_10

    :cond_14
    const/16 v4, 0x8

    :goto_10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1940
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 1941
    iget-boolean v6, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    if-nez v4, :cond_15

    .line 1942
    invoke-static {v3}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;)V

    :cond_15
    const v3, 0x7f09077b

    .line 1946
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_17

    .line 1947
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_11

    :cond_16
    const/4 v4, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    const/16 v4, 0x8

    :goto_12
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1949
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result v3

    if-eqz v3, :cond_18

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18

    const/4 v3, 0x1

    goto :goto_13

    :cond_18
    const/4 v3, 0x0

    :goto_13
    const v4, 0x7f090720

    .line 1951
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/MoodView;

    if-eqz v3, :cond_19

    if-eqz v0, :cond_19

    .line 1952
    invoke-virtual {v0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_14

    :cond_19
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v4, v1}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    if-eqz v0, :cond_1a

    .line 1953
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_15

    :cond_1a
    const/16 v1, 0x8

    :goto_15
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_1b

    if-eqz v3, :cond_1b

    .line 1954
    invoke-virtual {v0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v1

    goto :goto_16

    :cond_1b
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v4, v0, v1}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    const v1, 0x7f090395

    .line 1956
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_17

    :cond_1c
    const/16 v0, 0x8

    .line 1957
    :goto_17
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090027

    .line 1959
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    move-result v3

    if-lez v3, :cond_1d

    goto :goto_18

    :cond_1d
    const/16 v2, 0x8

    :goto_18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1964
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateCategory()V
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f09037f

    .line 1025
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1026
    iget-object v2, v0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isTopicCategoryEnabled()Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    .line 1027
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1030
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1031
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 1032
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 1033
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_3

    .line 1034
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1035
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f090380

    if-ne v9, v10, :cond_1

    .line 1036
    invoke-virtual {v4, v8}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1037
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f090381

    if-ne v9, v10, :cond_2

    .line 1038
    invoke-virtual {v5, v8}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1041
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1043
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1044
    iget-object v8, v0, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    if-nez v8, :cond_5

    .line 1045
    iget-object v3, v0, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    if-nez v3, :cond_4

    const v2, 0x7f0b0547

    .line 1046
    invoke-virtual {v6, v2, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_a

    :cond_4
    const v3, 0x7f0b0543

    .line 1048
    invoke-virtual {v6, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1049
    new-instance v3, Lcom/narvii/drawer/DrawerHost$9;

    invoke-direct {v3, v0}, Lcom/narvii/drawer/DrawerHost$9;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    :cond_5
    const/4 v9, 0x3

    new-array v10, v9, [F

    .line 1059
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/narvii/model/BlogCategory;

    .line 1060
    iget v12, v11, Lcom/narvii/model/BlogCategory;->type:I

    if-ne v12, v7, :cond_7

    .line 1062
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v12

    if-eqz v12, :cond_6

    const v12, 0x7f0b01d4

    .line 1063
    invoke-virtual {v6, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 1064
    iget v13, v0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 1066
    :cond_6
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1067
    iget v13, v0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1069
    :goto_3
    move-object v13, v12

    check-cast v13, Landroid/widget/TextView;

    iget-object v11, v11, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_7
    const/4 v13, 0x2

    if-eqz v12, :cond_8

    if-eq v12, v13, :cond_8

    if-ne v12, v9, :cond_f

    .line 1073
    :cond_8
    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v12

    if-eqz v12, :cond_9

    const v12, 0x7f0b01d5

    .line 1074
    invoke-virtual {v6, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 1075
    iget v14, v0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1076
    iget-object v14, v0, Lcom/narvii/drawer/DrawerHost;->categoryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 1078
    :cond_9
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1079
    iget v14, v0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1081
    :goto_4
    iget-object v14, v11, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const v15, 0x7f090562

    if-eqz v14, :cond_a

    .line 1082
    iget v14, v0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    invoke-static {v14, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v14, 0x3f4ccccd    # 0.8f

    .line 1083
    aget v16, v10, v13

    mul-float v16, v16, v14

    aput v16, v10, v13

    .line 1084
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-static {v13, v14}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v20

    .line 1085
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/narvii/widget/NVImageView;

    new-instance v14, Lcom/narvii/widget/CommunityNameDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v2, v11, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    const/16 v19, -0x1

    invoke-static {v10}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v21

    move-object/from16 v16, v14

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v21}, Lcom/narvii/widget/CommunityNameDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;IFI)V

    invoke-virtual {v13, v14}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1087
    :cond_a
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    iget-object v13, v11, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1088
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    const v13, -0x333334

    invoke-virtual {v2, v13}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 1089
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v13, v14}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v13

    invoke-virtual {v2, v13}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    :goto_5
    const/4 v2, 0x0

    .line 1093
    iget v13, v11, Lcom/narvii/model/BlogCategory;->status:I

    const/16 v14, 0x9

    if-ne v13, v9, :cond_b

    .line 1094
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v13, 0x7f080123

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_6

    :cond_b
    if-ne v13, v14, :cond_c

    .line 1096
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v13, 0x7f080121

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_c
    :goto_6
    const v13, 0x7f090a97

    .line 1098
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f090b9a

    .line 1100
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v3, v11, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090b08

    .line 1101
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v7, v11, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v13, v11, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x8

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1103
    iget v7, v11, Lcom/narvii/model/BlogCategory;->status:I

    if-ne v7, v14, :cond_e

    .line 1104
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1105
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1106
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 1108
    :cond_e
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1109
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1110
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1112
    :goto_8
    invoke-virtual {v12, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1114
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f
    :goto_9
    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_10
    :goto_a
    return-void
.end method

.method private updateChat()V
    .locals 1

    .line 989
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateTopLevelChatBadge()V

    .line 990
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondLevelChatBadge()V

    .line 991
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateChatBadge(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1014
    :cond_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    move-result v0

    const v1, 0x7f090813

    .line 1015
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    const-string v1, "9+"

    goto :goto_0

    .line 1016
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1017
    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method private updateGeneralCountView()V
    .locals 11

    .line 1340
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingFlagCount:I

    .line 1341
    :goto_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 1342
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 1343
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    iget v2, v2, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingKnowledgeBaseRequestCount:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1345
    :goto_1
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingShareRequestCountMapping:Ljava/util/HashMap;

    :goto_2
    if-eqz v3, :cond_3

    const/16 v4, 0x72

    .line 1348
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 1351
    :goto_3
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    const-string v5, "9+"

    const-string v6, ""

    const/16 v7, 0x9

    const/16 v8, 0x8

    const v9, 0x7f09038e

    if-nez v0, :cond_5

    .line 1354
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1356
    :cond_5
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-le v0, v7, :cond_6

    move-object v0, v5

    goto :goto_5

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1358
    :goto_5
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const v0, 0x7f09039f

    if-nez v2, :cond_7

    .line 1361
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1363
    :cond_7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-le v2, v7, :cond_8

    goto :goto_7

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1365
    :goto_7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    const v0, 0x7f090829

    .line 1368
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-lez v3, :cond_9

    if-eqz v4, :cond_9

    goto :goto_9

    :cond_9
    const/16 v1, 0x8

    :goto_9
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateKindredCommunity()V
    .locals 11

    const v0, 0x7f090392

    .line 1121
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    const/4 v1, 0x0

    .line 1122
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1123
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1125
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 1126
    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 1127
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    if-nez v3, :cond_0

    const v1, 0x7f0b0547

    .line 1128
    invoke-virtual {v2, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f090b5b

    .line 1129
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1130
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 1131
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    :cond_0
    const v3, 0x7f0b0543

    .line 1134
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1135
    new-instance v2, Lcom/narvii/drawer/DrawerHost$10;

    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerHost$10;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 1145
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 1146
    :goto_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1147
    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1148
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f090618

    if-eq v8, v9, :cond_2

    .line 1149
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1152
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1154
    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1158
    :cond_5
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1159
    :goto_2
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 1160
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->removeViewAt(I)V

    goto :goto_2

    .line 1163
    :cond_6
    div-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v5

    const v5, 0x7f0903a4

    .line 1164
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v3, :cond_7

    const/16 v7, 0x8

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 1165
    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x3

    .line 1166
    invoke-virtual {v0, v5}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 1167
    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->setRowCount(I)V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_a

    .line 1169
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Community;

    .line 1170
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v7

    if-le v7, v5, :cond_8

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_9

    const v7, 0x7f0b03e2

    .line 1172
    invoke-virtual {v2, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1173
    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    :cond_9
    const v8, 0x7f0902a3

    .line 1175
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/ThumbImageView;

    .line 1176
    iget-object v9, v6, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1177
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    const v8, 0x7f0902b6

    .line 1178
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1179
    iget-object v9, v6, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f090571

    .line 1182
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/PromotionalImageView;

    .line 1183
    invoke-virtual {v8, v6}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 1184
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1185
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->kindredClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    return-void
.end method

.method private updateModerationLayout()V
    .locals 5

    .line 2267
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const v1, 0x7f09038d

    .line 2268
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09037e

    .line 2269
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 2270
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 2269
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09039d

    .line 2271
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 2272
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    .line 2271
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090399

    .line 2273
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0903a5

    .line 2274
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090389

    .line 2275
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0903ac

    .line 2276
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateMoreOptionsLayout()V
    .locals 9

    .line 2343
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    const v1, 0x7f090a26

    .line 2345
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090a27

    .line 2346
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    if-nez v0, :cond_1

    .line 2348
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f0fa9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2349
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 2353
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f010c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2354
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2355
    iget-object v5, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2356
    iget-object v5, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2357
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v1, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2359
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2360
    iget-object v0, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateSecondEntryContainer()V
    .locals 5

    .line 2219
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSidePanelLv2List()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 2222
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2229
    :cond_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2230
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    if-eqz v2, :cond_3

    const v2, 0x7f0909ea

    .line 2231
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2233
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2235
    :cond_2
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/amino/page/PageSecondLevelLayout;->setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V

    :cond_3
    return-void

    .line 2223
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2224
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    if-eqz v0, :cond_5

    .line 2225
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateSecondLevelChatBadge()V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {v0}, Lcom/narvii/amino/page/PageSecondLevelLayout;->getChatChildView()Landroid/view/View;

    move-result-object v0

    .line 1006
    invoke-direct {p0, v0}, Lcom/narvii/drawer/DrawerHost;->updateChatBadge(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateThemeUI()V
    .locals 4

    .line 2790
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2793
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 2795
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 2796
    aget v2, v0, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 2797
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    const v0, 0x7f09037b

    .line 2798
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2799
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVScrollView;->setBottomOverScrollColor(I)V

    .line 2801
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->drawerImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f090390

    .line 2802
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2803
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x8

    const v2, 0x7f090396

    if-eqz v0, :cond_1

    .line 2804
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2805
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0903ad

    .line 2806
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0900a1

    .line 2807
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2809
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2811
    :goto_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    return-void
.end method

.method private updateTopEntryContainer()V
    .locals 4

    .line 2154
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSidePanelLv1List()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2156
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2158
    :cond_1
    new-instance v1, Lcom/narvii/modulization/page/Page;

    invoke-direct {v1}, Lcom/narvii/modulization/page/Page;-><init>()V

    const-string v2, "ndc://default"

    .line 2159
    iput-object v2, v1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2160
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2164
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/amino/page/PageTopLevelLayout;->setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V

    return-void
.end method

.method private updateTopEntryContainerIndicator(Ljava/lang/String;)V
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    if-nez v0, :cond_0

    return-void

    .line 2171
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/amino/page/PageTopLevelLayout;->updateIndicator(Ljava/lang/String;)V

    return-void
.end method

.method private updateTopLevelChatBadge()V
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0}, Lcom/narvii/amino/page/PageTopLevelLayout;->getChatChildView()Landroid/view/View;

    move-result-object v0

    .line 999
    invoke-direct {p0, v0}, Lcom/narvii/drawer/DrawerHost;->updateChatBadge(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public bind(Landroid/app/Activity;)V
    .locals 3

    .line 381
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 382
    instance-of p1, p1, Lcom/narvii/amino/MainActivity;

    .line 383
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isHomepage:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 384
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->isHomepage:Z

    if-eqz p1, :cond_0

    const-string p1, "ndc://default"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 385
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/drawer/DrawerHost;->updateTopEntryContainerIndicator(Ljava/lang/String;)V

    .line 388
    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 389
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 390
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateChat()V

    .line 391
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    iput p1, p0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 393
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    invoke-static {v0, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 394
    aget v1, p1, v0

    const v2, 0x3f59999a    # 0.85f

    mul-float v1, v1, v2

    aput v1, p1, v0

    .line 395
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    const p1, 0x7f09037b

    .line 396
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 397
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setBottomOverScrollColor(I)V

    .line 398
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600d7

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setTopOverScrollColor(I)V

    .line 400
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {p1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {p1}, Lcom/narvii/util/NotificationManagerHelper;->isNotificationSettingAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->hasNotificationTurnedOffWarning:Z

    .line 402
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    if-eqz p1, :cond_3

    .line 403
    sget v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    sget v1, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_3
    return-void
.end method

.method cancelLaunch()V
    .locals 1

    .line 2783
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    if-eqz v0, :cond_0

    .line 2784
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2786
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    return-void
.end method

.method public getPendingSharesStikcerCount()I
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    if-eqz v0, :cond_2

    .line 1330
    iget-object v0, v0, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingShareRequestCountMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    const/16 v1, 0x72

    .line 1332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getReturnedCommunity()Lcom/narvii/model/Community;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->returnedCommunity:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public getTotalBadgeCount()I
    .locals 4

    .line 1304
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1305
    :goto_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getNotificationCount()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    add-int/2addr v2, v1

    .line 1306
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1307
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    move-result v1

    add-int/2addr v2, v1

    .line 1309
    :cond_2
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    if-eqz v1, :cond_4

    .line 1310
    iget v1, v1, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingFlagCount:I

    add-int/2addr v2, v1

    .line 1311
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1312
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    iget v1, v1, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingKnowledgeBaseRequestCount:I

    add-int/2addr v2, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 1315
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    iget-object v0, v0, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingShareRequestCountMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    const/16 v1, 0x72

    .line 1317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    return v2
.end method

.method public goHome(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1625
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 1626
    invoke-static {p1}, Lcom/narvii/amino/MainActivity;->setPendingCommand(I)V

    .line 1627
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/amino/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1628
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/amino/MainActivity;->backToHome(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f010029

    .line 1629
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    const v0, 0x7f01002a

    .line 1630
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    .line 1631
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public isRequestingCommunity()Z
    .locals 1

    .line 2327
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    return v0
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 4

    .line 423
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    const p1, 0x7f090379

    .line 425
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801ed

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->drawerImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f090390

    .line 430
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v0, 0x7f0903ad

    const/16 v1, 0x8

    const v2, 0x7f090396

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0900a1

    .line 436
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {p1, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    .line 442
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 446
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateChat()V

    .line 447
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    .line 448
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    .line 449
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateGeneralCountView()V

    .line 451
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    if-eqz p1, :cond_2

    .line 452
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->onResume()V

    .line 453
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->cancelLaunch()V

    .line 457
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 458
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onCommunityUpdated()V
    .locals 2

    .line 970
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateTopEntryContainer()V

    .line 971
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondEntryContainer()V

    .line 972
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateMoreOptionsLayout()V

    .line 973
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    .line 974
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateModerationLayout()V

    .line 975
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateAccountInfoLayout()V

    .line 976
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    const v0, 0x7f09037b

    .line 977
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 978
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVScrollView;->setBottomOverScrollColor(I)V

    return-void
.end method

.method public onEvent(ILjava/lang/Object;)Z
    .locals 6

    const v0, 0xfb0001

    const v1, 0xfb0002

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1661
    :cond_1
    :goto_0
    sget-wide v4, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    invoke-virtual {p0, v4, v5}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    const/4 v4, 0x1

    :goto_1
    if-ne p1, v1, :cond_9

    .line 1665
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 1666
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendCategoryRequest()V

    .line 1668
    :cond_2
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    if-nez v1, :cond_3

    .line 1669
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendKindredCommunityRequest()V

    .line 1671
    :cond_3
    sget-wide v4, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    invoke-virtual {p0, v4, v5}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    .line 1673
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v4, "prefs"

    invoke-interface {v1, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 1674
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "tooltip_left_draw_done"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1677
    iget-boolean v4, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    const v5, 0x7f0902d3

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "tooltip_community_exit_done"

    .line 1678
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1680
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    if-eqz v1, :cond_7

    .line 1681
    invoke-virtual {v1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    const/4 v1, 0x0

    .line 1682
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    goto :goto_2

    .line 1684
    :cond_4
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    if-nez v4, :cond_6

    const-string/jumbo v4, "tooltip_left_draw_open_times"

    .line 1685
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 1687
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 1689
    :cond_5
    new-instance v1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {v1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 1690
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1691
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v1

    const v2, 0x7f090bae

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v1

    const v2, 0x7f0f10ca

    invoke-virtual {v1, v2}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/Tooltip$Builder;->startFinger()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v1

    new-instance v2, Lcom/narvii/drawer/DrawerHost$21;

    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerHost$21;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/Tooltip$Builder;->onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v1

    .line 1696
    invoke-virtual {v1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object v1

    .line 1697
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {v2, v1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    goto :goto_2

    .line 1700
    :cond_6
    invoke-virtual {v4}, Lcom/narvii/util/ToolTipHelper;->resumeTooltipAnimation()V

    .line 1704
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1705
    new-instance v2, Lcom/narvii/drawer/DrawerHost$22;

    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerHost$22;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1723
    iget-boolean v2, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    if-eqz v2, :cond_8

    const v2, 0x7f09039b

    .line 1724
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1726
    :cond_8
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1728
    :goto_3
    const/4 v4, 0x1

    :cond_9
    const v1, 0xfb0003

    if-ne p1, v1, :cond_a

    .line 1733
    sget-wide v1, Lcom/narvii/drawer/DrawerHost;->RESET_SCROLL_TIME:J

    invoke-virtual {p0, v1, v2}, Lcom/narvii/drawer/DrawerHost;->scheduleScrollToTop(J)V

    const/4 v4, 0x1

    :cond_a
    if-ne p1, v0, :cond_c

    .line 1737
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    .line 1738
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    .line 1740
    sget-wide v0, Lcom/narvii/drawer/DrawerHost;->RESET_SCROLL_TIME:J

    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->scheduleScrollToTop(J)V

    goto :goto_4

    .line 1742
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->unscheduleScrollToTop()V

    :goto_4
    const/4 v4, 0x1

    :cond_c
    if-eqz v4, :cond_d

    return v3

    .line 1749
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->onEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 293
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09039b

    .line 295
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903a3

    .line 296
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090396

    .line 298
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903ad

    .line 299
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a1

    .line 300
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initAccountInfoLayout()V

    .line 303
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initTopEntryContainer()V

    .line 304
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initSecondEntryContainer()V

    .line 305
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initModerationLayout()V

    .line 306
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initMoreOptionsLayout()V

    const v1, 0x7f0903a2

    .line 308
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVScrollView;

    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 309
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVScrollView;->setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V

    const v1, 0x7f090b2d

    .line 310
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v2, 0x0

    .line 311
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 312
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    invoke-virtual {v1, v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVScrollView;)V

    .line 313
    invoke-virtual {v1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    const v1, 0x7f0902d3

    .line 316
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d5

    .line 318
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    const v3, 0x7f0f0b12

    goto :goto_1

    :cond_1
    const v3, 0x7f0f0b0f

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0902d4

    .line 321
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v3, v4, :cond_2

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    .line 324
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 321
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 328
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    :cond_3
    const v0, 0x7f0902b4

    .line 333
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0902b3

    .line 335
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    .line 336
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    :cond_5
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateMoreOptionsLayout()V

    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 1778
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1779
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1222
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendCategoryRequest()V

    .line 1223
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendKindredCommunityRequest()V

    .line 1224
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    .line 1225
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->cid:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    :cond_0
    const/16 v0, 0x11

    .line 1227
    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    const-wide/16 v0, 0x0

    .line 1229
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1230
    iget v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 1233
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1234
    iget v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 1237
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1238
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    :cond_3
    return-void
.end method

.method onRefreshFinish(I)V
    .locals 1

    .line 1243
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    const p1, 0x7f090b2d

    .line 1244
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 1245
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 1785
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    if-eqz p1, :cond_0

    .line 1786
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public refreshCommunityInfo(J)Z
    .locals 5

    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    .line 1420
    iget-wide v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfoTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    add-long/2addr v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1421
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    .line 1422
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->notifyRequestCommunityListeners()V

    .line 1423
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {p2, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 1424
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget v3, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/community/info"

    .line 1425
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "withInfluencerList"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "withTopicList"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 1426
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->communityResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1427
    iput-wide v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfoTime:J

    return p1
.end method

.method public refreshGeneralCount(J)Z
    .locals 6

    .line 1373
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1374
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    .line 1376
    iget-wide v4, p0, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCountTime:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    add-long/2addr v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1377
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1378
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v0, "/community/general-check"

    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 1379
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1380
    iput-wide v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCountTime:J

    const/4 p1, 0x1

    return p1

    .line 1385
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1386
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 1387
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateGeneralCountView()V

    :cond_3
    return v1
.end method

.method public refreshReminderCheck(J)Z
    .locals 5

    .line 1504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1505
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 1506
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheckTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    add-long/2addr v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 1507
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1508
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string/jumbo v2, "reminder/check"

    invoke-virtual {p2, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const/4 v2, 0x1

    .line 1509
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "ignoreUnreadChatThreadsCount"

    invoke-virtual {p2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1510
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "timezone"

    invoke-virtual {p2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 1511
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1512
    iput-wide v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheckTime:J

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method removeLaunchSplashAndCloseDrawer()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 2755
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer(J)V

    return-void
.end method

.method removeLaunchSplashAndCloseDrawer(J)V
    .locals 4

    .line 2759
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2760
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 2762
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 2764
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    .line 2765
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    instance-of v3, v2, Lcom/narvii/app/DrawerActivity;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 2767
    :cond_2
    new-instance v2, Lcom/narvii/drawer/DrawerHost$28;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/drawer/DrawerHost$28;-><init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;Lcom/narvii/app/DrawerActivity;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 2778
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public removeRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method scheduleScrollToTop(J)V
    .locals 2

    .line 1754
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1755
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1757
    :cond_0
    new-instance v0, Lcom/narvii/drawer/DrawerHost$ScrollToTop;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$ScrollToTop;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    .line 1759
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public sendEvent(ILjava/lang/Object;)Z
    .locals 2

    .line 1637
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->sendingEvent:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 1638
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->sendEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public showLotteryPrompt()V
    .locals 6

    .line 935
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 938
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 940
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 941
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 943
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v3, "topActivity"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/services/TopActivityService;

    if-eqz v2, :cond_2

    .line 945
    invoke-virtual {v2}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    .line 946
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_2

    .line 947
    move-object v3, v2

    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 948
    sget v4, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "config"

    .line 950
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    move-object v1, v2

    .line 956
    :cond_2
    nop

    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_4

    .line 957
    move-object v2, v1

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 961
    :cond_3
    :try_start_0
    new-instance v2, Lcom/narvii/checkin/lottery/LotteryDialog;

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-direct {v2, v1, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;-><init>(Lcom/narvii/app/NVActivity;I)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 962
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "lucky draw"

    .line 964
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected showQuickCommuntiySwitcher()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    return v0
.end method

.method public smoothScrollToTop(Z)V
    .locals 3

    .line 1580
    new-instance v0, Lcom/narvii/drawer/DrawerHost$19;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$19;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x15e

    .line 1588
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1590
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 355
    sget-object v0, Lcom/narvii/drawer/DrawerHost;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->fromGlobalLaunch:Z

    .line 356
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->fromGlobalLaunch:Z

    const-wide/32 v1, 0x493e0

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    sget-wide v3, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    .line 357
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->fromGlobalLaunch:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-wide v1, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    .line 358
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 359
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 360
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 363
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_3

    :cond_2
    const-wide/16 v0, 0x0

    .line 365
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    .line 368
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->onCommunityUpdated()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1598
    new-instance v0, Lcom/narvii/drawer/DrawerHost$20;

    invoke-direct {v0, p0, p1}, Lcom/narvii/drawer/DrawerHost$20;-><init>(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 377
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public unbind()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    .line 410
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 416
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method unscheduleScrollToTop()V
    .locals 2

    .line 1763
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1764
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1765
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public updateAccount()V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateAccountInfoLayout()V

    .line 984
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateModerationLayout()V

    .line 985
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateMoreOptionsLayout()V

    return-void
.end method

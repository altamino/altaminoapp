.class public Lcom/narvii/drawer/DrawerHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;,
        Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;,
        Lcom/narvii/drawer/DrawerHost$ScrollToTop;,
        Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;,
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

.field broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    const-wide/16 v1, 0x3a98

    .line 5
    .line 6
    .line 7
    const-wide/32 v3, 0xea60

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-wide v5, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v5, v3

    .line 13
    .line 14
    :goto_0
    sput-wide v5, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-wide v1, v3

    .line 19
    .line 20
    :goto_1
    sput-wide v1, Lcom/narvii/drawer/DrawerHost;->RESET_SCROLL_TIME:J

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/drawer/DrawerHost;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 33
    .line 34
    sput-object v0, Lcom/narvii/drawer/DrawerHost;->DRAWER_OPEN_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance p2, Lcom/narvii/util/statistics/TmpValue;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->sendingEvent:Lcom/narvii/util/statistics/TmpValue;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/util/EventDispatcher;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    .line 25
    .line 26
    new-instance p2, Lcom/narvii/drawer/DrawerHost$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$1;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/drawer/DrawerHost$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$2;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    new-instance p2, Lcom/narvii/drawer/DrawerHost$3;

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$3;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 44
    .line 45
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 46
    .line 47
    new-instance p2, Lcom/narvii/drawer/DrawerHost$4;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$4;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 51
    .line 52
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 53
    .line 54
    new-instance p2, Lcom/narvii/drawer/DrawerHost$5;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$5;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 58
    .line 59
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 60
    .line 61
    new-instance p2, Lcom/narvii/drawer/DrawerHost$6;

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$6;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 65
    .line 66
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->checkInTouchListener:Landroid/view/View$OnTouchListener;

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/drawer/DrawerHost$7;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$7;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 72
    .line 73
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->checkInStart:Lcom/narvii/util/Callback;

    .line 74
    .line 75
    new-instance p2, Lcom/narvii/drawer/DrawerHost$8;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$8;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 79
    .line 80
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->checkInFire:Lcom/narvii/util/Callback;

    .line 81
    .line 82
    new-instance p2, Lcom/narvii/drawer/DrawerHost$11;

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$11;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 86
    .line 87
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->categoryClickListener:Landroid/view/View$OnClickListener;

    .line 88
    .line 89
    new-instance p2, Lcom/narvii/drawer/DrawerHost$12;

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$12;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 93
    .line 94
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->kindredClickListener:Landroid/view/View$OnClickListener;

    .line 95
    .line 96
    new-instance p2, Lcom/narvii/drawer/DrawerHost$13;

    .line 97
    .line 98
    const-class v0, Lcom/narvii/master/CommunityListResponse;

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$13;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    .line 102
    .line 103
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 104
    .line 105
    new-instance p2, Lcom/narvii/drawer/DrawerHost$14;

    .line 106
    .line 107
    const-class v0, Lcom/narvii/flag/model/GeneraCheckResponse;

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$14;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    .line 111
    .line 112
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 113
    .line 114
    new-instance p2, Lcom/narvii/drawer/DrawerHost$16;

    .line 115
    .line 116
    const-class v0, Lcom/narvii/community/FullCommunityResponse;

    .line 117
    .line 118
    .line 119
    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$16;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    .line 120
    .line 121
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->communityResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 122
    .line 123
    new-instance p2, Lcom/narvii/drawer/DrawerHost$17;

    .line 124
    .line 125
    const-class v0, Lcom/narvii/community/ReminderCheckResult;

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$17;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    .line 129
    .line 130
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 131
    .line 132
    new-instance p2, Lcom/narvii/drawer/DrawerHost$18;

    .line 133
    .line 134
    const-class v0, Lcom/narvii/model/api/BlogCategoryListResponse;

    .line 135
    .line 136
    .line 137
    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$18;-><init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V

    .line 138
    .line 139
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->categoryResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 140
    .line 141
    new-instance p2, Lcom/narvii/drawer/DrawerHost$23;

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$23;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 145
    .line 146
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 147
    .line 148
    new-instance p2, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;

    .line 149
    const/4 v0, 0x1

    .line 150
    .line 151
    .line 152
    invoke-direct {p2, p0, v0}, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;-><init>(Lcom/narvii/drawer/DrawerHost;I)V

    .line 153
    .line 154
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener:Lcom/narvii/amino/page/PageItemClickListener;

    .line 155
    .line 156
    new-instance p2, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;

    .line 157
    const/4 v1, 0x2

    .line 158
    .line 159
    .line 160
    invoke-direct {p2, p0, v1}, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;-><init>(Lcom/narvii/drawer/DrawerHost;I)V

    .line 161
    .line 162
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener2:Lcom/narvii/amino/page/PageItemClickListener;

    .line 163
    .line 164
    new-instance p2, Lcom/narvii/drawer/DrawerHost$26;

    .line 165
    .line 166
    .line 167
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$26;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 168
    .line 169
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 170
    .line 171
    new-instance p2, Lcom/narvii/drawer/DrawerHost$27;

    .line 172
    .line 173
    .line 174
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$27;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 175
    .line 176
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 177
    .line 178
    new-instance p2, Lcom/narvii/drawer/DrawerHost$29;

    .line 179
    .line 180
    .line 181
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$29;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 182
    .line 183
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    move-object p2, p1

    .line 185
    .line 186
    check-cast p2, Lcom/narvii/app/NVContext;

    .line 187
    .line 188
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 189
    .line 190
    .line 191
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->fakePVId:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 201
    .line 202
    const-string v2, "config"

    .line 203
    .line 204
    .line 205
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 209
    .line 210
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 214
    move-result v1

    .line 215
    .line 216
    iput v1, p0, Lcom/narvii/drawer/DrawerHost;->cid:I

    .line 217
    .line 218
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 222
    move-result v1

    .line 223
    .line 224
    iput v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 225
    .line 226
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 227
    .line 228
    const-string v2, "account"

    .line 229
    .line 230
    .line 231
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 235
    .line 236
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 237
    .line 238
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 239
    .line 240
    const-string v2, "community"

    .line 241
    .line 242
    .line 243
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 247
    .line 248
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 259
    .line 260
    new-instance v1, Lcom/narvii/util/NotificationManagerHelper;

    .line 261
    .line 262
    .line 263
    invoke-direct {v1, p1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 264
    .line 265
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 266
    .line 267
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 268
    .line 269
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 270
    .line 271
    .line 272
    invoke-direct {p1, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 273
    .line 274
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 275
    .line 276
    const-string p1, "chat"

    .line 277
    .line 278
    .line 279
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 283
    .line 284
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 285
    .line 286
    const-string p1, "myCommunityList"

    .line 287
    .line 288
    .line 289
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 290
    move-result-object p1

    .line 291
    .line 292
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 293
    .line 294
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 295
    .line 296
    new-instance p1, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 297
    .line 298
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 299
    .line 300
    .line 301
    invoke-direct {p1, p0, p2}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;-><init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/app/NVContext;)V

    .line 302
    .line 303
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 304
    .line 305
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 309
    .line 310
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 311
    .line 312
    const/16 p2, 0x64

    .line 313
    .line 314
    if-ne p1, p2, :cond_0

    .line 315
    goto :goto_0

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 317
    .line 318
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    .line 319
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/drawer/DrawerHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/drawer/DrawerHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesHint:Landroid/widget/TextView;

    return-object p0
.end method

.method private exitCommunityTooltipDone()V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v1, "prefs"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string/jumbo v1, "tooltip_community_exit_done"

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/drawer/DrawerHost;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesVisiable:Z

    return p0
.end method

.method private getChatUnreadCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 12
    move-result v0

    .line 13
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/modulization/page/PageManager;->pageItemHashMap:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Lcom/narvii/modulization/page/Page;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Lcom/narvii/modulization/page/Page;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    new-instance v1, Lcom/narvii/modulization/page/Page;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Lcom/narvii/modulization/page/Page;-><init>()V

    .line 44
    .line 45
    const-string v2, "ndc://default"

    .line 46
    .line 47
    iput-object v2, v1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    .line 53
    new-instance v1, Lcom/narvii/modulization/page/Page;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Lcom/narvii/modulization/page/Page;-><init>()V

    .line 57
    .line 58
    const-string v2, "http://www.altamino.top"

    .line 59
    .line 60
    iput-object v2, v1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-object v0
.end method

.method static bridge synthetic h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/drawer/DrawerHost;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    return-void
.end method

.method private initAccountInfoLayout()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0171

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0989

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a09f9

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a049e

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0484

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a0471

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->checkInTouchListener:Landroid/view/View$OnTouchListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a0472

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f0a02d8

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a0475

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Lcom/narvii/checkin/CheckInCircle;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->checkInFire:Lcom/narvii/util/Callback;

    .line 108
    .line 109
    iput-object v2, v1, Lcom/narvii/checkin/CheckInCircle;->fireCallback:Lcom/narvii/util/Callback;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    check-cast v0, Lcom/narvii/checkin/CheckInCircle;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->checkInStart:Lcom/narvii/util/Callback;

    .line 118
    .line 119
    iput-object v1, v0, Lcom/narvii/checkin/CheckInCircle;->startCallback:Lcom/narvii/util/Callback;

    .line 120
    .line 121
    .line 122
    const v0, 0x7f0a0055

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private initModerationLayout()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a047b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a048d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a049a

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a048b

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0486

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a0477

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moderationListener:Landroid/view/View$OnClickListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method private initMoreOptionsLayout()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0497

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a046b

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0469

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0498

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0476

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a047e

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a0479

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->moreOptionsListener:Landroid/view/View$OnClickListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f0a047a

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method private initSecondEntryContainer()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0caf

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0cb0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesHint:Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0cb1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesIndicator:Landroid/widget/ImageView;

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0a0cb3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/view/ViewStub;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondViewStub:Landroid/view/ViewStub;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/drawer/DrawerHost$25;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/narvii/drawer/DrawerHost$25;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method private initTopEntryContainer()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0ed8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/amino/page/PageTopLevelLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener:Lcom/narvii/amino/page/PageItemClickListener;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/amino/page/PageTopLevelLayout;->setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateTopEntryContainer()V

    .line 20
    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->returnedCommunity:Lcom/narvii/model/Community;

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/drawer/DrawerHost;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->secondEntriesVisiable:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/amino/page/PageSecondLevelLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->exitCommunityTooltipDone()V

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->notifyRequestCommunityListeners()V

    return-void
.end method

.method private notifyRequestCommunityListeners()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/drawer/DrawerHost$15;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/drawer/DrawerHost$15;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendCategoryRequest()V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendKindredCommunityRequest()V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->showStreakRepairDialog()V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateChat()V

    return-void
.end method

.method public static safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/drawer/DrawerHost;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendCategoryRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-string v2, "/blog-category?size=100"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    const-string v3, "api"

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->categoryResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    .line 50
    :cond_2
    return-void
.end method

.method private sendKindredCommunityRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    const/4 v2, 0x0

    .line 15
    .line 16
    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    const-string v3, "/community/kindred"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    const-string/jumbo v3, "start"

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-string/jumbo v3, "size"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 63
    .line 64
    const-string v3, "api"

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    .line 81
    :cond_2
    return-void
.end method

.method private showStreakRepairDialog()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/checkin/CheckInHelper;

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    const-string v0, "Left Side Panel"

    .line 19
    .line 20
    iput-object v0, v1, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/drawer/DrawerHost$24;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$24;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog(Lcom/narvii/util/Callback;)V

    .line 29
    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateGeneralCountView()V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    return-void
.end method

.method private updateAccountInfoLayout()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    move v3, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v2

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v4, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    const-string v5, "isMemberOfTeamAmino"

    .line 28
    .line 29
    .line 30
    filled-new-array {v5}, [Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 35
    move-result v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v4, v2

    .line 38
    .line 39
    :goto_1
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 43
    move-result v5

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    move v5, v1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v5, v2

    .line 49
    .line 50
    .line 51
    :goto_2
    const v6, 0x7f0a0f36

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    check-cast v6, Lcom/narvii/widget/UserAvatarLayout;

    .line 58
    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move v5, v2

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    :goto_3
    move v5, v1

    .line 66
    .line 67
    .line 68
    :goto_4
    invoke-virtual {v6, v5}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 69
    .line 70
    const/16 v5, 0x8

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    move v7, v5

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move v7, v2

    .line 76
    .line 77
    .line 78
    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    const/high16 v7, 0x40400000    # 3.0f

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 87
    .line 88
    .line 89
    const v6, 0x7f0a0171

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v6

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    if-eqz v3, :cond_6

    .line 98
    .line 99
    iget-boolean v7, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    .line 100
    .line 101
    if-nez v7, :cond_6

    .line 102
    .line 103
    .line 104
    const v7, 0x3f19999a    # 0.6f

    .line 105
    goto :goto_6

    .line 106
    .line 107
    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    .line 108
    .line 109
    .line 110
    :goto_6
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 111
    .line 112
    .line 113
    const v6, 0x7f0a010b

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v6

    .line 118
    .line 119
    if-eqz v4, :cond_7

    .line 120
    move v4, v2

    .line 121
    goto :goto_7

    .line 122
    :cond_7
    move v4, v5

    .line 123
    .line 124
    .line 125
    :goto_7
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    const v4, 0x7f0a017c

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v4

    .line 133
    .line 134
    if-nez v0, :cond_8

    .line 135
    move v6, v5

    .line 136
    goto :goto_8

    .line 137
    :cond_8
    move v6, v2

    .line 138
    .line 139
    .line 140
    :goto_8
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    const v4, 0x7f0a09f9

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v4

    .line 148
    .line 149
    check-cast v4, Lcom/narvii/widget/NicknameView;

    .line 150
    .line 151
    if-nez v0, :cond_9

    .line 152
    move v6, v5

    .line 153
    goto :goto_9

    .line 154
    :cond_9
    move v6, v2

    .line 155
    .line 156
    .line 157
    :goto_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 161
    .line 162
    .line 163
    const v4, 0x7f0a049e

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object v4

    .line 168
    .line 169
    check-cast v4, Lcom/narvii/widget/RankingTitleView;

    .line 170
    .line 171
    iput-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 175
    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    if-eqz v3, :cond_a

    .line 179
    goto :goto_a

    .line 180
    .line 181
    :cond_a
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    .line 185
    move-result v4

    .line 186
    .line 187
    if-nez v4, :cond_b

    .line 188
    .line 189
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 190
    .line 191
    .line 192
    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->cancelFadeInAnimator(Landroid/view/View;)V

    .line 193
    .line 194
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    goto :goto_b

    .line 199
    .line 200
    :cond_b
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v1}, Lcom/narvii/widget/RankingTitleView;->setShowBadge(Z)V

    .line 209
    goto :goto_b

    .line 210
    .line 211
    :cond_c
    :goto_a
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 212
    .line 213
    .line 214
    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->cancelFadeInAnimator(Landroid/view/View;)V

    .line 215
    .line 216
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    :goto_b
    iget-boolean v4, p0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 222
    .line 223
    if-nez v4, :cond_d

    .line 224
    .line 225
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 226
    .line 227
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v0, v6}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 231
    .line 232
    .line 233
    :cond_d
    const v4, 0x7f0a0471

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    move-result-object v4

    .line 238
    .line 239
    if-eqz v0, :cond_e

    .line 240
    .line 241
    if-eqz v3, :cond_e

    .line 242
    .line 243
    .line 244
    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->cancelFadeOutAnimator(Landroid/view/View;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 248
    move-result v6

    .line 249
    .line 250
    if-eqz v6, :cond_f

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    .line 257
    goto :goto_c

    .line 258
    .line 259
    .line 260
    :cond_e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 261
    move-result v6

    .line 262
    .line 263
    if-nez v6, :cond_f

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    iget-boolean v6, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    .line 269
    .line 270
    if-eqz v6, :cond_f

    .line 271
    .line 272
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    .line 276
    move-result v6

    .line 277
    .line 278
    if-eqz v6, :cond_f

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    const/16 v6, 0xfa

    .line 284
    .line 285
    .line 286
    invoke-static {v4, v6}, Lcom/narvii/util/ViewUtils;->fadeOut(Landroid/view/View;I)V

    .line 287
    .line 288
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 289
    .line 290
    .line 291
    invoke-static {v4}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;)V

    .line 292
    .line 293
    .line 294
    :cond_f
    :goto_c
    const v4, 0x7f0a0472

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 298
    move-result-object v4

    .line 299
    .line 300
    sget-boolean v6, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 301
    .line 302
    if-eqz v6, :cond_10

    .line 303
    .line 304
    iget-boolean v6, p0, Lcom/narvii/drawer/DrawerHost;->fakeCheckin:Z

    .line 305
    .line 306
    if-nez v6, :cond_10

    .line 307
    .line 308
    if-eqz v0, :cond_10

    .line 309
    .line 310
    if-nez v3, :cond_10

    .line 311
    move v3, v2

    .line 312
    goto :goto_d

    .line 313
    :cond_10
    move v3, v5

    .line 314
    .line 315
    .line 316
    :goto_d
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    const v3, 0x7f0a0475

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    move-result-object v3

    .line 324
    .line 325
    if-eqz v0, :cond_11

    .line 326
    move v4, v2

    .line 327
    goto :goto_e

    .line 328
    :cond_11
    move v4, v5

    .line 329
    .line 330
    .line 331
    :goto_e
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    const v3, 0x7f0a02d6

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 338
    move-result-object v3

    .line 339
    .line 340
    check-cast v3, Lcom/narvii/checkin/CheckInStreakBar;

    .line 341
    .line 342
    new-instance v4, Lcom/narvii/checkin/CheckInHelper;

    .line 343
    .line 344
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 345
    .line 346
    .line 347
    invoke-direct {v4, v6}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 348
    .line 349
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    .line 353
    move-result-object v6

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v6}, Lcom/narvii/checkin/CheckInHelper;->getStreakLostList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    .line 357
    move-result-object v7

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 361
    move-result v8

    .line 362
    .line 363
    if-eqz v0, :cond_12

    .line 364
    .line 365
    .line 366
    invoke-static {v7}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 367
    move-result v9

    .line 368
    .line 369
    if-nez v9, :cond_12

    .line 370
    move v9, v1

    .line 371
    goto :goto_f

    .line 372
    :cond_12
    move v9, v2

    .line 373
    .line 374
    .line 375
    :goto_f
    invoke-static {v3, v9}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 376
    .line 377
    .line 378
    const v10, 0x7f0a02d7

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 382
    move-result-object v10

    .line 383
    .line 384
    .line 385
    invoke-static {v10, v9}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 389
    move-result v9

    .line 390
    .line 391
    iget-boolean v10, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    .line 392
    .line 393
    if-eqz v10, :cond_13

    .line 394
    .line 395
    if-eqz v8, :cond_13

    .line 396
    .line 397
    if-nez v9, :cond_13

    .line 398
    .line 399
    .line 400
    invoke-static {v3}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    :cond_13
    invoke-virtual {v3, v7}, Lcom/narvii/checkin/CheckInStreakBar;->updateCells(Ljava/util/List;)V

    .line 404
    .line 405
    .line 406
    const v3, 0x7f0a0ddd

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 410
    move-result-object v3

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 414
    move-result v7

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v6}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z

    .line 418
    move-result v4

    .line 419
    .line 420
    if-eqz v4, :cond_14

    .line 421
    move v4, v2

    .line 422
    goto :goto_10

    .line 423
    :cond_14
    move v4, v5

    .line 424
    .line 425
    .line 426
    :goto_10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 430
    move-result v4

    .line 431
    .line 432
    iget-boolean v6, p0, Lcom/narvii/drawer/DrawerHost;->checkInPressed:Z

    .line 433
    .line 434
    if-eqz v6, :cond_15

    .line 435
    .line 436
    if-eqz v7, :cond_15

    .line 437
    .line 438
    if-nez v4, :cond_15

    .line 439
    .line 440
    .line 441
    invoke-static {v3}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;)V

    .line 442
    .line 443
    .line 444
    :cond_15
    const v3, 0x7f0a0a17

    .line 445
    .line 446
    .line 447
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 448
    move-result-object v3

    .line 449
    .line 450
    if-eqz v0, :cond_17

    .line 451
    .line 452
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 456
    move-result v4

    .line 457
    .line 458
    if-eqz v4, :cond_16

    .line 459
    goto :goto_11

    .line 460
    :cond_16
    move v4, v2

    .line 461
    goto :goto_12

    .line 462
    :cond_17
    :goto_11
    move v4, v5

    .line 463
    .line 464
    .line 465
    :goto_12
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    .line 471
    move-result v3

    .line 472
    .line 473
    if-eqz v3, :cond_18

    .line 474
    const/4 v4, 0x2

    .line 475
    .line 476
    if-eq v3, v4, :cond_18

    .line 477
    move v3, v1

    .line 478
    goto :goto_13

    .line 479
    :cond_18
    move v3, v2

    .line 480
    .line 481
    .line 482
    :goto_13
    const v4, 0x7f0a0989

    .line 483
    .line 484
    .line 485
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 486
    move-result-object v4

    .line 487
    .line 488
    check-cast v4, Lcom/narvii/widget/MoodView;

    .line 489
    .line 490
    if-eqz v3, :cond_19

    .line 491
    .line 492
    if-eqz v0, :cond_19

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 496
    move-result-object v6

    .line 497
    .line 498
    .line 499
    invoke-static {v6}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 500
    move-result v6

    .line 501
    .line 502
    if-nez v6, :cond_19

    .line 503
    goto :goto_14

    .line 504
    :cond_19
    move v1, v2

    .line 505
    .line 506
    .line 507
    :goto_14
    invoke-virtual {v4, v1}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 508
    .line 509
    if-eqz v0, :cond_1a

    .line 510
    .line 511
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 515
    move-result v1

    .line 516
    .line 517
    if-eqz v1, :cond_1a

    .line 518
    move v1, v2

    .line 519
    goto :goto_15

    .line 520
    :cond_1a
    move v1, v5

    .line 521
    .line 522
    .line 523
    :goto_15
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    .line 525
    if-eqz v0, :cond_1b

    .line 526
    .line 527
    if-eqz v3, :cond_1b

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 531
    move-result-object v1

    .line 532
    goto :goto_16

    .line 533
    :cond_1b
    const/4 v1, 0x0

    .line 534
    .line 535
    .line 536
    :goto_16
    invoke-virtual {v4, v0, v1}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    .line 537
    .line 538
    .line 539
    const v1, 0x7f0a0484

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 543
    move-result-object v1

    .line 544
    .line 545
    if-nez v0, :cond_1c

    .line 546
    move v0, v2

    .line 547
    goto :goto_17

    .line 548
    :cond_1c
    move v0, v5

    .line 549
    .line 550
    .line 551
    :goto_17
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 552
    .line 553
    .line 554
    const v0, 0x7f0a0055

    .line 555
    .line 556
    .line 557
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 558
    move-result-object v1

    .line 559
    .line 560
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    .line 564
    move-result v3

    .line 565
    .line 566
    if-lez v3, :cond_1d

    .line 567
    goto :goto_18

    .line 568
    :cond_1d
    move v2, v5

    .line 569
    .line 570
    .line 571
    :goto_18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 575
    move-result-object v0

    .line 576
    .line 577
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->accountListener:Landroid/view/View$OnClickListener;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    return-void
.end method

.method private updateCategory()V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a046e

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isTopicCategoryEnabled()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    new-instance v4, Ljava/util/Stack;

    .line 32
    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 35
    .line 36
    new-instance v5, Ljava/util/Stack;

    .line 37
    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 43
    move-result v6

    .line 44
    const/4 v7, 0x1

    .line 45
    sub-int/2addr v6, v7

    .line 46
    .line 47
    :goto_0
    if-ltz v6, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 51
    move-result-object v8

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 55
    move-result v9

    .line 56
    .line 57
    .line 58
    const v10, 0x7f0a046f

    .line 59
    .line 60
    if-ne v9, v10, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 68
    move-result v9

    .line 69
    .line 70
    .line 71
    const v10, 0x7f0a0470

    .line 72
    .line 73
    if-ne v9, v10, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    iget-object v8, v0, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-nez v8, :cond_5

    .line 95
    .line 96
    iget-object v3, v0, Lcom/narvii/drawer/DrawerHost;->blogCategoryError:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v3, :cond_4

    .line 99
    .line 100
    .line 101
    const v2, 0x7f0d05ee

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v2, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 105
    .line 106
    goto/16 :goto_a

    .line 107
    .line 108
    .line 109
    :cond_4
    const v3, 0x7f0d05ea

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    new-instance v3, Lcom/narvii/drawer/DrawerHost$9;

    .line 116
    .line 117
    .line 118
    invoke-direct {v3, v0}, Lcom/narvii/drawer/DrawerHost$9;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    .line 126
    goto/16 :goto_a

    .line 127
    :cond_5
    const/4 v9, 0x3

    .line 128
    .line 129
    new-array v10, v9, [F

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v8

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v11

    .line 138
    .line 139
    if-eqz v11, :cond_10

    .line 140
    .line 141
    .line 142
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v11

    .line 144
    .line 145
    check-cast v11, Lcom/narvii/model/BlogCategory;

    .line 146
    .line 147
    iget v12, v11, Lcom/narvii/model/BlogCategory;->type:I

    .line 148
    .line 149
    if-ne v12, v7, :cond_7

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    .line 153
    move-result v12

    .line 154
    .line 155
    if-eqz v12, :cond_6

    .line 156
    .line 157
    .line 158
    const v12, 0x7f0d01f3

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 162
    move-result-object v12

    .line 163
    .line 164
    iget v13, v0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 168
    goto :goto_3

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 172
    move-result-object v12

    .line 173
    .line 174
    check-cast v12, Landroid/view/View;

    .line 175
    .line 176
    iget v13, v0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    :goto_3
    move-object v13, v12

    .line 181
    .line 182
    check-cast v13, Landroid/widget/TextView;

    .line 183
    .line 184
    iget-object v11, v11, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    .line 192
    goto/16 :goto_9

    .line 193
    :cond_7
    const/4 v13, 0x2

    .line 194
    .line 195
    if-eqz v12, :cond_8

    .line 196
    .line 197
    if-eq v12, v13, :cond_8

    .line 198
    .line 199
    if-ne v12, v9, :cond_f

    .line 200
    .line 201
    .line 202
    :cond_8
    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    .line 203
    move-result v12

    .line 204
    .line 205
    if-eqz v12, :cond_9

    .line 206
    .line 207
    .line 208
    const v12, 0x7f0d01f4

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    move-result-object v12

    .line 213
    .line 214
    iget v14, v0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    .line 215
    .line 216
    .line 217
    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    .line 219
    iget-object v14, v0, Lcom/narvii/drawer/DrawerHost;->categoryClickListener:Landroid/view/View$OnClickListener;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    goto :goto_4

    .line 224
    .line 225
    .line 226
    :cond_9
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 227
    move-result-object v12

    .line 228
    .line 229
    check-cast v12, Landroid/view/View;

    .line 230
    .line 231
    iget v14, v0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    .line 232
    .line 233
    .line 234
    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 235
    .line 236
    :goto_4
    iget-object v14, v11, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    move-result v14

    .line 241
    .line 242
    .line 243
    const v15, 0x7f0a06d5

    .line 244
    .line 245
    if-eqz v14, :cond_a

    .line 246
    .line 247
    iget v14, v0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    .line 248
    .line 249
    .line 250
    invoke-static {v14, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 251
    .line 252
    .line 253
    const v14, 0x3f4ccccd    # 0.8f

    .line 254
    .line 255
    aget v16, v10, v13

    .line 256
    .line 257
    mul-float v16, v16, v14

    .line 258
    .line 259
    aput v16, v10, v13

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 263
    move-result-object v13

    .line 264
    .line 265
    const/high16 v14, 0x41f00000    # 30.0f

    .line 266
    .line 267
    .line 268
    invoke-static {v13, v14}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 269
    move-result v20

    .line 270
    .line 271
    .line 272
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    move-result-object v13

    .line 274
    .line 275
    check-cast v13, Lcom/narvii/widget/NVImageView;

    .line 276
    .line 277
    new-instance v14, Lcom/narvii/widget/CommunityNameDrawable;

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 281
    move-result-object v17

    .line 282
    .line 283
    iget-object v2, v11, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    .line 284
    .line 285
    const/16 v19, -0x1

    .line 286
    .line 287
    .line 288
    invoke-static {v10}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 289
    move-result v21

    .line 290
    .line 291
    move-object/from16 v16, v14

    .line 292
    .line 293
    move-object/from16 v18, v2

    .line 294
    .line 295
    .line 296
    invoke-direct/range {v16 .. v21}, Lcom/narvii/widget/CommunityNameDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;IFI)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13, v14}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    goto :goto_5

    .line 301
    .line 302
    .line 303
    :cond_a
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 304
    move-result-object v2

    .line 305
    .line 306
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 307
    .line 308
    iget-object v13, v11, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    move-result-object v2

    .line 316
    .line 317
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 318
    .line 319
    .line 320
    const v13, -0x333334

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v13}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 327
    move-result-object v2

    .line 328
    .line 329
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 333
    move-result-object v13

    .line 334
    .line 335
    const/high16 v14, 0x3f000000    # 0.5f

    .line 336
    .line 337
    .line 338
    invoke-static {v13, v14}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 339
    move-result v13

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v13}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    .line 343
    .line 344
    :goto_5
    iget v2, v11, Lcom/narvii/model/BlogCategory;->status:I

    .line 345
    .line 346
    const/16 v13, 0x9

    .line 347
    .line 348
    if-ne v2, v9, :cond_b

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 352
    move-result-object v2

    .line 353
    .line 354
    .line 355
    const v14, 0x7f0801b2

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 359
    move-result-object v2

    .line 360
    goto :goto_6

    .line 361
    .line 362
    :cond_b
    if-ne v2, v13, :cond_c

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 366
    move-result-object v2

    .line 367
    .line 368
    .line 369
    const v14, 0x7f0801b0

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 373
    move-result-object v2

    .line 374
    goto :goto_6

    .line 375
    :cond_c
    const/4 v2, 0x0

    .line 376
    .line 377
    .line 378
    :goto_6
    const v14, 0x7f0a0d90

    .line 379
    .line 380
    .line 381
    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 382
    move-result-object v14

    .line 383
    .line 384
    check-cast v14, Landroid/widget/ImageView;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    .line 389
    .line 390
    const v2, 0x7f0a0e9e

    .line 391
    .line 392
    .line 393
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 394
    move-result-object v14

    .line 395
    .line 396
    check-cast v14, Landroid/widget/TextView;

    .line 397
    .line 398
    iget-object v3, v11, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    const v3, 0x7f0a0dea

    .line 405
    .line 406
    .line 407
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 408
    move-result-object v14

    .line 409
    .line 410
    check-cast v14, Landroid/widget/TextView;

    .line 411
    .line 412
    iget-object v7, v11, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 419
    move-result-object v7

    .line 420
    .line 421
    check-cast v7, Landroid/widget/TextView;

    .line 422
    .line 423
    iget-object v14, v11, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 427
    move-result v14

    .line 428
    .line 429
    if-eqz v14, :cond_d

    .line 430
    .line 431
    const/16 v14, 0x8

    .line 432
    goto :goto_7

    .line 433
    :cond_d
    const/4 v14, 0x0

    .line 434
    .line 435
    .line 436
    :goto_7
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    iget v7, v11, Lcom/narvii/model/BlogCategory;->status:I

    .line 439
    .line 440
    if-ne v7, v13, :cond_e

    .line 441
    .line 442
    .line 443
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 444
    move-result-object v7

    .line 445
    .line 446
    .line 447
    const v13, 0x3e99999a    # 0.3f

    .line 448
    .line 449
    .line 450
    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 454
    move-result-object v2

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 461
    move-result-object v2

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 465
    goto :goto_8

    .line 466
    .line 467
    .line 468
    :cond_e
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 469
    move-result-object v7

    .line 470
    .line 471
    const/high16 v13, 0x3f800000    # 1.0f

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 478
    move-result-object v2

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 485
    move-result-object v2

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 489
    .line 490
    .line 491
    :goto_8
    invoke-virtual {v12, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 495
    :cond_f
    :goto_9
    const/4 v2, 0x0

    .line 496
    .line 497
    const/16 v3, 0x8

    .line 498
    const/4 v7, 0x1

    .line 499
    .line 500
    goto/16 :goto_2

    .line 501
    :cond_10
    :goto_a
    return-void
.end method

.method private updateChat()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateTopLevelChatBadge()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondLevelChatBadge()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    :cond_0
    return-void
.end method

.method private updateChatBadge(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0abc

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    const/16 v1, 0x9

    .line 19
    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    const-string v1, "9+"

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    if-lez v0, :cond_2

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 39
    return-void
.end method

.method private updateGeneralCountView()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget v2, v0, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingFlagCount:I

    .line 10
    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 30
    .line 31
    iget v0, v0, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingKnowledgeBaseRequestCount:I

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    .line 35
    :goto_1
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    const/4 v3, 0x0

    .line 39
    goto :goto_2

    .line 40
    .line 41
    :cond_2
    iget-object v3, v3, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingShareRequestCountMapping:Ljava/util/HashMap;

    .line 42
    .line 43
    :goto_2
    if-eqz v3, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x72

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result v3

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v3, v1

    .line 62
    .line 63
    :goto_3
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    const/4 v4, 0x1

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    move v4, v1

    .line 85
    .line 86
    :goto_4
    const-string v5, ""

    .line 87
    .line 88
    const-string v6, "9+"

    .line 89
    .line 90
    const/16 v7, 0x9

    .line 91
    .line 92
    const/16 v8, 0x8

    .line 93
    .line 94
    .line 95
    const v9, 0x7f0a047d

    .line 96
    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 105
    goto :goto_6

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v10

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v9

    .line 117
    .line 118
    check-cast v9, Landroid/widget/TextView;

    .line 119
    .line 120
    if-le v2, v7, :cond_6

    .line 121
    move-object v2, v6

    .line 122
    goto :goto_5

    .line 123
    .line 124
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    .line 140
    :goto_5
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :goto_6
    const v2, 0x7f0a048e

    .line 144
    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 153
    goto :goto_8

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v9

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    check-cast v2, Landroid/widget/TextView;

    .line 167
    .line 168
    if-le v0, v7, :cond_8

    .line 169
    goto :goto_7

    .line 170
    .line 171
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v6

    .line 185
    .line 186
    .line 187
    :goto_7
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    :goto_8
    const v0, 0x7f0a0ada

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    move-result-object v2

    .line 195
    .line 196
    if-lez v3, :cond_9

    .line 197
    .line 198
    if-eqz v4, :cond_9

    .line 199
    goto :goto_9

    .line 200
    :cond_9
    move v1, v8

    .line 201
    .line 202
    .line 203
    :goto_9
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    check-cast v0, Landroid/widget/TextView;

    .line 210
    .line 211
    .line 212
    invoke-static {v3}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method private updateKindredCommunity()V
    .locals 11

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0481

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/GridLayout;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v5, 0x1

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunityError:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    .line 37
    const v1, 0x7f0d05ee

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0a0e51

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    instance-of v1, v0, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v1, :cond_a

    .line 52
    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    .line 61
    :cond_0
    const v3, 0x7f0d05ea

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/drawer/DrawerHost$10;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/narvii/drawer/DrawerHost$10;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    move v6, v1

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 88
    move-result v7

    .line 89
    .line 90
    if-ge v6, v7, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 94
    move-result-object v7

    .line 95
    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 100
    move-result v8

    .line 101
    .line 102
    .line 103
    const v9, 0x7f0a0798

    .line 104
    .line 105
    if-eq v8, v9, :cond_2

    .line 106
    .line 107
    .line 108
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v6

    .line 120
    .line 121
    if-eqz v6, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v6

    .line 126
    .line 127
    check-cast v6, Landroid/view/View;

    .line 128
    .line 129
    if-eqz v6, :cond_4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_5
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    .line 136
    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 139
    move-result v3

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 143
    move-result v6

    .line 144
    .line 145
    if-le v6, v3, :cond_6

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 149
    move-result v6

    .line 150
    sub-int/2addr v6, v5

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 154
    goto :goto_2

    .line 155
    .line 156
    :cond_6
    div-int/lit8 v6, v3, 0x3

    .line 157
    add-int/2addr v6, v5

    .line 158
    .line 159
    .line 160
    const v5, 0x7f0a0493

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object v5

    .line 165
    .line 166
    if-nez v3, :cond_7

    .line 167
    .line 168
    const/16 v7, 0x8

    .line 169
    goto :goto_3

    .line 170
    :cond_7
    move v7, v1

    .line 171
    .line 172
    .line 173
    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    const/4 v5, 0x3

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v5}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 181
    move v5, v1

    .line 182
    .line 183
    :goto_4
    if-ge v5, v3, :cond_a

    .line 184
    .line 185
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    .line 186
    .line 187
    .line 188
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v6

    .line 190
    .line 191
    check-cast v6, Lcom/narvii/model/Community;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 195
    move-result v7

    .line 196
    .line 197
    if-le v7, v5, :cond_8

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 201
    move-result-object v7

    .line 202
    goto :goto_5

    .line 203
    :cond_8
    const/4 v7, 0x0

    .line 204
    .line 205
    :goto_5
    if-nez v7, :cond_9

    .line 206
    .line 207
    .line 208
    const v7, 0x7f0d0418

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    move-result-object v7

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    .line 217
    .line 218
    :cond_9
    const v8, 0x7f0a036b

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object v8

    .line 223
    .line 224
    check-cast v8, Lcom/narvii/widget/ThumbImageView;

    .line 225
    .line 226
    iget-object v9, v6, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    move-result-object v9

    .line 234
    .line 235
    const/high16 v10, 0x40800000    # 4.0f

    .line 236
    .line 237
    .line 238
    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 239
    move-result v9

    .line 240
    float-to-int v9, v9

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 244
    .line 245
    .line 246
    const v8, 0x7f0a037c

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    move-result-object v8

    .line 251
    .line 252
    check-cast v8, Landroid/widget/TextView;

    .line 253
    .line 254
    iget-object v9, v6, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    .line 262
    .line 263
    const v8, 0x7f0a06eb

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    move-result-object v8

    .line 268
    .line 269
    check-cast v8, Lcom/narvii/widget/PromotionalImageView;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v6}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    .line 277
    iget-object v6, p0, Lcom/narvii/drawer/DrawerHost;->kindredClickListener:Landroid/view/View$OnClickListener;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    add-int/lit8 v5, v5, 0x1

    .line 283
    goto :goto_4

    .line 284
    :cond_a
    :goto_6
    return-void
.end method

.method private updateModerationLayout()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a047c

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 22
    move-result v4

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    move v4, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v2

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a046d

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 43
    move-result v4

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    move v4, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v4, v2

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0a048c

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    .line 80
    move-result v4

    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 88
    move-result v4

    .line 89
    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 96
    move-result v4

    .line 97
    .line 98
    if-eqz v4, :cond_2

    .line 99
    move v4, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    move v4, v2

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    const v1, 0x7f0a0488

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 117
    move-result v4

    .line 118
    .line 119
    if-eqz v4, :cond_3

    .line 120
    move v4, v3

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    move v4, v2

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    const v1, 0x7f0a0494

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 138
    move-result v4

    .line 139
    .line 140
    if-eqz v4, :cond_4

    .line 141
    move v4, v3

    .line 142
    goto :goto_4

    .line 143
    :cond_4
    move v4, v2

    .line 144
    .line 145
    .line 146
    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    const v1, 0x7f0a0478

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 159
    move-result v4

    .line 160
    .line 161
    if-eqz v4, :cond_5

    .line 162
    move v4, v3

    .line 163
    goto :goto_5

    .line 164
    :cond_5
    move v4, v2

    .line 165
    .line 166
    .line 167
    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    const v1, 0x7f0a049b

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 180
    move-result v0

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 188
    move-result v0

    .line 189
    .line 190
    if-eqz v0, :cond_6

    .line 191
    move v2, v3

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void
.end method

.method private updateMoreOptionsLayout()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0cee

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0a0cef

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    const v4, 0x7f1210b4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v1

    .line 71
    const/4 v4, 0x1

    .line 72
    .line 73
    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v5, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 76
    const/4 v6, 0x0

    .line 77
    .line 78
    aput-object v5, v4, v6

    .line 79
    .line 80
    .line 81
    const v5, 0x7f120141

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    new-instance v4, Landroid/text/SpannableString;

    .line 88
    .line 89
    .line 90
    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    iget-object v5, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v5

    .line 97
    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    iget-object v5, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 104
    move-result v1

    .line 105
    .line 106
    new-instance v5, Landroid/text/style/UnderlineSpan;

    .line 107
    .line 108
    .line 109
    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    .line 113
    move-result v7

    .line 114
    .line 115
    const/16 v8, 0x21

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    iget-object v0, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-nez v0, :cond_3

    .line 130
    move v3, v6

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-void
.end method

.method private updateSecondEntryContainer()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSidePanelLv2List()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    .line 30
    const v2, 0x7f0a0cb2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 42
    move-result v4

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    move v1, v3

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    :cond_2
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    .line 56
    move-result v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/amino/page/PageSecondLevelLayout;->setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V

    .line 60
    :cond_3
    return-void

    .line 61
    .line 62
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondEntryContainer:Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_5
    return-void
.end method

.method private updateSecondLevelChatBadge()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->secondLevelLayout:Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/amino/page/PageSecondLevelLayout;->getChatChildView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/drawer/DrawerHost;->updateChatBadge(Landroid/view/View;)V

    .line 12
    :cond_0
    return-void
.end method

.method private updateThemeUI()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    .line 18
    const/4 v1, 0x3

    .line 19
    .line 20
    new-array v1, v1, [F

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 24
    const/4 v0, 0x2

    .line 25
    .line 26
    aget v2, v1, v0

    .line 27
    .line 28
    .line 29
    const v3, 0x3f59999a    # 0.85f

    .line 30
    mul-float/2addr v2, v3

    .line 31
    .line 32
    aput v2, v1, v0

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a046a

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVScrollView;->setBottomOverScrollColor(I)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->drawerImage()Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0a047f

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    const/16 v1, 0x8

    .line 92
    .line 93
    .line 94
    const v2, 0x7f0a0485

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 120
    const/4 v2, 0x0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a049c

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    const v0, 0x7f0a0109

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    goto :goto_0

    .line 145
    .line 146
    .line 147
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    :goto_0
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    .line 155
    return-void
.end method

.method private updateTopEntryContainer()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSidePanelLv1List()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    :cond_1
    new-instance v1, Lcom/narvii/modulization/page/Page;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Lcom/narvii/modulization/page/Page;-><init>()V

    .line 25
    .line 26
    const-string v2, "ndc://default"

    .line 27
    .line 28
    iput-object v2, v1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    .line 40
    move-result v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/amino/page/PageTopLevelLayout;->setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V

    .line 44
    return-void
.end method

.method private updateTopEntryContainerIndicator(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/amino/page/PageTopLevelLayout;->updateIndicator(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method private updateTopLevelChatBadge()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->topEntryContainer:Lcom/narvii/amino/page/PageTopLevelLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/amino/page/PageTopLevelLayout;->getChatChildView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/drawer/DrawerHost;->updateChatBadge(Landroid/view/View;)V

    .line 12
    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondEntryContainer()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondLevelChatBadge()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateThemeUI()V

    return-void
.end method


# virtual methods
.method public addRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public bind(Landroid/app/Activity;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    instance-of p1, p1, Lcom/narvii/amino/MainActivity;

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isHomepage:Z

    .line 7
    xor-int/2addr v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->isHomepage:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "ndc://default"

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/drawer/DrawerHost;->updateTopEntryContainerIndicator(Ljava/lang/String;)V

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 30
    .line 31
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateChat()V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 49
    move-result p1

    .line 50
    .line 51
    iput p1, p0, Lcom/narvii/drawer/DrawerHost;->themeColor:I

    .line 52
    const/4 v0, 0x3

    .line 53
    .line 54
    new-array v0, v0, [F

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 58
    const/4 p1, 0x2

    .line 59
    .line 60
    aget v1, v0, p1

    .line 61
    .line 62
    .line 63
    const v2, 0x3f59999a    # 0.85f

    .line 64
    mul-float/2addr v1, v2

    .line 65
    .line 66
    aput v1, v0, p1

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 70
    move-result p1

    .line 71
    .line 72
    iput p1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 73
    .line 74
    .line 75
    const p1, 0x7f0a046a

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 87
    .line 88
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setBottomOverScrollColor(I)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    const v1, 0x7f060112

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 104
    move-result v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVScrollView;->setTopOverScrollColor(I)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    .line 113
    move-result p1

    .line 114
    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/util/NotificationManagerHelper;->isNotificationSettingAvailable()Z

    .line 121
    move-result p1

    .line 122
    .line 123
    if-eqz p1, :cond_2

    .line 124
    const/4 p1, 0x1

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    const/4 p1, 0x0

    .line 127
    .line 128
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->hasNotificationTurnedOffWarning:Z

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    .line 131
    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    sget v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    .line 135
    .line 136
    sget v1, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 140
    :cond_3
    return-void
.end method

.method cancelLaunch()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->cancel()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    .line 11
    return-void
.end method

.method public getPendingSharesStikcerCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingShareRequestCountMapping:Ljava/util/HashMap;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/16 v1, 0x72

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v0

    .line 46
    return v0

    .line 47
    :cond_0
    return v1
.end method

.method public getReturnedCommunity()Lcom/narvii/model/Community;
    .locals 1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->returnedCommunity:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public getTotalBadgeCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    .line 26
    :goto_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getNotificationCount()I

    .line 33
    move-result v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    .line 39
    move-result v2

    .line 40
    add-int/2addr v1, v2

    .line 41
    .line 42
    :goto_1
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->getChatUnreadCount()I

    .line 52
    move-result v2

    .line 53
    add-int/2addr v1, v2

    .line 54
    .line 55
    :cond_2
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 56
    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    iget v2, v2, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingFlagCount:I

    .line 60
    add-int/2addr v1, v2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    .line 74
    move-result v2

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 79
    .line 80
    iget v2, v2, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingKnowledgeBaseRequestCount:I

    .line 81
    add-int/2addr v1, v2

    .line 82
    .line 83
    :cond_3
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/narvii/model/CommunityGeneralCheckResult;->pendingShareRequestCountMapping:Ljava/util/HashMap;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    const/16 v2, 0x72

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    check-cast v0, Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v0

    .line 106
    add-int/2addr v1, v0

    .line 107
    :cond_4
    return v1
.end method

.method public goHome(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/amino/MainActivity;->setPendingCommand(I)V

    .line 17
    .line 18
    new-instance p1, Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-class v1, Lcom/narvii/amino/MainActivity;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/narvii/amino/MainActivity;->backToHome(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    const v0, 0x7f010037

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    const v0, 0x7f010038

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/narvii/drawer/DrawerHost;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method

.method public isRequestingCommunity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    return v0
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0468

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const v2, 0x7f080279

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->drawerImage()Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0a047f

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    const v0, 0x7f0a049c

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    .line 72
    const v2, 0x7f0a0485

    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-interface {v3}, Lcom/narvii/config/ConfigTheme;->logoImage()Landroid/graphics/drawable/Drawable;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object p1

    .line 98
    const/4 v2, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    const p1, 0x7f0a0109

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    goto :goto_0

    .line 120
    .line 121
    .line 122
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    .line 129
    .line 130
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    check-cast v0, Landroid/widget/TextView;

    .line 150
    .line 151
    if-nez p1, :cond_1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    goto :goto_1

    .line 157
    .line 158
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateChat()V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateGeneralCountView()V

    .line 177
    .line 178
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 179
    .line 180
    if-eqz p1, :cond_2

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->onResume()V

    .line 184
    .line 185
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 189
    .line 190
    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->cancelLaunch()V

    .line 192
    .line 193
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 194
    .line 195
    if-eqz p1, :cond_3

    .line 196
    .line 197
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    :cond_3
    return-void
.end method

.method public onCommunityUpdated()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateTopEntryContainer()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateSecondEntryContainer()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateMoreOptionsLayout()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateCategory()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateModerationLayout()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateAccountInfoLayout()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateKindredCommunity()V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a046a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->darkThemeColor:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVScrollView;->setBottomOverScrollColor(I)V

    .line 41
    return-void
.end method

.method public onEvent(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    const v0, 0xfb0001

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    const v3, 0xfb0002

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
    move v4, v2

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    :goto_0
    sget-wide v4, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v4, v5}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    .line 21
    move v4, v1

    .line 22
    .line 23
    :goto_1
    if-ne p1, v3, :cond_9

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->blogCategoryList:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendCategoryRequest()V

    .line 31
    .line 32
    :cond_2
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->kindredCommunity:Ljava/util/List;

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendKindredCommunityRequest()V

    .line 38
    .line 39
    :cond_3
    sget-wide v3, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3, v4}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    const-string v4, "prefs"

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    const-string/jumbo v5, "tooltip_left_draw_done"

    .line 59
    .line 60
    .line 61
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .line 67
    iget-boolean v4, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    .line 68
    .line 69
    .line 70
    const v5, 0x7f0a03a0

    .line 71
    .line 72
    if-eqz v4, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    .line 76
    move-result v4

    .line 77
    .line 78
    if-nez v4, :cond_7

    .line 79
    .line 80
    const-string/jumbo v4, "tooltip_community_exit_done"

    .line 81
    .line 82
    .line 83
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    move-result v4

    .line 85
    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 89
    .line 90
    if-eqz v2, :cond_7

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_4
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 100
    .line 101
    if-nez v4, :cond_6

    .line 102
    .line 103
    const-string/jumbo v4, "tooltip_left_draw_open_times"

    .line 104
    .line 105
    .line 106
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 107
    move-result v2

    .line 108
    .line 109
    if-nez v2, :cond_5

    .line 110
    .line 111
    .line 112
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :cond_5
    new-instance v2, Lcom/narvii/util/ToolTipHelper;

    .line 124
    .line 125
    .line 126
    invoke-direct {v2}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    .line 127
    .line 128
    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v2}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    .line 143
    const v3, 0x7f0a0ecb

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    const v3, 0x7f1211d6

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/narvii/util/Tooltip$Builder;->startFinger()Lcom/narvii/util/Tooltip$Builder;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    new-instance v3, Lcom/narvii/drawer/DrawerHost$21;

    .line 165
    .line 166
    .line 167
    invoke-direct {v3, p0}, Lcom/narvii/drawer/DrawerHost$21;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v3}, Lcom/narvii/util/Tooltip$Builder;->onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v2}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 181
    goto :goto_2

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-virtual {v4}, Lcom/narvii/util/ToolTipHelper;->resumeTooltipAnimation()V

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    move-result-object v2

    .line 189
    .line 190
    .line 191
    const v3, 0x7f010018

    .line 192
    .line 193
    .line 194
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    new-instance v3, Lcom/narvii/drawer/DrawerHost$22;

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, p0}, Lcom/narvii/drawer/DrawerHost$22;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 204
    .line 205
    iget-boolean v3, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    .line 206
    .line 207
    if-eqz v3, :cond_8

    .line 208
    .line 209
    .line 210
    const v3, 0x7f0a048a

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    goto :goto_3

    .line 219
    .line 220
    .line 221
    :cond_8
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object v3

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    .line 227
    :goto_3
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 228
    .line 229
    const-string/jumbo v3, "statistics"

    .line 230
    .line 231
    .line 232
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    check-cast v2, Lcom/narvii/util/statistics/StatisticsService;

    .line 236
    .line 237
    const-string v3, "Left Side Panel"

    .line 238
    .line 239
    .line 240
    invoke-interface {v2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    sget-object v3, Lcom/narvii/drawer/DrawerHost;->DRAWER_OPEN_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 247
    move-result-object v3

    .line 248
    .line 249
    check-cast v3, Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 253
    move-result-object v2

    .line 254
    .line 255
    const-string v3, "Left Side Panel Total"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 259
    move v4, v1

    .line 260
    .line 261
    .line 262
    :cond_9
    const v2, 0xfb0003

    .line 263
    .line 264
    if-ne p1, v2, :cond_a

    .line 265
    .line 266
    sget-wide v2, Lcom/narvii/drawer/DrawerHost;->RESET_SCROLL_TIME:J

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v2, v3}, Lcom/narvii/drawer/DrawerHost;->scheduleScrollToTop(J)V

    .line 270
    move v4, v1

    .line 271
    .line 272
    :cond_a
    if-ne p1, v0, :cond_c

    .line 273
    .line 274
    check-cast p2, Ljava/lang/Float;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 278
    move-result p1

    .line 279
    const/4 p2, 0x0

    .line 280
    .line 281
    cmpl-float p1, p1, p2

    .line 282
    .line 283
    if-nez p1, :cond_b

    .line 284
    .line 285
    sget-wide p1, Lcom/narvii/drawer/DrawerHost;->RESET_SCROLL_TIME:J

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost;->scheduleScrollToTop(J)V

    .line 289
    goto :goto_4

    .line 290
    .line 291
    .line 292
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->unscheduleScrollToTop()V

    .line 293
    goto :goto_4

    .line 294
    .line 295
    :cond_c
    if-eqz v4, :cond_d

    .line 296
    :goto_4
    return v1

    .line 297
    .line 298
    .line 299
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->onEvent(ILjava/lang/Object;)Z

    .line 300
    move-result p1

    .line 301
    return p1
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a048a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0492

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0485

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a049c

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0a0109

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initAccountInfoLayout()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initTopEntryContainer()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initSecondEntryContainer()V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initModerationLayout()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->initMoreOptionsLayout()V

    .line 79
    .line 80
    .line 81
    const v1, 0x7f0a0491

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    check-cast v1, Lcom/narvii/widget/NVScrollView;

    .line 88
    .line 89
    iput-object v1, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVScrollView;->setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V

    .line 95
    .line 96
    .line 97
    const v1, 0x7f0a0e12

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    check-cast v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 104
    const/4 v2, 0x0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    .line 109
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVScrollView;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 116
    .line 117
    .line 118
    const v1, 0x7f0a03a0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    .line 126
    move-result v4

    .line 127
    .line 128
    const/16 v5, 0x8

    .line 129
    .line 130
    if-eqz v4, :cond_0

    .line 131
    move v4, v5

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    move v4, v2

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->clickListener:Landroid/view/View$OnClickListener;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    const v1, 0x7f0a03a2

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    check-cast v1, Landroid/widget/TextView;

    .line 155
    .line 156
    .line 157
    const v3, 0x7f120bd3

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 161
    .line 162
    .line 163
    const v1, 0x7f0a03a1

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    check-cast v1, Landroid/widget/ImageView;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 173
    move-result-object v3

    .line 174
    .line 175
    .line 176
    const v4, 0x7f080270

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    check-cast v0, Landroid/widget/TextView;

    .line 190
    .line 191
    if-eqz v0, :cond_1

    .line 192
    .line 193
    .line 194
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 195
    .line 196
    .line 197
    :cond_1
    const v0, 0x7f0a037a

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    .line 205
    move-result v1

    .line 206
    .line 207
    if-eqz v1, :cond_2

    .line 208
    goto :goto_1

    .line 209
    :cond_2
    move v2, v5

    .line 210
    .line 211
    .line 212
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->showQuickCommuntiySwitcher()Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_3

    .line 219
    .line 220
    .line 221
    const v0, 0x7f0a0379

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 228
    .line 229
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    .line 236
    .line 237
    :cond_3
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateMoreOptionsLayout()V

    .line 238
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendCategoryRequest()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->sendKindredCommunityRequest()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->cid:I

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    .line 17
    .line 18
    :cond_0
    const/16 v0, 0x11

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 31
    .line 32
    or-int/lit8 v2, v2, 0x2

    .line 33
    .line 34
    iput v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 43
    .line 44
    or-int/lit8 v2, v2, 0x4

    .line 45
    .line 46
    iput v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 55
    .line 56
    or-int/lit8 v0, v0, 0x8

    .line 57
    .line 58
    iput v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 59
    :cond_3
    return-void
.end method

.method onRefreshFinish(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0a0e12

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshingFlag:I

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 26
    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public refreshCommunityInfo(J)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v2

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfoTime:J

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-ltz v4, :cond_1

    .line 17
    add-long/2addr v2, p1

    .line 18
    .line 19
    cmp-long p1, v0, v2

    .line 20
    .line 21
    if-lez p1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->notifyRequestCommunityListeners()V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    const-string v2, "api"

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    iget v3, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const-string v3, "/community/info"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    const-string/jumbo v3, "withInfluencerList"

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    const-string/jumbo v3, "withTopicList"

    .line 69
    .line 70
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost;->communityResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 84
    .line 85
    iput-wide v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfoTime:J

    .line 86
    return p1
.end method

.method public refreshGeneralCount(J)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v2

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    cmp-long v0, p1, v4

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-wide v4, p0, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCountTime:J

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-ltz v0, :cond_1

    .line 32
    add-long/2addr v4, p1

    .line 33
    .line 34
    cmp-long p1, v2, v4

    .line 35
    .line 36
    if-lez p1, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return v1

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    const-string p2, "api"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    const-string v0, "/community/general-check"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResponseListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 68
    .line 69
    iput-wide v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCountTime:J

    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    const/4 p1, 0x0

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost;->generalCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateGeneralCountView()V

    .line 82
    :cond_3
    return v1
.end method

.method public refreshReminderCheck(J)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v3, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v2, p1, v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheckTime:J

    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-ltz v4, :cond_0

    .line 33
    add-long/2addr v2, p1

    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 40
    .line 41
    const-string p2, "api"

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    const-string v2, "reminder/check"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    const-string v2, "ignoreUnreadChatThreadsCount"

    .line 60
    .line 61
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    const-string/jumbo v3, "timezone"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 89
    .line 90
    iput-wide v0, p0, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheckTime:J

    .line 91
    const/4 p1, 0x1

    .line 92
    return p1

    .line 93
    :cond_1
    const/4 p1, 0x0

    .line 94
    return p1
.end method

.method removeLaunchSplashAndCloseDrawer()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer(J)V

    return-void
.end method

.method removeLaunchSplashAndCloseDrawer(J)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

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
    new-instance v2, Lcom/narvii/drawer/DrawerHost$28;

    invoke-direct {v2, p0, v1, v0}, Lcom/narvii/drawer/DrawerHost$28;-><init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;Lcom/narvii/app/DrawerActivity;)V

    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->removeLaunchSplashAndCloseDrawer:Ljava/lang/Runnable;

    .line 5
    invoke-static {v2, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public removeRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->requestCommunityInfoListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method scheduleScrollToTop(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

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
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/narvii/drawer/DrawerHost$ScrollToTop;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$ScrollToTop;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 23
    return-void
.end method

.method public sendEvent(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->sendingEvent:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->sendEvent(ILjava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public showLotteryPrompt()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string/jumbo v3, "topActivity"

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/util/services/TopActivityService;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    move-object v3, v2

    .line 40
    .line 41
    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 42
    .line 43
    const-string v4, "config"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 53
    move-result v3

    .line 54
    .line 55
    if-ne v3, v0, :cond_1

    .line 56
    move-object v1, v2

    .line 57
    :cond_1
    nop

    .line 58
    .line 59
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    move-object v2, v1

    .line 63
    .line 64
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    return-void

    .line 72
    .line 73
    :cond_2
    :try_start_0
    new-instance v2, Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, v1, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;-><init>(Lcom/narvii/app/NVActivity;I)V

    .line 79
    .line 80
    iput-object v2, p0, Lcom/narvii/drawer/DrawerHost;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/narvii/checkin/lottery/LotteryDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .line 87
    const-string v1, "lucky draw"

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_3
    :goto_0
    return-void
.end method

.method protected showQuickCommuntiySwitcher()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->isMaster:Z

    return v0
.end method

.method public smoothScrollToTop(Z)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/drawer/DrawerHost$19;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$19;-><init>(Lcom/narvii/drawer/DrawerHost;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-wide/16 v1, 0x15e

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    :goto_0
    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/drawer/DrawerHost;->GLOBAL_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->fromGlobalLaunch:Z

    .line 27
    .line 28
    .line 29
    const-wide/32 v1, 0x493e0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    move-wide v3, v1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    sget-wide v3, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerHost;->fromGlobalLaunch:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    sget-wide v1, Lcom/narvii/drawer/DrawerHost;->AUTO_REFRESH_DURATION:J

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 53
    .line 54
    new-instance v2, Landroid/content/IntentFilter;

    .line 55
    .line 56
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 67
    .line 68
    new-instance v2, Landroid/content/IntentFilter;

    .line 69
    .line 70
    const-string v3, "com.narvii.action.COMMUNITY_CHANGED"

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    .line 82
    new-instance v2, Landroid/content/IntentFilter;

    .line 83
    .line 84
    const-string v3, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    .line 93
    .line 94
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 103
    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    :cond_2
    const-wide/16 v0, 0x0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost;->onCommunityUpdated()V

    .line 113
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/drawer/DrawerHost$20;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/drawer/DrawerHost$20;-><init>(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 15
    return-void
.end method

.method public unbind()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 8
    move-result v0

    .line 9
    .line 10
    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 23
    move-result v0

    .line 24
    .line 25
    sput v0, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost;->chatCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method unscheduleScrollToTop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

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
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    .line 13
    :cond_0
    return-void
.end method

.method public updateAccount()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateAccountInfoLayout()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateModerationLayout()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/drawer/DrawerHost;->updateMoreOptionsLayout()V

    .line 10
    return-void
.end method

.class public Lcom/narvii/app/incubator/IncubatorApplication;
.super Lcom/narvii/pushservice/PushApplication;
.source "IncubatorApplication.java"


# static fields
.field public static STARTUP_TIME:J


# instance fields
.field private accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

.field private activeCid:I

.field private activeCount:I

.field private appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

.field private cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

.field private final callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private captionFontServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

.field private captionStyleServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

.field private cbbHostActivityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

.field private cbbHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

.field private chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

.field private checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

.field private checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

.field private communityActiveHelper:Lcom/narvii/community/CommunityActiveHelper;

.field private final communityBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

.field private final communityContextCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/services/incubator/CommunityContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private final communityContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/services/incubator/CommunityContext;",
            ">;"
        }
    .end annotation
.end field

.field private final communityLoggingServiceProvider:Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

.field private communityStatusHelper:Lcom/narvii/services/CommunityStatusHelper;

.field private configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

.field private final debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

.field private draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

.field private drawerActivityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

.field private drawerCommunityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

.field private drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

.field private enterCommunityHelper:Lcom/narvii/services/EnterCommunityHelper;

.field private filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

.field private final globalBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

.field private handler:Landroid/os/Handler;

.field private final incubatorLiveLayerCommunityServiceProvider:Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

.field private liveLayerActivityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

.field private liveLayerCommunityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

.field private final lives:Landroid/util/SparseIntArray;

.field private final localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

.field private final loggingServiceProvider:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

.field private final membershipServiceProvider:Lcom/narvii/services/MembershipServiceProvider;

.field private final messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

.field private myCommunityListReminderHelper:Lcom/narvii/services/MyCommunityListReminderHelper;

.field private navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

.field private notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

.field private pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

.field private pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

.field private pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

.field private rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

.field private final recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

.field private final rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

.field private final signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

.field private statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

.field private final stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

.field private final stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

.field private final topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

.field private updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

.field private visitorBarHostActivityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

.field private visitorBarHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x64

    const-string v2, ".altamino.top"

    .line 169
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/pushservice/PushApplication;-><init>(ZILjava/lang/String;)V

    .line 222
    new-instance v1, Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    .line 223
    new-instance v1, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    .line 224
    new-instance v1, Lcom/narvii/services/incubator/IncubatorConfigProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorConfigProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

    .line 225
    new-instance v1, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    .line 226
    new-instance v1, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerCommunityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    .line 227
    new-instance v1, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerCommunityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    invoke-direct {v1, v2}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;)V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerActivityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

    .line 228
    new-instance v1, Lcom/narvii/services/DrawerRightHostProvider;

    invoke-direct {v1}, Lcom/narvii/services/DrawerRightHostProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

    .line 229
    new-instance v1, Lcom/narvii/services/ChatServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/ChatServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    .line 230
    new-instance v1, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 231
    new-instance v1, Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    .line 232
    new-instance v1, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    .line 234
    new-instance v1, Lcom/narvii/services/incubator/IncubatorStatsProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorStatsProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

    .line 235
    new-instance v1, Lcom/narvii/services/RankingServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/RankingServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

    .line 236
    new-instance v1, Lcom/narvii/services/MyCommunityListReminderHelper;

    invoke-direct {v1}, Lcom/narvii/services/MyCommunityListReminderHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->myCommunityListReminderHelper:Lcom/narvii/services/MyCommunityListReminderHelper;

    .line 237
    new-instance v1, Lcom/narvii/services/PollServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/PollServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

    .line 238
    new-instance v1, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-direct {v1}, Lcom/narvii/app/ApplicationSessionHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    .line 239
    new-instance v1, Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 240
    new-instance v1, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    invoke-direct {v1}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 241
    new-instance v1, Lcom/narvii/services/EnterCommunityHelper;

    invoke-direct {v1}, Lcom/narvii/services/EnterCommunityHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->enterCommunityHelper:Lcom/narvii/services/EnterCommunityHelper;

    .line 242
    new-instance v1, Lcom/narvii/services/CommunityStatusHelper;

    invoke-direct {v1}, Lcom/narvii/services/CommunityStatusHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityStatusHelper:Lcom/narvii/services/CommunityStatusHelper;

    .line 243
    new-instance v1, Lcom/narvii/community/CommunityActiveHelper;

    invoke-direct {v1}, Lcom/narvii/community/CommunityActiveHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityActiveHelper:Lcom/narvii/community/CommunityActiveHelper;

    .line 244
    new-instance v1, Lcom/narvii/services/PushInviteHelper;

    invoke-direct {v1}, Lcom/narvii/services/PushInviteHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 245
    new-instance v1, Lcom/narvii/services/AminoDebugServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/AminoDebugServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    .line 246
    new-instance v1, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-direct {v1}, Lcom/narvii/util/debug/SignallingMonitorHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 247
    new-instance v1, Lcom/narvii/services/RtcServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/RtcServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    .line 248
    new-instance v1, Lcom/narvii/checkin/CheckInServiceProvider;

    invoke-direct {v1}, Lcom/narvii/checkin/CheckInServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    .line 249
    new-instance v1, Lcom/narvii/checkin/CheckInActivityServiceProvider;

    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    invoke-direct {v1, v2}, Lcom/narvii/checkin/CheckInActivityServiceProvider;-><init>(Lcom/narvii/checkin/CheckInServiceProvider;)V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

    .line 251
    new-instance v1, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->incubatorLiveLayerCommunityServiceProvider:Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

    .line 252
    new-instance v1, Lcom/narvii/services/MessageReadServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/MessageReadServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

    .line 253
    new-instance v1, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerCommunityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

    .line 254
    new-instance v1, Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerCommunityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

    invoke-direct {v1, v2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;)V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerActivityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

    .line 256
    new-instance v1, Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    .line 257
    new-instance v1, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    invoke-direct {v1, v2}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;)V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostActivityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

    .line 259
    new-instance v1, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    .line 260
    new-instance v1, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    invoke-direct {v1, v2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;-><init>(Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;)V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostActivityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

    .line 262
    new-instance v1, Lcom/narvii/chat/call/CallScreenService;

    invoke-direct {v1}, Lcom/narvii/chat/call/CallScreenService;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 263
    new-instance v1, Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->globalBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

    .line 264
    new-instance v1, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

    .line 265
    new-instance v1, Lcom/narvii/community/RecentCommunityHelper;

    invoke-direct {v1}, Lcom/narvii/community/RecentCommunityHelper;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 266
    new-instance v1, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->loggingServiceProvider:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    .line 267
    new-instance v1, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityLoggingServiceProvider:Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    .line 270
    new-instance v1, Lcom/narvii/services/MembershipServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/MembershipServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->membershipServiceProvider:Lcom/narvii/services/MembershipServiceProvider;

    .line 271
    new-instance v1, Lcom/narvii/services/StickerServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/StickerServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    .line 272
    new-instance v1, Lcom/narvii/services/StickerCacheServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/StickerCacheServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

    .line 273
    new-instance v1, Lcom/narvii/util/services/TopActivityServiceProvider;

    invoke-direct {v1}, Lcom/narvii/util/services/TopActivityServiceProvider;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    .line 274
    new-instance v1, Lcom/narvii/services/LocaleChangeListener;

    invoke-direct {v1}, Lcom/narvii/services/LocaleChangeListener;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

    .line 275
    new-instance v1, Lcom/narvii/editor/provider/MeisheAssetDownloadServiceProvider;

    const-string v2, "captionStyle"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/narvii/editor/provider/MeisheAssetDownloadServiceProvider;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->captionStyleServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    .line 276
    new-instance v1, Lcom/narvii/asset/AssetDownloadServiceProvider;

    const-string v2, "captionFont"

    invoke-direct {v1, v2}, Lcom/narvii/asset/AssetDownloadServiceProvider;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->captionFontServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    .line 502
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    .line 503
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    .line 505
    iput v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 506
    iput v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    .line 508
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    .line 662
    new-instance v0, Lcom/narvii/app/incubator/IncubatorApplication$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/app/incubator/IncubatorApplication$2;-><init>(Lcom/narvii/app/incubator/IncubatorApplication;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/app/incubator/IncubatorApplication;->STARTUP_TIME:J

    const/4 v0, 0x1

    .line 171
    sput-boolean v0, Lcom/narvii/app/ApplicationSessionHelper;->RESET_ENABLED:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/incubator/IncubatorApplication;)Landroid/util/SparseIntArray;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/app/incubator/IncubatorApplication;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/app/incubator/IncubatorApplication;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/app/incubator/IncubatorApplication;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/app/incubator/IncubatorApplication;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    return p1
.end method

.method private createCommunityContext(I)Lcom/narvii/services/incubator/CommunityContext;
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    if-nez v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    :goto_0
    if-nez v0, :cond_1

    .line 544
    new-instance v0, Lcom/narvii/services/incubator/CommunityContext;

    invoke-direct {v0, p0, p1}, Lcom/narvii/services/incubator/CommunityContext;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 545
    iget-object v1, v0, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/incubator/IncubatorApplication;->initCommunityServices(Lcom/narvii/services/incubator/CommunityContext;Lcom/narvii/services/ServiceManager;)V

    goto :goto_1

    .line 547
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reuse community context from weak cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 549
    :goto_1
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static getCommunityId(Ljava/lang/Object;)I
    .locals 2

    .line 512
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 513
    check-cast p0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->_communityId()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 516
    :cond_1
    instance-of v0, p0, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_2

    .line 517
    check-cast p0, Lcom/narvii/services/incubator/CommunityContext;

    iget p0, p0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    return p0

    :cond_2
    return v1
.end method

.method private initWebView()V
    .locals 3

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 193
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onGlobalContextResume()V
    .locals 2

    const-string v0, "chat"

    .line 658
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 659
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    invoke-virtual {v1, p0, v0}, Lcom/narvii/services/ChatServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method


# virtual methods
.method public activityOnCreate(Landroid/app/Activity;)Z
    .locals 9

    .line 557
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    iget-boolean v0, v0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v1, "Restored App"

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_pushIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v2, "Opened Push Notification"

    invoke-virtual {v0, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 561
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ForwardActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "_pushClearType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 563
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "_pushClearCid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 564
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_pushTrackId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_pushUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    new-instance v0, Lcom/narvii/app/incubator/IncubatorApplication$1;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/narvii/app/incubator/IncubatorApplication$1;-><init>(Lcom/narvii/app/incubator/IncubatorApplication;IILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 588
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_pushFrom"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    const-class v1, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    if-eqz v0, :cond_2

    .line 592
    sget-object v1, Lcom/narvii/pushservice/PushNotificationService;->FROM_PUSH:Lcom/narvii/util/statistics/TmpValue;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 596
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/pushservice/PushApplication;->activityOnCreate(Landroid/app/Activity;)Z

    move-result v0

    .line 598
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 600
    invoke-direct {p0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->createCommunityContext(I)Lcom/narvii/services/incubator/CommunityContext;

    move-result-object v1

    .line 601
    iget-object v2, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v2}, Lcom/narvii/services/ServiceManager;->create()V

    .line 603
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 604
    iget-object v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v2, :cond_3

    .line 606
    iget-object p1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->start()V

    :cond_3
    return v0
.end method

.method public activityOnDestory(Landroid/app/Activity;)V
    .locals 4

    .line 718
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnDestory(Landroid/app/Activity;)V

    return-void
.end method

.method public activityOnPause(Landroid/app/Activity;)V
    .locals 4

    .line 707
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 711
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method public activityOnResume(Landroid/app/Activity;)Z
    .locals 7

    .line 623
    invoke-super {p0, p1}, Lcom/narvii/app/NVApplication;->activityOnResume(Landroid/app/Activity;)Z

    move-result v0

    .line 627
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 629
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/incubator/CommunityContext;

    const-string v2, "\'s community context not found"

    const-string/jumbo v3, "x"

    if-nez v1, :cond_0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :cond_0
    iget v4, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    if-eq v4, p1, :cond_2

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    if-lez v5, :cond_2

    const/4 v5, 0x0

    .line 634
    iput v5, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    .line 635
    iget-object v6, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/services/incubator/CommunityContext;

    if-nez v4, :cond_1

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v2, v4, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v2}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 641
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->handler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    iput v5, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 645
    :cond_2
    iput p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCid:I

    .line 646
    iget p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/narvii/app/incubator/IncubatorApplication;->activeCount:I

    if-nez p1, :cond_4

    .line 647
    iget-object p1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->resume()V

    goto :goto_1

    .line 651
    :cond_3
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->onGlobalContextResume()V

    :cond_4
    :goto_1
    return v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 204
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getService(ILjava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 477
    invoke-super {p0, p0, p2}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 479
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->createCommunityContext(I)Lcom/narvii/services/incubator/CommunityContext;

    move-result-object p1

    .line 480
    invoke-virtual {p1, p2}, Lcom/narvii/services/incubator/CommunityContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 464
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0, v0, p2}, Lcom/narvii/app/incubator/IncubatorApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 471
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVApplication;->getService(Lcom/narvii/app/NVContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNoLiveCommunity()Z
    .locals 4

    .line 527
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 530
    :goto_0
    iget-object v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 531
    iget-object v3, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public initActivityServices(Lcom/narvii/app/NVActivity;Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 402
    new-instance p1, Lcom/narvii/services/ApiServiceProvider;

    invoke-direct {p1}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    const-string v0, "api"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 403
    new-instance p1, Lcom/narvii/services/LocationServiceProvider;

    invoke-direct {p1}, Lcom/narvii/services/LocationServiceProvider;-><init>()V

    const-string v0, "location"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 404
    new-instance p1, Lcom/narvii/services/PostEntryProvider;

    invoke-direct {p1}, Lcom/narvii/services/PostEntryProvider;-><init>()V

    const-string/jumbo v0, "postEntry"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 405
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerActivityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;

    const-string v0, "drawerHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 406
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    const-string/jumbo v0, "topActivity"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 407
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

    const-string v0, "drawerRightHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 408
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

    const-string/jumbo v0, "stats"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 409
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    const-string v0, "applicationSessionHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 410
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    const-string/jumbo v0, "pasteBoard"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 411
    new-instance p1, Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;

    invoke-direct {p1}, Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;-><init>()V

    const-string v0, "_backToHomeHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 412
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    const-string/jumbo v0, "pushInvite"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 413
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    const-string/jumbo v0, "rtc"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 414
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerActivityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostActivityProvider;

    const-string v0, "liveLayerHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 415
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostActivityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;

    const-string v0, "cbbHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 416
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostActivityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;

    const-string/jumbo v0, "visitorBarHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 417
    new-instance p1, Lcom/narvii/story/StoryPostServiceProvider;

    invoke-direct {p1}, Lcom/narvii/story/StoryPostServiceProvider;-><init>()V

    const-string/jumbo v0, "storyPost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 418
    new-instance p1, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;

    invoke-direct {p1}, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;-><init>()V

    const-string v0, "chooseSceneTemplate"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 419
    new-instance p1, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;

    invoke-direct {p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;-><init>()V

    const-string v0, "chatWaitingList"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 420
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

    const-string v0, "checkIn"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 422
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    const-string v0, "_debug"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 424
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    const-string v0, "_signallingMonitor"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    :cond_0
    return-void
.end method

.method protected initApplicationServices(Lcom/narvii/services/ServiceManager;)V
    .locals 3

    .line 280
    invoke-super {p0, p1}, Lcom/narvii/pushservice/PushApplication;->initApplicationServices(Lcom/narvii/services/ServiceManager;)V

    .line 282
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-direct {v0, p0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 285
    new-instance v1, Lcom/narvii/notification/channel/NotificationChannelHelper;

    invoke-direct {v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;-><init>()V

    const-string v2, "notificationChannel"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 287
    :cond_0
    new-instance v1, Lcom/narvii/services/AminoFragmentRegisterProvider;

    invoke-direct {v1}, Lcom/narvii/services/AminoFragmentRegisterProvider;-><init>()V

    const-string v2, "fragmentRegister"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 288
    new-instance v1, Lcom/narvii/chat/ChatPushProvider;

    invoke-direct {v1}, Lcom/narvii/chat/ChatPushProvider;-><init>()V

    const-string v2, "_pushChat"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 289
    new-instance v1, Lcom/narvii/services/PrefsProvider;

    const-string v2, "incubator"

    invoke-direct {v1, v2}, Lcom/narvii/services/PrefsProvider;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "prefs"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 290
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    const-string v2, "filesDir"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 291
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    const-string v2, "cacheDir"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 292
    new-instance v1, Lcom/narvii/services/VersionPrefsServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/VersionPrefsServiceProvider;-><init>()V

    const-string/jumbo v2, "versionPrefs"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 293
    new-instance v1, Lcom/narvii/services/DeviceIDServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/DeviceIDServiceProvider;-><init>()V

    const-string v2, "deviceid"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 294
    new-instance v1, Lcom/narvii/services/ImageDiskCacheProvider;

    invoke-direct {v1}, Lcom/narvii/services/ImageDiskCacheProvider;-><init>()V

    const-string v2, "imageDiskCache"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 295
    new-instance v1, Lcom/narvii/services/ImageLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/services/ImageLoaderProvider;-><init>()V

    const-string v2, "imageLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 296
    new-instance v1, Lcom/narvii/services/ApiRequestQueueProvider;

    invoke-direct {v1}, Lcom/narvii/services/ApiRequestQueueProvider;-><init>()V

    const-string v2, "apiRequestQueue"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 297
    new-instance v1, Lcom/narvii/services/ApiServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    const-string v2, "api"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 298
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    const-string v2, "account"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 299
    new-instance v1, Lcom/narvii/services/LocationServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/LocationServiceProvider;-><init>()V

    const-string v2, "location"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 300
    new-instance v1, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;-><init>()V

    const-string v2, "community"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 301
    new-instance v1, Lcom/narvii/services/PhotoServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/PhotoServiceProvider;-><init>()V

    const-string/jumbo v2, "photo"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 302
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    const-string v2, "draft"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 303
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    const-string v2, "notification"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 304
    new-instance v1, Lcom/narvii/services/GifLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/services/GifLoaderProvider;-><init>()V

    const-string v2, "gifLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 305
    new-instance v1, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;-><init>()V

    const-string v2, "avatarFrameLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 306
    new-instance v1, Lcom/narvii/media/online/audio/AudioDownloaderProvider;

    invoke-direct {v1}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;-><init>()V

    const-string v2, "audioDownloader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 307
    new-instance v1, Lcom/narvii/services/WebPLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/services/WebPLoaderProvider;-><init>()V

    const-string/jumbo v2, "webpLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 308
    new-instance v1, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;-><init>()V

    const-string v2, "badge"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 309
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerRightProvider:Lcom/narvii/services/DrawerRightHostProvider;

    const-string v2, "drawerRightHost"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 310
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isGooglePlayInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    new-instance v0, Lcom/narvii/services/GooglePlayServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/GooglePlayServiceProvider;-><init>()V

    const-string v1, "googlePlay"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 314
    :cond_1
    new-instance v0, Lcom/narvii/services/PushHelper;

    invoke-direct {v0}, Lcom/narvii/services/PushHelper;-><init>()V

    const-string v1, "_pushHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 315
    new-instance v0, Lcom/narvii/services/CleanupHelper;

    invoke-direct {v0}, Lcom/narvii/services/CleanupHelper;-><init>()V

    const-string v1, "_cleanupHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 316
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->statsProvider:Lcom/narvii/services/incubator/IncubatorStatsProvider;

    const-string/jumbo v1, "stats"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 317
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    const-string v1, "applicationSessionHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 318
    new-instance v0, Lcom/narvii/services/MyCommunityListServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MyCommunityListServiceProvider;-><init>()V

    const-string v1, "myCommunityList"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 319
    new-instance v0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;-><init>()V

    const-string v1, "_myCommunityListHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 321
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 322
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    const-string v1, "navigator"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 324
    new-instance v0, Lcom/narvii/services/ThemePackServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/ThemePackServiceProvider;-><init>()V

    const-string/jumbo v1, "themePack"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 325
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    const-string/jumbo v1, "pasteBoard"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 326
    new-instance v0, Lcom/narvii/services/LanguageServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/LanguageServiceProvider;-><init>()V

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 327
    new-instance v0, Lcom/narvii/services/YoutubeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/YoutubeServiceProvider;-><init>()V

    const-string/jumbo v1, "youtube"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 328
    new-instance v0, Lcom/narvii/services/MediaPreloadServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MediaPreloadServiceProvider;-><init>()V

    const-string v1, "mediapreload"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 329
    new-instance v0, Lcom/narvii/services/AffiliationsServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AffiliationsServiceProvider;-><init>()V

    const-string v1, "affiliations"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 330
    new-instance v0, Lcom/narvii/master/language/ContentLanguageServiceProvider;

    invoke-direct {v0}, Lcom/narvii/master/language/ContentLanguageServiceProvider;-><init>()V

    const-string v1, "content_language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 331
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

    const-string/jumbo v1, "ranking"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 332
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

    const-string/jumbo v1, "poll"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 333
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    const-string v1, "_updateDeviceTokenHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 336
    new-instance v0, Lcom/narvii/services/MediaPickCallbackServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MediaPickCallbackServiceProvider;-><init>()V

    const-string v1, "mediaPickCallback"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 337
    new-instance v0, Lcom/narvii/video/providers/VideoServiceProvider;

    invoke-direct {v0}, Lcom/narvii/video/providers/VideoServiceProvider;-><init>()V

    const-string/jumbo v1, "videoManager"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 338
    new-instance v0, Lcom/narvii/editor/provider/EditorPackServiceProvider;

    invoke-direct {v0}, Lcom/narvii/editor/provider/EditorPackServiceProvider;-><init>()V

    const-string v1, "editorPackFactory"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 340
    new-instance v0, Lcom/narvii/services/EventLogProfileServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/EventLogProfileServiceProvider;-><init>()V

    const-string v1, "eventLogProfile"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 342
    new-instance v0, Lcom/narvii/services/WsServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/WsServiceProvider;-><init>()V

    const-string/jumbo v1, "ws"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 343
    new-instance v0, Lcom/narvii/util/ws/LogWsServiceProvider;

    invoke-direct {v0}, Lcom/narvii/util/ws/LogWsServiceProvider;-><init>()V

    const-string v1, "logWs"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 344
    new-instance v0, Lcom/narvii/services/SignallingServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/SignallingServiceProvider;-><init>()V

    const-string/jumbo v1, "signalling"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 345
    new-instance v0, Lcom/narvii/chat/video/RtcChatManagerService;

    invoke-direct {v0}, Lcom/narvii/chat/video/RtcChatManagerService;-><init>()V

    const-string/jumbo v1, "rtcManager"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 346
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    const-string/jumbo v1, "rtc"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 347
    new-instance v0, Lcom/narvii/services/LiverLayerWSServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/LiverLayerWSServiceProvider;-><init>()V

    const-string v1, "liveLayerWS"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 348
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AppLogEventServiceProvider;-><init>()V

    const-string v1, "logEvent"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 349
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    const-string/jumbo v1, "pushInvite"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 350
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const-string v1, "callScreen"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 351
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->globalBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorGlobalBlockServiceProvider;

    const-string v1, "block"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 353
    new-instance v0, Lcom/narvii/services/MediaRecorderServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MediaRecorderServiceProvider;-><init>()V

    const-string v1, "mediaRecorder"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 354
    new-instance v0, Lcom/narvii/services/MediaLoaderProvider;

    invoke-direct {v0}, Lcom/narvii/services/MediaLoaderProvider;-><init>()V

    const-string v1, "mediaLoader"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 355
    new-instance v0, Lcom/narvii/services/MediaPlayerProvider;

    invoke-direct {v0}, Lcom/narvii/services/MediaPlayerProvider;-><init>()V

    const-string v1, "mediaPlayer"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 356
    new-instance v0, Lcom/narvii/services/MessageReadCleanHelper;

    invoke-direct {v0}, Lcom/narvii/services/MessageReadCleanHelper;-><init>()V

    const-string v1, "_messageReadCleanHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 357
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    const-string/jumbo v1, "recentCommunities"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 358
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->loggingServiceProvider:Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;

    const-string v1, "logging"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 359
    new-instance v0, Lcom/narvii/services/DetailLoggingHelper;

    invoke-direct {v0}, Lcom/narvii/services/DetailLoggingHelper;-><init>()V

    const-string v1, "_detailLogging"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 360
    new-instance v0, Lcom/narvii/util/AppsflyerManager$RetentionTrack;

    invoke-direct {v0}, Lcom/narvii/util/AppsflyerManager$RetentionTrack;-><init>()V

    const-string v1, "_appsflyerRetention"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 361
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;

    invoke-direct {v0}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;-><init>()V

    const-string/jumbo v1, "screenRoom"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 364
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

    const-string v1, "messageRead"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 365
    new-instance v0, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;-><init>()V

    const-string v1, "liveLayer"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 366
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    const-string v1, "chat"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 367
    new-instance v0, Lcom/narvii/services/GlobalChatServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/GlobalChatServiceProvider;-><init>()V

    const-string v1, "globalChat"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 368
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleServiceProvider;

    invoke-direct {v0}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;-><init>()V

    const-string v1, "bubble"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 371
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->membershipServiceProvider:Lcom/narvii/services/MembershipServiceProvider;

    const-string v1, "membership"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 372
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

    const-string/jumbo v1, "stickerCache"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 373
    new-instance v0, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-direct {v0}, Lcom/narvii/wallet/EarnCoinToastHelper;-><init>()V

    const-string v1, "_earnCoinToast"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 374
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    const-string/jumbo v1, "topActivity"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 376
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    const-string/jumbo v1, "sticker"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 377
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

    const-string v1, "localeChange"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 379
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    const-string v1, "_debug"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 381
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    const-string v1, "_signallingMonitor"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 383
    :cond_2
    new-instance v0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    invoke-direct {v0}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;-><init>()V

    const-string v1, "_crashKeyLog"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 384
    new-instance v0, Lcom/narvii/editor/provider/MeisheServiceProvider;

    invoke-direct {v0}, Lcom/narvii/editor/provider/MeisheServiceProvider;-><init>()V

    const-string v1, "meishe"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 385
    new-instance v0, Lcom/narvii/services/AuidServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AuidServiceProvider;-><init>()V

    const-string v1, "auid"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 386
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->captionStyleServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    const-string v1, "captionStyle"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 387
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->captionFontServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    const-string v1, "captionFont"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 388
    new-instance v0, Lcom/narvii/services/DevOptionsHelper;

    invoke-direct {v0}, Lcom/narvii/services/DevOptionsHelper;-><init>()V

    const-string v1, "devOptions"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 389
    new-instance v0, Lcom/narvii/master/theme/MasterThemeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/master/theme/MasterThemeServiceProvider;-><init>()V

    const-string v1, "masterTheme"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 391
    new-instance v0, Lcom/narvii/chat/service/MyChatListServiceProvider;

    invoke-direct {v0}, Lcom/narvii/chat/service/MyChatListServiceProvider;-><init>()V

    const-string v1, "myChatList"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 393
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListProvider;

    invoke-direct {v0}, Lcom/narvii/chat/waitinglist/WaitingListProvider;-><init>()V

    const-string/jumbo v1, "waitingList"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 394
    new-instance v0, Lcom/narvii/community/JoinCommunityServiceProvider;

    invoke-direct {v0}, Lcom/narvii/community/JoinCommunityServiceProvider;-><init>()V

    const-string v1, "joinCommunity"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 395
    new-instance v0, Lcom/narvii/services/incubator/VisitorModeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;-><init>()V

    const-string/jumbo v1, "visitorMode"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 396
    new-instance v0, Lcom/narvii/services/AttributeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AttributeServiceProvider;-><init>()V

    const-string v1, "attribute"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 397
    new-instance v0, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;-><init>()V

    const-string v1, "_notice"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    return-void
.end method

.method public initCommunityServices(Lcom/narvii/services/incubator/CommunityContext;Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 429
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->configProvider:Lcom/narvii/services/incubator/IncubatorConfigProvider;

    const-string v0, "config"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 430
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->accountServiceProvider:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    const-string v0, "account"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 431
    new-instance p1, Lcom/narvii/services/ApiServiceProvider;

    invoke-direct {p1}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    const-string v0, "api"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 432
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->filesDirProvider:Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;

    const-string v0, "filesDir"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 433
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cacheDirProvider:Lcom/narvii/services/incubator/IncubatorCacheDirServiceProvider;

    const-string v0, "cacheDir"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 434
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->drawerCommunityProvider:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    const-string v0, "drawerHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 435
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->navigatorProvider:Lcom/narvii/services/incubator/IncubatorNavigatorProvider;

    const-string v0, "navigator"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 436
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->notificationCenterProvider:Lcom/narvii/services/incubator/IncubatorNotificationCenterProvider;

    const-string v0, "notification"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 437
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->draftManagerProvider:Lcom/narvii/services/incubator/IncubatorDraftManagerProvider;

    const-string v0, "draft"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 439
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->rankingServiceProvider:Lcom/narvii/services/RankingServiceProvider;

    const-string/jumbo v0, "ranking"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 440
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->myCommunityListReminderHelper:Lcom/narvii/services/MyCommunityListReminderHelper;

    const-string v0, "_myCommunityListReminderHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 441
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->pollServiceProvider:Lcom/narvii/services/PollServiceProvider;

    const-string/jumbo v0, "poll"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 442
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityBlockServiceProvider:Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;

    const-string v0, "block"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 444
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->updateDeviceTokenHelper:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    const-string v0, "_updateDeviceTokenHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 445
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->enterCommunityHelper:Lcom/narvii/services/EnterCommunityHelper;

    const-string v0, "_enterCommunityHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 446
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityStatusHelper:Lcom/narvii/services/CommunityStatusHelper;

    const-string v0, "_communityStatusHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 447
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityActiveHelper:Lcom/narvii/community/CommunityActiveHelper;

    const-string v0, "_communityActiveHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 448
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->messageReadServiceProvider:Lcom/narvii/services/MessageReadServiceProvider;

    const-string v0, "messageRead"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 449
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityLoggingServiceProvider:Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    const-string v0, "logging"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 451
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->incubatorLiveLayerCommunityServiceProvider:Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;

    const-string v0, "liveLayer"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 452
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->liveLayerCommunityProvider:Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;

    const-string v0, "liveLayerHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 453
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->cbbHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    const-string v0, "cbbHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 454
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->visitorBarHostCommunityProvider:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    const-string/jumbo v0, "visitorBarHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 456
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    const-string/jumbo v0, "sticker"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 457
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->chatServiceProvider:Lcom/narvii/services/ChatServiceProvider;

    const-string v0, "chat"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 458
    new-instance p1, Lcom/narvii/chat/service/MyChatListServiceProvider;

    invoke-direct {p1}, Lcom/narvii/chat/service/MyChatListServiceProvider;-><init>()V

    const-string v0, "myChatList"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 459
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    const-string v0, "checkIn"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    return-void
.end method

.method public isCommunityLive(I)Z
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorApplication;->lives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onApplicationResume()V
    .locals 2

    .line 615
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 616
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v1, "Restored App"

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 618
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVApplication;->onApplicationResume()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 176
    invoke-static {p0}, Lcom/google/android/play/core/missingsplits/MissingSplitsManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/missingsplits/MissingSplitsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/missingsplits/MissingSplitsManager;->disableAppIfMissingRequiredSplits()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "missingSplits!"

    .line 178
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/narvii/pushservice/PushApplication;->onCreate()V

    .line 182
    invoke-direct {p0}, Lcom/narvii/app/incubator/IncubatorApplication;->initWebView()V

    return-void
.end method

.method public peekService(ILjava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/incubator/CommunityContext;

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication;->communityContextCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    :goto_1
    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    .line 492
    iget-object p1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p1, p2}, Lcom/narvii/services/ServiceManager;->peekService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 494
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected setupCrashlytics()V
    .locals 2

    .line 218
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->init()V

    .line 219
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->init(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

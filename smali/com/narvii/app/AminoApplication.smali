.class public Lcom/narvii/app/AminoApplication;
.super Lcom/narvii/pushservice/PushApplication;
.source "AminoApplication.java"


# static fields
.field public static startupTime:J


# instance fields
.field private final _drawerResponseListener:Lcom/narvii/services/DrawerResponseListenerProvider;

.field private final appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

.field private final callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private captionFontServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

.field private captionStyleServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

.field private final cbbHostActivityProvider:Lcom/narvii/services/CBBHostActivityProvider;

.field private final cbbHostApplicationProvider:Lcom/narvii/services/CBBHostApplicationProvider;

.field private checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

.field private checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

.field private final configProvider:Lcom/narvii/services/AminoConfigProvider;

.field private final debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

.field private final drawerHostActivityProvider:Lcom/narvii/services/DrawerHostActivityProvider;

.field private final drawerHostAppProvider:Lcom/narvii/services/DrawerHostApplicationProvider;

.field private final drawerRightHostProvider:Lcom/narvii/services/DrawerRightHostProvider;

.field private final liveLayerHostActivityProvider:Lcom/narvii/services/LiveLayerHostActivityProvider;

.field private final liveLayerHostApplicationProvider:Lcom/narvii/services/LiveLayerHostApplicationProvider;

.field private final localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

.field private final navigatorProvider:Lcom/narvii/services/AminoNavigatorProvider;

.field private final pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

.field private final pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

.field private final recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

.field private final rtcService:Lcom/narvii/chat/video/RtcChatManagerService;

.field private final rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

.field private final signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

.field private final statsServiceProvider:Lcom/narvii/services/StatsServiceProvider;

.field private final stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

.field private final stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

.field private final topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x65

    const-string v2, ".altamino.top"

    .line 144
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/pushservice/PushApplication;-><init>(ZILjava/lang/String;)V

    .line 233
    new-instance v0, Lcom/narvii/services/AminoConfigProvider;

    invoke-direct {v0}, Lcom/narvii/services/AminoConfigProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->configProvider:Lcom/narvii/services/AminoConfigProvider;

    .line 234
    new-instance v0, Lcom/narvii/services/DrawerHostApplicationProvider;

    invoke-direct {v0}, Lcom/narvii/services/DrawerHostApplicationProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->drawerHostAppProvider:Lcom/narvii/services/DrawerHostApplicationProvider;

    .line 235
    new-instance v0, Lcom/narvii/services/DrawerHostActivityProvider;

    iget-object v1, p0, Lcom/narvii/app/AminoApplication;->drawerHostAppProvider:Lcom/narvii/services/DrawerHostApplicationProvider;

    invoke-direct {v0, v1}, Lcom/narvii/services/DrawerHostActivityProvider;-><init>(Lcom/narvii/services/ServiceProvider;)V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->drawerHostActivityProvider:Lcom/narvii/services/DrawerHostActivityProvider;

    .line 236
    new-instance v0, Lcom/narvii/services/LiveLayerHostApplicationProvider;

    invoke-direct {v0}, Lcom/narvii/services/LiveLayerHostApplicationProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->liveLayerHostApplicationProvider:Lcom/narvii/services/LiveLayerHostApplicationProvider;

    .line 237
    new-instance v0, Lcom/narvii/services/LiveLayerHostActivityProvider;

    iget-object v1, p0, Lcom/narvii/app/AminoApplication;->liveLayerHostApplicationProvider:Lcom/narvii/services/LiveLayerHostApplicationProvider;

    invoke-direct {v0, v1}, Lcom/narvii/services/LiveLayerHostActivityProvider;-><init>(Lcom/narvii/services/ServiceProvider;)V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->liveLayerHostActivityProvider:Lcom/narvii/services/LiveLayerHostActivityProvider;

    .line 239
    new-instance v0, Lcom/narvii/services/CBBHostApplicationProvider;

    invoke-direct {v0}, Lcom/narvii/services/CBBHostApplicationProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->cbbHostApplicationProvider:Lcom/narvii/services/CBBHostApplicationProvider;

    .line 240
    new-instance v0, Lcom/narvii/services/CBBHostActivityProvider;

    iget-object v1, p0, Lcom/narvii/app/AminoApplication;->cbbHostApplicationProvider:Lcom/narvii/services/CBBHostApplicationProvider;

    invoke-direct {v0, v1}, Lcom/narvii/services/CBBHostActivityProvider;-><init>(Lcom/narvii/services/ServiceProvider;)V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->cbbHostActivityProvider:Lcom/narvii/services/CBBHostActivityProvider;

    .line 243
    new-instance v0, Lcom/narvii/services/DrawerRightHostProvider;

    invoke-direct {v0}, Lcom/narvii/services/DrawerRightHostProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->drawerRightHostProvider:Lcom/narvii/services/DrawerRightHostProvider;

    .line 244
    new-instance v0, Lcom/narvii/services/DrawerResponseListenerProvider;

    invoke-direct {v0}, Lcom/narvii/services/DrawerResponseListenerProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->_drawerResponseListener:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 245
    new-instance v0, Lcom/narvii/services/StatsServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/StatsServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->statsServiceProvider:Lcom/narvii/services/StatsServiceProvider;

    .line 246
    new-instance v0, Lcom/narvii/services/AminoNavigatorProvider;

    invoke-direct {v0}, Lcom/narvii/services/AminoNavigatorProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->navigatorProvider:Lcom/narvii/services/AminoNavigatorProvider;

    .line 247
    new-instance v0, Lcom/narvii/app/ApplicationSessionHelper;

    invoke-direct {v0}, Lcom/narvii/app/ApplicationSessionHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    .line 248
    new-instance v0, Lcom/narvii/services/AminoDebugServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AminoDebugServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    .line 249
    new-instance v0, Lcom/narvii/util/services/TopActivityServiceProvider;

    invoke-direct {v0}, Lcom/narvii/util/services/TopActivityServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    .line 250
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-direct {v0}, Lcom/narvii/util/debug/SignallingMonitorHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 251
    new-instance v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 252
    new-instance v0, Lcom/narvii/chat/video/RtcChatManagerService;

    invoke-direct {v0}, Lcom/narvii/chat/video/RtcChatManagerService;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->rtcService:Lcom/narvii/chat/video/RtcChatManagerService;

    .line 253
    new-instance v0, Lcom/narvii/services/PushInviteHelper;

    invoke-direct {v0}, Lcom/narvii/services/PushInviteHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    .line 254
    new-instance v0, Lcom/narvii/chat/call/CallScreenService;

    invoke-direct {v0}, Lcom/narvii/chat/call/CallScreenService;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 255
    new-instance v0, Lcom/narvii/community/RecentCommunityHelper;

    invoke-direct {v0}, Lcom/narvii/community/RecentCommunityHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 256
    new-instance v0, Lcom/narvii/services/StickerServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/StickerServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    .line 257
    new-instance v0, Lcom/narvii/services/StickerCacheServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/StickerCacheServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

    .line 259
    new-instance v0, Lcom/narvii/services/RtcServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/RtcServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    .line 260
    new-instance v0, Lcom/narvii/services/LocaleChangeListener;

    invoke-direct {v0}, Lcom/narvii/services/LocaleChangeListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

    .line 262
    new-instance v0, Lcom/narvii/editor/provider/MeisheAssetDownloadServiceProvider;

    const-string v1, "captionStyle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/narvii/editor/provider/MeisheAssetDownloadServiceProvider;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->captionStyleServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    .line 263
    new-instance v0, Lcom/narvii/asset/AssetDownloadServiceProvider;

    const-string v1, "captionFont"

    invoke-direct {v0, v1}, Lcom/narvii/asset/AssetDownloadServiceProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->captionFontServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    .line 265
    new-instance v0, Lcom/narvii/checkin/CheckInServiceProvider;

    invoke-direct {v0}, Lcom/narvii/checkin/CheckInServiceProvider;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    .line 266
    new-instance v0, Lcom/narvii/checkin/CheckInActivityServiceProvider;

    iget-object v1, p0, Lcom/narvii/app/AminoApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInActivityServiceProvider;-><init>(Lcom/narvii/checkin/CheckInServiceProvider;)V

    iput-object v0, p0, Lcom/narvii/app/AminoApplication;->checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/app/AminoApplication;->startupTime:J

    const/4 v0, 0x1

    .line 146
    sput-boolean v0, Lcom/narvii/app/ApplicationSessionHelper;->RESET_ENABLED:Z

    return-void
.end method


# virtual methods
.method public activityOnCreate(Landroid/app/Activity;)Z
    .locals 9

    .line 184
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    iget-boolean v0, v0, Lcom/narvii/app/NVActivity;->restoreProcess:Z

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v1, "Restored App"

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_pushIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v2, "Opened Push Notification"

    invoke-virtual {v0, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ForwardActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "_pushClearType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "_pushClearCid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_pushTrackId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_pushUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    new-instance v0, Lcom/narvii/app/AminoApplication$1;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/narvii/app/AminoApplication$1;-><init>(Lcom/narvii/app/AminoApplication;IILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 215
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVApplication;->isAppInForeground()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_pushFrom"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-class v1, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    if-eqz v0, :cond_2

    .line 219
    sget-object v1, Lcom/narvii/pushservice/PushNotificationService;->FROM_PUSH:Lcom/narvii/util/statistics/TmpValue;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 222
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/pushservice/PushApplication;->activityOnCreate(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 152
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method protected beforeServiceManagerCreated()V
    .locals 4

    .line 157
    invoke-super {p0}, Lcom/narvii/app/NVApplication;->beforeServiceManagerCreated()V

    .line 159
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-direct {v0, p0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getForceLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 163
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 164
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 165
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 165
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to force locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public initActivityServices(Lcom/narvii/app/NVActivity;Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 400
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->configProvider:Lcom/narvii/services/AminoConfigProvider;

    const-string v0, "config"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 401
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
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->statsServiceProvider:Lcom/narvii/services/StatsServiceProvider;

    const-string/jumbo v0, "stats"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 406
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->navigatorProvider:Lcom/narvii/services/AminoNavigatorProvider;

    const-string v0, "navigator"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 407
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->drawerHostActivityProvider:Lcom/narvii/services/DrawerHostActivityProvider;

    const-string v0, "drawerHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 408
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    const-string/jumbo v0, "topActivity"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 409
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->liveLayerHostActivityProvider:Lcom/narvii/services/LiveLayerHostActivityProvider;

    const-string v0, "liveLayerHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 410
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->cbbHostActivityProvider:Lcom/narvii/services/CBBHostActivityProvider;

    const-string v0, "cbbHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 411
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->drawerRightHostProvider:Lcom/narvii/services/DrawerRightHostProvider;

    const-string v0, "drawerRightHost"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 412
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->_drawerResponseListener:Lcom/narvii/services/DrawerResponseListenerProvider;

    const-string v0, "_drawerResponseListener"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 413
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    const-string v0, "applicationSessionHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 414
    new-instance p1, Lcom/narvii/services/BackToHomeHelper;

    invoke-direct {p1}, Lcom/narvii/services/BackToHomeHelper;-><init>()V

    const-string v0, "_backToHomeHelper"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 415
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    const-string/jumbo v0, "pushInvite"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 416
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    const-string/jumbo v0, "rtc"

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
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->checkInActivityServiceProvider:Lcom/narvii/checkin/CheckInActivityServiceProvider;

    const-string v0, "checkIn"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 422
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    const-string v0, "_debug"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 424
    iget-object p1, p0, Lcom/narvii/app/AminoApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    const-string v0, "_signallingMonitor"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    :cond_0
    return-void
.end method

.method protected initApplicationServices(Lcom/narvii/services/ServiceManager;)V
    .locals 3

    .line 270
    invoke-super {p0, p1}, Lcom/narvii/pushservice/PushApplication;->initApplicationServices(Lcom/narvii/services/ServiceManager;)V

    .line 272
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-direct {v0, p0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 274
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 275
    new-instance v1, Lcom/narvii/notification/channel/NotificationChannelHelper;

    invoke-direct {v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;-><init>()V

    const-string v2, "notificationChannel"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 277
    :cond_0
    new-instance v1, Lcom/narvii/services/AminoFragmentRegisterProvider;

    invoke-direct {v1}, Lcom/narvii/services/AminoFragmentRegisterProvider;-><init>()V

    const-string v2, "fragmentRegister"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 278
    new-instance v1, Lcom/narvii/chat/ChatPushProvider;

    invoke-direct {v1}, Lcom/narvii/chat/ChatPushProvider;-><init>()V

    const-string v2, "_pushChat"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 279
    new-instance v1, Lcom/narvii/services/PrefsProvider;

    const-string v2, "amino"

    invoke-direct {v1, v2}, Lcom/narvii/services/PrefsProvider;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "prefs"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 280
    new-instance v1, Lcom/narvii/services/FilesDirServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/FilesDirServiceProvider;-><init>()V

    const-string v2, "filesDir"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 281
    new-instance v1, Lcom/narvii/services/CacheDirServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/CacheDirServiceProvider;-><init>()V

    const-string v2, "cacheDir"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 282
    new-instance v1, Lcom/narvii/services/VersionPrefsServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/VersionPrefsServiceProvider;-><init>()V

    const-string/jumbo v2, "versionPrefs"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 283
    new-instance v1, Lcom/narvii/services/DeviceIDServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/DeviceIDServiceProvider;-><init>()V

    const-string v2, "deviceid"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 284
    new-instance v1, Lcom/narvii/services/ImageDiskCacheProvider;

    invoke-direct {v1}, Lcom/narvii/services/ImageDiskCacheProvider;-><init>()V

    const-string v2, "imageDiskCache"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 285
    new-instance v1, Lcom/narvii/services/ImageLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/services/ImageLoaderProvider;-><init>()V

    const-string v2, "imageLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 286
    new-instance v1, Lcom/narvii/services/ApiRequestQueueProvider;

    invoke-direct {v1}, Lcom/narvii/services/ApiRequestQueueProvider;-><init>()V

    const-string v2, "apiRequestQueue"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 287
    new-instance v1, Lcom/narvii/services/ApiServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/ApiServiceProvider;-><init>()V

    const-string v2, "api"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 288
    new-instance v1, Lcom/narvii/services/AccountServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/AccountServiceProvider;-><init>()V

    const-string v2, "account"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 289
    new-instance v1, Lcom/narvii/services/LocationServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/LocationServiceProvider;-><init>()V

    const-string v2, "location"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 290
    new-instance v1, Lcom/narvii/services/CommunityServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/CommunityServiceProvider;-><init>()V

    const-string v2, "community"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 291
    new-instance v1, Lcom/narvii/services/PhotoServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/PhotoServiceProvider;-><init>()V

    const-string/jumbo v2, "photo"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 292
    new-instance v1, Lcom/narvii/services/DraftManagerProvider;

    invoke-direct {v1}, Lcom/narvii/services/DraftManagerProvider;-><init>()V

    const-string v2, "draft"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 293
    new-instance v1, Lcom/narvii/notification/NotificationCenter;

    invoke-direct {v1}, Lcom/narvii/notification/NotificationCenter;-><init>()V

    const-string v2, "notification"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    new-instance v1, Lcom/narvii/services/AminoChatServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/AminoChatServiceProvider;-><init>()V

    const-string v2, "chat"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 295
    new-instance v1, Lcom/narvii/services/GifLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/services/GifLoaderProvider;-><init>()V

    const-string v2, "gifLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 296
    new-instance v1, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;-><init>()V

    const-string v2, "avatarFrameLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 297
    new-instance v1, Lcom/narvii/media/online/audio/AudioDownloaderProvider;

    invoke-direct {v1}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;-><init>()V

    const-string v2, "audioDownloader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 298
    new-instance v1, Lcom/narvii/services/WebPLoaderProvider;

    invoke-direct {v1}, Lcom/narvii/services/WebPLoaderProvider;-><init>()V

    const-string/jumbo v2, "webpLoader"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 299
    new-instance v1, Lcom/narvii/services/BadgeServiceProvider;

    invoke-direct {v1}, Lcom/narvii/services/BadgeServiceProvider;-><init>()V

    const-string v2, "badge"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 300
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isGooglePlayInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Lcom/narvii/services/GooglePlayServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/GooglePlayServiceProvider;-><init>()V

    const-string v1, "googlePlay"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 304
    :cond_1
    new-instance v0, Lcom/narvii/services/PushHelper;

    invoke-direct {v0}, Lcom/narvii/services/PushHelper;-><init>()V

    const-string v1, "_pushHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 305
    new-instance v0, Lcom/narvii/services/CleanupHelper;

    invoke-direct {v0}, Lcom/narvii/services/CleanupHelper;-><init>()V

    const-string v1, "_cleanupHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 306
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->statsServiceProvider:Lcom/narvii/services/StatsServiceProvider;

    const-string/jumbo v1, "stats"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 308
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->navigatorProvider:Lcom/narvii/services/AminoNavigatorProvider;

    const-string v1, "navigator"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 309
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->configProvider:Lcom/narvii/services/AminoConfigProvider;

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 310
    new-instance v0, Lcom/narvii/services/ThemePackServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/ThemePackServiceProvider;-><init>()V

    const-string/jumbo v1, "themePack"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 312
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->drawerHostAppProvider:Lcom/narvii/services/DrawerHostApplicationProvider;

    const-string v1, "drawerHost"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 313
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->liveLayerHostApplicationProvider:Lcom/narvii/services/LiveLayerHostApplicationProvider;

    const-string v1, "liveLayerHost"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 314
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->cbbHostApplicationProvider:Lcom/narvii/services/CBBHostApplicationProvider;

    const-string v1, "cbbHost"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 315
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->drawerRightHostProvider:Lcom/narvii/services/DrawerRightHostProvider;

    const-string v1, "drawerRightHost"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 316
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->_drawerResponseListener:Lcom/narvii/services/DrawerResponseListenerProvider;

    const-string v1, "_drawerResponseListener"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 317
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->appSessionHelper:Lcom/narvii/app/ApplicationSessionHelper;

    const-string v1, "applicationSessionHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 318
    new-instance v0, Lcom/narvii/services/MyCommunityListServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MyCommunityListServiceProvider;-><init>()V

    const-string v1, "myCommunityList"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 319
    new-instance v0, Lcom/narvii/services/MyCommunityListReminderHelper;

    invoke-direct {v0}, Lcom/narvii/services/MyCommunityListReminderHelper;-><init>()V

    const-string v1, "_myCommunityListReminderHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 320
    new-instance v0, Lcom/narvii/services/PollServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/PollServiceProvider;-><init>()V

    const-string/jumbo v1, "poll"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 322
    new-instance v0, Lcom/narvii/services/LanguageServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/LanguageServiceProvider;-><init>()V

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 323
    new-instance v0, Lcom/narvii/services/YoutubeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/YoutubeServiceProvider;-><init>()V

    const-string/jumbo v1, "youtube"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 324
    new-instance v0, Lcom/narvii/services/MediaPreloadServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MediaPreloadServiceProvider;-><init>()V

    const-string v1, "mediapreload"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 325
    new-instance v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    invoke-direct {v0}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;-><init>()V

    const-string v1, "_updateDeviceTokenHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 326
    new-instance v0, Lcom/narvii/services/EnterCommunityHelper;

    invoke-direct {v0}, Lcom/narvii/services/EnterCommunityHelper;-><init>()V

    const-string v1, "_enterCommunityHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 327
    new-instance v0, Lcom/narvii/services/CommunityStatusHelper;

    invoke-direct {v0}, Lcom/narvii/services/CommunityStatusHelper;-><init>()V

    const-string v1, "_communityStatusHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 328
    new-instance v0, Lcom/narvii/community/CommunityActiveHelper;

    invoke-direct {v0}, Lcom/narvii/community/CommunityActiveHelper;-><init>()V

    const-string v1, "_communityActiveHelper"

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
    new-instance v0, Lcom/narvii/services/RankingServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/RankingServiceProvider;-><init>()V

    const-string/jumbo v1, "ranking"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 333
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->pasteBoardServiceProvider:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    const-string/jumbo v1, "pasteBoard"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 335
    new-instance v0, Lcom/narvii/services/MediaPickCallbackServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MediaPickCallbackServiceProvider;-><init>()V

    const-string v1, "mediaPickCallback"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 336
    new-instance v0, Lcom/narvii/video/providers/VideoServiceProvider;

    invoke-direct {v0}, Lcom/narvii/video/providers/VideoServiceProvider;-><init>()V

    const-string/jumbo v1, "videoManager"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 337
    new-instance v0, Lcom/narvii/editor/provider/EditorPackServiceProvider;

    invoke-direct {v0}, Lcom/narvii/editor/provider/EditorPackServiceProvider;-><init>()V

    const-string v1, "editorPackFactory"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 339
    new-instance v0, Lcom/narvii/services/EventLogProfileServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/EventLogProfileServiceProvider;-><init>()V

    const-string v1, "eventLogProfile"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 341
    new-instance v0, Lcom/narvii/services/WsServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/WsServiceProvider;-><init>()V

    const-string/jumbo v1, "ws"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 342
    new-instance v0, Lcom/narvii/util/ws/LogWsServiceProvider;

    invoke-direct {v0}, Lcom/narvii/util/ws/LogWsServiceProvider;-><init>()V

    const-string v1, "logWs"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 343
    new-instance v0, Lcom/narvii/services/SignallingServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/SignallingServiceProvider;-><init>()V

    const-string/jumbo v1, "signalling"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 344
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->rtcService:Lcom/narvii/chat/video/RtcChatManagerService;

    const-string/jumbo v1, "rtcManager"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 345
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->rtcServiceProvider:Lcom/narvii/services/RtcServiceProvider;

    const-string/jumbo v1, "rtc"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 346
    new-instance v0, Lcom/narvii/services/LiveLayerApplicationServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/LiveLayerApplicationServiceProvider;-><init>()V

    const-string v1, "liveLayer"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 347
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->pushInviteHelper:Lcom/narvii/services/PushInviteHelper;

    const-string/jumbo v1, "pushInvite"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 348
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    const-string v1, "callScreen"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 349
    new-instance v0, Lcom/narvii/services/UserBlockServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/UserBlockServiceProvider;-><init>()V

    const-string v1, "block"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 351
    new-instance v0, Lcom/narvii/services/LiverLayerWSServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/LiverLayerWSServiceProvider;-><init>()V

    const-string v1, "liveLayerWS"

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
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;

    invoke-direct {v0}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;-><init>()V

    const-string/jumbo v1, "screenRoom"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 358
    new-instance v0, Lcom/narvii/services/MessageReadServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MessageReadServiceProvider;-><init>()V

    const-string v1, "messageRead"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 359
    new-instance v0, Lcom/narvii/services/MessageReadCleanHelper;

    invoke-direct {v0}, Lcom/narvii/services/MessageReadCleanHelper;-><init>()V

    const-string v1, "_messageReadCleanHelper"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 360
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    const-string/jumbo v1, "recentCommunities"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 361
    new-instance v0, Lcom/narvii/services/AminoLoggingServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AminoLoggingServiceProvider;-><init>()V

    const-string v1, "logging"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 362
    new-instance v0, Lcom/narvii/services/AppLogEventServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AppLogEventServiceProvider;-><init>()V

    const-string v1, "logEvent"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 363
    new-instance v0, Lcom/narvii/services/DetailLoggingHelper;

    invoke-direct {v0}, Lcom/narvii/services/DetailLoggingHelper;-><init>()V

    const-string v1, "_detailLogging"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 364
    new-instance v0, Lcom/narvii/util/AppsflyerManager$RetentionTrack;

    invoke-direct {v0}, Lcom/narvii/util/AppsflyerManager$RetentionTrack;-><init>()V

    const-string v1, "_appsflyerRetention"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 367
    new-instance v0, Lcom/narvii/services/MembershipServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/MembershipServiceProvider;-><init>()V

    const-string v1, "membership"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 368
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleServiceProvider;

    invoke-direct {v0}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;-><init>()V

    const-string v1, "bubble"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 369
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->stickerServiceProvider:Lcom/narvii/services/StickerServiceProvider;

    const-string/jumbo v1, "sticker"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 370
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->stickerCacheServiceProvider:Lcom/narvii/services/StickerCacheServiceProvider;

    const-string/jumbo v1, "stickerCache"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 371
    new-instance v0, Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-direct {v0}, Lcom/narvii/wallet/EarnCoinToastHelper;-><init>()V

    const-string v1, "_earnCoinToast"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 373
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->topActivityServiceProvider:Lcom/narvii/util/services/TopActivityServiceProvider;

    const-string/jumbo v1, "topActivity"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 374
    new-instance v0, Lcom/narvii/services/GlobalChatServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/GlobalChatServiceProvider;-><init>()V

    const-string v1, "globalChat"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 375
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->localeChangeListener:Lcom/narvii/services/LocaleChangeListener;

    const-string v1, "localeChange"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 378
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->debugServiceProvider:Lcom/narvii/util/debug/DebugServiceProvider;

    const-string v1, "_debug"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 380
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->signallingMonitorHelper:Lcom/narvii/util/debug/SignallingMonitorHelper;

    const-string v1, "_signallingMonitor"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 382
    :cond_2
    new-instance v0, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;

    invoke-direct {v0}, Lcom/narvii/util/crashlytics/CrashKeyLogHelper;-><init>()V

    const-string v1, "_crashKeyLog"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 383
    new-instance v0, Lcom/narvii/editor/provider/MeisheServiceProvider;

    invoke-direct {v0}, Lcom/narvii/editor/provider/MeisheServiceProvider;-><init>()V

    const-string v1, "meishe"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 384
    new-instance v0, Lcom/narvii/services/AuidServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AuidServiceProvider;-><init>()V

    const-string v1, "auid"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 385
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->captionStyleServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    const-string v1, "captionStyle"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 386
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->captionFontServiceProvider:Lcom/narvii/asset/AssetDownloadServiceProvider;

    const-string v1, "captionFont"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 387
    new-instance v0, Lcom/narvii/services/DevOptionsHelper;

    invoke-direct {v0}, Lcom/narvii/services/DevOptionsHelper;-><init>()V

    const-string v1, "devOptions"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 388
    new-instance v0, Lcom/narvii/master/theme/MasterThemeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/master/theme/MasterThemeServiceProvider;-><init>()V

    const-string v1, "masterTheme"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 390
    new-instance v0, Lcom/narvii/chat/service/MyChatListServiceProvider;

    invoke-direct {v0}, Lcom/narvii/chat/service/MyChatListServiceProvider;-><init>()V

    const-string v1, "myChatList"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 391
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListProvider;

    invoke-direct {v0}, Lcom/narvii/chat/waitinglist/WaitingListProvider;-><init>()V

    const-string/jumbo v1, "waitingList"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 392
    new-instance v0, Lcom/narvii/services/AttributeServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/AttributeServiceProvider;-><init>()V

    const-string v1, "attribute"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 394
    iget-object v0, p0, Lcom/narvii/app/AminoApplication;->checkInServiceProvider:Lcom/narvii/checkin/CheckInServiceProvider;

    const-string v1, "checkIn"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    return-void
.end method

.method protected onApplicationResume()V
    .locals 2

    .line 227
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v1, "Restored App"

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 230
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVApplication;->onApplicationResume()V

    return-void
.end method

.method protected setupCrashlytics()V
    .locals 2

    .line 178
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->init()V

    .line 179
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-string v1, "com.narvii.amino.standalone"

    invoke-static {p0, v0, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->init(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

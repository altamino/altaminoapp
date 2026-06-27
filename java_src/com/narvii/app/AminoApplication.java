package com.narvii.app;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.SystemClock;
import android.support.multidex.MultiDex;
import com.narvii.amino.BuildConfig;
import com.narvii.asset.AssetDownloadServiceProvider;
import com.narvii.chat.ChatPushProvider;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.screenroom.ScreenRoomServiceProvider;
import com.narvii.chat.service.MyChatListServiceProvider;
import com.narvii.chat.setting.helper.ChatWaitingListProvider;
import com.narvii.chat.video.RtcChatManagerService;
import com.narvii.chat.waitinglist.WaitingListProvider;
import com.narvii.checkin.CheckInActivityServiceProvider;
import com.narvii.checkin.CheckInPrefsHelper;
import com.narvii.checkin.CheckInServiceProvider;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.CommunityActiveHelper;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.editor.provider.EditorPackServiceProvider;
import com.narvii.editor.provider.MeisheAssetDownloadServiceProvider;
import com.narvii.editor.provider.MeisheServiceProvider;
import com.narvii.master.language.ContentLanguageServiceProvider;
import com.narvii.master.theme.MasterThemeServiceProvider;
import com.narvii.media.online.audio.AudioDownloaderProvider;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoaderProvider;
import com.narvii.monetization.bubble.BubbleServiceProvider;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.pushservice.PushApplication;
import com.narvii.pushservice.PushNotificationService;
import com.narvii.pushservice.UpdateDeviceTokenHelper;
import com.narvii.scene.service.ChooseSceneTemplateServiceProvider;
import com.narvii.services.AccountServiceProvider;
import com.narvii.services.AffiliationsServiceProvider;
import com.narvii.services.AminoChatServiceProvider;
import com.narvii.services.AminoConfigProvider;
import com.narvii.services.AminoDebugServiceProvider;
import com.narvii.services.AminoFragmentRegisterProvider;
import com.narvii.services.AminoLoggingServiceProvider;
import com.narvii.services.AminoNavigatorProvider;
import com.narvii.services.ApiRequestQueueProvider;
import com.narvii.services.ApiServiceProvider;
import com.narvii.services.AppLogEventServiceProvider;
import com.narvii.services.AttributeServiceProvider;
import com.narvii.services.AuidServiceProvider;
import com.narvii.services.BackToHomeHelper;
import com.narvii.services.BadgeServiceProvider;
import com.narvii.services.CBBHostActivityProvider;
import com.narvii.services.CBBHostApplicationProvider;
import com.narvii.services.CacheDirServiceProvider;
import com.narvii.services.CleanupHelper;
import com.narvii.services.CommunityServiceProvider;
import com.narvii.services.CommunityStatusHelper;
import com.narvii.services.DetailLoggingHelper;
import com.narvii.services.DevOptionsHelper;
import com.narvii.services.DeviceIDServiceProvider;
import com.narvii.services.DraftManagerProvider;
import com.narvii.services.DrawerHostActivityProvider;
import com.narvii.services.DrawerHostApplicationProvider;
import com.narvii.services.DrawerResponseListenerProvider;
import com.narvii.services.DrawerRightHostProvider;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.services.EventLogProfileServiceProvider;
import com.narvii.services.FilesDirServiceProvider;
import com.narvii.services.GifLoaderProvider;
import com.narvii.services.GlobalChatServiceProvider;
import com.narvii.services.GooglePlayServiceProvider;
import com.narvii.services.ImageDiskCacheProvider;
import com.narvii.services.ImageLoaderProvider;
import com.narvii.services.LanguageServiceProvider;
import com.narvii.services.LiveLayerApplicationServiceProvider;
import com.narvii.services.LiveLayerHostActivityProvider;
import com.narvii.services.LiveLayerHostApplicationProvider;
import com.narvii.services.LiverLayerWSServiceProvider;
import com.narvii.services.LocaleChangeListener;
import com.narvii.services.LocationServiceProvider;
import com.narvii.services.MediaLoaderProvider;
import com.narvii.services.MediaPickCallbackServiceProvider;
import com.narvii.services.MediaPlayerProvider;
import com.narvii.services.MediaPreloadServiceProvider;
import com.narvii.services.MediaRecorderServiceProvider;
import com.narvii.services.MembershipServiceProvider;
import com.narvii.services.MessageReadCleanHelper;
import com.narvii.services.MessageReadServiceProvider;
import com.narvii.services.MyCommunityListReminderHelper;
import com.narvii.services.MyCommunityListServiceProvider;
import com.narvii.services.PhotoServiceProvider;
import com.narvii.services.PollServiceProvider;
import com.narvii.services.PostEntryProvider;
import com.narvii.services.PrefsProvider;
import com.narvii.services.PushHelper;
import com.narvii.services.PushInviteHelper;
import com.narvii.services.RankingServiceProvider;
import com.narvii.services.RtcServiceProvider;
import com.narvii.services.ServiceManager;
import com.narvii.services.SignallingServiceProvider;
import com.narvii.services.StatsServiceProvider;
import com.narvii.services.StickerCacheServiceProvider;
import com.narvii.services.StickerServiceProvider;
import com.narvii.services.ThemePackServiceProvider;
import com.narvii.services.UserBlockServiceProvider;
import com.narvii.services.VersionPrefsServiceProvider;
import com.narvii.services.WebPLoaderProvider;
import com.narvii.services.WsServiceProvider;
import com.narvii.services.YoutubeServiceProvider;
import com.narvii.services.incubator.PasteBoardServiceProvider;
import com.narvii.story.StoryPostServiceProvider;
import com.narvii.util.AppsflyerManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashKeyLogHelper;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.debug.DebugServiceProvider;
import com.narvii.util.debug.SignallingMonitorHelper;
import com.narvii.util.logging.DetailLogging;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.services.TopActivityServiceProvider;
import com.narvii.util.ws.LogWsServiceProvider;
import com.narvii.video.providers.VideoServiceProvider;
import com.narvii.wallet.EarnCoinToastHelper;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public class AminoApplication extends PushApplication {
    public static long startupTime;
    private final DrawerResponseListenerProvider _drawerResponseListener;
    private final ApplicationSessionHelper appSessionHelper;
    private final CallScreenService callScreenService;
    private AssetDownloadServiceProvider captionFontServiceProvider;
    private AssetDownloadServiceProvider captionStyleServiceProvider;
    private final CBBHostActivityProvider cbbHostActivityProvider;
    private final CBBHostApplicationProvider cbbHostApplicationProvider;
    private CheckInActivityServiceProvider checkInActivityServiceProvider;
    private CheckInServiceProvider checkInServiceProvider;
    private final AminoConfigProvider configProvider;
    private final DebugServiceProvider debugServiceProvider;
    private final DrawerHostActivityProvider drawerHostActivityProvider;
    private final DrawerHostApplicationProvider drawerHostAppProvider;
    private final DrawerRightHostProvider drawerRightHostProvider;
    private final LiveLayerHostActivityProvider liveLayerHostActivityProvider;
    private final LiveLayerHostApplicationProvider liveLayerHostApplicationProvider;
    private final LocaleChangeListener localeChangeListener;
    private final AminoNavigatorProvider navigatorProvider;
    private final PasteBoardServiceProvider pasteBoardServiceProvider;
    private final PushInviteHelper pushInviteHelper;
    private final RecentCommunityHelper recentCommunityHelper;
    private final RtcChatManagerService rtcService;
    private final RtcServiceProvider rtcServiceProvider;
    private final SignallingMonitorHelper signallingMonitorHelper;
    private final StatsServiceProvider statsServiceProvider;
    private final StickerCacheServiceProvider stickerCacheServiceProvider;
    private final StickerServiceProvider stickerServiceProvider;
    private final TopActivityServiceProvider topActivityServiceProvider;

    public AminoApplication() {
        super(false, 101, BuildConfig.MAIN_HOST);
        this.configProvider = new AminoConfigProvider();
        this.drawerHostAppProvider = new DrawerHostApplicationProvider();
        this.drawerHostActivityProvider = new DrawerHostActivityProvider(this.drawerHostAppProvider);
        this.liveLayerHostApplicationProvider = new LiveLayerHostApplicationProvider();
        this.liveLayerHostActivityProvider = new LiveLayerHostActivityProvider(this.liveLayerHostApplicationProvider);
        this.cbbHostApplicationProvider = new CBBHostApplicationProvider();
        this.cbbHostActivityProvider = new CBBHostActivityProvider(this.cbbHostApplicationProvider);
        this.drawerRightHostProvider = new DrawerRightHostProvider();
        this._drawerResponseListener = new DrawerResponseListenerProvider();
        this.statsServiceProvider = new StatsServiceProvider();
        this.navigatorProvider = new AminoNavigatorProvider();
        this.appSessionHelper = new ApplicationSessionHelper();
        this.debugServiceProvider = new AminoDebugServiceProvider();
        this.topActivityServiceProvider = new TopActivityServiceProvider();
        this.signallingMonitorHelper = new SignallingMonitorHelper();
        this.pasteBoardServiceProvider = new PasteBoardServiceProvider();
        this.rtcService = new RtcChatManagerService();
        this.pushInviteHelper = new PushInviteHelper();
        this.callScreenService = new CallScreenService();
        this.recentCommunityHelper = new RecentCommunityHelper();
        this.stickerServiceProvider = new StickerServiceProvider();
        this.stickerCacheServiceProvider = new StickerCacheServiceProvider();
        this.rtcServiceProvider = new RtcServiceProvider();
        this.localeChangeListener = new LocaleChangeListener();
        this.captionStyleServiceProvider = new MeisheAssetDownloadServiceProvider("captionStyle", 2);
        this.captionFontServiceProvider = new AssetDownloadServiceProvider("captionFont");
        this.checkInServiceProvider = new CheckInServiceProvider();
        this.checkInActivityServiceProvider = new CheckInActivityServiceProvider(this.checkInServiceProvider);
        startupTime = SystemClock.elapsedRealtime();
        ApplicationSessionHelper.RESET_ENABLED = true;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(context);
    }

    protected void beforeServiceManagerCreated() throws PackageManager.NameNotFoundException {
        super.beforeServiceManagerCreated();
        Locale forceLocale = new PackageUtils(this).getForceLocale();
        if (forceLocale != null) {
            try {
                Locale.setDefault(forceLocale);
                Configuration configuration = new Configuration();
                configuration.locale = forceLocale;
                getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
            } catch (Exception e) {
                Log.e("fail to force locale " + forceLocale, e);
            }
        }
    }

    @Override // com.narvii.app.NVApplication
    protected void setupCrashlytics() {
        DetailLogging.init();
        CrashlyticsUtils.init(this, NVApplication.DEBUG, "com.narvii.amino.standalone");
    }

    @Override // com.narvii.pushservice.PushApplication, com.narvii.app.NVApplication
    public boolean activityOnCreate(Activity activity) {
        PushNotificationService.PushFrom pushFrom;
        if ((activity instanceof NVActivity) && ((NVActivity) activity).restoreProcess) {
            EnterCommunityHelper.SOURCE.set("Restored App");
        } else if (activity.getIntent().getBooleanExtra("_pushIntent", false)) {
            EnterCommunityHelper.SOURCE.set("Opened Push Notification");
            if (!activity.getClass().getSimpleName().contains("ForwardActivity")) {
                final int intExtra = activity.getIntent().getIntExtra("_pushClearType", 0);
                final int intExtra2 = activity.getIntent().getIntExtra("_pushClearCid", 0);
                final String stringExtra = activity.getIntent().getStringExtra("_pushTrackId");
                final String stringExtra2 = activity.getIntent().getStringExtra("_pushUrl");
                Utils.postDelayed(new Runnable() { // from class: com.narvii.app.AminoApplication.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LoggingService loggingService = (LoggingService) AminoApplication.this.getService("logging");
                        int i = intExtra;
                        loggingService.lambda$logEvent$0$LoggingServiceImpl("PushOpened", "type", i != 1 ? i != 2 ? "marketing" : "chat" : NotificationChannelHelper.CHANNEL_NORMAL, CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(intExtra2), "trackId", stringExtra, "url", stringExtra2);
                    }
                }, 200L);
            }
        }
        if (!isAppInForeground() && activity.getIntent() != null && (pushFrom = (PushNotificationService.PushFrom) JacksonUtils.readAs(activity.getIntent().getStringExtra("_pushFrom"), PushNotificationService.PushFrom.class)) != null) {
            PushNotificationService.FROM_PUSH.set(pushFrom, 1500L);
        }
        return super.activityOnCreate(activity);
    }

    @Override // com.narvii.app.NVApplication
    protected void onApplicationResume() {
        if (EnterCommunityHelper.SOURCE.peek() == null) {
            EnterCommunityHelper.SOURCE.set("Restored App");
        }
        super.onApplicationResume();
    }

    @Override // com.narvii.pushservice.PushApplication, com.narvii.app.NVApplication
    protected void initApplicationServices(ServiceManager serviceManager) {
        super.initApplicationServices(serviceManager);
        PackageUtils packageUtils = new PackageUtils(this);
        if (Build.VERSION.SDK_INT >= 26) {
            serviceManager.addServiceProvider("notificationChannel", new NotificationChannelHelper());
        }
        serviceManager.addServiceProvider("fragmentRegister", new AminoFragmentRegisterProvider());
        serviceManager.addServiceProvider("_pushChat", new ChatPushProvider());
        serviceManager.addServiceProvider("prefs", new PrefsProvider("amino"));
        serviceManager.addServiceProvider("filesDir", new FilesDirServiceProvider());
        serviceManager.addServiceProvider("cacheDir", new CacheDirServiceProvider());
        serviceManager.addServiceProvider("versionPrefs", new VersionPrefsServiceProvider());
        serviceManager.addServiceProvider("deviceid", new DeviceIDServiceProvider());
        serviceManager.addServiceProvider("imageDiskCache", new ImageDiskCacheProvider());
        serviceManager.addServiceProvider("imageLoader", new ImageLoaderProvider());
        serviceManager.addServiceProvider("apiRequestQueue", new ApiRequestQueueProvider());
        serviceManager.addServiceProvider("api", new ApiServiceProvider());
        serviceManager.addServiceProvider("account", new AccountServiceProvider());
        serviceManager.addServiceProvider("location", new LocationServiceProvider());
        serviceManager.addServiceProvider("community", new CommunityServiceProvider());
        serviceManager.addServiceProvider("photo", new PhotoServiceProvider());
        serviceManager.addServiceProvider(EntryManager.ENTRY_DRAFT, new DraftManagerProvider());
        serviceManager.addService("notification", new NotificationCenter());
        serviceManager.addServiceProvider("chat", new AminoChatServiceProvider());
        serviceManager.addServiceProvider("gifLoader", new GifLoaderProvider());
        serviceManager.addServiceProvider("avatarFrameLoader", new AvatarFrameLoaderProvider());
        serviceManager.addServiceProvider("audioDownloader", new AudioDownloaderProvider());
        serviceManager.addServiceProvider("webpLoader", new WebPLoaderProvider());
        serviceManager.addServiceProvider("badge", new BadgeServiceProvider());
        if (packageUtils.isGooglePlayInstalled()) {
            serviceManager.addServiceProvider("googlePlay", new GooglePlayServiceProvider());
        }
        serviceManager.addServiceProvider("_pushHelper", new PushHelper());
        serviceManager.addServiceProvider("_cleanupHelper", new CleanupHelper());
        serviceManager.addServiceProvider("stats", this.statsServiceProvider);
        serviceManager.addServiceProvider("navigator", this.navigatorProvider);
        serviceManager.addServiceProvider("config", this.configProvider);
        serviceManager.addServiceProvider("themePack", new ThemePackServiceProvider());
        serviceManager.addServiceProvider("drawerHost", this.drawerHostAppProvider);
        serviceManager.addServiceProvider("liveLayerHost", this.liveLayerHostApplicationProvider);
        serviceManager.addServiceProvider("cbbHost", this.cbbHostApplicationProvider);
        serviceManager.addServiceProvider("drawerRightHost", this.drawerRightHostProvider);
        serviceManager.addServiceProvider("_drawerResponseListener", this._drawerResponseListener);
        serviceManager.addServiceProvider("applicationSessionHelper", this.appSessionHelper);
        serviceManager.addServiceProvider("myCommunityList", new MyCommunityListServiceProvider());
        serviceManager.addServiceProvider("_myCommunityListReminderHelper", new MyCommunityListReminderHelper());
        serviceManager.addServiceProvider(EntryManager.ENTRY_POLL, new PollServiceProvider());
        serviceManager.addServiceProvider(IjkMediaMeta.IJKM_KEY_LANGUAGE, new LanguageServiceProvider());
        serviceManager.addServiceProvider(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE, new YoutubeServiceProvider());
        serviceManager.addServiceProvider("mediapreload", new MediaPreloadServiceProvider());
        serviceManager.addServiceProvider("_updateDeviceTokenHelper", new UpdateDeviceTokenHelper());
        serviceManager.addServiceProvider("_enterCommunityHelper", new EnterCommunityHelper());
        serviceManager.addServiceProvider("_communityStatusHelper", new CommunityStatusHelper());
        serviceManager.addServiceProvider("_communityActiveHelper", new CommunityActiveHelper());
        serviceManager.addServiceProvider("affiliations", new AffiliationsServiceProvider());
        serviceManager.addServiceProvider("content_language", new ContentLanguageServiceProvider());
        serviceManager.addServiceProvider(Module.MODULE_RANKING, new RankingServiceProvider());
        serviceManager.addServiceProvider("pasteBoard", this.pasteBoardServiceProvider);
        serviceManager.addServiceProvider("mediaPickCallback", new MediaPickCallbackServiceProvider());
        serviceManager.addServiceProvider("videoManager", new VideoServiceProvider());
        serviceManager.addServiceProvider("editorPackFactory", new EditorPackServiceProvider());
        serviceManager.addServiceProvider("eventLogProfile", new EventLogProfileServiceProvider());
        serviceManager.addServiceProvider("ws", new WsServiceProvider());
        serviceManager.addServiceProvider("logWs", new LogWsServiceProvider());
        serviceManager.addServiceProvider("signalling", new SignallingServiceProvider());
        serviceManager.addServiceProvider("rtcManager", this.rtcService);
        serviceManager.addServiceProvider("rtc", this.rtcServiceProvider);
        serviceManager.addServiceProvider("liveLayer", new LiveLayerApplicationServiceProvider());
        serviceManager.addServiceProvider("pushInvite", this.pushInviteHelper);
        serviceManager.addServiceProvider("callScreen", this.callScreenService);
        serviceManager.addServiceProvider("block", new UserBlockServiceProvider());
        serviceManager.addServiceProvider("liveLayerWS", new LiverLayerWSServiceProvider());
        serviceManager.addServiceProvider("mediaRecorder", new MediaRecorderServiceProvider());
        serviceManager.addServiceProvider("mediaLoader", new MediaLoaderProvider());
        serviceManager.addServiceProvider("mediaPlayer", new MediaPlayerProvider());
        serviceManager.addServiceProvider("screenRoom", new ScreenRoomServiceProvider());
        serviceManager.addServiceProvider("messageRead", new MessageReadServiceProvider());
        serviceManager.addServiceProvider("_messageReadCleanHelper", new MessageReadCleanHelper());
        serviceManager.addServiceProvider("recentCommunities", this.recentCommunityHelper);
        serviceManager.addServiceProvider("logging", new AminoLoggingServiceProvider());
        serviceManager.addServiceProvider("logEvent", new AppLogEventServiceProvider());
        serviceManager.addServiceProvider("_detailLogging", new DetailLoggingHelper());
        serviceManager.addServiceProvider("_appsflyerRetention", new AppsflyerManager.RetentionTrack());
        serviceManager.addServiceProvider("membership", new MembershipServiceProvider());
        serviceManager.addServiceProvider("bubble", new BubbleServiceProvider());
        serviceManager.addServiceProvider("sticker", this.stickerServiceProvider);
        serviceManager.addServiceProvider("stickerCache", this.stickerCacheServiceProvider);
        serviceManager.addServiceProvider("_earnCoinToast", new EarnCoinToastHelper());
        serviceManager.addServiceProvider("topActivity", this.topActivityServiceProvider);
        serviceManager.addServiceProvider("globalChat", new GlobalChatServiceProvider());
        serviceManager.addServiceProvider("localeChange", this.localeChangeListener);
        if (NVApplication.DEBUG) {
            serviceManager.addServiceProvider("_debug", this.debugServiceProvider);
            serviceManager.addServiceProvider("_signallingMonitor", this.signallingMonitorHelper);
        }
        serviceManager.addServiceProvider("_crashKeyLog", new CrashKeyLogHelper());
        serviceManager.addServiceProvider("meishe", new MeisheServiceProvider());
        serviceManager.addServiceProvider("auid", new AuidServiceProvider());
        serviceManager.addServiceProvider("captionStyle", this.captionStyleServiceProvider);
        serviceManager.addServiceProvider("captionFont", this.captionFontServiceProvider);
        serviceManager.addServiceProvider("devOptions", new DevOptionsHelper());
        serviceManager.addServiceProvider("masterTheme", new MasterThemeServiceProvider());
        serviceManager.addServiceProvider("myChatList", new MyChatListServiceProvider());
        serviceManager.addServiceProvider("waitingList", new WaitingListProvider());
        serviceManager.addServiceProvider("attribute", new AttributeServiceProvider());
        serviceManager.addServiceProvider(CheckInPrefsHelper.SHARED_PREFS_NAME, this.checkInServiceProvider);
    }

    @Override // com.narvii.app.NVApplication
    public void initActivityServices(NVActivity nVActivity, ServiceManager serviceManager) {
        serviceManager.addServiceProvider("config", this.configProvider);
        serviceManager.addServiceProvider("api", new ApiServiceProvider());
        serviceManager.addServiceProvider("location", new LocationServiceProvider());
        serviceManager.addServiceProvider("postEntry", new PostEntryProvider());
        serviceManager.addServiceProvider("stats", this.statsServiceProvider);
        serviceManager.addServiceProvider("navigator", this.navigatorProvider);
        serviceManager.addServiceProvider("drawerHost", this.drawerHostActivityProvider);
        serviceManager.addServiceProvider("topActivity", this.topActivityServiceProvider);
        serviceManager.addServiceProvider("liveLayerHost", this.liveLayerHostActivityProvider);
        serviceManager.addServiceProvider("cbbHost", this.cbbHostActivityProvider);
        serviceManager.addServiceProvider("drawerRightHost", this.drawerRightHostProvider);
        serviceManager.addServiceProvider("_drawerResponseListener", this._drawerResponseListener);
        serviceManager.addServiceProvider("applicationSessionHelper", this.appSessionHelper);
        serviceManager.addServiceProvider("_backToHomeHelper", new BackToHomeHelper());
        serviceManager.addServiceProvider("pushInvite", this.pushInviteHelper);
        serviceManager.addServiceProvider("rtc", this.rtcServiceProvider);
        serviceManager.addServiceProvider("storyPost", new StoryPostServiceProvider());
        serviceManager.addServiceProvider("chooseSceneTemplate", new ChooseSceneTemplateServiceProvider());
        serviceManager.addServiceProvider("chatWaitingList", new ChatWaitingListProvider());
        serviceManager.addServiceProvider(CheckInPrefsHelper.SHARED_PREFS_NAME, this.checkInActivityServiceProvider);
        if (NVApplication.DEBUG) {
            serviceManager.addServiceProvider("_debug", this.debugServiceProvider);
            serviceManager.addServiceProvider("_signallingMonitor", this.signallingMonitorHelper);
        }
    }
}

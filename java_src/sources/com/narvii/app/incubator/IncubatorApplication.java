package com.narvii.app.incubator;

import ai.medialab.medialabads2.MediaLabAds;
import ai.medialab.medialabads2.MediaLabUidListener;
import ai.medialab.medialabads2.SdkInitListener;
import ai.medialab.medialabads2.analytics.AdRevenueInfo;
import ai.medialab.medialabads2.analytics.AdRevenueListener;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.multidex.MultiDex;
import android.util.SparseIntArray;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.g;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatPushProvider;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.core.ChatService;
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
import com.narvii.community.JoinCommunityServiceProvider;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.language.ContentLanguageService;
import com.narvii.master.MasterActivity;
import com.narvii.master.language.ContentLanguageServiceProvider;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.master.theme.MasterThemeServiceProvider;
import com.narvii.media.online.audio.AudioDownloaderProvider;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoaderProvider;
import com.narvii.monetization.bubble.BubbleServiceProvider;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.prompt.AccountPopUpUtils;
import com.narvii.pushservice.PushApplication;
import com.narvii.pushservice.PushNotificationService;
import com.narvii.pushservice.UpdateDeviceTokenHelper;
import com.narvii.services.AdsServiceProvider;
import com.narvii.services.AffiliationsServiceProvider;
import com.narvii.services.AminoDebugServiceProvider;
import com.narvii.services.AminoFragmentRegisterProvider;
import com.narvii.services.ApiRequestQueueProvider;
import com.narvii.services.ApiServiceProvider;
import com.narvii.services.AppLogEventServiceProvider;
import com.narvii.services.AttributeServiceProvider;
import com.narvii.services.AuidServiceProvider;
import com.narvii.services.ChatServiceProvider;
import com.narvii.services.CleanupHelper;
import com.narvii.services.CommunityStatusHelper;
import com.narvii.services.DetailLoggingHelper;
import com.narvii.services.DevOptionsHelper;
import com.narvii.services.DrawerRightHostProvider;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.services.EventLogProfileServiceProvider;
import com.narvii.services.GifLoaderProvider;
import com.narvii.services.GlobalChatServiceProvider;
import com.narvii.services.GooglePlayServiceProvider;
import com.narvii.services.ImageDiskCacheProvider;
import com.narvii.services.ImageLoaderProvider;
import com.narvii.services.IncubatorLiveLayerCommunityServiceProvider;
import com.narvii.services.KeyStoreServiceProvider;
import com.narvii.services.LanguageServiceProvider;
import com.narvii.services.LiveLayerIncubatorApplicationServiceProvider;
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
import com.narvii.services.SmAntiFraudServiceProvider;
import com.narvii.services.StickerCacheServiceProvider;
import com.narvii.services.StickerServiceProvider;
import com.narvii.services.ThemePackServiceProvider;
import com.narvii.services.VersionPrefsServiceProvider;
import com.narvii.services.WebPLoaderProvider;
import com.narvii.services.WsServiceProvider;
import com.narvii.services.YoutubeServiceProvider;
import com.narvii.services.incubator.CommunityContext;
import com.narvii.services.incubator.IncubatorAccountServiceProvider;
import com.narvii.services.incubator.IncubatorBackToHomeHelper;
import com.narvii.services.incubator.IncubatorBadgeServiceProvider;
import com.narvii.services.incubator.IncubatorBlockServiceProvider;
import com.narvii.services.incubator.IncubatorCBBHostActivityProvider;
import com.narvii.services.incubator.IncubatorCBBHostCommunityProvider;
import com.narvii.services.incubator.IncubatorCacheDirServiceProvider;
import com.narvii.services.incubator.IncubatorCommunityLoggingServiceProvider;
import com.narvii.services.incubator.IncubatorCommunityServiceProvider;
import com.narvii.services.incubator.IncubatorConfigProvider;
import com.narvii.services.incubator.IncubatorDraftManagerProvider;
import com.narvii.services.incubator.IncubatorDrawerHostActivityProvider;
import com.narvii.services.incubator.IncubatorDrawerHostCommunityProvider;
import com.narvii.services.incubator.IncubatorFilesDirServiceProvider;
import com.narvii.services.incubator.IncubatorGlobalBlockServiceProvider;
import com.narvii.services.incubator.IncubatorLiveLayerHostActivityProvider;
import com.narvii.services.incubator.IncubatorLiveLayerHostCommunityProvider;
import com.narvii.services.incubator.IncubatorLoggingServiceProvider;
import com.narvii.services.incubator.IncubatorMyCommunityListHelper;
import com.narvii.services.incubator.IncubatorNavigatorProvider;
import com.narvii.services.incubator.IncubatorNoticeServiceProvider;
import com.narvii.services.incubator.IncubatorNotificationCenterProvider;
import com.narvii.services.incubator.IncubatorStatisticsServiceProvider;
import com.narvii.services.incubator.IncubatorStatsProvider;
import com.narvii.services.incubator.IncubatorVisitorBarHostActivityProvider;
import com.narvii.services.incubator.IncubatorVisitorBarHostCommunityProvider;
import com.narvii.services.incubator.PasteBoardServiceProvider;
import com.narvii.services.incubator.VisitorModeServiceProvider;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.StorageUtils;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashKeyLogHelper;
import com.narvii.util.debug.DebugServiceProvider;
import com.narvii.util.debug.SignallingMonitorHelper;
import com.narvii.util.logging.DetailLogging;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.util.mixpanel.Tracking;
import com.narvii.util.services.TopActivityServiceProvider;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.TeaManager;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.ws.LogWsServiceProvider;
import com.narvii.video.providers.EditorPackServiceProvider;
import com.narvii.video.providers.VideoServiceProvider;
import com.narvii.wallet.BillingManager;
import com.narvii.wallet.EarnCoinToastHelper;
import com.narvii.wallet.optinads.OptinAds;
import com.safedk.android.internal.DexBridge;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class IncubatorApplication extends PushApplication {
    private static final String MEDIA_LAB_COHORT = "interstitial_skip";
    public static final String PREFS_SERVICE_KEY = "prefs";
    public static long STARTUP_TIME;
    private IncubatorAccountServiceProvider accountServiceProvider;
    private int activeCid;
    private int activeCount;
    private ApplicationSessionHelper appSessionHelper;
    private IncubatorCacheDirServiceProvider cacheDirProvider;
    private final CallScreenService callScreenService;
    private IncubatorCBBHostActivityProvider cbbHostActivityProvider;
    private IncubatorCBBHostCommunityProvider cbbHostCommunityProvider;
    private ChatServiceProvider chatServiceProvider;
    private CheckInActivityServiceProvider checkInActivityServiceProvider;
    private CheckInServiceProvider checkInServiceProvider;
    private String cohort;
    private CommunityActiveHelper communityActiveHelper;
    private final IncubatorBlockServiceProvider communityBlockServiceProvider;
    private final HashMap<Integer, WeakReference<CommunityContext>> communityContextCache;
    private final HashMap<Integer, CommunityContext> communityContextMap;
    private final IncubatorCommunityLoggingServiceProvider communityLoggingServiceProvider;
    private CommunityStatusHelper communityStatusHelper;
    private IncubatorConfigProvider configProvider;
    private final DebugServiceProvider debugServiceProvider;
    private IncubatorDraftManagerProvider draftManagerProvider;
    private IncubatorDrawerHostActivityProvider drawerActivityProvider;
    private IncubatorDrawerHostCommunityProvider drawerCommunityProvider;
    private DrawerRightHostProvider drawerRightProvider;
    private EnterCommunityHelper enterCommunityHelper;
    private IncubatorFilesDirServiceProvider filesDirProvider;
    private final IncubatorGlobalBlockServiceProvider globalBlockServiceProvider;
    private Handler handler;
    private final IncubatorLiveLayerCommunityServiceProvider incubatorLiveLayerCommunityServiceProvider;
    private final KeyStoreServiceProvider keyStoreProvider;
    private IncubatorLiveLayerHostActivityProvider liveLayerActivityProvider;
    private IncubatorLiveLayerHostCommunityProvider liveLayerCommunityProvider;
    private final SparseIntArray lives;
    private final LocaleChangeListener localeChangeListener;
    private final IncubatorLoggingServiceProvider loggingServiceProvider;
    private final MembershipServiceProvider membershipServiceProvider;
    private final MessageReadServiceProvider messageReadServiceProvider;
    private MyCommunityListReminderHelper myCommunityListReminderHelper;
    private IncubatorNavigatorProvider navigatorProvider;
    private IncubatorNotificationCenterProvider notificationCenterProvider;
    private PasteBoardServiceProvider pasteBoardServiceProvider;
    private PollServiceProvider pollServiceProvider;
    private PushInviteHelper pushInviteHelper;
    private RankingServiceProvider rankingServiceProvider;
    private final RecentCommunityHelper recentCommunityHelper;
    private final RtcServiceProvider rtcServiceProvider;
    private final SignallingMonitorHelper signallingMonitorHelper;
    private IncubatorStatisticsServiceProvider statisticsServiceProvider;
    private IncubatorStatsProvider statsProvider;
    private final StickerCacheServiceProvider stickerCacheServiceProvider;
    private final StickerServiceProvider stickerServiceProvider;
    private final TopActivityServiceProvider topActivityServiceProvider;
    private UpdateDeviceTokenHelper updateDeviceTokenHelper;
    private IncubatorVisitorBarHostActivityProvider visitorBarHostActivityProvider;
    private IncubatorVisitorBarHostCommunityProvider visitorBarHostCommunityProvider;

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(this);
    }

    @Override // com.narvii.app.NVApplication
    public <T> T getService(NVContext nVContext, String str) {
        T t5;
        int communityId = getCommunityId(nVContext);
        return (communityId == 0 || (t5 = (T) getService(communityId, str)) == null) ? (T) super.getService(nVContext, str) : t5;
    }

    @Override // com.narvii.pushservice.PushApplication, com.narvii.app.NVApplication, android.app.Application
    public void onCreate() {
        Logger.d("SafeDK|SafeDK: App> Lcom/narvii/app/incubator/IncubatorApplication;->onCreate()V");
        DexBridge.appClassOnCreateBefore(this);
        safedk_IncubatorApplication_onCreate_14dfe8e67294b4337f6b0625199ca86d(this);
    }

    @Override // com.narvii.app.NVApplication
    public <T> T peekService(int i10, String str) {
        CommunityContext communityContext = i10 == 0 ? null : this.communityContextMap.get(Integer.valueOf(i10));
        if (i10 != 0 && communityContext == null) {
            WeakReference<CommunityContext> weakReference = this.communityContextCache.get(Integer.valueOf(i10));
            communityContext = weakReference != null ? weakReference.get() : null;
        }
        return communityContext != null ? (T) communityContext.serviceManager.peekService(str) : (T) super.peekService(i10, str);
    }

    public IncubatorApplication() {
        super(false, 100, ".altamino.top");
        this.cacheDirProvider = new IncubatorCacheDirServiceProvider();
        this.filesDirProvider = new IncubatorFilesDirServiceProvider();
        this.configProvider = new IncubatorConfigProvider();
        this.navigatorProvider = new IncubatorNavigatorProvider();
        IncubatorDrawerHostCommunityProvider incubatorDrawerHostCommunityProvider = new IncubatorDrawerHostCommunityProvider();
        this.drawerCommunityProvider = incubatorDrawerHostCommunityProvider;
        this.drawerActivityProvider = new IncubatorDrawerHostActivityProvider(incubatorDrawerHostCommunityProvider);
        this.drawerRightProvider = new DrawerRightHostProvider();
        this.chatServiceProvider = new ChatServiceProvider();
        this.accountServiceProvider = new IncubatorAccountServiceProvider();
        this.notificationCenterProvider = new IncubatorNotificationCenterProvider();
        this.draftManagerProvider = new IncubatorDraftManagerProvider();
        this.statisticsServiceProvider = new IncubatorStatisticsServiceProvider();
        this.statsProvider = new IncubatorStatsProvider();
        this.rankingServiceProvider = new RankingServiceProvider();
        this.myCommunityListReminderHelper = new MyCommunityListReminderHelper();
        this.pollServiceProvider = new PollServiceProvider();
        this.appSessionHelper = new ApplicationSessionHelper();
        this.pasteBoardServiceProvider = new PasteBoardServiceProvider();
        this.updateDeviceTokenHelper = new UpdateDeviceTokenHelper();
        this.enterCommunityHelper = new EnterCommunityHelper();
        this.communityStatusHelper = new CommunityStatusHelper();
        this.communityActiveHelper = new CommunityActiveHelper();
        this.pushInviteHelper = new PushInviteHelper();
        this.debugServiceProvider = new AminoDebugServiceProvider();
        this.signallingMonitorHelper = new SignallingMonitorHelper();
        this.rtcServiceProvider = new RtcServiceProvider();
        CheckInServiceProvider checkInServiceProvider = new CheckInServiceProvider();
        this.checkInServiceProvider = checkInServiceProvider;
        this.checkInActivityServiceProvider = new CheckInActivityServiceProvider(checkInServiceProvider);
        this.incubatorLiveLayerCommunityServiceProvider = new IncubatorLiveLayerCommunityServiceProvider();
        this.messageReadServiceProvider = new MessageReadServiceProvider();
        IncubatorLiveLayerHostCommunityProvider incubatorLiveLayerHostCommunityProvider = new IncubatorLiveLayerHostCommunityProvider();
        this.liveLayerCommunityProvider = incubatorLiveLayerHostCommunityProvider;
        this.liveLayerActivityProvider = new IncubatorLiveLayerHostActivityProvider(incubatorLiveLayerHostCommunityProvider);
        IncubatorCBBHostCommunityProvider incubatorCBBHostCommunityProvider = new IncubatorCBBHostCommunityProvider();
        this.cbbHostCommunityProvider = incubatorCBBHostCommunityProvider;
        this.cbbHostActivityProvider = new IncubatorCBBHostActivityProvider(incubatorCBBHostCommunityProvider);
        IncubatorVisitorBarHostCommunityProvider incubatorVisitorBarHostCommunityProvider = new IncubatorVisitorBarHostCommunityProvider();
        this.visitorBarHostCommunityProvider = incubatorVisitorBarHostCommunityProvider;
        this.visitorBarHostActivityProvider = new IncubatorVisitorBarHostActivityProvider(incubatorVisitorBarHostCommunityProvider);
        this.callScreenService = new CallScreenService();
        this.globalBlockServiceProvider = new IncubatorGlobalBlockServiceProvider();
        this.communityBlockServiceProvider = new IncubatorBlockServiceProvider();
        this.recentCommunityHelper = new RecentCommunityHelper();
        this.loggingServiceProvider = new IncubatorLoggingServiceProvider();
        this.communityLoggingServiceProvider = new IncubatorCommunityLoggingServiceProvider();
        this.membershipServiceProvider = new MembershipServiceProvider();
        this.stickerServiceProvider = new StickerServiceProvider();
        this.stickerCacheServiceProvider = new StickerCacheServiceProvider();
        this.topActivityServiceProvider = new TopActivityServiceProvider();
        this.localeChangeListener = new LocaleChangeListener();
        this.keyStoreProvider = new KeyStoreServiceProvider();
        this.communityContextMap = new HashMap<>();
        this.communityContextCache = new HashMap<>();
        this.activeCid = 0;
        this.activeCount = 0;
        this.lives = new SparseIntArray();
        this.handler = new Handler(Looper.getMainLooper()) { // from class: com.narvii.app.incubator.IncubatorApplication.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.arg1;
                if (message.what == 1) {
                    sendMessageDelayed(obtainMessage(11, i10, 0), 100L);
                }
                if (message.what == 11) {
                    int i11 = IncubatorApplication.this.lives.get(i10) - 1;
                    IncubatorApplication.this.lives.put(i10, Math.max(0, i11));
                    if (i11 <= 0) {
                        CommunityContext communityContext = (CommunityContext) IncubatorApplication.this.communityContextMap.get(Integer.valueOf(i10));
                        if (communityContext == null) {
                            Log.e("x" + i10 + "'s community context not found");
                        } else {
                            communityContext.serviceManager.stop();
                            communityContext.serviceManager.destroy();
                            IncubatorApplication.this.communityContextMap.remove(Integer.valueOf(i10));
                        }
                    }
                }
                if (message.what == 2) {
                    sendMessageDelayed(obtainMessage(12, i10, 0), 100L);
                }
                if (message.what == 12 && IncubatorApplication.this.activeCid == i10) {
                    IncubatorApplication incubatorApplication = IncubatorApplication.this;
                    incubatorApplication.activeCount = Math.max(0, incubatorApplication.activeCount - 1);
                    if (IncubatorApplication.this.activeCount == 0) {
                        CommunityContext communityContext2 = (CommunityContext) IncubatorApplication.this.communityContextMap.get(Integer.valueOf(i10));
                        if (communityContext2 == null) {
                            Log.e("x" + i10 + "'s community context not found");
                        } else {
                            communityContext2.serviceManager.pause();
                        }
                        IncubatorApplication.this.activeCid = 0;
                    }
                }
            }
        };
        STARTUP_TIME = SystemClock.elapsedRealtime();
        ApplicationSessionHelper.RESET_ENABLED = true;
    }

    private void clearBillingClient(Activity activity) {
        if (activity instanceof MasterActivity) {
            BillingManager.INSTANCE.clear();
        }
    }

    private CommunityContext createCommunityContext(int i10) {
        CommunityContext communityContext = this.communityContextMap.get(Integer.valueOf(i10));
        if (communityContext == null) {
            WeakReference<CommunityContext> weakReference = this.communityContextCache.get(Integer.valueOf(i10));
            communityContext = weakReference == null ? null : weakReference.get();
            if (communityContext == null) {
                communityContext = new CommunityContext(this, i10);
                initCommunityServices(communityContext, communityContext.serviceManager);
            } else {
                Log.i("x" + i10 + " reuse community context from weak cache");
            }
            this.communityContextMap.put(Integer.valueOf(i10), communityContext);
            this.communityContextCache.put(Integer.valueOf(i10), new WeakReference<>(communityContext));
        }
        return communityContext;
    }

    public static int getCommunityId(Object obj) {
        if (!(obj instanceof NVActivity)) {
            if (obj instanceof CommunityContext) {
                return ((CommunityContext) obj).cid;
            }
            return 0;
        }
        int i_communityId = ((NVActivity) obj)._communityId();
        if (i_communityId > 0) {
            return i_communityId;
        }
        return 0;
    }

    private void initCrashlytics() {
        String userId = ((AccountService) getService("account")).getUserId();
        g gVarA = g.a();
        if (userId == null) {
            userId = "";
        }
        gVarA.d(userId);
    }

    private void initMediaLabAds() {
        Log.v("cohort = " + this.cohort);
        MediaLabAds.getInstance().initialize(this, true, this.cohort, new SdkInitListener() { // from class: com.narvii.app.incubator.IncubatorApplication.1
            public void onDestroyed() {
                Log.v("MediaLabAds destroyed");
            }

            public void onInitFailed(int i10, @Nullable String str) {
                Log.v("MediaLabAds init failed code: " + i10 + ", message: " + str);
            }

            public void onInitSucceeded() {
                Log.v("MediaLabAds init succeeded");
            }
        }, new MediaLabUidListener() { // from class: com.narvii.app.incubator.a
            public final void onUidReady(String str) {
                this.f1829a.lambda$initMediaLabAds$0(str);
            }
        });
        MediaLabAds.getInstance().addRevenueListener(new AdRevenueListener() { // from class: com.narvii.app.incubator.b
            public final void onRevenue(AdRevenueInfo adRevenueInfo) {
                this.f1830a.lambda$initMediaLabAds$1(adRevenueInfo);
            }
        });
        OptinAds.forceAds();
    }

    private void initWebView() {
        if (Build.VERSION.SDK_INT >= 28) {
            String processName = Application.getProcessName();
            String masterPackageName = new PackageUtils(getContext()).getMasterPackageName();
            if (masterPackageName == null || masterPackageName.equals(processName)) {
                return;
            }
            WebView.setDataDirectorySuffix(processName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initMediaLabAds$0(String str) {
        if (str == null || str.isEmpty()) {
            Log.v("MediaLabAds uid is empty");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Tracking.Properties.ASSEMBLY_UID, str);
            MixpanelAnalytics mixpanelAnalytics = new MixpanelAnalytics(this);
            HashMap map = new HashMap();
            map.put(Tracking.Properties.EXTRA, str);
            mixpanelAnalytics.trackEvent(Tracking.Events.MEDIA_LAB_UID_READY, map);
            mixpanelAnalytics.registerSuperProperties(jSONObject);
        } catch (JSONException e) {
            Log.e("Error creating json object for uid onUidReady ads", e);
        }
    }

    private void onGlobalContextResume() {
        this.chatServiceProvider.resume((NVContext) this, (ChatService) getService("chat"));
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
                Utils.postDelayed(new Runnable() { // from class: com.narvii.app.incubator.IncubatorApplication.2
                    @Override // java.lang.Runnable
                    public void run() {
                        String str;
                        LoggingService loggingService = (LoggingService) IncubatorApplication.this.getService("logging");
                        int i10 = intExtra;
                        if (i10 != 1) {
                            str = i10 != 2 ? "marketing" : "chat";
                        } else {
                            str = NotificationChannelHelper.CHANNEL_NORMAL;
                        }
                        loggingService.lambda$logEvent$0("PushOpened", "type", str, CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(intExtra2), "trackId", stringExtra, ImagesContract.URL, stringExtra2);
                    }
                }, 200L);
            }
        }
        if (!isAppInForeground() && activity.getIntent() != null && (pushFrom = (PushNotificationService.PushFrom) JacksonUtils.readAs(activity.getIntent().getStringExtra("_pushFrom"), PushNotificationService.PushFrom.class)) != null) {
            PushNotificationService.FROM_PUSH.set(pushFrom, 1500L);
        }
        boolean zActivityOnCreate = super.activityOnCreate(activity);
        int communityId = getCommunityId(activity);
        if (communityId != 0) {
            CommunityContext communityContextCreateCommunityContext = createCommunityContext(communityId);
            communityContextCreateCommunityContext.serviceManager.create();
            int i10 = this.lives.get(communityId);
            this.lives.put(communityId, i10 + 1);
            if (i10 == 0) {
                communityContextCreateCommunityContext.serviceManager.start();
            }
        }
        return zActivityOnCreate;
    }

    public boolean hasNoLiveCommunity() {
        if (this.lives.size() == 0) {
            return true;
        }
        for (int i10 = 0; i10 < this.lives.size(); i10++) {
            if (this.lives.valueAt(i10) != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // com.narvii.app.NVApplication
    public void initActivityServices(NVActivity nVActivity, ServiceManager serviceManager) {
        serviceManager.addServiceProvider("api", new ApiServiceProvider());
        serviceManager.addServiceProvider("location", new LocationServiceProvider());
        serviceManager.addServiceProvider("postEntry", new PostEntryProvider());
        serviceManager.addServiceProvider("drawerHost", this.drawerActivityProvider);
        serviceManager.addServiceProvider("topActivity", this.topActivityServiceProvider);
        serviceManager.addServiceProvider("drawerRightHost", this.drawerRightProvider);
        serviceManager.addServiceProvider("stats", this.statsProvider);
        serviceManager.addServiceProvider("applicationSessionHelper", this.appSessionHelper);
        serviceManager.addServiceProvider("pasteBoard", this.pasteBoardServiceProvider);
        serviceManager.addServiceProvider("_backToHomeHelper", new IncubatorBackToHomeHelper());
        serviceManager.addServiceProvider("pushInvite", this.pushInviteHelper);
        serviceManager.addServiceProvider("rtc", this.rtcServiceProvider);
        serviceManager.addServiceProvider("liveLayerHost", this.liveLayerActivityProvider);
        serviceManager.addServiceProvider("cbbHost", this.cbbHostActivityProvider);
        serviceManager.addServiceProvider("visitorBarHost", this.visitorBarHostActivityProvider);
        serviceManager.addServiceProvider("chatWaitingList", new ChatWaitingListProvider());
        serviceManager.addServiceProvider(CheckInPrefsHelper.SHARED_PREFS_NAME, this.checkInActivityServiceProvider);
        if (NVApplication.DEBUG) {
            serviceManager.addServiceProvider("_debug", this.debugServiceProvider);
            serviceManager.addServiceProvider("_signallingMonitor", this.signallingMonitorHelper);
        }
    }

    public void initCommunityServices(CommunityContext communityContext, ServiceManager serviceManager) {
        serviceManager.addServiceProvider("config", this.configProvider);
        serviceManager.addServiceProvider("account", this.accountServiceProvider);
        serviceManager.addServiceProvider("api", new ApiServiceProvider());
        serviceManager.addServiceProvider("filesDir", this.filesDirProvider);
        serviceManager.addServiceProvider("cacheDir", this.cacheDirProvider);
        serviceManager.addServiceProvider("drawerHost", this.drawerCommunityProvider);
        serviceManager.addServiceProvider("navigator", this.navigatorProvider);
        serviceManager.addServiceProvider("notification", this.notificationCenterProvider);
        serviceManager.addServiceProvider(EntryManager.ENTRY_DRAFT, this.draftManagerProvider);
        serviceManager.addServiceProvider("statistics", this.statisticsServiceProvider);
        serviceManager.addServiceProvider(Module.MODULE_RANKING, this.rankingServiceProvider);
        serviceManager.addServiceProvider("_myCommunityListReminderHelper", this.myCommunityListReminderHelper);
        serviceManager.addServiceProvider(EntryManager.ENTRY_POLL, this.pollServiceProvider);
        serviceManager.addServiceProvider("block", this.communityBlockServiceProvider);
        serviceManager.addServiceProvider("_updateDeviceTokenHelper", this.updateDeviceTokenHelper);
        serviceManager.addServiceProvider("_enterCommunityHelper", this.enterCommunityHelper);
        serviceManager.addServiceProvider("_communityStatusHelper", this.communityStatusHelper);
        serviceManager.addServiceProvider("_communityActiveHelper", this.communityActiveHelper);
        serviceManager.addServiceProvider("messageRead", this.messageReadServiceProvider);
        serviceManager.addServiceProvider("logging", this.communityLoggingServiceProvider);
        serviceManager.addServiceProvider("liveLayer", this.incubatorLiveLayerCommunityServiceProvider);
        serviceManager.addServiceProvider("liveLayerHost", this.liveLayerCommunityProvider);
        serviceManager.addServiceProvider("cbbHost", this.cbbHostCommunityProvider);
        serviceManager.addServiceProvider("visitorBarHost", this.visitorBarHostCommunityProvider);
        serviceManager.addServiceProvider("sticker", this.stickerServiceProvider);
        serviceManager.addServiceProvider("chat", this.chatServiceProvider);
        serviceManager.addServiceProvider("myChatList", new MyChatListServiceProvider());
        serviceManager.addServiceProvider(CheckInPrefsHelper.SHARED_PREFS_NAME, this.checkInServiceProvider);
    }

    public boolean isCommunityLive(int i10) {
        return this.lives.get(i10) > 0;
    }

    @Override // com.narvii.app.NVApplication
    protected void onApplicationResume() {
        TmpValue<String> tmpValue = EnterCommunityHelper.SOURCE;
        if (tmpValue.peek() == null) {
            tmpValue.set("Restored App");
        }
        super.onApplicationResume();
    }

    private void initRemoteConfig() {
        com.google.firebase.remoteconfig.a aVarK = com.google.firebase.remoteconfig.a.k();
        aVarK.e();
        aVarK.f();
        this.cohort = aVarK.o(MEDIA_LAB_COHORT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initMediaLabAds$1(AdRevenueInfo adRevenueInfo) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(this);
        Bundle bundle = new Bundle();
        bundle.putString("ad_platform", adRevenueInfo.getAdPlatform());
        bundle.putString("ad_source", adRevenueInfo.getAdSource());
        bundle.putString("ad_format", adRevenueInfo.getAdFormat());
        bundle.putString("ad_unit_name", adRevenueInfo.getAdUnit());
        bundle.putString("currency", adRevenueInfo.getCurrency());
        if (adRevenueInfo.getValue() != null) {
            bundle.putDouble("value", adRevenueInfo.getValue().doubleValue());
        }
        firebaseAnalytics.a("ad_impression", bundle);
    }

    public static void safedk_IncubatorApplication_onCreate_14dfe8e67294b4337f6b0625199ca86d(IncubatorApplication p0) {
        a0.b.p(p0);
        super.onCreate();
        p0.initWebView();
        p0.initCrashlytics();
        OptinAds.sendAdLevelUserProperty(p0);
        p0.initRemoteConfig();
        p0.setUserProperties();
        p0.initMediaLabAds();
    }

    private void setUserProperties() {
        String str;
        FirebaseAnalytics.getInstance(this).c("language", ((ContentLanguageService) getService("content_language")).getLanguageShowCode());
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(this);
        String str2 = "false";
        if (!StorageUtils.hasRootAccess(this)) {
            str = "false";
        } else {
            str = "true";
        }
        firebaseAnalytics.c("device_rooted", str);
        PackageUtils packageUtils = new PackageUtils(this);
        FirebaseAnalytics firebaseAnalytics2 = FirebaseAnalytics.getInstance(this);
        if (packageUtils.isGooglePlayInstalled()) {
            str2 = "true";
        }
        firebaseAnalytics2.c("has_play_store", str2);
        FirebaseAnalytics.getInstance(this).c("play_store_version", packageUtils.getGooglePlayStoreVersionName());
        FirebaseAnalytics.getInstance(this).c("play_services_available", "" + GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this));
    }

    @Override // com.narvii.app.NVApplication
    public void activityOnDestroy(Activity activity) {
        int communityId = getCommunityId(activity);
        if (communityId != 0) {
            Handler handler = this.handler;
            handler.sendMessage(handler.obtainMessage(1, communityId, 0));
        }
        super.activityOnDestroy(activity);
        clearBillingClient(activity);
    }

    @Override // com.narvii.app.NVApplication
    public void activityOnPause(Activity activity) {
        int communityId = getCommunityId(activity);
        if (communityId != 0) {
            Handler handler = this.handler;
            handler.sendMessage(handler.obtainMessage(2, communityId, 0));
        }
        super.activityOnPause(activity);
    }

    @Override // com.narvii.app.NVApplication
    public boolean activityOnResume(Activity activity) {
        boolean zActivityOnResume = super.activityOnResume(activity);
        int communityId = getCommunityId(activity);
        if (communityId != 0) {
            CommunityContext communityContext = this.communityContextMap.get(Integer.valueOf(communityId));
            if (communityContext == null) {
                Log.e("x" + communityId + "'s community context not found");
            } else {
                int i10 = this.activeCid;
                if (i10 != communityId && i10 != 0 && this.activeCount > 0) {
                    this.activeCount = 0;
                    CommunityContext communityContext2 = this.communityContextMap.get(Integer.valueOf(i10));
                    if (communityContext2 == null) {
                        Log.e("x" + this.activeCid + "'s community context not found");
                    } else {
                        communityContext2.serviceManager.pause();
                    }
                    this.handler.removeMessages(2);
                    this.handler.removeMessages(12);
                    this.activeCid = 0;
                }
                this.activeCid = communityId;
                int i11 = this.activeCount;
                this.activeCount = i11 + 1;
                if (i11 == 0) {
                    communityContext.serviceManager.resume();
                }
            }
        } else {
            onGlobalContextResume();
        }
        return zActivityOnResume;
    }

    @Override // com.narvii.app.NVApplication
    protected void beforeServiceManagerCreated() {
        super.beforeServiceManagerCreated();
        TeaManager.init(this);
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
        serviceManager.addServiceProvider(PREFS_SERVICE_KEY, new PrefsProvider("incubator"));
        serviceManager.addServiceProvider("filesDir", this.filesDirProvider);
        serviceManager.addServiceProvider("cacheDir", this.cacheDirProvider);
        serviceManager.addServiceProvider("versionPrefs", new VersionPrefsServiceProvider());
        serviceManager.addServiceProvider("imageDiskCache", new ImageDiskCacheProvider());
        serviceManager.addServiceProvider("imageLoader", new ImageLoaderProvider());
        serviceManager.addServiceProvider("apiRequestQueue", new ApiRequestQueueProvider());
        serviceManager.addServiceProvider("api", new ApiServiceProvider());
        serviceManager.addServiceProvider("account", this.accountServiceProvider);
        serviceManager.addServiceProvider("location", new LocationServiceProvider());
        serviceManager.addServiceProvider(SearchPrefsHelper.PREFS_KEY_COMMUNITY, new IncubatorCommunityServiceProvider());
        serviceManager.addServiceProvider("photo", new PhotoServiceProvider());
        serviceManager.addServiceProvider(EntryManager.ENTRY_DRAFT, this.draftManagerProvider);
        serviceManager.addServiceProvider("notification", this.notificationCenterProvider);
        serviceManager.addServiceProvider("gifLoader", new GifLoaderProvider());
        serviceManager.addServiceProvider("avatarFrameLoader", new AvatarFrameLoaderProvider());
        serviceManager.addServiceProvider("audioDownloader", new AudioDownloaderProvider());
        serviceManager.addServiceProvider("webpLoader", new WebPLoaderProvider());
        serviceManager.addServiceProvider("badge", new IncubatorBadgeServiceProvider());
        serviceManager.addServiceProvider("drawerRightHost", this.drawerRightProvider);
        if (packageUtils.isGooglePlayInstalled()) {
            serviceManager.addServiceProvider("googlePlay", new GooglePlayServiceProvider());
        }
        serviceManager.addServiceProvider("_pushHelper", new PushHelper());
        serviceManager.addServiceProvider("_cleanupHelper", new CleanupHelper());
        serviceManager.addServiceProvider("stats", this.statsProvider);
        serviceManager.addServiceProvider("applicationSessionHelper", this.appSessionHelper);
        serviceManager.addServiceProvider("myCommunityList", new MyCommunityListServiceProvider());
        serviceManager.addServiceProvider("_myCommunityListHelper", new IncubatorMyCommunityListHelper());
        serviceManager.addServiceProvider("config", this.configProvider);
        serviceManager.addServiceProvider("navigator", this.navigatorProvider);
        serviceManager.addServiceProvider("statistics", this.statisticsServiceProvider);
        serviceManager.addServiceProvider("themePack", new ThemePackServiceProvider());
        serviceManager.addServiceProvider("pasteBoard", this.pasteBoardServiceProvider);
        serviceManager.addServiceProvider("language", new LanguageServiceProvider());
        serviceManager.addServiceProvider(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE, new YoutubeServiceProvider());
        serviceManager.addServiceProvider("mediapreload", new MediaPreloadServiceProvider());
        serviceManager.addServiceProvider("affiliations", new AffiliationsServiceProvider());
        serviceManager.addServiceProvider("content_language", new ContentLanguageServiceProvider());
        serviceManager.addServiceProvider(Module.MODULE_RANKING, this.rankingServiceProvider);
        serviceManager.addServiceProvider(EntryManager.ENTRY_POLL, this.pollServiceProvider);
        serviceManager.addServiceProvider("_updateDeviceTokenHelper", this.updateDeviceTokenHelper);
        serviceManager.addServiceProvider("mediaPickCallback", new MediaPickCallbackServiceProvider());
        serviceManager.addServiceProvider("videoManager", new VideoServiceProvider());
        serviceManager.addServiceProvider("editorPackFactory", new EditorPackServiceProvider());
        serviceManager.addServiceProvider("eventLogProfile", new EventLogProfileServiceProvider());
        serviceManager.addServiceProvider("ws", new WsServiceProvider());
        serviceManager.addServiceProvider("logWs", new LogWsServiceProvider());
        serviceManager.addServiceProvider("signalling", new SignallingServiceProvider());
        serviceManager.addServiceProvider("rtcManager", new RtcChatManagerService());
        serviceManager.addServiceProvider("rtc", this.rtcServiceProvider);
        serviceManager.addServiceProvider("liveLayerWS", new LiverLayerWSServiceProvider());
        serviceManager.addServiceProvider("logEvent", new AppLogEventServiceProvider());
        serviceManager.addServiceProvider("pushInvite", this.pushInviteHelper);
        serviceManager.addServiceProvider("callScreen", this.callScreenService);
        serviceManager.addServiceProvider("block", this.globalBlockServiceProvider);
        serviceManager.addServiceProvider("mediaRecorder", new MediaRecorderServiceProvider());
        serviceManager.addServiceProvider("mediaLoader", new MediaLoaderProvider());
        serviceManager.addServiceProvider("mediaPlayer", new MediaPlayerProvider());
        serviceManager.addServiceProvider("_messageReadCleanHelper", new MessageReadCleanHelper());
        serviceManager.addServiceProvider("recentCommunities", this.recentCommunityHelper);
        serviceManager.addServiceProvider("logging", this.loggingServiceProvider);
        serviceManager.addServiceProvider("_detailLogging", new DetailLoggingHelper());
        serviceManager.addServiceProvider("screenRoom", new ScreenRoomServiceProvider());
        serviceManager.addServiceProvider("messageRead", this.messageReadServiceProvider);
        serviceManager.addServiceProvider("liveLayer", new LiveLayerIncubatorApplicationServiceProvider());
        serviceManager.addServiceProvider("chat", this.chatServiceProvider);
        serviceManager.addServiceProvider("globalChat", new GlobalChatServiceProvider());
        serviceManager.addServiceProvider("bubble", new BubbleServiceProvider());
        serviceManager.addServiceProvider(AccountPopUpUtils.POPUP_TYPE_ADS, new AdsServiceProvider());
        serviceManager.addServiceProvider("membership", this.membershipServiceProvider);
        serviceManager.addServiceProvider("stickerCache", this.stickerCacheServiceProvider);
        serviceManager.addServiceProvider("_earnCoinToast", new EarnCoinToastHelper());
        serviceManager.addServiceProvider("topActivity", this.topActivityServiceProvider);
        serviceManager.addServiceProvider("sticker", this.stickerServiceProvider);
        serviceManager.addServiceProvider("localeChange", this.localeChangeListener);
        serviceManager.addServiceProvider(LoginActivity.KEYSTORE_SERVICE_KEY, this.keyStoreProvider);
        if (NVApplication.DEBUG) {
            serviceManager.addServiceProvider("_debug", this.debugServiceProvider);
            serviceManager.addServiceProvider("_signallingMonitor", this.signallingMonitorHelper);
        }
        serviceManager.addServiceProvider("_crashKeyLog", new CrashKeyLogHelper());
        serviceManager.addServiceProvider("auid", new AuidServiceProvider());
        serviceManager.addServiceProvider("devOptions", new DevOptionsHelper());
        serviceManager.addServiceProvider("masterTheme", new MasterThemeServiceProvider());
        serviceManager.addServiceProvider("_firebaseTimeTrack", new FirebaseLogManager.FirebaseTimeTrack());
        serviceManager.addServiceProvider("myChatList", new MyChatListServiceProvider());
        serviceManager.addServiceProvider("antiFraud", new SmAntiFraudServiceProvider());
        serviceManager.addServiceProvider("waitingList", new WaitingListProvider());
        serviceManager.addServiceProvider("joinCommunity", new JoinCommunityServiceProvider());
        serviceManager.addServiceProvider("visitorMode", new VisitorModeServiceProvider());
        serviceManager.addServiceProvider("attribute", new AttributeServiceProvider());
        serviceManager.addServiceProvider("_notice", new IncubatorNoticeServiceProvider());
    }

    @Override // com.narvii.app.NVApplication
    protected void setupCrashlytics() {
        DetailLogging.init();
    }

    @Override // com.narvii.app.NVApplication
    public <T> T getService(int i10, String str) {
        if (i10 == 0) {
            return (T) super.getService(this, str);
        }
        return (T) createCommunityContext(i10).getService(str);
    }
}

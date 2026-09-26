package com.narvii.drawer;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Vibrator;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.achievements.AchievementsFragment;
import com.narvii.achievements.StreakRepairDialog;
import com.narvii.amino.MainActivity;
import com.narvii.amino.master.R;
import com.narvii.amino.page.PageItemClickListener;
import com.narvii.amino.page.PageSecondLevelLayout;
import com.narvii.amino.page.PageTopLevelLayout;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.bookmark.BookMarkListFragment;
import com.narvii.catalog.CatalogFragment;
import com.narvii.catalog.CatalogWrapperActivity;
import com.narvii.catalog.review.CatalogSubmissionFragment;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.checkin.CheckInCircle;
import com.narvii.checkin.CheckInHelper;
import com.narvii.checkin.CheckInPopUpHelper;
import com.narvii.checkin.CheckInResult;
import com.narvii.checkin.CheckInStreakBar;
import com.narvii.checkin.lottery.LotteryDialog;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.FullCommunityResponse;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.ReminderCheck;
import com.narvii.community.ReminderCheckResult;
import com.narvii.config.ConfigService;
import com.narvii.feed.BlogInCategoryListFragment;
import com.narvii.flag.FlagListFragment;
import com.narvii.flag.model.GeneraCheckResponse;
import com.narvii.guideline.GuidelineFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.MasterActivity;
import com.narvii.master.MasterTemplatePickerFragment;
import com.narvii.master.NewDownloadAcmDialog;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.members.PeopleListFragment;
import com.narvii.model.BlogCategory;
import com.narvii.model.CheckInHistory;
import com.narvii.model.Community;
import com.narvii.model.CommunityGeneralCheckResult;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogCategoryListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.page.Page;
import com.narvii.modulization.page.PageManager;
import com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment;
import com.narvii.notice.NoticeListFragment;
import com.narvii.poweruser.ModerationToolFragment;
import com.narvii.poweruser.ReorderFeatureFragment;
import com.narvii.prefs.CommunitySettingFragment;
import com.narvii.search.SearchKeywordTabFragment;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.theme.ThemeInfo;
import com.narvii.theme.ThemePackService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.PackageUtils;
import com.narvii.util.SplashUtils;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.services.TopActivityService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.video.ui.floating.FloatingPermissionUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.CommunityNameDrawable;
import com.narvii.widget.MoodView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ProxyViewHost;
import com.narvii.widget.RankingTitleView;
import com.narvii.widget.SmoothProgressBar;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Stack;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class DrawerHost extends ProxyViewHost implements SwipeRefreshLayout.OnRefreshListener, MyCommunityListService.MyCommunityListObserver {
    static final long AUTO_REFRESH_DURATION;
    public static final boolean DEBUG_PAGE_ENTRY = false;
    public static final TmpValue<String> DRAWER_OPEN_SOURCE;
    public static final TmpValue<Integer> GLOBAL_ENTER;
    static final long GLOBAL_REFRESH_DURATION = 300000;
    static final int REFRESH_CATEGORY = 1;
    static final int REFRESH_COMMUNITY_INFO = 2;
    static final int REFRESH_GENERAL_COUNT = 4;
    static final int REFRESH_KINDRED_COMMUNITY = 16;
    static final int REFRESH_REMINDER_CHECK = 8;
    static final long RESET_SCROLL_TIME;
    public static int curCommunitySelectedOffset;
    public static int curCommunitySelectedPosition;
    AccountService account;
    private View.OnClickListener accountListener;
    Activity activity;
    public final EventDispatcher<Callback<Integer>> badgeCountListener;
    String blogCategoryError;
    ArrayList<BlogCategory> blogCategoryList;
    LocalBroadcastManager broadcastManager;
    private final View.OnClickListener categoryClickListener;
    private final ApiResponseListener<BlogCategoryListResponse> categoryResponseListener;
    private final ChatService.ChatMessageReceptor chatCheckListener;
    private ChatService chatService;
    private final Callback<Boolean> checkInFire;
    boolean checkInPopUpDone;
    private boolean checkInPressed;
    private final Callback<Boolean> checkInStart;
    private final View.OnTouchListener checkInTouchListener;
    int cid;
    private final View.OnClickListener clickListener;
    CommunityService community;
    CommunityConfigHelper communityConfigHelper;
    NVListView communityListView;
    private final ApiResponseListener<FullCommunityResponse> communityResponseListener;
    ConfigService config;
    NVContext context;
    int darkThemeColor;
    boolean dontUpdateRanking;
    boolean fakeCheckin;
    public String fakePVId;
    boolean fromGlobalLaunch;
    private ApiResponseListener<GeneraCheckResponse> generalCheckResponseListener;
    CommunityGeneralCheckResult generalCheckResult;
    boolean hasNotificationTurnedOffWarning;
    private boolean isHomepage;
    private boolean isMaster;
    boolean isRequestingCommunity;
    private final View.OnClickListener kindredClickListener;
    List<Community> kindredCommunity;
    String kindredCommunityError;
    private final ApiResponseListener<CommunityListResponse> kindredCommunityListener;
    MyLaunchHelper launchHelper;
    public LotteryDialog lotteryDialog;
    private View.OnClickListener moderationListener;
    private View.OnClickListener moreOptionsListener;
    int myCommunityId;
    MyCommunityListAdapter myCommunityListAdapter;
    private MyCommunityListService myCommunityListService;
    NotificationManagerHelper notificationManagerHelper;
    Integer overrideEnterAnim;
    Integer overrideExitAnim;
    final PageItemClickListener pageItemClickListener;
    final PageItemClickListener pageItemClickListener2;
    private final AccountService.ProfileListener profileListener;
    RankingTitleView rankingTitleView;
    private final BroadcastReceiver receiver;
    long refreshCommunityInfoTime;
    long refreshGeneralCountTime;
    long refreshReminderCheckTime;
    int refreshingFlag;
    ApiResponseListener<ReminderCheckResult> reminderCheckListener;
    private Runnable removeLaunchSplashAndCloseDrawer;
    EventDispatcher<RequestCommunityInfoListener> requestCommunityInfoListeners;
    private Community returnedCommunity;
    private NVScrollView.OnScrollListener scrollListener;
    Runnable scrollToTop;
    NVScrollView scrollView;
    private TextView secondEntriesHint;
    private ImageView secondEntriesIndicator;
    private boolean secondEntriesVisiable;
    private View secondEntryContainer;
    private PageSecondLevelLayout secondLevelLayout;
    ViewStub secondViewStub;
    final TmpValue<Integer> sendingEvent;
    public boolean streakRepairDialogShowing;
    int themeColor;
    private final BroadcastReceiver themeDownLoadReceiver;
    private ToolTipHelper toolTipHelper;
    private PageTopLevelLayout topEntryContainer;
    ObjectAnimator valueAnimator;
    public boolean willPlayLottery;

    /* JADX INFO: renamed from: com.narvii.drawer.DrawerHost$24, reason: invalid class name */
    class AnonymousClass24 implements Callback<StreakRepairDialog> {
        AnonymousClass24() {
        }

        @Override // com.narvii.util.Callback
        public void call(StreakRepairDialog streakRepairDialog) {
            if (streakRepairDialog != null) {
                streakRepairDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.drawer.DrawerHost.24.1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        DrawerHost.this.streakRepairDialogShowing = false;
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.24.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DrawerHost drawerHost = DrawerHost.this;
                                if (drawerHost.willPlayLottery) {
                                    drawerHost.showLotteryPrompt();
                                }
                            }
                        }, 500L);
                    }
                });
            } else {
                DrawerHost.this.streakRepairDialogShowing = false;
                Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.24.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DrawerHost drawerHost = DrawerHost.this;
                        if (drawerHost.willPlayLottery) {
                            drawerHost.showLotteryPrompt();
                        }
                    }
                }, 500L);
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.drawer.DrawerHost$8, reason: invalid class name */
    class AnonymousClass8 implements Callback<Boolean> {

        /* JADX INFO: renamed from: com.narvii.drawer.DrawerHost$8$1, reason: invalid class name */
        class AnonymousClass1 extends ApiResponseListener<CheckInResult> {
            final /* synthetic */ long val$startTime;

            /* JADX INFO: renamed from: com.narvii.drawer.DrawerHost$8$1$2, reason: invalid class name */
            class AnonymousClass2 implements Runnable {
                final /* synthetic */ AccountService val$account;
                final /* synthetic */ boolean val$rankingEnabled;
                final /* synthetic */ CheckInResult val$resp;

                /* JADX INFO: renamed from: com.narvii.drawer.DrawerHost$8$1$2$1, reason: invalid class name and collision with other inner class name */
                class RunnableC03091 implements Runnable {
                    RunnableC03091() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        DrawerHost drawerHost = DrawerHost.this;
                        if (drawerHost.activity == null) {
                            drawerHost.dontUpdateRanking = false;
                            if (drawerHost.willPlayLottery) {
                                drawerHost.showLotteryPrompt();
                                return;
                            }
                            return;
                        }
                        drawerHost.dontUpdateRanking = true;
                        if (anonymousClass2.val$rankingEnabled) {
                            drawerHost.rankingTitleView.toReputation(anonymousClass2.val$account.getUserProfile(), DrawerHost.this.context);
                        }
                        DrawerHost.this.dontUpdateRanking = false;
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.8.1.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DrawerHost.this.updateAccount();
                                DrawerHost.this.checkInPopUpDone = true;
                                Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.8.1.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        DrawerHost drawerHost2 = DrawerHost.this;
                                        if (drawerHost2.willPlayLottery) {
                                            drawerHost2.showLotteryPrompt();
                                        }
                                    }
                                }, 1500L);
                            }
                        }, 400L);
                    }
                }

                AnonymousClass2(CheckInResult checkInResult, boolean z6, AccountService accountService) {
                    this.val$resp = checkInResult;
                    this.val$rankingEnabled = z6;
                    this.val$account = accountService;
                }

                @Override // java.lang.Runnable
                public void run() {
                    DrawerHost drawerHost = DrawerHost.this;
                    Activity activity = drawerHost.activity;
                    if (activity != null) {
                        drawerHost.dontUpdateRanking = true;
                        new CheckInPopUpHelper(activity).showCheckInPopUp(this.val$resp, null);
                        Utils.postDelayed(new RunnableC03091(), this.val$resp.additionalReputationPoint > 0 ? 3500L : 2000L);
                    } else {
                        drawerHost.dontUpdateRanking = false;
                        if (drawerHost.willPlayLottery) {
                            drawerHost.showLotteryPrompt();
                        }
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public /* bridge */ /* synthetic */ ApiResponse parseResponse(ApiRequest apiRequest, int i10, List list, byte[] bArr) throws Exception {
                return parseResponse(apiRequest, i10, (List<NameValuePair>) list, bArr);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Class cls, long j6) {
                super(cls);
                this.val$startTime = j6;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                NVToast.makeText(DrawerHost.this.getContext(), str, 0).show();
                ((CheckInCircle) DrawerHost.this.findViewById(R.id.drawer_checkin_ring)).fail();
                DrawerHost.this.findViewById(R.id.mood).animate().alpha(1.0f).setDuration(400L).start();
                DrawerHost.this.findViewById(R.id.amino_staff_badge).animate().alpha(1.0f).setDuration(400L).start();
                DrawerHost.this.findViewById(R.id.amino_plus_badge).animate().alpha(1.0f).setDuration(400L).start();
                View viewFindViewById = DrawerHost.this.findViewById(R.id.drawer_checkin);
                if (viewFindViewById != null) {
                    viewFindViewById.setPressed(false);
                }
                DrawerHost.this.updateAccount();
                DrawerHost.this.checkInPressed = false;
                if (i10 != 0) {
                    DrawerHost.this.refreshReminderCheck(0L);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CheckInResult checkInResult) throws Exception {
                CommunityConfigHelper communityConfigHelper;
                ((CheckInCircle) DrawerHost.this.findViewById(R.id.drawer_checkin_ring)).finish();
                Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.8.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DrawerHost.this.findViewById(R.id.mood).animate().alpha(1.0f).setDuration(400L).start();
                        DrawerHost.this.findViewById(R.id.amino_staff_badge).animate().alpha(1.0f).setDuration(400L).start();
                        DrawerHost.this.findViewById(R.id.amino_plus_badge).animate().alpha(1.0f).setDuration(400L).start();
                    }
                }, 2000L);
                Log.d("canPlayLottery", String.valueOf(checkInResult.canPlayLottery));
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.willPlayLottery = checkInResult.canPlayLottery && (communityConfigHelper = drawerHost.communityConfigHelper) != null && communityConfigHelper.isPremiumFeatureEnabled();
                DrawerHost drawerHost2 = DrawerHost.this;
                drawerHost2.checkInPopUpDone = false;
                drawerHost2.dontUpdateRanking = true;
                AccountService accountService = (AccountService) drawerHost2.context.getService("account");
                accountService.updateCheckInInfo(true, checkInResult.consecutiveCheckInDays, checkInResult.timestamp, true);
                accountService.updateCheckInHistoryInfo(checkInResult.checkInHistory, checkInResult.timestamp, true);
                if (checkInResult.userProfile != null) {
                    User userProfile = accountService.getUserProfile();
                    User user = checkInResult.userProfile;
                    userProfile.level = user.level;
                    userProfile.reputation = user.reputation;
                    accountService.updateProfile(userProfile, checkInResult.timestamp, true);
                }
                boolean zIsRankingModuleEnabled = DrawerHost.this.communityConfigHelper.isRankingModuleEnabled();
                RankingTitleView rankingTitleView = DrawerHost.this.rankingTitleView;
                if (rankingTitleView != null && zIsRankingModuleEnabled) {
                    rankingTitleView.willToReputation(accountService.getUserProfile(), DrawerHost.this.context);
                }
                DrawerHost.this.updateAccount();
                DrawerHost.this.checkInPressed = false;
                Utils.postDelayed(new AnonymousClass2(checkInResult, zIsRankingModuleEnabled, accountService), 1200L);
                StatisticsService statisticsService = (StatisticsService) DrawerHost.this.context.getService("statistics");
                statisticsService.event("Check-in").param("Consecutive Check In Days", checkInResult.consecutiveCheckInDays);
                if (checkInResult.consecutiveCheckInDays >= 5) {
                    statisticsService.event(null).userProp("Check In Streak 5 Days", true);
                }
                if (checkInResult.consecutiveCheckInDays >= 10) {
                    statisticsService.event(null).userProp("Check In Streak 10 Days", true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public CheckInResult parseResponse(ApiRequest apiRequest, int i10, List<NameValuePair> list, byte[] bArr) throws Exception {
                CheckInResult checkInResult = (CheckInResult) super.parseResponse(apiRequest, i10, list, bArr);
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.val$startTime;
                if (jElapsedRealtime >= 0 && jElapsedRealtime < 2000) {
                    try {
                        Thread.sleep(2000 - jElapsedRealtime);
                    } catch (InterruptedException unused) {
                    }
                }
                return checkInResult;
            }
        }

        AnonymousClass8() {
        }

        @Override // com.narvii.util.Callback
        public void call(Boolean bool) {
            ApiRequest apiRequestBuild = ApiRequest.builder().post().path("check-in").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(ApiService.ASYNC_CALL_TAG).build();
            ApiService apiService = (ApiService) DrawerHost.this.context.getService("api");
            final AnonymousClass1 anonymousClass1 = new AnonymousClass1(CheckInResult.class, SystemClock.elapsedRealtime());
            if (DrawerHost.this.fakeCheckin) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        CheckInResult checkInResult = new CheckInResult();
                        Random random = new Random(System.currentTimeMillis());
                        checkInResult.earnedReputationPoint = ((int) (random.nextFloat() * random.nextFloat() * 20.0f)) + 1;
                        checkInResult.additionalReputationPoint = (int) (random.nextFloat() * random.nextFloat() * random.nextFloat() * 6.0f);
                        AccountService accountService = (AccountService) DrawerHost.this.context.getService("account");
                        checkInResult.consecutiveCheckInDays = accountService.getConsecutiveCheckInDays() + 1;
                        User userProfile = accountService.getUserProfile();
                        checkInResult.userProfile = userProfile;
                        userProfile.reputation += checkInResult.earnedReputationPoint + checkInResult.additionalReputationPoint;
                        userProfile.level += random.nextBoolean() ? 1 : 0;
                        DrawerHost.this.fakeCheckin = false;
                        try {
                            anonymousClass1.onFinish(null, checkInResult);
                            DrawerHost.this.updateAccount();
                        } catch (Exception e) {
                            throw new RuntimeException(e);
                        }
                    }
                }, 2000L);
            } else {
                apiService.exec(apiRequestBuild, anonymousClass1);
            }
            DrawerHost.this.checkInPressed = true;
            DrawerHost.this.findViewById(R.id.drawer_checkin).setPressed(true);
            DrawerHost.this.updateAccount();
            try {
                ((Vibrator) DrawerHost.this.getContext().getSystemService("vibrator")).vibrate(80L);
            } catch (Exception unused) {
            }
        }
    }

    class MyCommunityListAdapter extends NVAdapter {
        private List<Community> fakeCommunityList;
        private boolean isFirstSetPosition;

        public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        public MyCommunityListAdapter(NVContext nVContext) {
            super(nVContext);
            this.fakeCommunityList = new ArrayList();
            this.isFirstSetPosition = true;
            Community community = DrawerHost.this.community.getCommunity(DrawerHost.this.myCommunityId);
            if (community != null) {
                this.fakeCommunityList.add(community);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Community> list = DrawerHost.this.myCommunityListService.list();
            return (DrawerHost.this.myCommunityListService.isEnd() || list.size() > 0) ? list.size() + 1 : this.fakeCommunityList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            if (!DrawerHost.this.myCommunityListService.isEnd() && DrawerHost.this.myCommunityListService.list().size() == 0 && i10 < this.fakeCommunityList.size()) {
                return this.fakeCommunityList.get(i10);
            }
            List<Community> list = DrawerHost.this.myCommunityListService.list();
            if (i10 < list.size()) {
                return list.get(i10);
            }
            if (DrawerHost.this.myCommunityListService.isEnd()) {
                return NVPagedAdapter.LIST_END;
            }
            return DrawerHost.this.myCommunityListService.errorMessage() == null ? NVPagedAdapter.LOADING : NVPagedAdapter.ERROR;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return DrawerHost.this.myCommunityListService.isEnd() || DrawerHost.this.myCommunityListService.list().size() > 0 || this.fakeCommunityList.size() > 0;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Community)) {
                if (obj == NVPagedAdapter.LIST_END) {
                    Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
                    intent.putExtra("__communityId", 0);
                    Activity activity = DrawerHost.this.activity;
                    if (activity != null) {
                        safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(activity, intent);
                    } else {
                        intent.addFlags(268435456);
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    }
                    ((StatisticsService) getService("statistics")).event("Explore Communities Tab Opened").userPropInc("Explore Communities Tab Opened Total").source("Left Side Panel");
                }
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Community community = (Community) obj;
            int i11 = community.id;
            DrawerHost drawerHost = DrawerHost.this;
            if (i11 == drawerHost.myCommunityId) {
                Activity activity2 = drawerHost.activity;
                if (activity2 instanceof DrawerActivity) {
                    ((DrawerActivity) activity2).closeDrawers();
                }
                return true;
            }
            if (community.status != 9) {
                drawerHost.launchHelper = drawerHost.new MyLaunchHelper(this.context);
                DrawerHost.this.launchHelper.launchCommunity(community, (NVImageView) view.findViewById(R.id.icon), (SmoothProgressBar) view.findViewById(R.id.progress));
                return true;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(DrawerHost.this.activity);
            aCMAlertDialog.setMessage(R.string.amino_disabled);
            aCMAlertDialog.addButton(R.string.got_it, null);
            aCMAlertDialog.show();
            return true;
        }

        public void scrollToPosition() {
            DrawerHost drawerHost = DrawerHost.this;
            if (drawerHost.communityListView != null && DrawerHost.curCommunitySelectedPosition == 0 && DrawerHost.curCommunitySelectedOffset == 0) {
                List<Community> list = drawerHost.myCommunityListService.list();
                if (this.isFirstSetPosition && list != null && list.size() > 0) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= list.size()) {
                            i10 = 0;
                            break;
                        } else if (list.get(i10).id == DrawerHost.this.myCommunityId) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                    NVListView nVListView = DrawerHost.this.communityListView;
                    int i11 = i10 - 3;
                    if (i11 > 0) {
                        i10 = i11;
                    }
                    nVListView.setSelection(i10);
                    this.isFirstSetPosition = false;
                }
                this.isFirstSetPosition = false;
            }
        }

        void updateRemindersInCell(View view, Community community, boolean z6) {
            ReminderCheck reminder = community == null ? null : DrawerHost.this.myCommunityListService.getReminder(community.id);
            int unreadChatCountInCurCommunity = reminder == null ? 0 : reminder.notificationsCount + reminder.noticesCount + (community == null ? 0 : DrawerHost.this.chatService.getUnreadChatCountInCurCommunity(community.id));
            boolean zIsEquals = Utils.isEquals(view.getTag(), community);
            View viewFindViewById = view.findViewById(R.id.notification_count);
            if (viewFindViewById != null) {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(unreadChatCountInCurCommunity > 9 ? "9+" : String.valueOf(unreadChatCountInCurCommunity));
                }
                if (!zIsEquals) {
                    viewFindViewById.clearAnimation();
                }
                if (unreadChatCountInCurCommunity > 0) {
                    if (zIsEquals && viewFindViewById.getVisibility() != 0) {
                        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
                    }
                    viewFindViewById.setVisibility(0);
                } else {
                    if (zIsEquals && viewFindViewById.getVisibility() == 0) {
                        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
                    }
                    viewFindViewById.setVisibility(8);
                }
            }
            if (z6 && community != null && (reminder == null || DrawerHost.this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - DrawerRightHost.REMINDER_CHECK_DURATION)) {
                DrawerHost.this.myCommunityListService.addReminderRequestQueue(community.id);
            }
            if (community == null || !DrawerHost.this.account.hasAccount()) {
                return;
            }
            DrawerHost.this.chatService.addThreadCheckQueue(community.id);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return super.errorMessage();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            if (item == NVPagedAdapter.ERROR) {
                return 3;
            }
            return -1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            Object item = getItem(i10);
            boolean z6 = true;
            if (item instanceof Community) {
                Community community = (Community) item;
                View viewCreateView = createView(R.layout.drawer_my_community_item, viewGroup, view);
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
                if (imageView instanceof CommunityIconView) {
                    ((CommunityIconView) imageView).setCommunity(community);
                } else if (imageView instanceof NVImageView) {
                    ((NVImageView) imageView).setImageUrl(community.icon);
                }
                updateRemindersInCell(viewCreateView, community, true);
                View viewFindViewById = viewCreateView.findViewById(R.id.current_community_indicator);
                int i11 = 0;
                if (DrawerHost.this.myCommunityId != community.id) {
                    z6 = false;
                }
                if (viewFindViewById != null) {
                    if (!z6) {
                        i11 = 8;
                    }
                    viewFindViewById.setVisibility(i11);
                }
                viewCreateView.setOnClickListener(this.subviewClickListener);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View viewCreateView2 = createView(R.layout.drawer_my_community_join_item, viewGroup, view);
                viewCreateView2.setOnClickListener(this.subviewClickListener);
                return viewCreateView2;
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateView3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                DrawerHost.this.myCommunityListService.loadNextPage(true);
                return viewCreateView3;
            }
            return createErrorItem(viewGroup, view, DrawerHost.this.myCommunityListService.errorMessage());
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i10);
        }

        void onResume() {
            if (!isListShown()) {
                DrawerHost.this.myCommunityListService.loadNextPage(true);
            } else if (DrawerHost.this.myCommunityListService.getCommunityRequestTime() < SystemClock.elapsedRealtime() - DrawerRightHost.REFRESH_COMMUNITY_LIST_DURATION) {
                DrawerHost.this.myCommunityListService.refresh(256, null);
            }
        }
    }

    class MyLaunchHelper extends CommunityLaunchHelper {
        Community community;
        NVImageView imageView;
        Activity launchActivity;
        SmoothProgressBar progressBar;

        public MyLaunchHelper(NVContext nVContext) {
            super(nVContext, "Left Side Panel");
            this.launchImageTimeout = 0L;
            this.useThemeColorFallback = false;
        }

        private void launchCid(int i10, Drawable drawable) {
            User user;
            String str;
            List<Community> list = DrawerHost.this.myCommunityListService.list();
            Community community = null;
            if (list != null) {
                for (Community community2 : list) {
                    if (community2.id == i10) {
                        User userProfile = DrawerHost.this.myCommunityListService.getUserProfile(i10);
                        String userInfoTimestamp = DrawerHost.this.myCommunityListService.getUserInfoTimestamp(i10);
                        if (userInfoTimestamp == null || userProfile == null) {
                            str = userInfoTimestamp;
                            user = null;
                        } else {
                            community = community2;
                            str = userInfoTimestamp;
                            user = userProfile;
                        }
                    }
                }
                user = null;
                str = null;
            } else {
                user = null;
                str = null;
            }
            launch(i10, community, str, user, str, DrawerHost.this.myCommunityListService.getReminder(i10), DrawerHost.this.myCommunityListService.getReminderTimestamp(i10), false, 1, null);
        }

        public void launchCommunity(Community community, NVImageView nVImageView, SmoothProgressBar smoothProgressBar) {
            this.community = community;
            this.imageView = nVImageView;
            this.progressBar = smoothProgressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setVisibility(0);
                smoothProgressBar.setMax(100);
                smoothProgressBar.setProgress(0);
            }
            launchCid(community.id, nVImageView.getDrawable());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            Activity activity;
            Drawable drawable;
            if (this.community == null || (activity = DrawerHost.this.activity) == null) {
                return;
            }
            NVImageView nVImageView = this.imageView;
            if (nVImageView == null || (drawable = this.launchImageDrawable) == null) {
                super.onFinish();
                DrawerHost.this.removeLaunchSplashAndCloseDrawer();
            } else {
                this.launchActivity = activity;
                SplashUtils.splash(activity, nVImageView, drawable, new Callback<Boolean>() { // from class: com.narvii.drawer.DrawerHost.MyLaunchHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            EnterCommunityHelper.SOURCE.set(MyLaunchHelper.this.source);
                            MyLaunchHelper.super.onFinish();
                            DrawerHost.this.removeLaunchSplashAndCloseDrawer();
                        }
                    }
                });
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i10, float f) {
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress((int) (f * 100.0f));
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void cancel() {
            super.cancel();
            this.community = null;
            this.imageView = null;
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress(0);
                this.progressBar.setVisibility(4);
            }
            this.progressBar = null;
            Activity activity = this.launchActivity;
            if (activity != null) {
                SplashUtils.cancelSplash(activity);
            }
            this.launchActivity = null;
        }
    }

    class MyPageItemClickListener implements PageItemClickListener {
        int level;

        public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        MyPageItemClickListener(int i10) {
            this.level = i10;
        }

        @Override // com.narvii.amino.page.PageItemClickListener
        public void onItemClicked(int i10, Page page) {
            String str;
            if (!page.needSession() || DrawerHost.this.account.hasAccount()) {
                if (PageManager.PAGE_HOME_URI.equals(page.url)) {
                    DrawerHost.this.goHome(MainActivity.CMD_HOME);
                    DrawerHost.this.smoothScrollToTop(true);
                    ((StatisticsService) DrawerHost.this.context.getService("statistics")).event("Newsfeed Page Opened").source("Left Side Panel").userPropInc("Left Side Panel Newsfeed Icon Tapped Total");
                    DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
                } else {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(page.url));
                        if (!intent.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
                            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.level == 2 ? "Left Side Panel 2" : "Left Side Panel");
                        }
                        if (!intent.hasExtra("title") && (str = page.alias) != null) {
                            intent.putExtra("title", str);
                        }
                        if (PageManager.PAGE_CATALOG_URI.equals(page.url)) {
                            intent.setClassName(NVApplication.instance().getPackageName(), CatalogWrapperActivity.class.getName());
                            intent.putExtra("isAllEntry", !DrawerHost.this.communityConfigHelper.isCatalogCutaionEnable());
                            intent.putExtra("fragment", CatalogFragment.class.getName());
                        }
                        if (PageManager.PAGE_STORIES_URI.equals(page.url)) {
                            ComponentCallbacks2 componentCallbacks2 = DrawerHost.this.activity;
                            if (componentCallbacks2 instanceof NVActivity) {
                                LogEvent.clickBuilder((NVContext) componentCallbacks2, ActSemantic.listViewEnter).page("SideMenu").pvId(DrawerHost.this.fakePVId).area("Stories").send();
                            }
                        }
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent);
                    } catch (Exception e) {
                        Log.w("fail to open page " + page, e);
                        NVToast.makeText(DrawerHost.this.getContext(), R.string.home_failover_message, 0).show();
                    }
                }
            } else {
                Intent intent2 = new Intent(DrawerHost.this.getContext(), (Class<?>) LoginActivity.class);
                intent2.putExtra("promptType", LoginActivity.PromptType.Required.name());
                safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent2);
            }
            DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
        }
    }

    public interface RequestCommunityInfoListener {
        void onRequestCommunityStatusChanged();
    }

    static class ScrollToTop implements Runnable {
        WeakReference<DrawerHost> drawerHost;

        @Override // java.lang.Runnable
        public void run() {
            DrawerHost drawerHost = this.drawerHost.get();
            if (drawerHost == null || drawerHost.scrollToTop != this) {
                return;
            }
            ((ScrollView) drawerHost.findViewById(R.id.drawer_scroll)).scrollTo(0, 0);
            if (drawerHost.secondEntriesVisiable) {
                ObjectAnimator objectAnimator = drawerHost.valueAnimator;
                if (objectAnimator != null) {
                    objectAnimator.cancel();
                }
                drawerHost.secondEntriesVisiable = false;
                if (drawerHost.secondLevelLayout != null) {
                    drawerHost.secondLevelLayout.setVisibility(8);
                }
                drawerHost.secondEntriesHint.setText(drawerHost.getContext().getString(R.string.drawer_second_entry_see_more));
                drawerHost.secondEntriesIndicator.setRotation(0.0f);
            }
            drawerHost.scrollToTop = null;
        }

        ScrollToTop(DrawerHost drawerHost) {
            this.drawerHost = new WeakReference<>(drawerHost);
        }
    }

    public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public Community getReturnedCommunity() {
        return this.returnedCommunity;
    }

    public void goHome(int i10) {
        if (sendEvent(i10, null) || !(this.activity instanceof NVContext)) {
            return;
        }
        MainActivity.setPendingCommand(i10);
        Intent intentBackToHome = MainActivity.backToHome((NVContext) this.activity, new Intent(getContext(), (Class<?>) MainActivity.class));
        this.overrideEnterAnim = Integer.valueOf(R.anim.fade_in);
        this.overrideExitAnim = Integer.valueOf(R.anim.fade_out);
        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(this, intentBackToHome);
    }

    public boolean isRequestingCommunity() {
        return this.isRequestingCommunity;
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    void removeLaunchSplashAndCloseDrawer() {
        removeLaunchSplashAndCloseDrawer(1000L);
    }

    protected boolean showQuickCommuntiySwitcher() {
        return this.isMaster;
    }

    static {
        boolean z6 = NVApplication.DEBUG;
        AUTO_REFRESH_DURATION = z6 ? 15000L : 60000L;
        RESET_SCROLL_TIME = z6 ? 15000L : 60000L;
        GLOBAL_ENTER = new TmpValue<>();
        DRAWER_OPEN_SOURCE = new TmpValue<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitCommunityTooltipDone() {
        if (NVApplication.CLIENT_TYPE != 100) {
            return;
        }
        ToolTipHelper toolTipHelper = this.toolTipHelper;
        if (toolTipHelper != null) {
            toolTipHelper.hideToolTip();
        }
        ((SharedPreferences) this.context.getService(IncubatorApplication.PREFS_SERVICE_KEY)).edit().putBoolean("tooltip_community_exit_done", true).apply();
    }

    private int getChatUnreadCount() {
        ChatService chatService = this.chatService;
        if (chatService == null) {
            return 0;
        }
        return chatService.getUnreadChatCountInCurCommunity(this.myCommunityId);
    }

    private List<Page> getDebugPageList() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = PageManager.pageItemHashMap.keySet().iterator();
        while (it.hasNext()) {
            Page page = new Page();
            page.url = it.next();
            arrayList.add(page);
        }
        Page page2 = new Page();
        page2.url = PageManager.PAGE_HOME_URI;
        arrayList.add(0, page2);
        Page page3 = new Page();
        page3.url = "http://www.altamino.top";
        arrayList.add(page3);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRequestCommunityListeners() {
        this.requestCommunityInfoListeners.dispatch(new Callback<RequestCommunityInfoListener>() { // from class: com.narvii.drawer.DrawerHost.15
            @Override // com.narvii.util.Callback
            public void call(RequestCommunityInfoListener requestCommunityInfoListener) {
                requestCommunityInfoListener.onRequestCommunityStatusChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCategoryRequest() {
        boolean z6 = this.blogCategoryList == null || this.blogCategoryError != null;
        this.blogCategoryError = null;
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/blog-category?size=100").build(), this.categoryResponseListener);
        if (z6) {
            updateCategory();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendKindredCommunityRequest() {
        boolean z6 = this.kindredCommunity == null || this.kindredCommunityError != null;
        this.kindredCommunityError = null;
        ApiRequest.Builder builderScopeCommunityId = ApiRequest.builder().path("/community/kindred").scopeCommunityId(this.config.getCommunityId());
        builderScopeCommunityId.param("start", 0);
        builderScopeCommunityId.param("size", 10);
        ((ApiService) this.context.getService("api")).exec(builderScopeCommunityId.build(), this.kindredCommunityListener);
        if (z6) {
            updateKindredCommunity();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStreakRepairDialog() {
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 instanceof NVContext) {
            this.streakRepairDialogShowing = true;
            CheckInHelper checkInHelper = new CheckInHelper((NVContext) componentCallbacks2);
            checkInHelper.source = "Left Side Panel";
            checkInHelper.startStreakRepairDialog(new AnonymousClass24());
        }
    }

    private void updateAccountInfoLayout() {
        User userProfile = this.account.getUserProfile();
        boolean z6 = (userProfile == null || this.account.hasCheckInToday()) ? false : true;
        boolean zNodeBoolean = userProfile != null ? JacksonUtils.nodeBoolean(userProfile.extensions, "isMemberOfTeamAmino") : false;
        boolean z10 = userProfile != null && userProfile.isSubscribeMemberShip();
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        userAvatarLayout.setNoBadge(!z10 || zNodeBoolean);
        userAvatarLayout.setVisibility(userProfile == null ? 8 : 0);
        userAvatarLayout.setAvatarStroke(3.0f, false);
        userAvatarLayout.setUser(userProfile);
        findViewById(R.id.avatar).setAlpha((userProfile == null || !z6 || this.checkInPressed) ? 1.0f : 0.6f);
        findViewById(R.id.amino_staff_badge).setVisibility(zNodeBoolean ? 0 : 8);
        findViewById(R.id.avatar_bg).setVisibility(userProfile == null ? 8 : 0);
        NicknameView nicknameView = (NicknameView) findViewById(R.id.nickname);
        nicknameView.setVisibility(userProfile == null ? 8 : 0);
        nicknameView.setUser(userProfile);
        RankingTitleView rankingTitleView = (RankingTitleView) findViewById(R.id.drawer_user_role);
        this.rankingTitleView = rankingTitleView;
        rankingTitleView.clearAnimation();
        if (userProfile == null || z6 || !this.communityConfigHelper.isRankingModuleEnabled()) {
            ViewUtils.cancelFadeInAnimator(this.rankingTitleView);
            this.rankingTitleView.setVisibility(8);
        } else {
            this.rankingTitleView.setVisibility(0);
            this.rankingTitleView.setShowBadge(true);
        }
        if (!this.dontUpdateRanking) {
            this.rankingTitleView.setUser(userProfile, this.context);
        }
        View viewFindViewById = findViewById(R.id.drawer_checkin);
        if (userProfile != null && z6) {
            ViewUtils.cancelFadeOutAnimator(viewFindViewById);
            if (viewFindViewById.getVisibility() != 0) {
                viewFindViewById.setVisibility(0);
                viewFindViewById.setPressed(false);
            }
        } else if (viewFindViewById.getVisibility() == 0) {
            viewFindViewById.setVisibility(8);
            if (this.checkInPressed && this.communityConfigHelper.isRankingModuleEnabled()) {
                viewFindViewById.setVisibility(0);
                ViewUtils.fadeOut(viewFindViewById, 250);
                ViewUtils.fadeIn(this.rankingTitleView);
            }
        }
        findViewById(R.id.drawer_checkin_fake).setVisibility((!NVApplication.DEBUG || this.fakeCheckin || userProfile == null || z6) ? 8 : 0);
        findViewById(R.id.drawer_checkin_ring).setVisibility(userProfile != null ? 0 : 8);
        CheckInStreakBar checkInStreakBar = (CheckInStreakBar) findViewById(R.id.check_in_streak_bar);
        CheckInHelper checkInHelper = new CheckInHelper(this.context);
        CheckInHistory checkInHistory = this.account.getCheckInHistory();
        List<Integer> streakLostList = checkInHelper.getStreakLostList(checkInHistory);
        int visibility = checkInStreakBar.getVisibility();
        boolean z11 = (userProfile == null || CollectionUtils.isEmpty(streakLostList)) ? false : true;
        ViewUtils.show(checkInStreakBar, z11);
        ViewUtils.show(findViewById(R.id.check_in_streak_bar_margin_top), z11);
        int visibility2 = checkInStreakBar.getVisibility();
        if (this.checkInPressed && visibility != 0 && visibility2 == 0) {
            ViewUtils.fadeIn(checkInStreakBar);
        }
        checkInStreakBar.updateCells(streakLostList);
        View viewFindViewById2 = findViewById(R.id.strike_lost);
        int visibility3 = viewFindViewById2.getVisibility();
        viewFindViewById2.setVisibility(checkInHelper.shouldShowStrikeLost(checkInHistory) ? 0 : 8);
        int visibility4 = viewFindViewById2.getVisibility();
        if (this.checkInPressed && visibility3 != 0 && visibility4 == 0) {
            ViewUtils.fadeIn(viewFindViewById2);
        }
        findViewById(R.id.not_activated).setVisibility((userProfile == null || this.account.hasActivation()) ? 8 : 0);
        int onlineStatus = this.account.getOnlineStatus();
        boolean z12 = (onlineStatus == 0 || onlineStatus == 2) ? false : true;
        MoodView moodView = (MoodView) findViewById(R.id.mood);
        moodView.setAnimate((!z12 || userProfile == null || Sticker.isEmpty(userProfile.getMoodSticker())) ? false : true);
        moodView.setVisibility((userProfile == null || !this.account.hasActivation()) ? 8 : 0);
        moodView.setMoodSticker(userProfile, (userProfile == null || !z12) ? null : userProfile.getMoodSticker());
        findViewById(R.id.drawer_login_hint).setVisibility(userProfile == null ? 0 : 8);
        findViewById(R.id.account_notice_container).setVisibility(this.account.getNoticeCount() <= 0 ? 8 : 0);
        findViewById(R.id.account_notice_container).setOnClickListener(this.accountListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCategory() {
        View viewInflate;
        View viewInflate2;
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.drawer_category_frame);
        if (!this.communityConfigHelper.isTopicCategoryEnabled()) {
            viewGroup.setVisibility(8);
            return;
        }
        boolean z6 = false;
        viewGroup.setVisibility(0);
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        int i10 = 1;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getId() == R.id.drawer_category_header) {
                stack.add(childAt);
            } else if (childAt.getId() == R.id.drawer_category_item) {
                stack2.add(childAt);
            }
        }
        viewGroup.removeAllViews();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        ArrayList<BlogCategory> arrayList = this.blogCategoryList;
        if (arrayList == null) {
            if (this.blogCategoryError == null) {
                layoutInflaterFrom.inflate(R.layout.normal_loading_list_item, viewGroup, true);
                return;
            }
            View viewInflate3 = layoutInflaterFrom.inflate(R.layout.normal_error_list_item, viewGroup, false);
            viewInflate3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DrawerHost.this.sendCategoryRequest();
                }
            });
            viewGroup.addView(viewInflate3);
            return;
        }
        float[] fArr = new float[3];
        for (BlogCategory blogCategory : arrayList) {
            int i11 = blogCategory.type;
            if (i11 == i10) {
                if (stack.empty()) {
                    viewInflate2 = layoutInflaterFrom.inflate(R.layout.drawer_category_header, viewGroup, z6);
                    viewInflate2.setBackgroundColor(this.darkThemeColor);
                } else {
                    viewInflate2 = (View) stack.pop();
                    viewInflate2.setBackgroundColor(this.darkThemeColor);
                }
                ((TextView) viewInflate2).setText(blogCategory.label);
                viewGroup.addView(viewInflate2);
            } else if (i11 == 0 || i11 == 2 || i11 == 3) {
                if (stack2.empty()) {
                    viewInflate = layoutInflaterFrom.inflate(R.layout.drawer_category_item, viewGroup, z6);
                    viewInflate.setBackgroundColor(this.themeColor);
                    viewInflate.setOnClickListener(this.categoryClickListener);
                } else {
                    viewInflate = (View) stack2.pop();
                    viewInflate.setBackgroundColor(this.themeColor);
                }
                if (TextUtils.isEmpty(blogCategory.icon)) {
                    Color.colorToHSV(this.themeColor, fArr);
                    fArr[2] = fArr[2] * 0.8f;
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setImageDrawable(new CommunityNameDrawable(getContext(), blogCategory.label, -1, Utils.dpToPx(getContext(), 30.0f), Color.HSVToColor(fArr)));
                } else {
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setImageUrl(blogCategory.icon);
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setStrokeColor(-3355444);
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setStrokeWidth(Utils.dpToPx(getContext(), 0.5f));
                }
                int i12 = blogCategory.status;
                ((ImageView) viewInflate.findViewById(R.id.status)).setImageDrawable(i12 == 3 ? getResources().getDrawable(R.drawable.categroy_viewonly) : i12 == 9 ? getResources().getDrawable(R.drawable.categroy_hide) : null);
                ((TextView) viewInflate.findViewById(R.id.title)).setText(blogCategory.label);
                ((TextView) viewInflate.findViewById(R.id.subTitle)).setText(blogCategory.content);
                ((TextView) viewInflate.findViewById(R.id.subTitle)).setVisibility(TextUtils.isEmpty(blogCategory.content) ? 8 : 0);
                if (blogCategory.status == 9) {
                    viewInflate.findViewById(R.id.icon).setAlpha(0.3f);
                    viewInflate.findViewById(R.id.title).setAlpha(0.3f);
                    viewInflate.findViewById(R.id.subTitle).setAlpha(0.3f);
                } else {
                    viewInflate.findViewById(R.id.icon).setAlpha(1.0f);
                    viewInflate.findViewById(R.id.title).setAlpha(1.0f);
                    viewInflate.findViewById(R.id.subTitle).setAlpha(1.0f);
                }
                viewInflate.setTag(blogCategory);
                viewGroup.addView(viewInflate);
            }
            z6 = false;
            i10 = 1;
        }
    }

    private void updateChatBadge(View view) {
        if (view == null) {
            return;
        }
        int chatUnreadCount = getChatUnreadCount();
        TextView textView = (TextView) view.findViewById(R.id.page_item_badge);
        textView.setText(chatUnreadCount > 9 ? "9+" : String.valueOf(chatUnreadCount));
        ViewUtils.show(textView, chatUnreadCount > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGeneralCountView() {
        String str;
        CommunityGeneralCheckResult communityGeneralCheckResult = this.generalCheckResult;
        int i10 = communityGeneralCheckResult == null ? 0 : communityGeneralCheckResult.pendingFlagCount;
        int i11 = (communityGeneralCheckResult != null && this.communityConfigHelper.isCatalogCutaionEnable() && this.communityConfigHelper.isCatalogEnable()) ? this.generalCheckResult.pendingKnowledgeBaseRequestCount : 0;
        CommunityGeneralCheckResult communityGeneralCheckResult2 = this.generalCheckResult;
        HashMap<Integer, Integer> map = communityGeneralCheckResult2 == null ? null : communityGeneralCheckResult2.pendingShareRequestCountMapping;
        int iIntValue = map != null ? map.get(114).intValue() : 0;
        boolean z6 = this.account.getUserProfile() != null && this.account.getUserProfile().isLeader();
        String str2 = "9+";
        if (i10 == 0) {
            findViewById(R.id.drawer_flag_count).setVisibility(8);
        } else {
            findViewById(R.id.drawer_flag_count).setVisibility(0);
            TextView textView = (TextView) findViewById(R.id.drawer_flag_count);
            if (i10 > 9) {
                str = "9+";
            } else {
                str = "" + i10;
            }
            textView.setText(str);
        }
        if (i11 == 0) {
            findViewById(R.id.drawer_review_submission_count).setVisibility(8);
        } else {
            findViewById(R.id.drawer_review_submission_count).setVisibility(0);
            TextView textView2 = (TextView) findViewById(R.id.drawer_review_submission_count);
            if (i11 <= 9) {
                str2 = "" + i11;
            }
            textView2.setText(str2);
        }
        findViewById(R.id.pending_sticker_pack_badge).setVisibility((iIntValue <= 0 || !z6) ? 8 : 0);
        ((TextView) findViewById(R.id.pending_sticker_pack_badge)).setText(Utils.getBadgeCount(iIntValue));
    }

    private void updateModerationLayout() {
        User userProfile = this.account.getUserProfile();
        int i10 = 8;
        findViewById(R.id.drawer_flag_center_layout).setVisibility((userProfile == null || !userProfile.isLeader()) ? 8 : 0);
        findViewById(R.id.drawer_catalog_submission_layout).setVisibility((userProfile != null && userProfile.isCurator() && this.communityConfigHelper.isCatalogEnable() && this.communityConfigHelper.isCatalogCutaionEnable()) ? 0 : 8);
        findViewById(R.id.drawer_reorder_layout).setVisibility((this.communityConfigHelper.isFeaturedPostEnabled() && this.communityConfigHelper.isPostEnabled() && userProfile != null && userProfile.isCurator()) ? 0 : 8);
        findViewById(R.id.drawer_moderation_layout).setVisibility((userProfile == null || !userProfile.isCurator()) ? 8 : 0);
        findViewById(R.id.drawer_section_moderation_layout).setVisibility((userProfile == null || !userProfile.isCurator()) ? 8 : 0);
        findViewById(R.id.drawer_community_setup_layout).setVisibility((userProfile == null || !userProfile.isLeader()) ? 8 : 0);
        View viewFindViewById = findViewById(R.id.drawer_sticker_pack_submission_layout);
        if (userProfile != null && userProfile.isLeader() && this.communityConfigHelper.isPremiumFeatureEnabled()) {
            i10 = 0;
        }
        viewFindViewById.setVisibility(i10);
    }

    private void updateMoreOptionsLayout() {
        if (this.account.hasAccount()) {
            this.account.getUserProfile().isLeader();
        }
        Community community = this.community.getCommunity(this.myCommunityId);
        TextView textView = (TextView) findViewById(R.id.share_community_content);
        TextView textView2 = (TextView) findViewById(R.id.share_community_hint);
        if (community == null) {
            textView.setText(getResources().getString(R.string.share_community));
            textView2.setVisibility(8);
            return;
        }
        String string = getResources().getString(R.string.amino_id_with_name, community.endpoint);
        SpannableString spannableString = new SpannableString(string);
        if (!TextUtils.isEmpty(community.endpoint)) {
            spannableString.setSpan(new UnderlineSpan(), string.lastIndexOf(community.endpoint), spannableString.length(), 33);
        }
        textView2.setText(spannableString);
        textView2.setVisibility(TextUtils.isEmpty(community.endpoint) ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSecondEntryContainer() {
        List<Page> leftSidePanelLv2List = this.communityConfigHelper.getLeftSidePanelLv2List();
        if (leftSidePanelLv2List == null || leftSidePanelLv2List.isEmpty()) {
            this.secondEntryContainer.setVisibility(8);
            PageSecondLevelLayout pageSecondLevelLayout = this.secondLevelLayout;
            if (pageSecondLevelLayout != null) {
                pageSecondLevelLayout.setVisibility(8);
                return;
            }
            return;
        }
        this.secondEntryContainer.setVisibility(0);
        if (this.secondLevelLayout != null) {
            View viewFindViewById = findViewById(R.id.second_entries_offset);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(this.secondLevelLayout.getVisibility() == 0 ? 0 : 8);
            }
            this.secondLevelLayout.setPageItems(this.context, leftSidePanelLv2List, getChatUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSecondLevelChatBadge() {
        PageSecondLevelLayout pageSecondLevelLayout = this.secondLevelLayout;
        if (pageSecondLevelLayout != null) {
            updateChatBadge(pageSecondLevelLayout.getChatChildView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThemeUI() {
        if (this.activity == null) {
            return;
        }
        int iColorPrimary = this.config.getTheme().colorPrimary();
        this.themeColor = iColorPrimary;
        float[] fArr = new float[3];
        Color.colorToHSV(iColorPrimary, fArr);
        fArr[2] = fArr[2] * 0.85f;
        this.darkThemeColor = Color.HSVToColor(fArr);
        findViewById(R.id.drawer_blow_category_container).setBackgroundColor(this.darkThemeColor);
        this.scrollView.setBottomOverScrollColor(this.darkThemeColor);
        ((ImageView) findViewById(R.id.drawer_image)).setImageDrawable(this.config.getTheme().drawerImage());
        if (this.config.getTheme().logoImage() != null) {
            ((NVImageView) findViewById(R.id.drawer_logo)).setImageDrawable(this.config.getTheme().logoImage());
            findViewById(R.id.drawer_logo).setVisibility(0);
            findViewById(R.id.drawer_title).setVisibility(8);
            findViewById(R.id.amino_logo).setVisibility(8);
        } else {
            findViewById(R.id.drawer_logo).setVisibility(8);
        }
        updateCategory();
    }

    private void updateTopEntryContainer() {
        List<Page> leftSidePanelLv1List = this.communityConfigHelper.getLeftSidePanelLv1List();
        if (leftSidePanelLv1List == null || leftSidePanelLv1List.isEmpty()) {
            leftSidePanelLv1List = new ArrayList<>();
        }
        Page page = new Page();
        page.url = PageManager.PAGE_HOME_URI;
        leftSidePanelLv1List.add(0, page);
        this.topEntryContainer.setPageItems(this.context, leftSidePanelLv1List, getChatUnreadCount());
    }

    private void updateTopEntryContainerIndicator(String str) {
        PageTopLevelLayout pageTopLevelLayout = this.topEntryContainer;
        if (pageTopLevelLayout == null) {
            return;
        }
        pageTopLevelLayout.updateIndicator(str);
    }

    private void updateTopLevelChatBadge() {
        PageTopLevelLayout pageTopLevelLayout = this.topEntryContainer;
        if (pageTopLevelLayout != null) {
            updateChatBadge(pageTopLevelLayout.getChatChildView());
        }
    }

    public void addRequestCommunityInfoListener(RequestCommunityInfoListener requestCommunityInfoListener) {
        this.requestCommunityInfoListeners.addListener(requestCommunityInfoListener);
    }

    public void bind(Activity activity) {
        this.activity = activity;
        boolean z6 = activity instanceof MainActivity;
        if (this.isHomepage ^ z6) {
            this.isHomepage = z6;
            updateTopEntryContainerIndicator(z6 ? PageManager.PAGE_HOME_URI : null);
        }
        this.account.addProfileListener(this.profileListener);
        this.chatService.addCommunityLevelReceptor(this.myCommunityId, this.chatCheckListener);
        updateChat();
        int iColorPrimary = this.config.getTheme().colorPrimary();
        this.themeColor = iColorPrimary;
        float[] fArr = new float[3];
        Color.colorToHSV(iColorPrimary, fArr);
        fArr[2] = fArr[2] * 0.85f;
        this.darkThemeColor = Color.HSVToColor(fArr);
        findViewById(R.id.drawer_blow_category_container).setBackgroundColor(this.darkThemeColor);
        this.scrollView.setBottomOverScrollColor(this.darkThemeColor);
        this.scrollView.setTopOverScrollColor(ContextCompat.getColor(getContext(), R.color.drawer_top_bg_color));
        this.hasNotificationTurnedOffWarning = !this.notificationManagerHelper.areNotificationsEnabled() && this.notificationManagerHelper.isNotificationSettingAvailable();
        NVListView nVListView = this.communityListView;
        if (nVListView != null) {
            nVListView.setSelectionFromTop(curCommunitySelectedPosition, curCommunitySelectedOffset);
        }
    }

    void cancelLaunch() {
        MyLaunchHelper myLaunchHelper = this.launchHelper;
        if (myLaunchHelper != null) {
            myLaunchHelper.cancel();
        }
        this.launchHelper = null;
    }

    public int getPendingSharesStikcerCount() {
        CommunityGeneralCheckResult communityGeneralCheckResult;
        HashMap<Integer, Integer> map;
        if (this.account.getUserProfile() == null || !this.account.getUserProfile().isLeader() || (communityGeneralCheckResult = this.generalCheckResult) == null || (map = communityGeneralCheckResult.pendingShareRequestCountMapping) == null) {
            return 0;
        }
        return map.get(114).intValue();
    }

    public int getTotalBadgeCount() {
        HashMap<Integer, Integer> map;
        boolean z6 = this.account.getUserProfile() != null && this.account.getUserProfile().isLeader();
        AccountService accountService = this.account;
        int notificationCount = accountService != null ? accountService.getNotificationCount() + this.account.getNoticeCount() : 0;
        if (this.communityConfigHelper.isChatEnabled()) {
            notificationCount += getChatUnreadCount();
        }
        CommunityGeneralCheckResult communityGeneralCheckResult = this.generalCheckResult;
        if (communityGeneralCheckResult == null) {
            return notificationCount;
        }
        int i10 = notificationCount + communityGeneralCheckResult.pendingFlagCount;
        if (this.communityConfigHelper.isCatalogEnable() && this.communityConfigHelper.isCatalogCutaionEnable()) {
            i10 += this.generalCheckResult.pendingKnowledgeBaseRequestCount;
        }
        return (!z6 || (map = this.generalCheckResult.pendingShareRequestCountMapping) == null) ? i10 : i10 + map.get(114).intValue();
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        if (this.myCommunityListAdapter == null || getAttachView() == null) {
            return;
        }
        this.myCommunityListAdapter.notifyDataSetChanged();
    }

    void onRefreshFinish(int i10) {
        this.refreshingFlag = (~i10) & this.refreshingFlag;
        ((SwipeRefreshLayout) findViewById(R.id.swipe_refresh)).setRefreshing(this.refreshingFlag != 0);
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        MyCommunityListAdapter myCommunityListAdapter = this.myCommunityListAdapter;
        if (myCommunityListAdapter != null) {
            myCommunityListAdapter.notifyDataSetChanged();
        }
    }

    public boolean refreshGeneralCount(long j6) {
        User userProfile = this.account.getUserProfile();
        if (userProfile == null || !userProfile.isCurator()) {
            if (this.generalCheckResult != null) {
                this.generalCheckResult = null;
                updateGeneralCountView();
            }
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j6 != 0) {
            long j10 = this.refreshGeneralCountTime;
            if (jCurrentTimeMillis >= j10 && jCurrentTimeMillis <= j10 + j6) {
                return false;
            }
        }
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/community/general-check").build(), this.generalCheckResponseListener);
        this.refreshGeneralCountTime = jCurrentTimeMillis;
        return true;
    }

    void removeLaunchSplashAndCloseDrawer(long j6) {
        Runnable runnable = this.removeLaunchSplashAndCloseDrawer;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        this.removeLaunchSplashAndCloseDrawer = null;
        final MyLaunchHelper myLaunchHelper = this.launchHelper;
        Activity activity = this.activity;
        final DrawerActivity drawerActivity = activity instanceof DrawerActivity ? (DrawerActivity) activity : null;
        if (drawerActivity == null && myLaunchHelper == null) {
            return;
        }
        Runnable runnable2 = new Runnable() { // from class: com.narvii.drawer.DrawerHost.28
            @Override // java.lang.Runnable
            public void run() {
                MyLaunchHelper myLaunchHelper2 = myLaunchHelper;
                if (myLaunchHelper2 != null) {
                    myLaunchHelper2.cancel();
                }
                DrawerActivity drawerActivity2 = drawerActivity;
                if (drawerActivity2 != null) {
                    drawerActivity2.closeDrawersDirectly();
                }
            }
        };
        this.removeLaunchSplashAndCloseDrawer = runnable2;
        Utils.postDelayed(runnable2, j6);
    }

    public void removeRequestCommunityInfoListener(RequestCommunityInfoListener requestCommunityInfoListener) {
        this.requestCommunityInfoListeners.removeListener(requestCommunityInfoListener);
    }

    void scheduleScrollToTop(long j6) {
        Runnable runnable = this.scrollToTop;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        } else {
            this.scrollToTop = new ScrollToTop(this);
        }
        Utils.postDelayed(this.scrollToTop, j6);
    }

    @Override // com.narvii.widget.ProxyViewHost
    public boolean sendEvent(int i10, Object obj) {
        this.sendingEvent.set(Integer.valueOf(i10));
        return super.sendEvent(i10, obj);
    }

    public void showLotteryPrompt() {
        TopActivityService topActivityService;
        if (this.streakRepairDialogShowing) {
            return;
        }
        this.willPlayLottery = false;
        int communityId = this.config.getCommunityId();
        Activity activity = this.activity;
        if (activity == null && (topActivityService = (TopActivityService) this.context.getService("topActivity")) != null) {
            Activity topActivity = topActivityService.getTopActivity();
            if ((topActivity instanceof NVActivity) && ((ConfigService) ((NVActivity) topActivity).getService("config")).getCommunityId() == communityId) {
                activity = topActivity;
            }
        }
        if (!(activity instanceof NVActivity) || ((NVActivity) activity).isDestoryed()) {
            return;
        }
        try {
            LotteryDialog lotteryDialog = new LotteryDialog((NVActivity) activity, communityId);
            this.lotteryDialog = lotteryDialog;
            lotteryDialog.show();
        } catch (Exception e) {
            Log.e("lucky draw", e);
        }
    }

    public void smoothScrollToTop(boolean z6) {
        Runnable runnable = new Runnable() { // from class: com.narvii.drawer.DrawerHost.19
            @Override // java.lang.Runnable
            public void run() {
                ((ScrollView) DrawerHost.this.findViewById(R.id.drawer_scroll)).smoothScrollTo(0, 0);
            }
        };
        if (z6) {
            Utils.postDelayed(runnable, 350L);
        } else {
            runnable.run();
        }
    }

    public void start() {
        this.account = (AccountService) this.context.getService("account");
        boolean zCompareAndRemove = GLOBAL_ENTER.compareAndRemove(Integer.valueOf(this.myCommunityId));
        this.fromGlobalLaunch = zCompareAndRemove;
        refreshGeneralCount(zCompareAndRemove ? 300000L : AUTO_REFRESH_DURATION);
        refreshReminderCheck(this.fromGlobalLaunch ? 300000L : AUTO_REFRESH_DURATION);
        this.broadcastManager.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.broadcastManager.c(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        this.broadcastManager.c(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
        Community community = this.community.getCommunity(this.myCommunityId);
        if (community == null || community.configuration == null) {
            refreshCommunityInfo(0L);
        }
        onCommunityUpdated();
    }

    public void startActivity(final Intent intent) {
        Utils.post(new Runnable() { // from class: com.narvii.drawer.DrawerHost.20
            public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // java.lang.Runnable
            public void run() {
                Integer andRemove = DrawerHost.this.sendingEvent.getAndRemove();
                if (andRemove != null && andRemove.intValue() == 16384001) {
                    Utils.postDelayed(this, 300L);
                    return;
                }
                if (DrawerHost.this.activity != null) {
                    try {
                        if (!intent.hasExtra("__communityId")) {
                            intent.putExtra("__communityId", DrawerHost.this.cid);
                        }
                        safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(DrawerHost.this.activity, intent);
                        DrawerHost drawerHost = DrawerHost.this;
                        Integer num = drawerHost.overrideEnterAnim;
                        if (num != null && drawerHost.overrideExitAnim != null) {
                            drawerHost.activity.overridePendingTransition(num.intValue(), DrawerHost.this.overrideExitAnim.intValue());
                        }
                        DrawerHost drawerHost2 = DrawerHost.this;
                        drawerHost2.overrideEnterAnim = null;
                        drawerHost2.overrideExitAnim = null;
                    } catch (Exception unused) {
                        NVToast.makeText(DrawerHost.this.getContext(), R.string.home_failover_message, 1).show();
                    }
                }
            }
        });
    }

    public void stop() {
        this.broadcastManager.f(this.receiver);
        this.broadcastManager.f(this.themeDownLoadReceiver);
    }

    public void unbind() {
        NVListView nVListView = this.communityListView;
        if (nVListView != null) {
            curCommunitySelectedPosition = nVListView.getFirstVisiblePosition();
            View childAt = this.communityListView.getChildAt(0);
            if (childAt != null) {
                curCommunitySelectedOffset = childAt.getTop();
            }
        }
        this.account.removeProfileListener(this.profileListener);
        this.chatService.removeCommunityLevelReceptor(this.myCommunityId, this.chatCheckListener);
        this.activity = null;
    }

    void unscheduleScrollToTop() {
        Runnable runnable = this.scrollToTop;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.scrollToTop = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DrawerHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.badgeCountListener = new EventDispatcher<>();
        this.sendingEvent = new TmpValue<>();
        this.requestCommunityInfoListeners = new EventDispatcher<>();
        this.scrollListener = new NVScrollView.OnScrollListener() { // from class: com.narvii.drawer.DrawerHost.1
            View bg;

            @Override // com.narvii.widget.NVScrollView.OnScrollListener
            public void onScroll(int i10, int i11, int i12, int i13) {
                if (this.bg == null) {
                    this.bg = DrawerHost.this.findViewById(R.id.drawer_actionbar_bg);
                }
                int height = this.bg.getHeight();
                int i14 = height * 3;
                int i15 = i11 - (height / 2);
                if (i15 <= 0) {
                    this.bg.setAlpha(0.0f);
                } else if (i15 >= i14) {
                    this.bg.setAlpha(1.0f);
                } else {
                    this.bg.setAlpha((i15 * 1.0f) / i14);
                }
            }
        };
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.drawer.DrawerHost.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                    if (DrawerHost.this.getAttachView() != null) {
                        DrawerHost.this.updateAccount();
                        DrawerHost.this.smoothScrollToTop(false);
                    } else {
                        ((ScrollView) DrawerHost.this.findViewById(R.id.drawer_scroll)).scrollTo(0, 0);
                    }
                    DrawerHost.this.updateChat();
                    DrawerHost.this.onRefresh();
                    return;
                }
                if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction()) && intent.getIntExtra("id", 0) == DrawerHost.this.config.getCommunityId()) {
                    DrawerHost.this.onCommunityUpdated();
                }
            }
        };
        this.profileListener = new AccountService.ProfileListener() { // from class: com.narvii.drawer.DrawerHost.3
            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInChanged(boolean z6, int i10) {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNoticeCountChanged(int i10) {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
                DrawerHost.this.badgeCountListener.dispatch(new Callback<Callback<Integer>>() { // from class: com.narvii.drawer.DrawerHost.3.2
                    @Override // com.narvii.util.Callback
                    public void call(Callback<Integer> callback) {
                        callback.call(Integer.valueOf(DrawerHost.this.getTotalBadgeCount()));
                    }
                });
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNotificationCountChanged(int i10) {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                    MyCommunityListAdapter myCommunityListAdapter = DrawerHost.this.myCommunityListAdapter;
                    if (myCommunityListAdapter != null) {
                        myCommunityListAdapter.notifyDataSetChanged();
                    }
                }
                DrawerHost.this.badgeCountListener.dispatch(new Callback<Callback<Integer>>() { // from class: com.narvii.drawer.DrawerHost.3.1
                    @Override // com.narvii.util.Callback
                    public void call(Callback<Integer> callback) {
                        callback.call(Integer.valueOf(DrawerHost.this.getTotalBadgeCount()));
                    }
                });
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onOnlineStatusChanged(int i10) {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onProfileChanged(int i10, User user) {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
                super.onCheckInHistoryChanged(checkInHistory);
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }
        };
        this.chatCheckListener = new ChatService.ChatMessageReceptor() { // from class: com.narvii.drawer.DrawerHost.4
            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onResetChatMessageList() {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onUnreadThreadCountChanged(int i10) {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateChat();
                }
                DrawerHost.this.badgeCountListener.dispatch(new Callback<Callback<Integer>>() { // from class: com.narvii.drawer.DrawerHost.4.1
                    @Override // com.narvii.util.Callback
                    public void call(Callback<Integer> callback) {
                        callback.call(Integer.valueOf(DrawerHost.this.getTotalBadgeCount()));
                    }
                });
            }
        };
        this.clickListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.5
            public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activity;
                ChatFragment chatFragment;
                switch (view.getId()) {
                    case R.id.amino_logo /* 2131362057 */:
                    case R.id.drawer_logo /* 2131362949 */:
                    case R.id.drawer_title /* 2131362972 */:
                        ConfigService configService = (ConfigService) DrawerHost.this.context.getService("config");
                        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent.putExtra("showJoin", false);
                        intent.putExtra("id", configService.getCommunityId());
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent);
                        break;
                    case R.id.content_drawer_quit /* 2131362720 */:
                    case R.id.drawer_quit /* 2131362954 */:
                        DrawerHost drawerHost = DrawerHost.this;
                        if (drawerHost.activity instanceof NVContext) {
                            drawerHost.exitCommunityTooltipDone();
                            FloatingPermissionUtils floatingPermissionUtils = new FloatingPermissionUtils(DrawerHost.this.getContext());
                            RtcService rtcService = (RtcService) DrawerHost.this.context.getService("rtc");
                            if (!floatingPermissionUtils.canDrawOverlays() && rtcService.channelShowingMode != 1 && rtcService.getMainSigChannel() != null) {
                                rtcService.exitLiveChannel(rtcService.getMainSigChannel().ndcId, rtcService.getMainSigChannel().threadId);
                            }
                            if (floatingPermissionUtils.canDrawOverlays() && rtcService.getShowingWindowType() == -1 && rtcService.getPendingFloatingThreadId() == null) {
                                WeakReference<Activity> weakReference = rtcService.topActivity;
                                if (weakReference == null) {
                                    activity = null;
                                } else {
                                    activity = weakReference.get();
                                }
                                if (activity instanceof ChatActivity) {
                                    ChatActivity chatActivity = (ChatActivity) activity;
                                    if (chatActivity.isActivityResumed() && (chatFragment = (ChatFragment) chatActivity.getRootFragment()) != null) {
                                        chatFragment.tryShowLiveChannelFloating();
                                    }
                                }
                            }
                            Intent intent2 = new Intent(DrawerHost.this.getContext(), (Class<?>) MasterActivity.class);
                            intent2.putExtra("exitCommunity", true);
                            Intent intentBackToMaster = MasterActivity.backToMaster((NVContext) DrawerHost.this.activity, intent2);
                            DrawerHost.this.overrideEnterAnim = Integer.valueOf(R.anim.exit_community_in);
                            DrawerHost.this.overrideExitAnim = Integer.valueOf(R.anim.exit_community_out);
                            safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intentBackToMaster);
                            ((StatisticsService) DrawerHost.this.context.getService("statistics")).event("Exits A Community").userPropInc("Exits A Community Total");
                        }
                        break;
                    case R.id.drawer_search /* 2131362962 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(SearchKeywordTabFragment.class));
                        break;
                }
            }
        };
        this.checkInTouchListener = new View.OnTouchListener() { // from class: com.narvii.drawer.DrawerHost.6
            final Runnable hide = new Runnable() { // from class: com.narvii.drawer.DrawerHost.6.2
                @Override // java.lang.Runnable
                public void run() {
                    View viewFindViewById = DrawerHost.this.findViewById(R.id.drawer_checkin_hold);
                    if (viewFindViewById.getVisibility() == 0) {
                        viewFindViewById.setVisibility(4);
                        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(DrawerHost.this.getContext(), R.anim.fade_out));
                    }
                }
            };

            void shortPress() {
                Handler handler = Utils.handler;
                handler.removeCallbacks(this.hide);
                handler.postDelayed(this.hide, 1000L);
                View viewFindViewById = DrawerHost.this.findViewById(R.id.drawer_checkin_hold);
                if (viewFindViewById.getVisibility() != 0) {
                    viewFindViewById.setVisibility(0);
                    viewFindViewById.startAnimation(AnimationUtils.loadAnimation(DrawerHost.this.getContext(), R.anim.fade_in));
                }
                viewFindViewById.findViewById(R.id.drawer_checkin_hold_text).startAnimation(AnimationUtils.loadAnimation(DrawerHost.this.getContext(), R.anim.vote_hold_longer_shake_long));
            }

            /* JADX WARN: Code duplicated, block: B:25:0x0068  */
            /* JADX WARN: Code duplicated, block: B:27:0x0070  */
            /* JADX WARN: Code duplicated, block: B:29:0x007e  */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action != 2) {
                            if (action == 3) {
                                if (!DrawerHost.this.checkInPressed) {
                                    if (((CheckInCircle) DrawerHost.this.findViewById(R.id.drawer_checkin_ring)).unpress()) {
                                        Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.6.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                DrawerHost.this.findViewById(R.id.mood).animate().alpha(1.0f).setDuration(200L).start();
                                                DrawerHost.this.findViewById(R.id.amino_staff_badge).animate().alpha(1.0f).setDuration(200L).start();
                                                DrawerHost.this.findViewById(R.id.amino_plus_badge).animate().alpha(1.0f).setDuration(200L).start();
                                            }
                                        }, 200L);
                                        shortPress();
                                    }
                                    view.setPressed(false);
                                }
                            }
                        } else if (motionEvent.getX() < 0.0f || motionEvent.getX() > view.getWidth() || motionEvent.getY() < (-view.getHeight()) / 2 || motionEvent.getY() > (view.getHeight() * 3) / 2) {
                            if (!DrawerHost.this.checkInPressed) {
                                if (((CheckInCircle) DrawerHost.this.findViewById(R.id.drawer_checkin_ring)).unpress()) {
                                    shortPress();
                                }
                                view.setPressed(false);
                            }
                            return false;
                        }
                    } else if (!DrawerHost.this.checkInPressed) {
                        if (((CheckInCircle) DrawerHost.this.findViewById(R.id.drawer_checkin_ring)).unpress()) {
                            Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.6.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    DrawerHost.this.findViewById(R.id.mood).animate().alpha(1.0f).setDuration(200L).start();
                                    DrawerHost.this.findViewById(R.id.amino_staff_badge).animate().alpha(1.0f).setDuration(200L).start();
                                    DrawerHost.this.findViewById(R.id.amino_plus_badge).animate().alpha(1.0f).setDuration(200L).start();
                                }
                            }, 200L);
                            shortPress();
                        }
                        view.setPressed(false);
                    }
                } else {
                    ((CheckInCircle) DrawerHost.this.findViewById(R.id.drawer_checkin_ring)).press();
                    DrawerHost.this.findViewById(R.id.mood).animate().alpha(0.0f).setDuration(200L).start();
                    DrawerHost.this.findViewById(R.id.amino_staff_badge).animate().alpha(0.0f).setDuration(200L).start();
                    DrawerHost.this.findViewById(R.id.amino_plus_badge).animate().alpha(0.0f).setDuration(200L).start();
                    view.setPressed(true);
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return true;
            }
        };
        this.checkInStart = new Callback<Boolean>() { // from class: com.narvii.drawer.DrawerHost.7
            ValueAnimator animator;

            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                float f = bool.booleanValue() ? 1.0f : 0.6f;
                final View viewFindViewById = DrawerHost.this.findViewById(R.id.avatar);
                if (viewFindViewById.getAlpha() != f) {
                    ValueAnimator valueAnimator = this.animator;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(viewFindViewById.getAlpha(), f);
                    this.animator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.drawer.DrawerHost.7.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            viewFindViewById.setAlpha(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                        }
                    });
                    this.animator.setDuration(150L);
                    this.animator.start();
                }
            }
        };
        this.checkInFire = new AnonymousClass8();
        this.categoryClickListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.11
            public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z6;
                BlogCategory blogCategory = (BlogCategory) view.getTag();
                Intent intent = FragmentWrapperActivity.intent(BlogInCategoryListFragment.class);
                intent.putExtra("id", blogCategory.categoryId);
                intent.putExtra("blogCategory", JacksonUtils.writeAsString(blogCategory));
                if (blogCategory.type == 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                intent.putExtra("isFeaturedCategory", z6);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
                safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent);
                DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            }
        };
        this.kindredClickListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.12
            public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Community community = (Community) view.getTag();
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Endorsed Communities");
                intent.putExtra("id", community.id);
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent);
            }
        };
        this.kindredCommunityListener = new ApiResponseListener<CommunityListResponse>(CommunityListResponse.class) { // from class: com.narvii.drawer.DrawerHost.13
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.kindredCommunityError = str;
                drawerHost.updateKindredCommunity();
                DrawerHost.this.onRefreshFinish(16);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityListResponse communityListResponse) throws Exception {
                super.onFinish(apiRequest, communityListResponse);
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.kindredCommunityError = null;
                drawerHost.kindredCommunity = communityListResponse.communityList;
                drawerHost.updateKindredCommunity();
                DrawerHost.this.onRefreshFinish(16);
                Callback callback = (Callback) DrawerHost.this.context.getService("_drawerResponseListener");
                if (callback != null) {
                    callback.call(communityListResponse);
                }
            }
        };
        this.generalCheckResponseListener = new ApiResponseListener<GeneraCheckResponse>(GeneraCheckResponse.class) { // from class: com.narvii.drawer.DrawerHost.14
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost.this.onRefreshFinish(4);
                DrawerHost.this.refreshGeneralCountTime = 0L;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, GeneraCheckResponse generaCheckResponse) throws Exception {
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.generalCheckResult = generaCheckResponse.communityGeneralCheckResult;
                drawerHost.updateGeneralCountView();
                DrawerHost.this.badgeCountListener.dispatch(new Callback<Callback<Integer>>() { // from class: com.narvii.drawer.DrawerHost.14.1
                    @Override // com.narvii.util.Callback
                    public void call(Callback<Integer> callback) {
                        callback.call(Integer.valueOf(DrawerHost.this.getTotalBadgeCount()));
                    }
                });
                DrawerHost.this.onRefreshFinish(4);
                Callback callback = (Callback) DrawerHost.this.context.getService("_drawerResponseListener");
                if (callback != null) {
                    callback.call(generaCheckResponse);
                }
            }
        };
        this.communityResponseListener = new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.drawer.DrawerHost.16
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost.this.onRefreshFinish(2);
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.refreshCommunityInfoTime = 0L;
                drawerHost.isRequestingCommunity = false;
                drawerHost.notifyRequestCommunityListeners();
            }

            /* JADX WARN: Code duplicated, block: B:13:0x004a  */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) throws Exception {
                Community community;
                ThemePackService themePackService;
                DrawerHost.this.returnedCommunity = fullCommunityResponse.community;
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.isRequestingCommunity = false;
                drawerHost.notifyRequestCommunityListeners();
                if (NVApplication.CLIENT_TYPE == 100) {
                    AffiliationsService affiliationsService = (AffiliationsService) DrawerHost.this.context.getService("affiliations");
                    if (fullCommunityResponse.isCurrentUserJoined && !affiliationsService.contains(DrawerHost.this.myCommunityId)) {
                        affiliationsService.opAdd(DrawerHost.this.myCommunityId);
                        affiliationsService.refresh(true);
                    }
                }
                if (NVApplication.DEBUG) {
                    community = fullCommunityResponse.community;
                    if (community != null) {
                        themePackService = (ThemePackService) DrawerHost.this.context.getService("themePack");
                        ThemeInfo themeInfo = themePackService.getThemeInfo(DrawerHost.this.cid);
                        if (((AffiliationsService) DrawerHost.this.context.getService("affiliations")).contains(DrawerHost.this.cid)) {
                            themePackService.addToDownLoadList(DrawerHost.this.cid);
                            themePackService.require(DrawerHost.this.cid, fullCommunityResponse.community.themePackRevision(), fullCommunityResponse.community.themePackUrl());
                        }
                    }
                } else {
                    DrawerHost drawerHost2 = DrawerHost.this;
                    if (drawerHost2.community.getCommunity(drawerHost2.myCommunityId) == null) {
                        community = fullCommunityResponse.community;
                        if (community != null && !TextUtils.isEmpty(community.themePackUrl())) {
                            themePackService = (ThemePackService) DrawerHost.this.context.getService("themePack");
                            ThemeInfo themeInfo2 = themePackService.getThemeInfo(DrawerHost.this.cid);
                            if (((AffiliationsService) DrawerHost.this.context.getService("affiliations")).contains(DrawerHost.this.cid) && (themeInfo2 == null || themeInfo2.revision != fullCommunityResponse.community.themePackRevision())) {
                                themePackService.addToDownLoadList(DrawerHost.this.cid);
                                themePackService.require(DrawerHost.this.cid, fullCommunityResponse.community.themePackRevision(), fullCommunityResponse.community.themePackUrl());
                            }
                        }
                    }
                }
                DrawerHost.this.community.updateCommunity(fullCommunityResponse.community, true, DateTimeFormatter.parseISO8601(fullCommunityResponse.timestamp).getTime(), true, true);
                CommunityUserInfo communityUserInfo = fullCommunityResponse.currentUserInfo;
                if (communityUserInfo != null) {
                    DrawerHost.this.account.updateProfile(communityUserInfo.userProfile, fullCommunityResponse.timestamp, true);
                }
                DrawerHost.this.onRefreshFinish(2);
                Callback callback = (Callback) DrawerHost.this.context.getService("_drawerResponseListener");
                if (callback != null) {
                    callback.call(fullCommunityResponse);
                }
            }
        };
        this.reminderCheckListener = new ApiResponseListener<ReminderCheckResult>(ReminderCheckResult.class) { // from class: com.narvii.drawer.DrawerHost.17
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost.this.onRefreshFinish(8);
                DrawerHost.this.refreshReminderCheckTime = 0L;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ReminderCheckResult reminderCheckResult) throws Exception {
                AccountService accountService = (AccountService) DrawerHost.this.context.getService("account");
                accountService.updateCheckInInfo(reminderCheckResult.reminderCheckResult.hasCheckInToday.booleanValue(), reminderCheckResult.reminderCheckResult.consecutiveCheckInDays.intValue(), reminderCheckResult.timestamp, true);
                accountService.updateCheckInHistoryInfo(reminderCheckResult.reminderCheckResult.checkInHistory, reminderCheckResult.timestamp, true);
                accountService.updateNotificationCount(reminderCheckResult.reminderCheckResult.notificationsCount, reminderCheckResult.timestamp, true);
                accountService.updateNoticeCount(reminderCheckResult.reminderCheckResult.noticesCount, reminderCheckResult.timestamp, true);
                DrawerHost.this.onRefreshFinish(8);
                Callback callback = (Callback) DrawerHost.this.context.getService("_drawerResponseListener");
                if (callback != null) {
                    callback.call(reminderCheckResult);
                }
            }
        };
        this.categoryResponseListener = new ApiResponseListener<BlogCategoryListResponse>(BlogCategoryListResponse.class) { // from class: com.narvii.drawer.DrawerHost.18
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.blogCategoryError = str;
                drawerHost.updateCategory();
                DrawerHost.this.onRefreshFinish(1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogCategoryListResponse blogCategoryListResponse) throws Exception {
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.blogCategoryError = null;
                drawerHost.blogCategoryList = new ArrayList<>();
                for (BlogCategory blogCategory : blogCategoryListResponse.blogCategoryList) {
                    int i10 = blogCategory.status;
                    if (i10 == 0 || i10 == 3 || i10 == 9) {
                        if (i10 == 9) {
                            AccountService accountService = DrawerHost.this.account;
                            if (accountService != null && accountService.getUserProfile() != null && DrawerHost.this.account.getUserProfile().isCurator()) {
                                DrawerHost.this.blogCategoryList.add(blogCategory);
                            }
                        } else {
                            DrawerHost.this.blogCategoryList.add(blogCategory);
                        }
                    }
                }
                DrawerHost.this.updateCategory();
                DrawerHost.this.onRefreshFinish(1);
                Callback callback = (Callback) DrawerHost.this.context.getService("_drawerResponseListener");
                if (callback != null) {
                    callback.call(blogCategoryListResponse);
                }
            }
        };
        this.accountListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.23
            public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent;
                boolean z6 = true;
                switch (view.getId()) {
                    case R.id.account_notice_container /* 2131361877 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(NoticeListFragment.class));
                        break;
                    case R.id.avatar /* 2131362161 */:
                    case R.id.drawer_login_hint /* 2131362948 */:
                    case R.id.mood /* 2131364233 */:
                    case R.id.nickname /* 2131364345 */:
                        if (DrawerHost.this.account.hasAccount()) {
                            User communityUserProfile = DrawerHost.this.account.getCommunityUserProfile();
                            if (communityUserProfile == null) {
                                intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
                                intent.putExtra("id", DrawerHost.this.account.getUserId());
                                intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
                            } else {
                                intent = UserProfileFragment.intent(DrawerHost.this.context, communityUserProfile);
                            }
                            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
                            if (view.getId() != R.id.mood) {
                                z6 = false;
                            }
                            intent.putExtra("selectMood", z6);
                            safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent);
                        } else {
                            Intent intent2 = new Intent(DrawerHost.this.getContext(), (Class<?>) LoginActivity.class);
                            intent2.putExtra("signup", true);
                            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Side Panel");
                            intent2.putExtra("promptType", LoginActivity.PromptType.Button.name());
                            safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent2);
                        }
                        break;
                    case R.id.check_in_streak_container /* 2131362520 */:
                        View viewFindViewById = DrawerHost.this.findViewById(R.id.strike_lost);
                        if (viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
                            DrawerHost.this.showStreakRepairDialog();
                            return;
                        }
                        Intent intent3 = FragmentWrapperActivity.intent(AchievementsFragment.class);
                        intent3.putExtra("id", DrawerHost.this.account.getUserId());
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent3);
                        return;
                    case R.id.drawer_checkin_fake /* 2131362930 */:
                        DrawerHost.this.willPlayLottery = true;
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.23.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DrawerHost.this.showLotteryPrompt();
                            }
                        }, 100L);
                        return;
                    case R.id.drawer_user_role /* 2131362974 */:
                        Intent intent4 = FragmentWrapperActivity.intent(AchievementsFragment.class);
                        User userProfile = DrawerHost.this.account.getUserProfile();
                        if (userProfile != null) {
                            intent4.putExtra("id", userProfile.id());
                            intent4.putExtra("needFetchData", true);
                            intent4.putExtra("mediaList", JacksonUtils.writeAsString(userProfile.mediaList));
                            intent4.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(userProfile));
                            intent4.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
                            safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent4);
                        }
                        break;
                }
                DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            }
        };
        this.pageItemClickListener = new MyPageItemClickListener(1);
        this.pageItemClickListener2 = new MyPageItemClickListener(2);
        this.moderationListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.26
            public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (view.getId()) {
                    case R.id.drawer_community_setup /* 2131362935 */:
                        if (new PackageUtils(DrawerHost.this.getContext()).installedAcm()) {
                            safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, new Intent("android.intent.action.VIEW", Uri.parse(new PackageUtils(DrawerHost.this.context.getContext()).getAcmScheme() + "://x" + DrawerHost.this.config.getCommunityId())));
                        } else if (DrawerHost.this.activity instanceof NVContext) {
                            new NewDownloadAcmDialog((NVContext) DrawerHost.this.activity).show();
                        }
                        break;
                    case R.id.drawer_flag_center /* 2131362939 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(FlagListFragment.class));
                        break;
                    case R.id.drawer_moderation /* 2131362950 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(ModerationToolFragment.class));
                        break;
                    case R.id.drawer_reorder /* 2131362955 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(ReorderFeatureFragment.class));
                        break;
                    case R.id.drawer_review_submission /* 2131362957 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(CatalogSubmissionFragment.class));
                        break;
                    case R.id.drawer_sticker_pack_submission /* 2131362970 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class));
                        break;
                }
                DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            }
        };
        this.moreOptionsListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.27
            public static void safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (view.getId()) {
                    case R.id.drawer_all_members /* 2131362921 */:
                        Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent);
                        break;
                    case R.id.drawer_bookmarks /* 2131362923 */:
                        if (DrawerHost.this.account.hasAccount()) {
                            Intent intent2 = FragmentWrapperActivity.intent(BookMarkListFragment.class);
                            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
                            safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent2);
                        } else {
                            Intent intent3 = new Intent(DrawerHost.this.getContext(), (Class<?>) LoginActivity.class);
                            intent3.putExtra("promptType", LoginActivity.PromptType.Required.name());
                            safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent3);
                        }
                        break;
                    case R.id.drawer_community_detail /* 2131362934 */:
                        ConfigService configService = (ConfigService) DrawerHost.this.context.getService("config");
                        Intent intent4 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent4.putExtra("showJoin", false);
                        intent4.putExtra("id", configService.getCommunityId());
                        intent4.putExtra(ExternalPostPreviewFragment.SOURCE, "about this community");
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent4);
                        break;
                    case R.id.drawer_create_community /* 2131362937 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(MasterTemplatePickerFragment.class));
                        ((StatisticsService) DrawerHost.this.context.getService("statistics")).event("Create With ACM Tab Opened").userPropInc("Create Tab Opened Total").source("Left Side Panel");
                        break;
                    case R.id.drawer_guidelines /* 2131362942 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(GuidelineFragment.class));
                        break;
                    case R.id.drawer_settings /* 2131362967 */:
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, FragmentWrapperActivity.intent(CommunitySettingFragment.class));
                        break;
                    case R.id.drawer_share_community /* 2131362968 */:
                        Intent intent5 = FragmentWrapperActivity.intent(InviteMembersFragment.class);
                        intent5.putExtra(ExternalPostPreviewFragment.SOURCE, "Left Side Panel");
                        safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(DrawerHost.this, intent5);
                        break;
                }
                DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            }
        };
        this.themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.drawer.DrawerHost.29
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ConfigService configService = (ConfigService) DrawerHost.this.context.getService("config");
                if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, -1)) {
                    DrawerHost.this.updateThemeUI();
                }
            }
        };
        NVContext nVContext = (NVContext) context;
        this.context = nVContext;
        this.fakePVId = UUID.randomUUID().toString();
        ConfigService configService = (ConfigService) this.context.getService("config");
        this.config = configService;
        this.cid = configService.getCommunityId();
        this.myCommunityId = this.config.getCommunityId();
        this.account = (AccountService) this.context.getService("account");
        this.community = (CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.broadcastManager = LocalBroadcastManager.b(getContext());
        this.notificationManagerHelper = new NotificationManagerHelper(context);
        this.communityConfigHelper = new CommunityConfigHelper(this.context);
        this.chatService = (ChatService) nVContext.getService("chat");
        this.myCommunityListService = (MyCommunityListService) nVContext.getService("myCommunityList");
        this.myCommunityListAdapter = new MyCommunityListAdapter(this.context);
        this.myCommunityListService.addObserver(this);
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
    }

    private void initAccountInfoLayout() {
        findViewById(R.id.avatar).setOnClickListener(this.accountListener);
        findViewById(R.id.mood).setOnClickListener(this.accountListener);
        findViewById(R.id.nickname).setOnClickListener(this.accountListener);
        findViewById(R.id.drawer_user_role).setOnClickListener(this.accountListener);
        findViewById(R.id.drawer_login_hint).setOnClickListener(this.accountListener);
        findViewById(R.id.drawer_checkin).setOnTouchListener(this.checkInTouchListener);
        findViewById(R.id.drawer_checkin_fake).setOnClickListener(this.accountListener);
        findViewById(R.id.check_in_streak_container).setOnClickListener(this.accountListener);
        ((CheckInCircle) findViewById(R.id.drawer_checkin_ring)).fireCallback = this.checkInFire;
        ((CheckInCircle) findViewById(R.id.drawer_checkin_ring)).startCallback = this.checkInStart;
        findViewById(R.id.account_notice_container).setOnClickListener(this.clickListener);
    }

    private void initModerationLayout() {
        findViewById(R.id.drawer_flag_center).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_review_submission).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_sticker_pack_submission).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_reorder).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_moderation).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_community_setup).setOnClickListener(this.moderationListener);
    }

    private void initMoreOptionsLayout() {
        findViewById(R.id.drawer_settings).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_bookmarks).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_all_members).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_share_community).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_community_detail).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_guidelines).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_create_community).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_create_community_layout).setVisibility(8);
    }

    private void initSecondEntryContainer() {
        this.secondEntryContainer = findViewById(R.id.second_entries_container);
        this.secondEntriesHint = (TextView) findViewById(R.id.second_entries_hint);
        this.secondEntriesIndicator = (ImageView) findViewById(R.id.second_entries_indicator);
        this.secondViewStub = (ViewStub) findViewById(R.id.second_entries_stub);
        this.secondEntryContainer.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DrawerHost.this.secondLevelLayout == null) {
                    DrawerHost.this.secondLevelLayout = (PageSecondLevelLayout) DrawerHost.this.secondViewStub.inflate().findViewById(R.id.second_entries);
                    DrawerHost.this.secondLevelLayout.setPageItemClickListener(DrawerHost.this.pageItemClickListener2);
                    DrawerHost.this.updateSecondEntryContainer();
                }
                if (DrawerHost.this.secondLevelLayout != null) {
                    if (Utils.isRtl()) {
                        DrawerHost.this.secondEntriesIndicator.setRotation(DrawerHost.this.secondEntriesVisiable ? 0.0f : -90.0f);
                    } else {
                        DrawerHost.this.secondEntriesIndicator.setRotation(DrawerHost.this.secondEntriesVisiable ? 0.0f : 90.0f);
                    }
                    DrawerHost.this.secondEntriesHint.setText(DrawerHost.this.getContext().getString(!DrawerHost.this.secondEntriesVisiable ? R.string.drawer_second_entry_see_less : R.string.drawer_second_entry_see_more));
                    DrawerHost.this.secondLevelLayout.setVisibility(DrawerHost.this.secondEntriesVisiable ? 8 : 0);
                    DrawerHost.this.findViewById(R.id.second_entries_offset).setVisibility(DrawerHost.this.secondLevelLayout.getVisibility() == 0 ? 0 : 8);
                    if (!DrawerHost.this.secondEntriesVisiable) {
                        DrawerHost.this.updateSecondLevelChatBadge();
                    }
                    DrawerHost drawerHost = DrawerHost.this;
                    drawerHost.secondEntriesVisiable = !drawerHost.secondEntriesVisiable;
                    int[] iArr = new int[2];
                    DrawerHost.this.secondEntriesHint.getLocationInWindow(iArr);
                    List<Page> leftSidePanelLv2List = DrawerHost.this.communityConfigHelper.getLeftSidePanelLv2List();
                    if (!DrawerHost.this.secondEntriesVisiable || leftSidePanelLv2List == null || DrawerHost.this.scrollView.getHeight() <= 0) {
                        return;
                    }
                    int size = (leftSidePanelLv2List.size() / 3) * DrawerHost.this.getContext().getResources().getDimensionPixelSize(R.dimen.second_entry_height);
                    if (iArr[1] + size > DrawerHost.this.scrollView.getHeight()) {
                        NVScrollView nVScrollView = DrawerHost.this.scrollView;
                        nVScrollView.smoothScrollBy(0, (size - (nVScrollView.getHeight() - iArr[1])) + DrawerHost.this.getResources().getDimensionPixelSize(R.dimen.drawer_bottom_height));
                    }
                }
            }
        });
    }

    private void initTopEntryContainer() {
        PageTopLevelLayout pageTopLevelLayout = (PageTopLevelLayout) findViewById(R.id.top_entries_container);
        this.topEntryContainer = pageTopLevelLayout;
        pageTopLevelLayout.setPageItemClickListener(this.pageItemClickListener);
        updateTopEntryContainer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChat() {
        updateTopLevelChatBadge();
        updateSecondLevelChatBadge();
        MyCommunityListAdapter myCommunityListAdapter = this.myCommunityListAdapter;
        if (myCommunityListAdapter != null) {
            myCommunityListAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateKindredCommunity() {
        int i10;
        View viewInflate;
        GridLayout gridLayout = (GridLayout) findViewById(R.id.drawer_kindred_community);
        gridLayout.setVisibility(0);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(gridLayout.getContext());
        if (this.kindredCommunity == null) {
            gridLayout.removeAllViews();
            if (this.kindredCommunityError == null) {
                layoutInflaterFrom.inflate(R.layout.normal_loading_list_item, (ViewGroup) gridLayout, true);
                View viewFindViewById = gridLayout.findViewById(R.id.text);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setTextColor(-1);
                    return;
                }
                return;
            }
            View viewInflate2 = layoutInflaterFrom.inflate(R.layout.normal_error_list_item, (ViewGroup) gridLayout, false);
            viewInflate2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DrawerHost.this.sendKindredCommunityRequest();
                }
            });
            gridLayout.addView(viewInflate2);
            return;
        }
        ArrayList<View> arrayList = new ArrayList();
        for (int i11 = 0; i11 < gridLayout.getChildCount(); i11++) {
            View childAt = gridLayout.getChildAt(i11);
            if (childAt != null && childAt.getId() != R.id.kinder_community_container) {
                arrayList.add(childAt);
            }
        }
        for (View view : arrayList) {
            if (view != null) {
                gridLayout.removeView(view);
            }
        }
        int size = this.kindredCommunity.size();
        while (gridLayout.getChildCount() > size) {
            gridLayout.removeViewAt(gridLayout.getChildCount() - 1);
        }
        int i12 = (size / 3) + 1;
        View viewFindViewById2 = findViewById(R.id.drawer_section_kindred_layout);
        if (size == 0) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        viewFindViewById2.setVisibility(i10);
        gridLayout.setColumnCount(3);
        gridLayout.setRowCount(i12);
        for (int i13 = 0; i13 < size; i13++) {
            Community community = this.kindredCommunity.get(i13);
            if (gridLayout.getChildCount() > i13) {
                viewInflate = gridLayout.getChildAt(i13);
            } else {
                viewInflate = null;
            }
            if (viewInflate == null) {
                viewInflate = layoutInflaterFrom.inflate(R.layout.item_kindred_community_wrapper, (ViewGroup) gridLayout, false);
                gridLayout.addView(viewInflate);
            }
            ThumbImageView thumbImageView = (ThumbImageView) viewInflate.findViewById(R.id.community_icon);
            thumbImageView.setImageUrl(community.icon);
            thumbImageView.setCornerRadius((int) Utils.dpToPx(getContext(), 4.0f));
            TextView textView = (TextView) viewInflate.findViewById(R.id.community_name);
            textView.setText(community.name);
            textView.setTextColor(-1);
            ((PromotionalImageView) viewInflate.findViewById(R.id.image)).setCommunity(community);
            viewInflate.setTag(community);
            viewInflate.setOnClickListener(this.kindredClickListener);
        }
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onAttach(ProxyView proxyView) {
        String appName;
        super.onAttach(proxyView);
        findViewById(R.id.drawer_actionbar_bg).setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.drawhost_gradient_background));
        findViewById(R.id.drawer_actionbar_bg).setOnClickListener(null);
        ((ImageView) findViewById(R.id.drawer_image)).setImageDrawable(this.config.getTheme().drawerImage());
        if (this.config.getTheme().logoImage() != null) {
            ((NVImageView) findViewById(R.id.drawer_logo)).setImageDrawable(this.config.getTheme().logoImage());
            findViewById(R.id.drawer_logo).setVisibility(0);
            findViewById(R.id.drawer_title).setVisibility(8);
            findViewById(R.id.amino_logo).setVisibility(8);
        } else {
            findViewById(R.id.drawer_logo).setVisibility(8);
        }
        Community community = this.community.getCommunity(this.myCommunityId);
        PackageUtils packageUtils = new PackageUtils(getContext());
        TextView textView = (TextView) findViewById(R.id.drawer_title);
        if (community == null) {
            appName = packageUtils.getAppName();
        } else {
            appName = community.name;
        }
        textView.setText(appName);
        updateAccount();
        updateChat();
        updateCategory();
        updateKindredCommunity();
        updateGeneralCountView();
        MyCommunityListAdapter myCommunityListAdapter = this.myCommunityListAdapter;
        if (myCommunityListAdapter != null) {
            myCommunityListAdapter.onResume();
            this.myCommunityListAdapter.notifyDataSetChanged();
        }
        cancelLaunch();
        Runnable runnable = this.removeLaunchSplashAndCloseDrawer;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
    }

    public void onCommunityUpdated() {
        updateTopEntryContainer();
        updateSecondEntryContainer();
        updateMoreOptionsLayout();
        updateCategory();
        updateModerationLayout();
        updateAccountInfoLayout();
        updateKindredCommunity();
        findViewById(R.id.drawer_blow_category_container).setBackgroundColor(this.darkThemeColor);
        this.scrollView.setBottomOverScrollColor(this.darkThemeColor);
    }

    @Override // com.narvii.widget.ProxyViewHost
    public boolean onEvent(int i10, Object obj) {
        boolean z6;
        if (i10 != 16449538 && i10 != 16449537) {
            z6 = false;
        } else {
            refreshReminderCheck(AUTO_REFRESH_DURATION);
            z6 = true;
        }
        if (i10 == 16449538) {
            if (this.blogCategoryList == null) {
                sendCategoryRequest();
            }
            if (this.kindredCommunity == null) {
                sendKindredCommunityRequest();
            }
            refreshGeneralCount(AUTO_REFRESH_DURATION);
            SharedPreferences sharedPreferences = (SharedPreferences) this.context.getService(IncubatorApplication.PREFS_SERVICE_KEY);
            sharedPreferences.edit().putBoolean("tooltip_left_draw_done", true).apply();
            if (this.isMaster && !showQuickCommuntiySwitcher()) {
                if (sharedPreferences.getBoolean("tooltip_community_exit_done", false)) {
                    ToolTipHelper toolTipHelper = this.toolTipHelper;
                    if (toolTipHelper != null) {
                        toolTipHelper.hideToolTip();
                        this.toolTipHelper = null;
                    }
                } else {
                    ToolTipHelper toolTipHelper2 = this.toolTipHelper;
                    if (toolTipHelper2 == null) {
                        if (sharedPreferences.getInt("tooltip_left_draw_open_times", 0) == 0) {
                            sharedPreferences.edit().putInt("tooltip_left_draw_open_times", 1).apply();
                        } else {
                            this.toolTipHelper = new ToolTipHelper();
                            this.toolTipHelper.showToolTip(Tooltip.builder().anchorView(findViewById(R.id.content_drawer_quit)).rootView(findViewById(R.id.tooltip_container)).textId(R.string.tooltip_exit_amino).startFinger().onClickListener(new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.21
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    DrawerHost.this.exitCommunityTooltipDone();
                                }
                            }).build());
                        }
                    } else {
                        toolTipHelper2.resumeTooltipAnimation();
                    }
                }
            }
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.bounce1);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.drawer.DrawerHost.22
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (DrawerHost.this.isMaster) {
                        DrawerHost.this.findViewById(R.id.drawer_quit).startAnimation(AnimationUtils.loadAnimation(DrawerHost.this.getContext(), R.anim.bounce2));
                    } else {
                        DrawerHost.this.findViewById(R.id.content_drawer_quit).startAnimation(AnimationUtils.loadAnimation(DrawerHost.this.getContext(), R.anim.bounce2));
                    }
                }
            });
            if (this.isMaster) {
                findViewById(R.id.drawer_quit).startAnimation(animationLoadAnimation);
            } else {
                findViewById(R.id.content_drawer_quit).startAnimation(animationLoadAnimation);
            }
            ((StatisticsService) this.context.getService("statistics")).event("Left Side Panel").source(DRAWER_OPEN_SOURCE.getAndRemove()).userPropInc("Left Side Panel Total");
            z6 = true;
        }
        if (i10 == 16449539) {
            scheduleScrollToTop(RESET_SCROLL_TIME);
            z6 = true;
        }
        if (i10 == 16449537) {
            if (((Float) obj).floatValue() == 0.0f) {
                scheduleScrollToTop(RESET_SCROLL_TIME);
            } else {
                unscheduleScrollToTop();
            }
        } else if (!z6) {
            return super.onEvent(i10, obj);
        }
        return true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        int i10;
        super.onFinishInflate();
        findViewById(R.id.drawer_quit).setOnClickListener(this.clickListener);
        findViewById(R.id.drawer_search).setOnClickListener(this.clickListener);
        findViewById(R.id.drawer_logo).setOnClickListener(this.clickListener);
        findViewById(R.id.drawer_title).setOnClickListener(this.clickListener);
        findViewById(R.id.amino_logo).setOnClickListener(this.clickListener);
        initAccountInfoLayout();
        initTopEntryContainer();
        initSecondEntryContainer();
        initModerationLayout();
        initMoreOptionsLayout();
        NVScrollView nVScrollView = (NVScrollView) findViewById(R.id.drawer_scroll);
        this.scrollView = nVScrollView;
        nVScrollView.setOnScrollListener(this.scrollListener);
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_refresh);
        int i11 = 0;
        swipeRefreshLayout.setEnabled(false);
        swipeRefreshLayout.setTarget(this.scrollView);
        swipeRefreshLayout.setOnRefreshListener(this);
        View viewFindViewById = findViewById(R.id.content_drawer_quit);
        if (showQuickCommuntiySwitcher()) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        viewFindViewById.setVisibility(i10);
        findViewById(R.id.content_drawer_quit).setOnClickListener(this.clickListener);
        ((TextView) findViewById(R.id.content_drawer_quit_text)).setText(R.string.main_drawer_exit);
        ((ImageView) findViewById(R.id.content_drawer_quit_icon)).setImageDrawable(getResources().getDrawable(R.drawable.drawer_exit_mirror));
        TextView textView = (TextView) findViewById(R.id.drawer_title);
        if (textView != null) {
            ViewUtils.setMontserratExtraBoldTypeface(textView);
        }
        View viewFindViewById2 = findViewById(R.id.community_list_container);
        if (!showQuickCommuntiySwitcher()) {
            i11 = 8;
        }
        viewFindViewById2.setVisibility(i11);
        if (showQuickCommuntiySwitcher()) {
            NVListView nVListView = (NVListView) findViewById(R.id.community_list);
            this.communityListView = nVListView;
            nVListView.setAdapter((ListAdapter) this.myCommunityListAdapter);
        }
        updateMoreOptionsLayout();
    }

    @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        sendCategoryRequest();
        sendKindredCommunityRequest();
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.queryThreadCheckInfo(this.cid, true);
        }
        this.refreshingFlag = 17;
        if (refreshCommunityInfo(0L)) {
            this.refreshingFlag |= 2;
        }
        if (refreshGeneralCount(0L)) {
            this.refreshingFlag |= 4;
        }
        if (refreshReminderCheck(0L)) {
            this.refreshingFlag |= 8;
        }
    }

    public boolean refreshCommunityInfo(long j6) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j6 != 0) {
            long j10 = this.refreshCommunityInfoTime;
            if (jCurrentTimeMillis >= j10 && jCurrentTimeMillis <= j10 + j6) {
                return false;
            }
        }
        this.isRequestingCommunity = true;
        notifyRequestCommunityListeners();
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().scopeCommunityId(this.myCommunityId).path("/community/info").param("withInfluencerList", 1).param("withTopicList", Boolean.TRUE).build(), this.communityResponseListener);
        this.refreshCommunityInfoTime = jCurrentTimeMillis;
        return true;
    }

    public boolean refreshReminderCheck(long j6) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (((AccountService) this.context.getService("account")).hasAccount()) {
            if (j6 != 0) {
                long j10 = this.refreshReminderCheckTime;
                if (jCurrentTimeMillis >= j10 && jCurrentTimeMillis <= j10 + j6) {
                    return false;
                }
            }
            ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("reminder/check").param("ignoreUnreadChatThreadsCount", Boolean.TRUE).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), this.reminderCheckListener);
            this.refreshReminderCheckTime = jCurrentTimeMillis;
            return true;
        }
        return false;
    }

    public void updateAccount() {
        updateAccountInfoLayout();
        updateModerationLayout();
        updateMoreOptionsLayout();
    }
}

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
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.os.Vibrator;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
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
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.achievements.AchievementsFragment;
import com.narvii.achievements.StreakRepairDialog;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.amino.page.PageItemClickListener;
import com.narvii.amino.page.PageSecondLevelLayout;
import com.narvii.amino.page.PageTopLevelLayout;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
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
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityService;
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
import com.narvii.master.explorer.ExplorerCommunityListFragment;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
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
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.search.SearchKeywordTabFragment;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.theme.ThemePackService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.DBAminoLightHelper;
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
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Stack;
import java.util.UUID;

/* loaded from: classes.dex */
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

    /* loaded from: classes2.dex */
    public interface RequestCommunityInfoListener {
        void onRequestCommunityStatusChanged();
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    static {
        boolean z = NVApplication.DEBUG;
        long j = ScenePollPlayView.POLL_COUNT_DOWN_MS;
        AUTO_REFRESH_DURATION = z ? 15000L : 60000L;
        if (!NVApplication.DEBUG) {
            j = 60000;
        }
        RESET_SCROLL_TIME = j;
        GLOBAL_ENTER = new TmpValue<>();
        DRAWER_OPEN_SOURCE = new TmpValue<>();
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
            public void onScroll(int i, int i2, int i3, int i4) {
                if (this.bg == null) {
                    this.bg = DrawerHost.this.findViewById(R.id.drawer_actionbar_bg);
                }
                int height = this.bg.getHeight();
                int i5 = height * 3;
                int i6 = i2 - (height / 2);
                if (i6 <= 0) {
                    this.bg.setAlpha(0.0f);
                } else if (i6 >= i5) {
                    this.bg.setAlpha(1.0f);
                } else {
                    this.bg.setAlpha((i6 * 1.0f) / i5);
                }
            }
        };
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.drawer.DrawerHost.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) throws Resources.NotFoundException {
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
            public void onProfileChanged(int i, User user) throws Resources.NotFoundException {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNotificationCountChanged(int i) throws Resources.NotFoundException {
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
            public void onCheckInChanged(boolean z, int i) throws Resources.NotFoundException {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInHistoryChanged(CheckInHistory checkInHistory) throws Resources.NotFoundException {
                super.onCheckInHistoryChanged(checkInHistory);
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onOnlineStatusChanged(int i) throws Resources.NotFoundException {
                if (DrawerHost.this.getAttachView() != null) {
                    DrawerHost.this.updateAccount();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNoticeCountChanged(int i) throws Resources.NotFoundException {
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
        };
        this.chatCheckListener = new ChatService.ChatMessageReceptor() { // from class: com.narvii.drawer.DrawerHost.4
            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onResetChatMessageList() {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onUnreadThreadCountChanged(int i) {
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
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws Resources.NotFoundException {
                ChatFragment chatFragment;
                switch (view.getId()) {
                    case R.id.amino_logo /* 2131296417 */:
                    case R.id.drawer_logo /* 2131297174 */:
                    case R.id.drawer_title /* 2131297197 */:
                        ConfigService configService = (ConfigService) DrawerHost.this.context.getService("config");
                        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent.putExtra("showJoin", false);
                        intent.putExtra("id", configService.getCommunityId());
                        intent.putExtra("Source", "Left Side Panel");
                        DrawerHost.this.startActivity(intent);
                        break;
                    case R.id.content_drawer_quit /* 2131296979 */:
                    case R.id.drawer_quit /* 2131297179 */:
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
                                Activity activity = weakReference == null ? null : weakReference.get();
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
                            DrawerHost.this.startActivity(intentBackToMaster);
                            break;
                        }
                        break;
                    case R.id.drawer_search /* 2131297187 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(SearchKeywordTabFragment.class));
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

            /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
                /*
                    r9 = this;
                    r0 = 0
                    r1 = 2131297158(0x7f090386, float:1.8212253E38)
                    r2 = 200(0xc8, double:9.9E-322)
                    r4 = 0
                    r5 = 1
                    if (r0 == 0) goto L8e
                    r6 = 0
                    if (r0 == r5) goto L68
                    r7 = 3
                    r8 = 2
                    if (r0 == r8) goto L17
                    if (r0 == r7) goto L68
                    goto La3
                L17:
                    float r0 = r11.getX()
                    int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                    if (r0 < 0) goto L4b
                    float r0 = r11.getX()
                    int r2 = r10.getWidth()
                    float r2 = (float) r2
                    int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                    if (r0 > 0) goto L4b
                    float r0 = r11.getY()
                    int r2 = r10.getHeight()
                    int r2 = -r2
                    int r2 = r2 / r8
                    float r2 = (float) r2
                    int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                    if (r0 < 0) goto L4b
                    float r11 = r11.getY()
                    int r0 = r10.getHeight()
                    int r0 = r0 * 3
                    int r0 = r0 / r8
                    float r0 = (float) r0
                    int r11 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
                    if (r11 <= 0) goto La3
                L4b:
                    com.narvii.drawer.DrawerHost r11 = com.narvii.drawer.DrawerHost.this
                    boolean r11 = com.narvii.drawer.DrawerHost.access$200(r11)
                    if (r11 != 0) goto L67
                    com.narvii.drawer.DrawerHost r11 = com.narvii.drawer.DrawerHost.this
                    android.view.View r11 = r11.findViewById(r1)
                    com.narvii.checkin.CheckInCircle r11 = (com.narvii.checkin.CheckInCircle) r11
                    boolean r11 = r11.unpress()
                    if (r11 == 0) goto L64
                    r9.shortPress()
                L64:
                    r10.setPressed(r6)
                L67:
                    return r6
                L68:
                    com.narvii.drawer.DrawerHost r11 = com.narvii.drawer.DrawerHost.this
                    boolean r11 = com.narvii.drawer.DrawerHost.access$200(r11)
                    if (r11 != 0) goto La3
                    com.narvii.drawer.DrawerHost r11 = com.narvii.drawer.DrawerHost.this
                    android.view.View r11 = r11.findViewById(r1)
                    com.narvii.checkin.CheckInCircle r11 = (com.narvii.checkin.CheckInCircle) r11
                    boolean r11 = r11.unpress()
                    if (r11 == 0) goto L89
                    com.narvii.drawer.DrawerHost$6$1 r11 = new com.narvii.drawer.DrawerHost$6$1
                    r11.<init>()
                    com.narvii.util.Utils.postDelayed(r11, r2)
                    r9.shortPress()
                L89:
                    r10.setPressed(r6)
                    goto La3
                L8e:
                    com.narvii.drawer.DrawerHost r11 = com.narvii.drawer.DrawerHost.this
                    android.view.View r11 = r11.findViewById(r1)
                    com.narvii.checkin.CheckInCircle r11 = (com.narvii.checkin.CheckInCircle) r11
                    r11.press()
                    r10.setPressed(r5)
                    android.view.ViewParent r10 = r10.getParent()
                    r10.requestDisallowInterceptTouchEvent(r5)
                La3:
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.drawer.DrawerHost.AnonymousClass6.onTouch(android.view.View, android.view.MotionEvent):boolean");
            }

            void shortPress() {
                Utils.handler.removeCallbacks(this.hide);
                Utils.handler.postDelayed(this.hide, 1000L);
                View viewFindViewById = DrawerHost.this.findViewById(R.id.drawer_checkin_hold);
                if (viewFindViewById.getVisibility() != 0) {
                    viewFindViewById.setVisibility(0);
                    viewFindViewById.startAnimation(AnimationUtils.loadAnimation(DrawerHost.this.getContext(), R.anim.fade_in));
                }
                viewFindViewById.findViewById(R.id.drawer_checkin_hold_text).startAnimation(AnimationUtils.loadAnimation(DrawerHost.this.getContext(), R.anim.vote_hold_longer_shake_long));
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
                    this.animator = ValueAnimator.ofFloat(viewFindViewById.getAlpha(), f);
                    this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.drawer.DrawerHost.7.1
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
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BlogCategory blogCategory = (BlogCategory) view.getTag();
                Intent intent = FragmentWrapperActivity.intent(BlogInCategoryListFragment.class);
                intent.putExtra("id", blogCategory.categoryId);
                intent.putExtra("blogCategory", JacksonUtils.writeAsString(blogCategory));
                intent.putExtra("isFeaturedCategory", blogCategory.type == 2);
                intent.putExtra("Source", "Left Side Panel");
                DrawerHost.this.startActivity(intent);
                DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            }
        };
        this.kindredClickListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Community community = (Community) view.getTag();
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("Source", "Endorsed Communities");
                intent.putExtra("id", community.id);
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                DrawerHost.this.startActivity(intent);
            }
        };
        this.kindredCommunityListener = new ApiResponseListener<CommunityListResponse>(CommunityListResponse.class) { // from class: com.narvii.drawer.DrawerHost.13
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityListResponse communityListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityListResponse);
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

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.kindredCommunityError = str;
                drawerHost.updateKindredCommunity();
                DrawerHost.this.onRefreshFinish(16);
            }
        };
        this.generalCheckResponseListener = new ApiResponseListener<GeneraCheckResponse>(GeneraCheckResponse.class) { // from class: com.narvii.drawer.DrawerHost.14
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

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost.this.onRefreshFinish(4);
                DrawerHost.this.refreshGeneralCountTime = 0L;
            }
        };
        this.communityResponseListener = new ApiResponseListener<FullCommunityResponse>(FullCommunityResponse.class) { // from class: com.narvii.drawer.DrawerHost.16
            /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
            @Override // com.narvii.util.http.ApiResponseListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onFinish(com.narvii.util.http.ApiRequest r11, com.narvii.community.FullCommunityResponse r12) throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 267
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.drawer.DrawerHost.AnonymousClass16.onFinish(com.narvii.util.http.ApiRequest, com.narvii.community.FullCommunityResponse):void");
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost.this.onRefreshFinish(2);
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.refreshCommunityInfoTime = 0L;
                drawerHost.isRequestingCommunity = false;
                drawerHost.notifyRequestCommunityListeners();
            }
        };
        this.reminderCheckListener = new ApiResponseListener<ReminderCheckResult>(ReminderCheckResult.class) { // from class: com.narvii.drawer.DrawerHost.17
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

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DrawerHost.this.onRefreshFinish(8);
                DrawerHost.this.refreshReminderCheckTime = 0L;
            }
        };
        this.categoryResponseListener = new ApiResponseListener<BlogCategoryListResponse>(BlogCategoryListResponse.class) { // from class: com.narvii.drawer.DrawerHost.18
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BlogCategoryListResponse blogCategoryListResponse) throws Exception {
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.blogCategoryError = null;
                drawerHost.blogCategoryList = new ArrayList<>();
                for (BlogCategory blogCategory : blogCategoryListResponse.blogCategoryList) {
                    int i = blogCategory.status;
                    if (i == 0 || i == 3 || i == 9) {
                        if (blogCategory.status == 9) {
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

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) throws Resources.NotFoundException {
                DrawerHost drawerHost = DrawerHost.this;
                drawerHost.blogCategoryError = str;
                drawerHost.updateCategory();
                DrawerHost.this.onRefreshFinish(1);
            }
        };
        this.accountListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.23
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent;
                switch (view.getId()) {
                    case R.id.account_notice_container /* 2131296295 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(NoticeListFragment.class));
                        z = true;
                        break;
                    case R.id.avatar /* 2131296484 */:
                    case R.id.drawer_login_hint /* 2131297173 */:
                    case R.id.mood /* 2131298080 */:
                    case R.id.nickname /* 2131298148 */:
                        if (DrawerHost.this.account.hasAccount()) {
                            User communityUserProfile = DrawerHost.this.account.getCommunityUserProfile();
                            if (communityUserProfile == null) {
                                intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
                                intent.putExtra("id", DrawerHost.this.account.getUserId());
                                intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
                            } else {
                                intent = UserProfileFragment.intent(DrawerHost.this.context, communityUserProfile);
                            }
                            intent.putExtra("Source", "Left Side Panel");
                            intent.putExtra("selectMood", view.getId() == R.id.mood);
                            DrawerHost.this.startActivity(intent);
                        } else {
                            Intent intent2 = new Intent(DrawerHost.this.getContext(), (Class<?>) LoginActivity.class);
                            intent2.putExtra("signup", true);
                            intent2.putExtra("Source", "Side Panel");
                            intent2.putExtra("promptType", LoginActivity.PromptType.Button.name());
                            DrawerHost.this.startActivity(intent2);
                        }
                        z = true;
                        break;
                    case R.id.check_in_streak_container /* 2131296800 */:
                        View viewFindViewById = DrawerHost.this.findViewById(R.id.strike_lost);
                        if (viewFindViewById != null && viewFindViewById.getVisibility() == 0) {
                            DrawerHost.this.showStreakRepairDialog();
                            break;
                        } else {
                            Intent intent3 = FragmentWrapperActivity.intent(AchievementsFragment.class);
                            intent3.putExtra("id", DrawerHost.this.account.getUserId());
                            DrawerHost.this.startActivity(intent3);
                            break;
                        }
                        break;
                    case R.id.drawer_checkin_fake /* 2131297155 */:
                        DrawerHost.this.willPlayLottery = true;
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.23.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DrawerHost.this.showLotteryPrompt();
                            }
                        }, 100L);
                        break;
                    case R.id.drawer_user_role /* 2131297199 */:
                        Intent intent4 = FragmentWrapperActivity.intent(AchievementsFragment.class);
                        User userProfile = DrawerHost.this.account.getUserProfile();
                        if (userProfile != null) {
                            intent4.putExtra("id", userProfile.id());
                            intent4.putExtra("needFetchData", true);
                            intent4.putExtra("mediaList", JacksonUtils.writeAsString(userProfile.mediaList));
                            intent4.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(userProfile));
                            intent4.putExtra("Source", "Left Side Panel");
                            DrawerHost.this.startActivity(intent4);
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                if (z) {
                    DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
                }
            }
        };
        this.pageItemClickListener = new MyPageItemClickListener(1);
        this.pageItemClickListener2 = new MyPageItemClickListener(2);
        this.moderationListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (view.getId()) {
                    case R.id.drawer_community_setup /* 2131297160 */:
                        if (new PackageUtils(DrawerHost.this.getContext()).installedAcm()) {
                            DrawerHost.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(new PackageUtils(DrawerHost.this.context.getContext()).getAcmScheme() + "://x" + DrawerHost.this.config.getCommunityId())));
                            break;
                        } else {
                            ComponentCallbacks2 componentCallbacks2 = DrawerHost.this.activity;
                            if (componentCallbacks2 instanceof NVContext) {
                                new NewDownloadAcmDialog((NVContext) componentCallbacks2).show();
                                break;
                            }
                        }
                        break;
                    case R.id.drawer_flag_center /* 2131297164 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(FlagListFragment.class));
                        break;
                    case R.id.drawer_moderation /* 2131297175 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(ModerationToolFragment.class));
                        break;
                    case R.id.drawer_reorder /* 2131297180 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(ReorderFeatureFragment.class));
                        break;
                    case R.id.drawer_review_submission /* 2131297182 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(CatalogSubmissionFragment.class));
                        break;
                    case R.id.drawer_sticker_pack_submission /* 2131297195 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class));
                        break;
                }
                DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            }
        };
        this.moreOptionsListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (view.getId()) {
                    case R.id.drawer_all_members /* 2131297146 */:
                        Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
                        intent.putExtra("Source", "Left Side Panel");
                        DrawerHost.this.startActivity(intent);
                        break;
                    case R.id.drawer_bookmarks /* 2131297148 */:
                        if (DrawerHost.this.account.hasAccount()) {
                            Intent intent2 = FragmentWrapperActivity.intent(BookMarkListFragment.class);
                            intent2.putExtra("Source", "Left Side Panel");
                            DrawerHost.this.startActivity(intent2);
                            break;
                        } else {
                            Intent intent3 = new Intent(DrawerHost.this.getContext(), (Class<?>) LoginActivity.class);
                            intent3.putExtra("promptType", LoginActivity.PromptType.Required.name());
                            DrawerHost.this.startActivity(intent3);
                            break;
                        }
                    case R.id.drawer_community_detail /* 2131297159 */:
                        ConfigService configService = (ConfigService) DrawerHost.this.context.getService("config");
                        Intent intent4 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent4.putExtra("showJoin", false);
                        intent4.putExtra("id", configService.getCommunityId());
                        intent4.putExtra("Source", "about this community");
                        DrawerHost.this.startActivity(intent4);
                        break;
                    case R.id.drawer_create_community /* 2131297162 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(MasterTemplatePickerFragment.class));
                        break;
                    case R.id.drawer_guidelines /* 2131297167 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(GuidelineFragment.class));
                        break;
                    case R.id.drawer_settings /* 2131297192 */:
                        DrawerHost.this.startActivity(FragmentWrapperActivity.intent(CommunitySettingFragment.class));
                        break;
                    case R.id.drawer_share_community /* 2131297193 */:
                        Intent intent5 = FragmentWrapperActivity.intent(InviteMembersFragment.class);
                        intent5.putExtra("Source", "Left Side Panel");
                        DrawerHost.this.startActivity(intent5);
                        break;
                }
                DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            }
        };
        this.themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.drawer.DrawerHost.29
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) throws Resources.NotFoundException {
                ConfigService configService = (ConfigService) DrawerHost.this.context.getService("config");
                if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra("cid", -1)) {
                    DrawerHost.this.updateThemeUI();
                }
            }
        };
        NVContext nVContext = (NVContext) context;
        this.context = nVContext;
        this.fakePVId = UUID.randomUUID().toString();
        this.config = (ConfigService) this.context.getService("config");
        this.cid = this.config.getCommunityId();
        this.myCommunityId = this.config.getCommunityId();
        this.account = (AccountService) this.context.getService("account");
        this.community = (CommunityService) this.context.getService("community");
        this.broadcastManager = LocalBroadcastManager.getInstance(getContext());
        this.notificationManagerHelper = new NotificationManagerHelper(context);
        this.communityConfigHelper = new CommunityConfigHelper(this.context);
        this.chatService = (ChatService) nVContext.getService("chat");
        this.myCommunityListService = (MyCommunityListService) nVContext.getService("myCommunityList");
        this.myCommunityListAdapter = new MyCommunityListAdapter(this.context);
        this.myCommunityListService.addObserver(this);
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
    }

    @Override // android.view.View
    protected void onFinishInflate() throws Resources.NotFoundException {
        Drawable drawable;
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
        this.scrollView = (NVScrollView) findViewById(R.id.drawer_scroll);
        this.scrollView.setOnScrollListener(this.scrollListener);
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_refresh);
        swipeRefreshLayout.setEnabled(false);
        swipeRefreshLayout.setTarget(this.scrollView);
        swipeRefreshLayout.setOnRefreshListener(this);
        findViewById(R.id.content_drawer_quit).setVisibility(showQuickCommuntiySwitcher() ? 8 : 0);
        findViewById(R.id.content_drawer_quit).setOnClickListener(this.clickListener);
        ((TextView) findViewById(R.id.content_drawer_quit_text)).setText(NVApplication.CLIENT_TYPE == 101 ? R.string.main_drawer_more_communities : R.string.main_drawer_exit);
        ImageView imageView = (ImageView) findViewById(R.id.content_drawer_quit_icon);
        if (NVApplication.CLIENT_TYPE == 101) {
            drawable = getResources().getDrawable(R.drawable.drawer_back);
        } else {
            drawable = getResources().getDrawable(R.drawable.drawer_exit_mirror);
        }
        imageView.setImageDrawable(drawable);
        TextView textView = (TextView) findViewById(R.id.drawer_title);
        if (textView != null) {
            ViewUtils.setMontserratExtraBoldTypeface(textView);
        }
        findViewById(R.id.community_list_container).setVisibility(showQuickCommuntiySwitcher() ? 0 : 8);
        if (showQuickCommuntiySwitcher()) {
            this.communityListView = (NVListView) findViewById(R.id.community_list);
            this.communityListView.setAdapter((ListAdapter) this.myCommunityListAdapter);
        }
        updateMoreOptionsLayout();
    }

    public void addRequestCommunityInfoListener(RequestCommunityInfoListener requestCommunityInfoListener) {
        this.requestCommunityInfoListeners.addListener(requestCommunityInfoListener);
    }

    public void removeRequestCommunityInfoListener(RequestCommunityInfoListener requestCommunityInfoListener) {
        this.requestCommunityInfoListeners.removeListener(requestCommunityInfoListener);
    }

    protected boolean showQuickCommuntiySwitcher() {
        return this.isMaster;
    }

    public void start() throws Resources.NotFoundException {
        this.account = (AccountService) this.context.getService("account");
        this.fromGlobalLaunch = GLOBAL_ENTER.compareAndRemove(Integer.valueOf(this.myCommunityId));
        refreshGeneralCount(this.fromGlobalLaunch ? 300000L : AUTO_REFRESH_DURATION);
        refreshReminderCheck(this.fromGlobalLaunch ? 300000L : AUTO_REFRESH_DURATION);
        this.broadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.broadcastManager.registerReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        this.broadcastManager.registerReceiver(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
        Community community = this.community.getCommunity(this.myCommunityId);
        if (community == null || community.configuration == null) {
            refreshCommunityInfo(0L);
        }
        onCommunityUpdated();
    }

    public Community getReturnedCommunity() {
        return this.returnedCommunity;
    }

    public void stop() {
        this.broadcastManager.unregisterReceiver(this.receiver);
        this.broadcastManager.unregisterReceiver(this.themeDownLoadReceiver);
    }

    public void bind(Activity activity) {
        this.activity = activity;
        boolean z = activity instanceof MainActivity;
        if (this.isHomepage ^ z) {
            this.isHomepage = z;
            updateTopEntryContainerIndicator(z ? PageManager.PAGE_HOME_URI : null);
        }
        this.account.addProfileListener(this.profileListener);
        this.chatService.addCommunityLevelReceptor(this.myCommunityId, this.chatCheckListener);
        updateChat();
        this.themeColor = this.config.getTheme().colorPrimary();
        float[] fArr = new float[3];
        Color.colorToHSV(this.themeColor, fArr);
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

    @Override // com.narvii.widget.ProxyViewHost
    protected void onAttach(ProxyView proxyView) throws Resources.NotFoundException {
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
        ((TextView) findViewById(R.id.drawer_title)).setText(community == null ? new PackageUtils(getContext()).getAppName() : community.name);
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

    /* renamed from: com.narvii.drawer.DrawerHost$8, reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass8 implements Callback<Boolean> {
        AnonymousClass8() {
        }

        @Override // com.narvii.util.Callback
        public void call(Boolean bool) throws Resources.NotFoundException {
            ApiRequest apiRequestBuild = ApiRequest.builder().post().path("check-in").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).tag(ApiService.ASYNC_CALL_TAG).build();
            ApiService apiService = (ApiService) DrawerHost.this.context.getService("api");
            final AnonymousClass1 anonymousClass1 = new AnonymousClass1(CheckInResult.class, SystemClock.elapsedRealtime());
            if (DrawerHost.this.fakeCheckin) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerHost.8.2
                    @Override // java.lang.Runnable
                    public void run() throws Resources.NotFoundException {
                        CheckInResult checkInResult = new CheckInResult();
                        Random random = new Random(System.currentTimeMillis());
                        checkInResult.earnedReputationPoint = ((int) (random.nextFloat() * random.nextFloat() * 1000.0f)) + 1;
                        checkInResult.additionalReputationPoint = (int) (random.nextFloat() * random.nextFloat() * random.nextFloat() * 6.0f);
                        AccountService accountService = (AccountService) DrawerHost.this.context.getService("account");
                        checkInResult.consecutiveCheckInDays = accountService.getConsecutiveCheckInDays() + 1;
                        checkInResult.userProfile = accountService.getUserProfile();
                        User user = checkInResult.userProfile;
                        user.reputation += checkInResult.earnedReputationPoint + checkInResult.additionalReputationPoint;
                        user.level += random.nextBoolean() ? 1 : 0;
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

        /* renamed from: com.narvii.drawer.DrawerHost$8$1, reason: invalid class name */
        class AnonymousClass1 extends ApiResponseListener<CheckInResult> {
            final /* synthetic */ long val$startTime;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Class cls, long j) {
                super(cls);
                this.val$startTime = j;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public /* bridge */ /* synthetic */ ApiResponse parseResponse(ApiRequest apiRequest, int i, List list, byte[] bArr) throws Exception {
                return parseResponse(apiRequest, i, (List<NameValuePair>) list, bArr);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public CheckInResult parseResponse(ApiRequest apiRequest, int i, List<NameValuePair> list, byte[] bArr) throws Exception {
                CheckInResult checkInResult = (CheckInResult) super.parseResponse(apiRequest, i, list, bArr);
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.val$startTime;
                if (jElapsedRealtime >= 0 && jElapsedRealtime < 2000) {
                    try {
                        Thread.sleep(2000 - jElapsedRealtime);
                    } catch (InterruptedException unused) {
                    }
                }
                return checkInResult;
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
            }

            /* renamed from: com.narvii.drawer.DrawerHost$8$1$2, reason: invalid class name */
            class AnonymousClass2 implements Runnable {
                final /* synthetic */ AccountService val$account;
                final /* synthetic */ boolean val$rankingEnabled;
                final /* synthetic */ CheckInResult val$resp;

                AnonymousClass2(CheckInResult checkInResult, boolean z, AccountService accountService) {
                    this.val$resp = checkInResult;
                    this.val$rankingEnabled = z;
                    this.val$account = accountService;
                }

                @Override // java.lang.Runnable
                public void run() {
                    DrawerHost drawerHost = DrawerHost.this;
                    Activity activity = drawerHost.activity;
                    if (activity == null) {
                        drawerHost.dontUpdateRanking = false;
                        if (drawerHost.willPlayLottery) {
                            drawerHost.showLotteryPrompt();
                            return;
                        }
                        return;
                    }
                    drawerHost.dontUpdateRanking = true;
                    new CheckInPopUpHelper(activity).showCheckInPopUp(this.val$resp, null);
                    Utils.postDelayed(new RunnableC00601(), this.val$resp.additionalReputationPoint > 0 ? 3500L : 2000L);
                }

                /* renamed from: com.narvii.drawer.DrawerHost$8$1$2$1, reason: invalid class name and collision with other inner class name */
                class RunnableC00601 implements Runnable {
                    RunnableC00601() {
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
                            public void run() throws Resources.NotFoundException {
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
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) throws Resources.NotFoundException {
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
                if (i != 0) {
                    DrawerHost.this.refreshReminderCheck(0L);
                }
            }
        }
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
            if (topActivity instanceof NVActivity) {
                NVActivity nVActivity = (NVActivity) topActivity;
                if (NVApplication.CLIENT_TYPE == 101 || ((ConfigService) nVActivity.getService("config")).getCommunityId() == communityId) {
                    activity = topActivity;
                }
            }
        }
        if (!(activity instanceof NVActivity) || ((NVActivity) activity).isDestoryed()) {
            return;
        }
        try {
            this.lotteryDialog = new LotteryDialog((NVActivity) activity, communityId);
            this.lotteryDialog.show();
        } catch (Exception e) {
            Log.e("lucky draw", e);
        }
    }

    public void onCommunityUpdated() throws Resources.NotFoundException {
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

    public void updateAccount() throws Resources.NotFoundException {
        updateAccountInfoLayout();
        updateModerationLayout();
        updateMoreOptionsLayout();
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

    private void updateTopLevelChatBadge() {
        PageTopLevelLayout pageTopLevelLayout = this.topEntryContainer;
        if (pageTopLevelLayout != null) {
            updateChatBadge(pageTopLevelLayout.getChatChildView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSecondLevelChatBadge() {
        PageSecondLevelLayout pageSecondLevelLayout = this.secondLevelLayout;
        if (pageSecondLevelLayout != null) {
            updateChatBadge(pageSecondLevelLayout.getChatChildView());
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

    private int getChatUnreadCount() {
        ChatService chatService = this.chatService;
        if (chatService == null) {
            return 0;
        }
        return chatService.getUnreadChatCountInCurCommunity(this.myCommunityId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCategory() throws Resources.NotFoundException {
        View viewInflate;
        View viewInflate2;
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.drawer_category_frame);
        if (!this.communityConfigHelper.isTopicCategoryEnabled()) {
            viewGroup.setVisibility(8);
            return;
        }
        boolean z = false;
        viewGroup.setVisibility(0);
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        int i = 1;
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
                public void onClick(View view) throws Resources.NotFoundException {
                    DrawerHost.this.sendCategoryRequest();
                }
            });
            viewGroup.addView(viewInflate3);
            return;
        }
        float[] fArr = new float[3];
        Iterator<BlogCategory> it = arrayList.iterator();
        while (it.hasNext()) {
            BlogCategory next = it.next();
            int i2 = next.type;
            if (i2 == i) {
                if (stack.empty()) {
                    viewInflate2 = layoutInflaterFrom.inflate(R.layout.drawer_category_header, viewGroup, z);
                    viewInflate2.setBackgroundColor(this.darkThemeColor);
                } else {
                    viewInflate2 = (View) stack.pop();
                    viewInflate2.setBackgroundColor(this.darkThemeColor);
                }
                ((TextView) viewInflate2).setText(next.label);
                viewGroup.addView(viewInflate2);
            } else if (i2 == 0 || i2 == 2 || i2 == 3) {
                if (stack2.empty()) {
                    viewInflate = layoutInflaterFrom.inflate(R.layout.drawer_category_item, viewGroup, z);
                    viewInflate.setBackgroundColor(this.themeColor);
                    viewInflate.setOnClickListener(this.categoryClickListener);
                } else {
                    viewInflate = (View) stack2.pop();
                    viewInflate.setBackgroundColor(this.themeColor);
                }
                if (TextUtils.isEmpty(next.icon)) {
                    Color.colorToHSV(this.themeColor, fArr);
                    fArr[2] = fArr[2] * 0.8f;
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setImageDrawable(new CommunityNameDrawable(getContext(), next.label, -1, Utils.dpToPx(getContext(), 30.0f), Color.HSVToColor(fArr)));
                } else {
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setImageUrl(next.icon);
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setStrokeColor(-3355444);
                    ((NVImageView) viewInflate.findViewById(R.id.icon)).setStrokeWidth(Utils.dpToPx(getContext(), 0.5f));
                }
                Drawable drawable = null;
                int i3 = next.status;
                if (i3 == 3) {
                    drawable = getResources().getDrawable(R.drawable.categroy_viewonly);
                } else if (i3 == 9) {
                    drawable = getResources().getDrawable(R.drawable.categroy_hide);
                }
                ((ImageView) viewInflate.findViewById(R.id.status)).setImageDrawable(drawable);
                ((TextView) viewInflate.findViewById(R.id.title)).setText(next.label);
                ((TextView) viewInflate.findViewById(R.id.subTitle)).setText(next.content);
                ((TextView) viewInflate.findViewById(R.id.subTitle)).setVisibility(TextUtils.isEmpty(next.content) ? 8 : 0);
                if (next.status == 9) {
                    viewInflate.findViewById(R.id.icon).setAlpha(0.3f);
                    viewInflate.findViewById(R.id.title).setAlpha(0.3f);
                    viewInflate.findViewById(R.id.subTitle).setAlpha(0.3f);
                } else {
                    viewInflate.findViewById(R.id.icon).setAlpha(1.0f);
                    viewInflate.findViewById(R.id.title).setAlpha(1.0f);
                    viewInflate.findViewById(R.id.subTitle).setAlpha(1.0f);
                }
                viewInflate.setTag(next);
                viewGroup.addView(viewInflate);
            }
            z = false;
            i = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateKindredCommunity() {
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
            View viewInflate = layoutInflaterFrom.inflate(R.layout.normal_error_list_item, (ViewGroup) gridLayout, false);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.drawer.DrawerHost.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    DrawerHost.this.sendKindredCommunityRequest();
                }
            });
            gridLayout.addView(viewInflate);
            return;
        }
        ArrayList<View> arrayList = new ArrayList();
        for (int i = 0; i < gridLayout.getChildCount(); i++) {
            View childAt = gridLayout.getChildAt(i);
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
        int i2 = (size / 3) + 1;
        findViewById(R.id.drawer_section_kindred_layout).setVisibility(size == 0 ? 8 : 0);
        gridLayout.setColumnCount(3);
        gridLayout.setRowCount(i2);
        int i3 = 0;
        while (i3 < size) {
            Community community = this.kindredCommunity.get(i3);
            View childAt2 = gridLayout.getChildCount() > i3 ? gridLayout.getChildAt(i3) : null;
            if (childAt2 == null) {
                childAt2 = layoutInflaterFrom.inflate(R.layout.item_kindred_community_wrapper, (ViewGroup) gridLayout, false);
                gridLayout.addView(childAt2);
            }
            ThumbImageView thumbImageView = (ThumbImageView) childAt2.findViewById(R.id.community_icon);
            thumbImageView.setImageUrl(community.icon);
            thumbImageView.setCornerRadius((int) Utils.dpToPx(getContext(), 4.0f));
            TextView textView = (TextView) childAt2.findViewById(R.id.community_name);
            textView.setText(community.name);
            textView.setTextColor(-1);
            ((PromotionalImageView) childAt2.findViewById(R.id.image)).setCommunity(community);
            childAt2.setTag(community);
            childAt2.setOnClickListener(this.kindredClickListener);
            i3++;
        }
    }

    @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() throws Resources.NotFoundException {
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

    void onRefreshFinish(int i) {
        this.refreshingFlag = (i ^ (-1)) & this.refreshingFlag;
        ((SwipeRefreshLayout) findViewById(R.id.swipe_refresh)).setRefreshing(this.refreshingFlag != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCategoryRequest() throws Resources.NotFoundException {
        boolean z = this.blogCategoryList == null || this.blogCategoryError != null;
        this.blogCategoryError = null;
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/blog-category?size=100").build(), this.categoryResponseListener);
        if (z) {
            updateCategory();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendKindredCommunityRequest() {
        boolean z = this.kindredCommunity == null || this.kindredCommunityError != null;
        this.kindredCommunityError = null;
        ApiRequest.Builder builderScopeCommunityId = ApiRequest.builder().path("/community/kindred").scopeCommunityId(this.config.getCommunityId());
        builderScopeCommunityId.param(TtmlNode.START, 0);
        builderScopeCommunityId.param("size", 10);
        ((ApiService) this.context.getService("api")).exec(builderScopeCommunityId.build(), this.kindredCommunityListener);
        if (z) {
            updateKindredCommunity();
        }
    }

    public int getTotalBadgeCount() {
        HashMap<Integer, Integer> map;
        boolean z = this.account.getUserProfile() != null && this.account.getUserProfile().isLeader();
        AccountService accountService = this.account;
        int notificationCount = (accountService == null ? 0 : accountService.getNotificationCount() + this.account.getNoticeCount()) + 0;
        if (this.communityConfigHelper.isChatEnabled()) {
            notificationCount += getChatUnreadCount();
        }
        CommunityGeneralCheckResult communityGeneralCheckResult = this.generalCheckResult;
        if (communityGeneralCheckResult == null) {
            return notificationCount;
        }
        int i = notificationCount + communityGeneralCheckResult.pendingFlagCount;
        if (this.communityConfigHelper.isCatalogEnable() && this.communityConfigHelper.isCatalogCutaionEnable()) {
            i += this.generalCheckResult.pendingKnowledgeBaseRequestCount;
        }
        return (!z || (map = this.generalCheckResult.pendingShareRequestCountMapping) == null) ? i : i + map.get(114).intValue();
    }

    public int getPendingSharesStikcerCount() {
        CommunityGeneralCheckResult communityGeneralCheckResult;
        HashMap<Integer, Integer> map;
        if (!(this.account.getUserProfile() != null && this.account.getUserProfile().isLeader()) || (communityGeneralCheckResult = this.generalCheckResult) == null || (map = communityGeneralCheckResult.pendingShareRequestCountMapping) == null) {
            return 0;
        }
        return map.get(114).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGeneralCountView() {
        String str;
        CommunityGeneralCheckResult communityGeneralCheckResult = this.generalCheckResult;
        int i = communityGeneralCheckResult == null ? 0 : communityGeneralCheckResult.pendingFlagCount;
        int i2 = (this.generalCheckResult != null && this.communityConfigHelper.isCatalogCutaionEnable() && this.communityConfigHelper.isCatalogEnable()) ? this.generalCheckResult.pendingKnowledgeBaseRequestCount : 0;
        CommunityGeneralCheckResult communityGeneralCheckResult2 = this.generalCheckResult;
        HashMap<Integer, Integer> map = communityGeneralCheckResult2 == null ? null : communityGeneralCheckResult2.pendingShareRequestCountMapping;
        int iIntValue = map != null ? map.get(114).intValue() : 0;
        boolean z = this.account.getUserProfile() != null && this.account.getUserProfile().isLeader();
        String str2 = "9+";
        if (i == 0) {
            findViewById(R.id.drawer_flag_count).setVisibility(8);
        } else {
            findViewById(R.id.drawer_flag_count).setVisibility(0);
            TextView textView = (TextView) findViewById(R.id.drawer_flag_count);
            if (i > 9) {
                str = "9+";
            } else {
                str = "" + i;
            }
            textView.setText(str);
        }
        if (i2 == 0) {
            findViewById(R.id.drawer_review_submission_count).setVisibility(8);
        } else {
            findViewById(R.id.drawer_review_submission_count).setVisibility(0);
            TextView textView2 = (TextView) findViewById(R.id.drawer_review_submission_count);
            if (i2 <= 9) {
                str2 = "" + i2;
            }
            textView2.setText(str2);
        }
        findViewById(R.id.pending_sticker_pack_badge).setVisibility((iIntValue <= 0 || !z) ? 8 : 0);
        ((TextView) findViewById(R.id.pending_sticker_pack_badge)).setText(Utils.getBadgeCount(iIntValue));
    }

    public boolean refreshGeneralCount(long j) {
        User userProfile = this.account.getUserProfile();
        if (userProfile != null && userProfile.isCurator()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (j != 0) {
                long j2 = this.refreshGeneralCountTime;
                if (jCurrentTimeMillis >= j2 && jCurrentTimeMillis <= j2 + j) {
                    return false;
                }
            }
            ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("/community/general-check").build(), this.generalCheckResponseListener);
            this.refreshGeneralCountTime = jCurrentTimeMillis;
            return true;
        }
        if (this.generalCheckResult != null) {
            this.generalCheckResult = null;
            updateGeneralCountView();
        }
        return false;
    }

    public boolean refreshCommunityInfo(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j != 0) {
            long j2 = this.refreshCommunityInfoTime;
            if (jCurrentTimeMillis >= j2 && jCurrentTimeMillis <= j2 + j) {
                return false;
            }
        }
        this.isRequestingCommunity = true;
        notifyRequestCommunityListeners();
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().scopeCommunityId(this.myCommunityId).path("/community/info").param("withInfluencerList", 1).param("withTopicList", true).build(), this.communityResponseListener);
        this.refreshCommunityInfoTime = jCurrentTimeMillis;
        return true;
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

    public boolean refreshReminderCheck(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!((AccountService) this.context.getService("account")).hasAccount()) {
            return false;
        }
        if (j != 0) {
            long j2 = this.refreshReminderCheckTime;
            if (jCurrentTimeMillis >= j2 && jCurrentTimeMillis <= j2 + j) {
                return false;
            }
        }
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("reminder/check").param("ignoreUnreadChatThreadsCount", true).param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), this.reminderCheckListener);
        this.refreshReminderCheckTime = jCurrentTimeMillis;
        return true;
    }

    public void smoothScrollToTop(boolean z) {
        Runnable runnable = new Runnable() { // from class: com.narvii.drawer.DrawerHost.19
            @Override // java.lang.Runnable
            public void run() {
                ((ScrollView) DrawerHost.this.findViewById(R.id.drawer_scroll)).smoothScrollTo(0, 0);
            }
        };
        if (z) {
            Utils.postDelayed(runnable, 350L);
        } else {
            runnable.run();
        }
    }

    public void startActivity(final Intent intent) {
        Utils.post(new Runnable() { // from class: com.narvii.drawer.DrawerHost.20
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
                        DrawerHost.this.activity.startActivity(intent);
                        if (DrawerHost.this.overrideEnterAnim != null && DrawerHost.this.overrideExitAnim != null) {
                            DrawerHost.this.activity.overridePendingTransition(DrawerHost.this.overrideEnterAnim.intValue(), DrawerHost.this.overrideExitAnim.intValue());
                        }
                        DrawerHost.this.overrideEnterAnim = null;
                        DrawerHost.this.overrideExitAnim = null;
                    } catch (Exception unused) {
                        NVToast.makeText(DrawerHost.this.getContext(), R.string.home_failover_message, 1).show();
                    }
                }
            }
        });
    }

    public void goHome(int i) {
        if (sendEvent(i, null) || !(this.activity instanceof NVContext)) {
            return;
        }
        MainActivity.setPendingCommand(i);
        Intent intentBackToHome = MainActivity.backToHome((NVContext) this.activity, new Intent(getContext(), (Class<?>) MainActivity.class));
        this.overrideEnterAnim = Integer.valueOf(R.anim.fade_in);
        this.overrideExitAnim = Integer.valueOf(R.anim.fade_out);
        startActivity(intentBackToHome);
    }

    @Override // com.narvii.widget.ProxyViewHost
    public boolean sendEvent(int i, Object obj) {
        this.sendingEvent.set(Integer.valueOf(i));
        return super.sendEvent(i, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitCommunityTooltipDone() throws Resources.NotFoundException {
        if (NVApplication.CLIENT_TYPE != 100) {
            return;
        }
        ToolTipHelper toolTipHelper = this.toolTipHelper;
        if (toolTipHelper != null) {
            toolTipHelper.hideToolTip();
        }
        ((SharedPreferences) this.context.getService("prefs")).edit().putBoolean("tooltip_community_exit_done", true).apply();
    }

    @Override // com.narvii.widget.ProxyViewHost
    public boolean onEvent(int i, Object obj) throws Resources.NotFoundException {
        boolean z;
        if (i == 16449538 || i == 16449537) {
            refreshReminderCheck(AUTO_REFRESH_DURATION);
            z = true;
        } else {
            z = false;
        }
        if (i == 16449538) {
            if (this.blogCategoryList == null) {
                sendCategoryRequest();
            }
            if (this.kindredCommunity == null) {
                sendKindredCommunityRequest();
            }
            refreshGeneralCount(AUTO_REFRESH_DURATION);
            SharedPreferences sharedPreferences = (SharedPreferences) this.context.getService("prefs");
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
                                public void onClick(View view) throws Resources.NotFoundException {
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
            z = true;
        }
        if (i == 16449539) {
            scheduleScrollToTop(RESET_SCROLL_TIME);
            z = true;
        }
        if (i == 16449537) {
            if (((Float) obj).floatValue() == 0.0f) {
                scheduleScrollToTop(RESET_SCROLL_TIME);
            } else {
                unscheduleScrollToTop();
            }
            z = true;
        }
        if (z) {
            return true;
        }
        return super.onEvent(i, obj);
    }

    void scheduleScrollToTop(long j) {
        Runnable runnable = this.scrollToTop;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        } else {
            this.scrollToTop = new ScrollToTop(this);
        }
        Utils.postDelayed(this.scrollToTop, j);
    }

    void unscheduleScrollToTop() {
        Runnable runnable = this.scrollToTop;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.scrollToTop = null;
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        if (this.myCommunityListAdapter == null || getAttachView() == null) {
            return;
        }
        this.myCommunityListAdapter.notifyDataSetChanged();
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        MyCommunityListAdapter myCommunityListAdapter = this.myCommunityListAdapter;
        if (myCommunityListAdapter != null) {
            myCommunityListAdapter.notifyDataSetChanged();
        }
    }

    /* loaded from: classes2.dex */
    static class ScrollToTop implements Runnable {
        WeakReference<DrawerHost> drawerHost;

        ScrollToTop(DrawerHost drawerHost) {
            this.drawerHost = new WeakReference<>(drawerHost);
        }

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

    private void updateAccountInfoLayout() throws Resources.NotFoundException {
        User userProfile = this.account.getUserProfile();
        boolean z = (userProfile == null || this.account.hasCheckInToday()) ? false : true;
        boolean zNodeBoolean = userProfile != null ? JacksonUtils.nodeBoolean(userProfile.extensions, "isMemberOfTeamAmino") : false;
        boolean z2 = userProfile != null && userProfile.isSubscribeMemberShip();
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        userAvatarLayout.setNoBadge(!z2 || zNodeBoolean);
        userAvatarLayout.setVisibility(userProfile == null ? 8 : 0);
        userAvatarLayout.setAvatarStroke(3.0f, false);
        userAvatarLayout.setUser(userProfile);
        findViewById(R.id.avatar).setAlpha((userProfile == null || !z || this.checkInPressed) ? 1.0f : 0.6f);
        findViewById(R.id.amino_staff_badge).setVisibility(zNodeBoolean ? 0 : 8);
        findViewById(R.id.avatar_bg).setVisibility(userProfile == null ? 8 : 0);
        NicknameView nicknameView = (NicknameView) findViewById(R.id.nickname);
        nicknameView.setVisibility(userProfile == null ? 8 : 0);
        nicknameView.setUser(userProfile);
        this.rankingTitleView = (RankingTitleView) findViewById(R.id.drawer_user_role);
        this.rankingTitleView.clearAnimation();
        if (userProfile == null || z || !this.communityConfigHelper.isRankingModuleEnabled()) {
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
        if (userProfile != null && z) {
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
        findViewById(R.id.drawer_checkin_fake).setVisibility((!DBAminoLightHelper.getBoolean("show_fake_checkin", false) || this.fakeCheckin || userProfile == null || z) ? 8 : 0);
        findViewById(R.id.drawer_checkin_ring).setVisibility(userProfile != null ? 0 : 8);
        CheckInStreakBar checkInStreakBar = (CheckInStreakBar) findViewById(R.id.check_in_streak_bar);
        CheckInHelper checkInHelper = new CheckInHelper(this.context);
        CheckInHistory checkInHistory = this.account.getCheckInHistory();
        List<Integer> streakLostList = checkInHelper.getStreakLostList(checkInHistory);
        int visibility = checkInStreakBar.getVisibility();
        boolean z3 = (userProfile == null || CollectionUtils.isEmpty(streakLostList)) ? false : true;
        ViewUtils.show(checkInStreakBar, z3);
        ViewUtils.show(findViewById(R.id.check_in_streak_bar_margin_top), z3);
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
        boolean z4 = (onlineStatus == 0 || onlineStatus == 2) ? false : true;
        MoodView moodView = (MoodView) findViewById(R.id.mood);
        moodView.setAnimate((!z4 || userProfile == null || Sticker.isEmpty(userProfile.getMoodSticker())) ? false : true);
        moodView.setVisibility((userProfile == null || !this.account.hasActivation()) ? 8 : 0);
        moodView.setMoodSticker(userProfile, (userProfile == null || !z4) ? null : userProfile.getMoodSticker());
        findViewById(R.id.drawer_login_hint).setVisibility(userProfile == null ? 0 : 8);
        findViewById(R.id.account_notice_container).setVisibility(this.account.getNoticeCount() <= 0 ? 8 : 0);
        findViewById(R.id.account_notice_container).setOnClickListener(this.accountListener);
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

    /* renamed from: com.narvii.drawer.DrawerHost$24, reason: invalid class name */
    /* loaded from: classes2.dex */
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

    private void initTopEntryContainer() {
        this.topEntryContainer = (PageTopLevelLayout) findViewById(R.id.top_entries_container);
        this.topEntryContainer.setPageItemClickListener(this.pageItemClickListener);
        updateTopEntryContainer();
    }

    /* loaded from: classes2.dex */
    class MyPageItemClickListener implements PageItemClickListener {
        int level;

        MyPageItemClickListener(int i) {
            this.level = i;
        }

        @Override // com.narvii.amino.page.PageItemClickListener
        public void onItemClicked(int i, Page page) {
            if (page.needSession() && !DrawerHost.this.account.hasAccount()) {
                Intent intent = new Intent(DrawerHost.this.getContext(), (Class<?>) LoginActivity.class);
                intent.putExtra("promptType", LoginActivity.PromptType.Required.name());
                DrawerHost.this.startActivity(intent);
            } else {
                boolean z = true;
                if (PageManager.PAGE_HOME_URI.equals(page.url)) {
                    DrawerHost.this.goHome(MainActivity.CMD_HOME);
                    DrawerHost.this.smoothScrollToTop(true);
                    DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
                } else {
                    try {
                        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(page.url));
                        if (!intent2.hasExtra("Source")) {
                            intent2.putExtra("Source", this.level == 2 ? "Left Side Panel 2" : "Left Side Panel");
                        }
                        if (!intent2.hasExtra("title") && page.alias != null) {
                            intent2.putExtra("title", page.alias);
                        }
                        if (PageManager.PAGE_CATALOG_URI.equals(page.url)) {
                            intent2.setClassName(NVApplication.instance().getPackageName(), CatalogWrapperActivity.class.getName());
                            if (DrawerHost.this.communityConfigHelper.isCatalogCutaionEnable()) {
                                z = false;
                            }
                            intent2.putExtra("isAllEntry", z);
                            intent2.putExtra("fragment", CatalogFragment.class.getName());
                        }
                        if (PageManager.PAGE_STORIES_URI.equals(page.url) && (DrawerHost.this.activity instanceof NVActivity)) {
                            LogEvent.clickBuilder((NVContext) DrawerHost.this.activity, ActSemantic.listViewEnter).page("SideMenu").pvId(DrawerHost.this.fakePVId).area("Stories").send();
                        }
                        DrawerHost.this.startActivity(intent2);
                    } catch (Exception e) {
                        Log.w("fail to open page " + page, e);
                        NVToast.makeText(DrawerHost.this.getContext(), R.string.home_failover_message, 0).show();
                    }
                }
            }
            DrawerHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
        }
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
                    DrawerHost.this.secondEntriesVisiable = !r6.secondEntriesVisiable;
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
        page3.url = "http://altamino.top";
        arrayList.add(page3);
        return arrayList;
    }

    private void initModerationLayout() {
        findViewById(R.id.drawer_flag_center).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_review_submission).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_sticker_pack_submission).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_reorder).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_moderation).setOnClickListener(this.moderationListener);
        findViewById(R.id.drawer_community_setup).setOnClickListener(this.moderationListener);
    }

    private void updateModerationLayout() {
        User userProfile = this.account.getUserProfile();
        findViewById(R.id.drawer_flag_center_layout).setVisibility((userProfile == null || !userProfile.isLeader()) ? 8 : 0);
        findViewById(R.id.drawer_catalog_submission_layout).setVisibility((userProfile != null && userProfile.isCurator() && this.communityConfigHelper.isCatalogEnable() && this.communityConfigHelper.isCatalogCutaionEnable()) ? 0 : 8);
        findViewById(R.id.drawer_reorder_layout).setVisibility((this.communityConfigHelper.isFeaturedPostEnabled() && this.communityConfigHelper.isPostEnabled() && userProfile != null && userProfile.isCurator()) ? 0 : 8);
        findViewById(R.id.drawer_moderation_layout).setVisibility((userProfile == null || !userProfile.isCurator()) ? 8 : 0);
        findViewById(R.id.drawer_section_moderation_layout).setVisibility((userProfile == null || !userProfile.isCurator()) ? 8 : 0);
        findViewById(R.id.drawer_community_setup_layout).setVisibility((userProfile == null || !userProfile.isLeader()) ? 8 : 0);
        findViewById(R.id.drawer_sticker_pack_submission_layout).setVisibility((userProfile != null && userProfile.isLeader() && this.communityConfigHelper.isPremiumFeatureEnabled()) ? 0 : 8);
    }

    public boolean isRequestingCommunity() {
        return this.isRequestingCommunity;
    }

    private void initMoreOptionsLayout() {
        findViewById(R.id.drawer_settings).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_bookmarks).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_all_members).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_share_community).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_community_detail).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_guidelines).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_create_community).setOnClickListener(this.moreOptionsListener);
        findViewById(R.id.drawer_create_community_layout).setVisibility(NVApplication.CLIENT_TYPE == 101 ? 0 : 8);
    }

    private void updateMoreOptionsLayout() throws Resources.NotFoundException {
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

    /* loaded from: classes2.dex */
    class MyCommunityListAdapter extends NVAdapter {
        private List<Community> fakeCommunityList;
        private boolean isFirstSetPosition;

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

        void onResume() {
            if (!isListShown()) {
                DrawerHost.this.myCommunityListService.loadNextPage(true);
            } else if (DrawerHost.this.myCommunityListService.getCommunityRequestTime() < SystemClock.elapsedRealtime() - DrawerRightHost.REFRESH_COMMUNITY_LIST_DURATION) {
                DrawerHost.this.myCommunityListService.refresh(256, null);
            }
        }

        public void scrollToPosition() {
            DrawerHost drawerHost = DrawerHost.this;
            if (drawerHost.communityListView != null && DrawerHost.curCommunitySelectedPosition == 0 && DrawerHost.curCommunitySelectedOffset == 0) {
                List<Community> list = drawerHost.myCommunityListService.list();
                if (this.isFirstSetPosition && list != null && list.size() > 0) {
                    int i = 0;
                    while (true) {
                        if (i >= list.size()) {
                            i = 0;
                            break;
                        } else if (list.get(i).id == DrawerHost.this.myCommunityId) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    NVListView nVListView = DrawerHost.this.communityListView;
                    int i2 = i - 3;
                    if (i2 > 0) {
                        i = i2;
                    }
                    nVListView.setSelection(i);
                    this.isFirstSetPosition = false;
                }
                this.isFirstSetPosition = false;
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Community> list = DrawerHost.this.myCommunityListService.list();
            return (DrawerHost.this.myCommunityListService.isEnd() || list.size() > 0) ? list.size() + 1 : this.fakeCommunityList.size();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return super.errorMessage();
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return DrawerHost.this.myCommunityListService.isEnd() || DrawerHost.this.myCommunityListService.list().size() > 0 || this.fakeCommunityList.size() > 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (DrawerHost.this.myCommunityListService.isEnd() || DrawerHost.this.myCommunityListService.list().size() != 0 || i >= this.fakeCommunityList.size()) {
                List<Community> list = DrawerHost.this.myCommunityListService.list();
                if (i >= list.size()) {
                    if (!DrawerHost.this.myCommunityListService.isEnd()) {
                        if (DrawerHost.this.myCommunityListService.errorMessage() == null) {
                            return NVPagedAdapter.LOADING;
                        }
                        return NVPagedAdapter.ERROR;
                    }
                    return NVPagedAdapter.LIST_END;
                }
                return list.get(i);
            }
            return this.fakeCommunityList.get(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            return item == NVPagedAdapter.ERROR ? 3 : -1;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (getItem(i) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
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
                viewCreateView.findViewById(R.id.current_community_indicator).setVisibility(DrawerHost.this.myCommunityId == community.id ? 0 : 8);
                viewCreateView.setOnClickListener(this.subviewClickListener);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View viewCreateView2 = createView(R.layout.drawer_my_community_join_item, viewGroup, view);
                viewCreateView2.setOnClickListener(this.subviewClickListener);
                return viewCreateView2;
            }
            if (item != NVPagedAdapter.LOADING) {
                return createErrorItem(viewGroup, view, DrawerHost.this.myCommunityListService.errorMessage());
            }
            View viewCreateView3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
            DrawerHost.this.myCommunityListService.loadNextPage(true);
            return viewCreateView3;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
            Intent intent;
            if (obj instanceof Community) {
                Community community = (Community) obj;
                int i2 = community.id;
                DrawerHost drawerHost = DrawerHost.this;
                if (i2 == drawerHost.myCommunityId) {
                    Activity activity = drawerHost.activity;
                    if (activity instanceof DrawerActivity) {
                        ((DrawerActivity) activity).closeDrawers();
                    }
                    return true;
                }
                if (community.status == 9) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(drawerHost.activity);
                    aCMAlertDialog.setMessage(R.string.amino_disabled);
                    aCMAlertDialog.addButton(R.string.got_it, null);
                    aCMAlertDialog.show();
                    return true;
                }
                drawerHost.launchHelper = drawerHost.new MyLaunchHelper(this.context);
                DrawerHost.this.launchHelper.launchCommunity(community, (NVImageView) view.findViewById(R.id.icon), (SmoothProgressBar) view.findViewById(R.id.progress));
                return true;
            }
            if (obj == NVPagedAdapter.LIST_END) {
                if (NVApplication.CLIENT_TYPE == 101) {
                    intent = FragmentWrapperActivity.intent(ExplorerCommunityListFragment.class);
                } else {
                    intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
                    intent.putExtra("__communityId", 0);
                }
                Activity activity2 = DrawerHost.this.activity;
                if (activity2 != null) {
                    activity2.startActivity(intent);
                } else {
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(intent);
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        void updateRemindersInCell(View view, Community community, boolean z) {
            ReminderCheck reminder = community == null ? null : DrawerHost.this.myCommunityListService.getReminder(community.id);
            int unreadChatCountInCurCommunity = reminder == null ? 0 : (community == null ? 0 : DrawerHost.this.chatService.getUnreadChatCountInCurCommunity(community.id)) + reminder.notificationsCount + reminder.noticesCount;
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
            if (z && community != null && (reminder == null || DrawerHost.this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - DrawerRightHost.REMINDER_CHECK_DURATION)) {
                DrawerHost.this.myCommunityListService.addReminderRequestQueue(community.id);
            }
            if (community == null || !DrawerHost.this.account.hasAccount()) {
                return;
            }
            DrawerHost.this.chatService.addThreadCheckQueue(community.id);
        }
    }

    /* loaded from: classes2.dex */
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

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i, float f) {
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress((int) (f * 100.0f));
            }
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

        private void launchCid(int i, Drawable drawable) {
            User user;
            String str;
            List<Community> list = DrawerHost.this.myCommunityListService.list();
            Community community = null;
            if (list != null) {
                for (Community community2 : list) {
                    if (community2.id == i) {
                        User userProfile = DrawerHost.this.myCommunityListService.getUserProfile(i);
                        String userInfoTimestamp = DrawerHost.this.myCommunityListService.getUserInfoTimestamp(i);
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
            launch(i, community, str, user, str, DrawerHost.this.myCommunityListService.getReminder(i), DrawerHost.this.myCommunityListService.getReminderTimestamp(i), false, 1, null);
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
                SplashUtils.splash(this.launchActivity, nVImageView, drawable, new Callback<Boolean>() { // from class: com.narvii.drawer.DrawerHost.MyLaunchHelper.1
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
    }

    void removeLaunchSplashAndCloseDrawer() {
        removeLaunchSplashAndCloseDrawer(1000L);
    }

    void removeLaunchSplashAndCloseDrawer(long j) {
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
        this.removeLaunchSplashAndCloseDrawer = new Runnable() { // from class: com.narvii.drawer.DrawerHost.28
            @Override // java.lang.Runnable
            public void run() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
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
        Utils.postDelayed(this.removeLaunchSplashAndCloseDrawer, j);
    }

    void cancelLaunch() {
        MyLaunchHelper myLaunchHelper = this.launchHelper;
        if (myLaunchHelper != null) {
            myLaunchHelper.cancel();
        }
        this.launchHelper = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThemeUI() throws Resources.NotFoundException {
        if (this.activity == null) {
            return;
        }
        this.themeColor = this.config.getTheme().colorPrimary();
        float[] fArr = new float[3];
        Color.colorToHSV(this.themeColor, fArr);
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
}

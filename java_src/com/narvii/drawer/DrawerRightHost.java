package com.narvii.drawer;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.GridLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityRecycleAdapter;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.community.ReminderCheck;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.config.ConfigService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.SwitchAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.master.CommunityHelper;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.MasterHelper;
import com.narvii.master.explorer.ExplorerCommunityListFragment;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.search.GlobalSearchBaseFragment;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Callback;
import com.narvii.util.LanguageHelper;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.SplashUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.LinearLayoutManagerWithSmoothScroller;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ProxyViewHost;
import com.narvii.widget.SmoothProgressBar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public class DrawerRightHost extends ProxyViewHost implements View.OnClickListener, SwipeRefreshLayout.OnRefreshListener, MyCommunityListService.MyCommunityListObserver {
    static final long LAUNCH_TITLE_SHOW_DELAY = 700;
    static final int MODE_CLOSE_DRAWER_AND_START = 1;
    static final int MODE_START_AND_CLOSE_DRAWER = 2;
    static final long REFRESH_COMMUNITY_LIST_DURATION;
    static final long REFRESH_SUGGEST_LIST_DURATION;
    static final long REMINDER_CHECK_DURATION;
    static final long RESET_SCROLL_TIME;
    AccountService account;
    Activity activity;
    Adapter adapter;
    DrawerRealtimeBlurView blurView;
    LocalBroadcastManager broadcastManager;
    private final ChatService.ChatMessageReceptor chatCheckListener;
    ChatService chatService;
    int cid;
    NVContext context;
    ListAdapter currentAdapter;
    ListAdapter finalAdapter;
    boolean isMaster;
    MyLaunchHelper launchHelper;
    final View.OnClickListener launchRecentListener;
    NVListView listView;
    boolean listenerReged;
    MyCommunityListService myCommunityListService;
    SharedPreferences prefs;
    private final AccountService.ProfileListener profileListener;
    RecentAdapter recentAdapter;
    RecentCommunityHelper recentCommunityHelper;
    private Runnable removeLaunchSplashAndCloseDrawer;
    Runnable resetDelayed;
    SuggestedCommunityAdapter suggestAdapter;
    boolean suggestOnBottom;
    SwitchAdapter suggestSwitchBottom;
    SwitchAdapter suggestSwitchTop;
    SwipeRefreshLayout swipeRefreshLayout;
    private final BroadcastReceiver themeDownLoadReceiver;

    static {
        boolean z = NVApplication.DEBUG;
        long j = DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS;
        REMINDER_CHECK_DURATION = z ? 60000L : 300000L;
        REFRESH_COMMUNITY_LIST_DURATION = NVApplication.DEBUG ? 60000L : 300000L;
        REFRESH_SUGGEST_LIST_DURATION = NVApplication.DEBUG ? 60000L : 300000L;
        if (NVApplication.DEBUG) {
            j = ScenePollPlayView.POLL_COUNT_DOWN_MS;
        }
        RESET_SCROLL_TIME = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DrawerRightHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.chatCheckListener = new ChatService.ChatMessageReceptor() { // from class: com.narvii.drawer.DrawerRightHost.1
            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onResetChatMessageList() {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onUnreadThreadCountChanged(int i) {
                if (DrawerRightHost.this.getAttachView() != null) {
                    DrawerRightHost.this.onReminderChanged(null);
                }
            }
        };
        this.profileListener = new AccountService.ProfileListener() { // from class: com.narvii.drawer.DrawerRightHost.4
            @Override // com.narvii.account.AccountService.ProfileListener
            public void onProfileChanged(int i, User user) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNotificationCountChanged(int i) {
                DrawerRightHost.this.updateRemindersOnScreen(false);
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInChanged(boolean z, int i) {
                DrawerRightHost.this.updateRemindersOnScreen(false);
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNoticeCountChanged(int i) {
                DrawerRightHost.this.updateRemindersOnScreen(false);
            }
        };
        this.launchRecentListener = new View.OnClickListener() { // from class: com.narvii.drawer.DrawerRightHost.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if ((view.getTag() instanceof Community) && (DrawerRightHost.this.activity instanceof NVContext)) {
                    Community community = (Community) view.getTag();
                    DrawerRightHost drawerRightHost = DrawerRightHost.this;
                    drawerRightHost.launchHelper = drawerRightHost.new MyLaunchHelper((NVContext) drawerRightHost.activity);
                    MyLaunchHelper myLaunchHelper = DrawerRightHost.this.launchHelper;
                    myLaunchHelper.visitorModeCompatible = true;
                    myLaunchHelper.themePackDownloadAsync = true;
                    myLaunchHelper.launchRecent(community, (NVImageView) view.findViewById(R.id.icon));
                }
            }
        };
        this.themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.drawer.DrawerRightHost.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ConfigService configService = (ConfigService) DrawerRightHost.this.context.getService("config");
                if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra("cid", -1)) {
                    DrawerRightHost.this.updateThemeUI();
                }
            }
        };
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
        this.context = (NVContext) context;
        this.myCommunityListService = (MyCommunityListService) this.context.getService("myCommunityList");
        this.chatService = (ChatService) this.context.getService("chat");
        this.account = (AccountService) this.context.getService("account");
        this.prefs = this.account.getPrefs();
        this.cid = ((ConfigService) this.context.getService("config")).getCommunityId();
        this.broadcastManager = LocalBroadcastManager.getInstance(getContext());
        this.recentCommunityHelper = (RecentCommunityHelper) this.context.getService("recentCommunities");
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setClickable(true);
        findViewById(R.id.search).setOnClickListener(this);
        this.blurView = (DrawerRealtimeBlurView) findViewById(R.id.blur_bg);
        this.swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_refresh);
        this.listView = (NVListView) findViewById(android.R.id.list);
        this.swipeRefreshLayout.setTarget(this.listView);
        this.swipeRefreshLayout.setOnRefreshListener(this);
        Header header = new Header(getContext().getString(R.string.recent_communities));
        this.recentAdapter = new RecentAdapter();
        header.showWith = this.recentAdapter;
        this.suggestOnBottom = this.myCommunityListService.list().size() >= 6;
        this.suggestAdapter = new SuggestedCommunityAdapter();
        this.suggestSwitchTop = new SwitchAdapter(this.context);
        this.suggestSwitchTop.addAdapter(this.suggestAdapter, false);
        this.suggestSwitchTop.addAdapter(new StaticViewAdapter(), false);
        this.suggestSwitchTop.setAdapter(this.suggestOnBottom ? 1 : 0);
        this.suggestSwitchBottom = new SwitchAdapter(this.context);
        this.suggestSwitchBottom.addAdapter(this.suggestAdapter, false);
        this.suggestSwitchBottom.addAdapter(new StaticViewAdapter(), false);
        this.suggestSwitchBottom.setAdapter(!this.suggestOnBottom ? 1 : 0);
        Header header2 = new Header(getContext().getString(R.string.suggested_communities));
        header2.showWith = this.suggestSwitchTop;
        Header header3 = new Header(getContext().getString(R.string.suggested_communities));
        header3.showWith = this.suggestSwitchBottom;
        Header header4 = new Header(getContext().getString(R.string.my_communities));
        this.adapter = new Adapter();
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this.context, (int) Utils.dpToPx(getContext(), 5.0f), (int) Utils.dpToPx(getContext(), 3.0f));
        divideColumnAdapter.setAdapter(this.adapter, 3);
        MergeAdapter mergeAdapter = new MergeAdapter(this.context);
        mergeAdapter.addAdapter(header);
        mergeAdapter.addAdapter(this.recentAdapter);
        mergeAdapter.addAdapter(header2);
        mergeAdapter.addAdapter(this.suggestSwitchTop);
        mergeAdapter.addAdapter(header4);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        mergeAdapter.addAdapter(header3);
        mergeAdapter.addAdapter(this.suggestSwitchBottom);
        mergeAdapter.addAdapter(new LoadingErrorAdapter());
        this.finalAdapter = mergeAdapter;
        this.listView.setOnItemClickListener(mergeAdapter);
        this.listView.setDivider(null);
        this.listView.setDividerHeight(0);
    }

    public void bind(Activity activity) {
        this.activity = activity;
    }

    public void unbind() {
        setListenerReged(false);
        this.activity = null;
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onAttach(ProxyView proxyView) {
        ComponentCallbacks2 componentCallbacks2;
        super.onAttach(proxyView);
        this.recentAdapter.update();
        this.suggestAdapter.prepare();
        this.adapter.prepare();
        updateSuggestPosition(this.myCommunityListService);
        updateRemindersOnScreen(true);
        if (this.currentAdapter != null) {
            this.adapter.notifyDataSetChanged();
        }
        this.blurView.setProxyView(getAttachView());
        if (this.blurView != null && (componentCallbacks2 = this.activity) != null) {
            int iColorPrimary = ((ConfigService) ((NVContext) componentCallbacks2).getService("config")).getTheme().colorPrimary();
            this.blurView.setOverlayColor(Color.argb(56, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)));
        }
        unscheduleReset();
        cancelLaunch();
        Runnable runnable = this.removeLaunchSplashAndCloseDrawer;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        setListenerReged(true);
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onDetach(ProxyView proxyView) {
        super.onDetach(proxyView);
        this.blurView.setProxyView(null);
        setListenerReged(false);
        scheduleReset(RESET_SCROLL_TIME);
    }

    void setListenerReged(boolean z) {
        if (z != this.listenerReged) {
            if (z) {
                this.account.addProfileListener(this.profileListener);
                this.myCommunityListService.addObserver(this);
                this.chatService.addCommunityLevelReceptor(this.cid, this.chatCheckListener);
            } else {
                this.myCommunityListService.removeObserver(this);
                this.account.removeProfileListener(this.profileListener);
                this.chatService.removeCommunityLevelReceptor(this.cid, this.chatCheckListener);
            }
            this.listenerReged = z;
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
        this.removeLaunchSplashAndCloseDrawer = new Runnable() { // from class: com.narvii.drawer.DrawerRightHost.2
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

    public void startActivity(final Intent intent, int i) {
        if (i == 1) {
            sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.drawer.DrawerRightHost.3
                @Override // java.lang.Runnable
                public void run() {
                    Activity activity = DrawerRightHost.this.activity;
                    if (activity != null) {
                        activity.startActivity(intent);
                    }
                }
            }, 350L);
            return;
        }
        Activity activity = this.activity;
        if (activity != null) {
            activity.startActivity(intent);
        }
        if (i == 2) {
            removeLaunchSplashAndCloseDrawer();
        }
    }

    @Override // com.narvii.widget.ProxyViewHost
    public boolean onEvent(int i, Object obj) {
        boolean z;
        if (i == 16449537 || i == 16449538) {
            ListAdapter listAdapter = this.currentAdapter;
            ListAdapter listAdapter2 = this.finalAdapter;
            if (listAdapter != listAdapter2) {
                NVListView nVListView = this.listView;
                this.currentAdapter = listAdapter2;
                nVListView.setAdapter(listAdapter2);
            }
            if (i == 16449537 && ((Float) obj).floatValue() == 0.0f) {
                scheduleReset(RESET_SCROLL_TIME);
            } else {
                unscheduleReset();
            }
            z = true;
        } else {
            z = false;
        }
        if (i == 16449539) {
            scheduleReset(RESET_SCROLL_TIME);
            cancelLaunch();
            z = true;
        }
        if (i == 16449538) {
            this.suggestAdapter.resumed();
            this.adapter.resumed();
            this.recentAdapter.refreshReminders(false);
            z = true;
        }
        if (z) {
            return true;
        }
        return super.onEvent(i, obj);
    }

    void scheduleReset(long j) {
        Runnable runnable = this.resetDelayed;
        if (runnable == null) {
            this.resetDelayed = new ResetDelayed(this);
        } else {
            Utils.handler.removeCallbacks(runnable);
        }
        Utils.postDelayed(this.resetDelayed, j);
    }

    void unscheduleReset() {
        Runnable runnable = this.resetDelayed;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.resetDelayed = null;
        }
    }

    /* loaded from: classes2.dex */
    static class ResetDelayed implements Runnable {
        final WeakReference<DrawerRightHost> r;

        ResetDelayed(DrawerRightHost drawerRightHost) {
            this.r = new WeakReference<>(drawerRightHost);
        }

        @Override // java.lang.Runnable
        public void run() {
            DrawerRightHost drawerRightHost = this.r.get();
            if (drawerRightHost == null || drawerRightHost.resetDelayed != this) {
                return;
            }
            drawerRightHost.reset();
            drawerRightHost.resetDelayed = null;
        }
    }

    public void reset() {
        NVListView nVListView = this.listView;
        this.currentAdapter = null;
        nVListView.setAdapter((ListAdapter) null);
        RecentAdapter recentAdapter = this.recentAdapter;
        if (recentAdapter != null) {
            recentAdapter.reset();
        }
        this.suggestAdapter.reset();
    }

    public void start() {
        this.broadcastManager.registerReceiver(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
    }

    public void stop() {
        this.broadcastManager.unregisterReceiver(this.themeDownLoadReceiver);
    }

    void updateRemindersInCell(View view, Community community, boolean z) {
        ReminderCheck reminder = community == null ? null : this.myCommunityListService.getReminder(community.id);
        boolean z2 = reminder != null && reminder.hasCheckInToday == Boolean.FALSE;
        int unreadChatCountInCurCommunity = reminder == null ? 0 : reminder.noticesCount + reminder.notificationsCount + (community == null ? 0 : this.chatService.getUnreadChatCountInCurCommunity(community.id));
        boolean zIsEquals = Utils.isEquals(view.getTag(), community);
        View viewFindViewById = view.findViewById(R.id.checkin);
        if (!zIsEquals) {
            viewFindViewById.clearAnimation();
        }
        if (z2) {
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
        View viewFindViewById2 = view.findViewById(R.id.notification_count);
        ((TextView) viewFindViewById2).setText(unreadChatCountInCurCommunity > 9 ? "9+" : String.valueOf(unreadChatCountInCurCommunity));
        if (!zIsEquals) {
            viewFindViewById2.clearAnimation();
        }
        if (unreadChatCountInCurCommunity > 0) {
            if (zIsEquals && viewFindViewById2.getVisibility() != 0) {
                viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            }
            viewFindViewById2.setVisibility(0);
        } else {
            if (zIsEquals && viewFindViewById2.getVisibility() == 0) {
                viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
            }
            viewFindViewById2.setVisibility(8);
        }
        if (z && community != null && (reminder == null || this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - REMINDER_CHECK_DURATION)) {
            this.myCommunityListService.addReminderRequestQueue(community.id);
        }
        if (community == null || !this.account.hasAccount()) {
            return;
        }
        this.chatService.addThreadCheckQueue(community.id);
    }

    void updateRemindersOnScreen(boolean z) {
        NVListView nVListView = this.listView;
        int childCount = nVListView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            for (View view : DivideColumnAdapter.getDividedCells(nVListView.getChildAt(i))) {
                if (view.getTag() instanceof Community) {
                    updateRemindersInCell(view, (Community) view.getTag(), z);
                }
            }
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
        this.suggestAdapter.update();
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        this.adapter.notifyDataSetChanged();
        updateSuggestPosition(myCommunityListService);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v6 */
    void updateSuggestPosition(MyCommunityListService myCommunityListService) {
        ?? r3 = myCommunityListService.list().size() >= 6 ? 1 : 0;
        if (this.suggestOnBottom != r3) {
            this.suggestOnBottom = r3;
            this.suggestSwitchTop.setAdapter((int) r3);
            this.suggestSwitchBottom.setAdapter(r3 ^ 1);
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        updateRemindersOnScreen(false);
        this.recentAdapter.update();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.search) {
            ComponentCallbacks2 componentCallbacks2 = this.activity;
            if (componentCallbacks2 instanceof NVContext) {
                new MasterThemeHelper((NVContext) componentCallbacks2).saveDynamicThemeBg(this.activity);
            }
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
            intent.putExtra("section_type", 1);
            intent.putExtra(IjkMediaMeta.IJKM_KEY_LANGUAGE, LanguageHelper.getUserSelectedLanguageCode(this.context));
            intent.putExtra("Source", "Right Side Panel");
            startActivity(intent, 2);
        }
        if (view.getId() == R.id.join) {
            explore();
        }
    }

    void explore() {
        Intent intent;
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 instanceof NVContext) {
            new MasterThemeHelper((NVContext) componentCallbacks2).saveDynamicThemeBg(this.activity);
            if (NVApplication.CLIENT_TYPE == 101) {
                intent = FragmentWrapperActivity.intent(ExplorerCommunityListFragment.class);
            } else {
                intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
                intent.putExtra("__communityId", 0);
            }
            startActivity(intent, 2);
        }
    }

    @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.drawer.DrawerRightHost.6
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                DrawerRightHost.this.swipeRefreshLayout.setRefreshing(false);
            }
        };
        this.recentAdapter.update();
        this.recentAdapter.refreshReminders(true);
        this.suggestAdapter.refresh(1, null);
        this.adapter.refresh(1, callback);
    }

    /* loaded from: classes2.dex */
    class Header extends NVAdapter {
        ListAdapter showWith;
        String text;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public Header(String str) {
            super(DrawerRightHost.this.context);
            this.text = str;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ListAdapter listAdapter = this.showWith;
            return (listAdapter == null || listAdapter.getCount() != 0) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.drawer_right_section_header, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(this.text);
            return viewCreateView;
        }
    }

    /* loaded from: classes2.dex */
    class RecentAdapter extends NVAdapter {
        View cell;
        List<Community> list;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public RecentAdapter() {
            super(DrawerRightHost.this.context);
        }

        void reset() {
            this.cell = null;
        }

        void update() {
            int count = getCount();
            Activity activity = DrawerRightHost.this.activity;
            this.list = DrawerRightHost.this.recentCommunityHelper.getRecentList(activity != null ? ((ConfigService) Utils.getNVContext(activity).getService("config")).getCommunityId() : 0, 8);
            int count2 = getCount();
            View view = this.cell;
            if (view == null || count != count2) {
                notifyDataSetChanged();
            } else {
                updateCell(view, this.list);
            }
        }

        public void refreshReminders(boolean z) {
            if (DrawerRightHost.this.account.hasAccount()) {
                for (Community community : this.list) {
                    if (z || DrawerRightHost.this.myCommunityListService.getReminder(community.id) == null || DrawerRightHost.this.myCommunityListService.getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - DrawerRightHost.REMINDER_CHECK_DURATION) {
                        DrawerRightHost.this.myCommunityListService.addReminderRequestQueue(community.id);
                    }
                    DrawerRightHost.this.chatService.addThreadCheckQueue(community.id);
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Community> list = this.list;
            return (list == null || list.size() == 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = this.cell;
            if (viewCreateView == null) {
                viewCreateView = createView(R.layout.drawer_right_recent, viewGroup, null);
            }
            updateCell(viewCreateView, this.list);
            return viewCreateView;
        }

        void updateCell(View view, List<Community> list) {
            GridLayout gridLayout = (GridLayout) view.findViewById(R.id.grid);
            int dimensionPixelSize = ((view.getResources().getDimensionPixelSize(R.dimen.drawer_right_width) - gridLayout.getPaddingLeft()) - gridLayout.getPaddingRight()) / gridLayout.getColumnCount();
            ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.drawer_right_recent_icon).getParent();
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = viewGroup.getChildAt(i);
                childAt.getLayoutParams().width = dimensionPixelSize;
                Community community = i < list.size() ? list.get(i) : null;
                ReminderCheck reminder = community == null ? null : DrawerRightHost.this.myCommunityListService.getReminder(community.id);
                int unreadChatCountInCurCommunity = reminder == null ? 0 : reminder.noticesCount + reminder.notificationsCount + (community == null ? 0 : DrawerRightHost.this.chatService.getUnreadChatCountInCurCommunity(community.id));
                ((NVImageView) childAt.findViewById(R.id.icon)).setImageUrl(community == null ? null : community.icon);
                childAt.findViewById(R.id.badge).setVisibility(unreadChatCountInCurCommunity > 0 ? 0 : 4);
                ((TextView) childAt.findViewById(R.id.badge)).setText(unreadChatCountInCurCommunity > 9 ? "9+" : String.valueOf(unreadChatCountInCurCommunity));
                ((TextView) childAt.findViewById(R.id.title)).setText(community != null ? community.name : null);
                childAt.setVisibility(community == null ? 8 : 0);
                childAt.setTag(community);
                childAt.setOnClickListener(DrawerRightHost.this.launchRecentListener);
                i++;
            }
        }
    }

    /* loaded from: classes2.dex */
    class SuggestedCommunityAdapter extends NVAdapter {
        View cell;
        SuggestedCommunityRecyclerAdapter recyclerAdapter;
        RecyclerView recyclerView;
        long shuffleSeed;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        public SuggestedCommunityAdapter() {
            super(DrawerRightHost.this.context);
            this.shuffleSeed = System.currentTimeMillis();
        }

        void prepare() {
            if (DrawerRightHost.this.myCommunityListService.suggestList() == null) {
                DrawerRightHost.this.myCommunityListService.refreshSuggestCommunityRequest();
            }
        }

        void resumed() {
            if (DrawerRightHost.this.myCommunityListService.suggestList() == null || DrawerRightHost.this.myCommunityListService.suggestList().size() <= 0 || DrawerRightHost.this.myCommunityListService.getSuggestRequestTime() >= SystemClock.elapsedRealtime() - DrawerRightHost.REFRESH_SUGGEST_LIST_DURATION) {
                return;
            }
            DrawerRightHost.this.myCommunityListService.refreshSuggestCommunityRequest();
        }

        void reset() {
            this.cell = null;
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView != null) {
                try {
                    recyclerView.scrollToPosition(0);
                } catch (Exception unused) {
                }
            }
            this.recyclerView = null;
            this.shuffleSeed++;
        }

        void update() {
            View view = this.cell;
            if (view == null) {
                notifyDataSetChanged();
            } else {
                updateCell(view, this.recyclerView);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (DrawerRightHost.this.myCommunityListService.suggestList() == null || DrawerRightHost.this.myCommunityListService.suggestList().size() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (this.cell == null) {
                this.cell = createView(R.layout.drawer_right_horizontal_recycle_view, viewGroup, view);
                this.recyclerView = (RecyclerView) this.cell.findViewById(R.id.recycle_list);
                if (this.recyclerAdapter == null) {
                    this.recyclerAdapter = DrawerRightHost.this.new SuggestedCommunityRecyclerAdapter();
                }
                RecyclerView recyclerView = this.recyclerView;
                if (recyclerView != null) {
                    recyclerView.setLayoutManager(new LinearLayoutManagerWithSmoothScroller(getContext(), 0, false));
                    this.recyclerView.setAdapter(this.recyclerAdapter);
                }
            }
            updateCell(this.cell, this.recyclerView);
            return this.cell;
        }

        void updateCell(View view, RecyclerView recyclerView) {
            ArrayList arrayList = new ArrayList();
            if (DrawerRightHost.this.myCommunityListService.suggestList() != null) {
                arrayList.addAll(DrawerRightHost.this.myCommunityListService.suggestList());
                Collections.shuffle(arrayList, new Random(this.shuffleSeed));
            }
            if (recyclerView == null) {
                return;
            }
            String strSuggestErrorMessage = DrawerRightHost.this.myCommunityListService.suggestErrorMessage();
            recyclerView.setVisibility(0);
            view.findViewById(R.id.progress).setVisibility(4);
            view.findViewById(R.id.error).setVisibility(4);
            ((TextView) view.findViewById(R.id.error)).setText(strSuggestErrorMessage);
            this.recyclerAdapter.setCommunityListData(arrayList);
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            DrawerRightHost.this.myCommunityListService.refreshSuggestCommunityRequest();
        }
    }

    /* loaded from: classes2.dex */
    class SuggestedCommunityRecyclerAdapter extends CommunityRecycleAdapter {
        @Override // com.narvii.community.CommunityRecycleAdapter
        protected int itemLayoutId() {
            return R.layout.right_drawer_communit_item;
        }

        @Override // com.narvii.community.CommunityRecycleAdapter
        protected String statisticsSource() {
            return "Right Side Panel";
        }

        public SuggestedCommunityRecyclerAdapter() {
            super(DrawerRightHost.this.context, null);
            setHasStableIds(true);
        }

        @Override // com.narvii.community.CommunityRecycleAdapter
        protected void onItemClick(Community community) {
            ComponentCallbacks2 componentCallbacks2 = DrawerRightHost.this.activity;
            if (componentCallbacks2 instanceof NVContext) {
                new CommunityHelper((NVContext) componentCallbacks2).source(statisticsSource()).communityDetail(community);
                DrawerRightHost.this.removeLaunchSplashAndCloseDrawer(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            }
        }

        @Override // com.narvii.community.CommunityRecycleAdapter, android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            super.onBindViewHolder(viewHolder, i);
            if (viewHolder instanceof CommunityRecycleAdapter.GalleryViewHolder) {
                View viewFindViewById = ((CommunityRecycleAdapter.GalleryViewHolder) viewHolder).itemView.findViewById(R.id.text);
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setTextSize(11.0f);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class Adapter extends NVAdapter {
        boolean hasAccount;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        public Adapter() {
            super(DrawerRightHost.this.context);
            setDarkTheme(true);
        }

        public void prepare() {
            this.hasAccount = DrawerRightHost.this.account.hasAccount();
            if (!this.hasAccount || isListShown()) {
                return;
            }
            DrawerRightHost.this.myCommunityListService.loadNextPage(true);
        }

        public void resumed() {
            if (this.hasAccount && isListShown() && DrawerRightHost.this.myCommunityListService.getCommunityRequestTime() < SystemClock.elapsedRealtime() - DrawerRightHost.REFRESH_COMMUNITY_LIST_DURATION) {
                DrawerRightHost.this.myCommunityListService.refresh(256, null);
            }
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            if (this.hasAccount) {
                DrawerRightHost.this.myCommunityListService.refresh(i, callback);
            } else {
                super.refresh(i, callback);
            }
        }

        public List<Community> list() {
            if (this.hasAccount) {
                return DrawerRightHost.this.myCommunityListService.list();
            }
            return Collections.emptyList();
        }

        public boolean isEnd() {
            if (this.hasAccount) {
                return DrawerRightHost.this.myCommunityListService.isEnd();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (!this.hasAccount) {
                return 1;
            }
            int size = list().size();
            if (size == 0) {
                return 0;
            }
            return size + 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return list().isEmpty();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            if (this.hasAccount) {
                return DrawerRightHost.this.myCommunityListService.errorMessage();
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            if (this.hasAccount) {
                DrawerRightHost.this.myCommunityListService.retryRetry();
            }
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return isEnd() || list().size() > 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.hasAccount) {
                List<Community> list = list();
                if (i < list.size()) {
                    return list.get(i);
                }
                if (isEnd()) {
                    return NVPagedAdapter.LIST_END;
                }
                if (errorMessage() == null) {
                    return NVPagedAdapter.LOADING;
                }
                return NVPagedAdapter.ERROR;
            }
            return NVPagedAdapter.LIST_END;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (getItem(i) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i);
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

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof Community) {
                Community community = (Community) item;
                View viewCreateView = createView(R.layout.incubator_my_community_item, viewGroup, view);
                PromotionalImageView promotionalImageView = (PromotionalImageView) viewCreateView.findViewById(R.id.image);
                promotionalImageView.showLaunchPage = true;
                promotionalImageView.preloadCachedImage = true;
                promotionalImageView.setCommunity(community);
                NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.icon);
                nVImageView.setImageUrl(community.icon);
                nVImageView.setStrokeColor(community.themeColor());
                TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
                textView.setText(community.name);
                ViewUtils.setMontserratExtraBoldTypeface(textView);
                User userProfile = DrawerRightHost.this.myCommunityListService.getUserProfile(community.id);
                viewCreateView.findViewById(R.id.probation).setVisibility(community.probationStatus == 1 && userProfile != null && userProfile.isLeader() ? 0 : 8);
                View viewFindViewById = viewCreateView.findViewById(R.id.progress);
                MyLaunchHelper myLaunchHelper = DrawerRightHost.this.launchHelper;
                if (myLaunchHelper != null && myLaunchHelper.progressBar == viewFindViewById) {
                    Community community2 = myLaunchHelper.community;
                    if (community2 != null && community2.id != community.id) {
                        viewFindViewById.setVisibility(4);
                        DrawerRightHost.this.cancelLaunch();
                    } else {
                        viewFindViewById.setVisibility(0);
                    }
                } else {
                    viewFindViewById.setVisibility(4);
                }
                DrawerRightHost.this.updateRemindersInCell(viewCreateView, community, true);
                viewCreateView.setTag(community);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View viewCreateView2 = createView(R.layout.incubator_my_community_join_item, viewGroup, view);
                ((TextView) viewCreateView2.findViewById(R.id.hint)).setTextSize(1, 14.0f);
                return viewCreateView2;
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateView3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                DrawerRightHost.this.myCommunityListService.loadNextPage(true);
                return viewCreateView3;
            }
            return createErrorItem(viewGroup, view, errorMessage());
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Community) {
                ComponentCallbacks2 componentCallbacks2 = DrawerRightHost.this.activity;
                if (componentCallbacks2 instanceof NVContext) {
                    Community community = (Community) obj;
                    if (((ConfigService) ((NVContext) componentCallbacks2).getService("config")).getCommunityId() == community.id) {
                        NVToast.makeText(DrawerRightHost.this.activity, R.string.already_in_community, 1).show();
                        DrawerRightHost.this.sendEvent(DrawerActivity.CMD_CLOSE_DRAWER, null);
                    } else {
                        DrawerRightHost drawerRightHost = DrawerRightHost.this;
                        if (drawerRightHost.isMaster) {
                            SmoothProgressBar smoothProgressBar = (SmoothProgressBar) view.findViewById(R.id.progress);
                            NVImageView nVImageView = (NVImageView) view.findViewById(R.id.image);
                            DrawerRightHost drawerRightHost2 = DrawerRightHost.this;
                            drawerRightHost2.launchHelper = drawerRightHost2.new MyLaunchHelper((NVContext) drawerRightHost2.activity);
                            DrawerRightHost.this.launchHelper.launchCommunity(community, nVImageView, smoothProgressBar);
                        } else {
                            PackageUtils packageUtils = new PackageUtils(drawerRightHost.activity);
                            if (packageUtils.isPackageInstalled(packageUtils.getMasterPackageName())) {
                                try {
                                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(packageUtils.getMasterScheme() + "://x" + community.id + "/description"));
                                    intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                                    DrawerRightHost.this.startActivity(intent, 1);
                                } catch (Exception unused) {
                                }
                            } else {
                                ComponentCallbacks2 componentCallbacks22 = DrawerRightHost.this.activity;
                                if (componentCallbacks22 instanceof NVContext) {
                                    new MasterHelper((NVContext) componentCallbacks22).showDownloadMaterDialog("ndc://x" + community.id + "/description");
                                }
                            }
                        }
                    }
                    return true;
                }
            }
            if (obj == NVPagedAdapter.LIST_END) {
                DrawerRightHost.this.explore();
                return true;
            }
            if (obj == NVPagedAdapter.ERROR) {
                DrawerRightHost.this.myCommunityListService.loadNextPage(false);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    /* loaded from: classes2.dex */
    class LoadingErrorAdapter extends NVAdapter {
        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        public LoadingErrorAdapter() {
            super(DrawerRightHost.this.context);
            setDarkTheme(true);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return DrawerRightHost.this.adapter.getCount() == 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return DrawerRightHost.this.myCommunityListService.errorMessage() == null ? NVPagedAdapter.LOADING : NVPagedAdapter.ERROR;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return getItem(i) == NVPagedAdapter.LOADING ? 0 : 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return getItem(i) == NVPagedAdapter.ERROR;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i) == NVPagedAdapter.LOADING) {
                return createView(R.layout.drawer_right_loading_item, viewGroup, view);
            }
            return createView(R.layout.drawer_right_error_item, viewGroup, view);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj == NVPagedAdapter.ERROR) {
                DrawerRightHost.this.myCommunityListService.loadNextPage(true);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    /* loaded from: classes2.dex */
    class MyLaunchHelper extends CommunityLaunchHelper {
        Community community;
        NVImageView imageView;
        Activity launchActivity;
        SmoothProgressBar progressBar;
        boolean recent;

        public MyLaunchHelper(NVContext nVContext) {
            super(nVContext, "Right Side Panel");
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i, float f) {
            SmoothProgressBar smoothProgressBar = this.progressBar;
            if (smoothProgressBar != null) {
                smoothProgressBar.setProgress((int) (f * 100.0f));
            }
        }

        public void launchRecent(Community community, NVImageView nVImageView) {
            this.community = community;
            this.imageView = nVImageView;
            this.progressBar = null;
            this.recent = true;
            launchCid(community.id, null);
        }

        public void launchCommunity(Community community, NVImageView nVImageView, SmoothProgressBar smoothProgressBar) {
            this.community = community;
            this.imageView = nVImageView;
            this.progressBar = smoothProgressBar;
            smoothProgressBar.setVisibility(0);
            smoothProgressBar.setMax(100);
            smoothProgressBar.setProgress(0);
            this.recent = false;
            launchCid(community.id, nVImageView.getDrawable());
        }

        private void launchCid(int i, Drawable drawable) {
            User user;
            String str;
            List<Community> list = DrawerRightHost.this.myCommunityListService.list();
            Community community = null;
            if (list != null) {
                for (Community community2 : list) {
                    if (community2.id == i) {
                        User userProfile = DrawerRightHost.this.myCommunityListService.getUserProfile(i);
                        String userInfoTimestamp = DrawerRightHost.this.myCommunityListService.getUserInfoTimestamp(i);
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
            launch(i, community, str, user, str, DrawerRightHost.this.myCommunityListService.getReminder(i), DrawerRightHost.this.myCommunityListService.getReminderTimestamp(i), false, 2, drawable);
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
            if (this.community == null || (activity = DrawerRightHost.this.activity) == null) {
                return;
            }
            NVImageView nVImageView = this.imageView;
            if (nVImageView == null || (drawable = this.launchImageDrawable) == null) {
                super.onFinish();
                DrawerRightHost.this.removeLaunchSplashAndCloseDrawer();
            } else {
                this.launchActivity = activity;
                SplashUtils.splash(this.launchActivity, nVImageView, drawable, new Callback<Boolean>() { // from class: com.narvii.drawer.DrawerRightHost.MyLaunchHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            EnterCommunityHelper.SOURCE.set(MyLaunchHelper.this.source);
                            MyLaunchHelper.super.onFinish();
                            DrawerRightHost.this.removeLaunchSplashAndCloseDrawer();
                        }
                    }
                });
            }
        }
    }

    void cancelLaunch() {
        MyLaunchHelper myLaunchHelper = this.launchHelper;
        if (myLaunchHelper != null) {
            myLaunchHelper.cancel();
        }
        this.launchHelper = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThemeUI() {
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 == null) {
            return;
        }
        int iColorPrimary = ((ConfigService) ((NVContext) componentCallbacks2).getService("config")).getTheme().colorPrimary();
        this.blurView.setOverlayColor(Color.argb(56, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)));
    }
}

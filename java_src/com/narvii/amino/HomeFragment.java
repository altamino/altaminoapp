package com.narvii.amino;

import android.app.ActionBar;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.page.EmptyHomePage;
import com.narvii.amino.page.FailoverPage;
import com.narvii.amino.speeddial.SpeedDialHeaderLayout;
import com.narvii.amino.speeddial.SpeedDialLayout;
import com.narvii.amino.speeddial.mode.LiveCategory;
import com.narvii.amino.speeddial.mode.SpeedDialResponse;
import com.narvii.app.DrawerActivity;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.community.CBBHost;
import com.narvii.community.CommunityService;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.config.ConfigService;
import com.narvii.influencer.FanClub;
import com.narvii.list.NVListFragment;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerActivity;
import com.narvii.livelayer.LiveLayerFragment;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.StandaloneRecyclerImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.modulization.page.Page;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.post.entry.PostEntryView;
import com.narvii.services.ApiServiceProvider;
import com.narvii.services.ServiceManager;
import com.narvii.user.feature.FeatureUserHelper;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.ScaleView;
import com.narvii.widget.headercollapse.NVHeaderCollapsibleLayout;
import com.narvii.widget.headercollapse.OnHeaderStatusChangedListener;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public class HomeFragment extends NVBaseScrollableTabFragment implements NVFragment.MenuHost, OnHeaderStatusChangedListener, AccountService.FanClubListListener, NotificationListener {
    private static final int AUTO_REFRESH_TIME = 20000;
    static Field fMenuItemShowAsAction;
    SpeedDialHeaderLayout collapsibleHeaderLayout;
    NVHeaderCollapsibleLayout collapsibleLayout;
    CommunityConfigHelper communityConfigHelper;
    CommunityService communityService;
    CommunityConfigHelper configHelper;
    ConfigService configService;
    NVFragment currentShowingFragment;
    boolean featureMemberEnabled;
    List<User> featureUserList;
    private ApiRequest featuredUserRequest;
    List<Page> homePages;
    private SoftKeyboard.KeyboardObserver keyboardObserver;
    MasterThemeHelper masterThemeHelper;
    FrameLayout menuFrame;
    boolean pageCreateComplete;
    int pageScrollState;
    NVPagerTabLayout scrollableTabLayout;
    Integer startPageIndex;
    SwipeRefreshLayout swipeRefreshLayout;
    List<NVScrollablePagerAdapter.TabInfo> tabs;
    final HashMap<Fragment, HomeMenuController> menuControllers = new HashMap<>();
    private long lastSpeedDialQueryTime = 0;
    private boolean isSpeedDialInitialCall = true;
    boolean skipLayout = true;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.amino.HomeFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConfigService configService = (ConfigService) HomeFragment.this.getService("config");
            SpeedDialHeaderLayout speedDialHeaderLayout = HomeFragment.this.getSpeedDialHeaderLayout();
            if (intent.getIntExtra("id", 0) == configService.getCommunityId()) {
                String action = intent.getAction();
                char c = 65535;
                int iHashCode = action.hashCode();
                if (iHashCode != -1349322384) {
                    if (iHashCode != -1120962508) {
                        if (iHashCode == 234247767 && action.equals(FeatureUserHelper.ACTION_FEATURE_USER_CHANGED)) {
                            c = 1;
                        }
                    } else if (action.equals(AccountService.ACTION_ACCOUNT_CHANGED)) {
                        c = 2;
                    }
                } else if (action.equals(CommunityService.ACTION_COMMUNITY_CHANGED)) {
                    c = 0;
                }
                if (c != 0) {
                    if (c == 1) {
                        HomeFragment.this.sendFeaturedUserListRequest();
                        return;
                    } else {
                        if (c == 2 && speedDialHeaderLayout != null) {
                            speedDialHeaderLayout.updateAccountInfo();
                            return;
                        }
                        return;
                    }
                }
                if (!Utils.isListEquals(HomeFragment.this.configHelper.getHomePageList(), HomeFragment.this.homePages)) {
                    Utils.handler.removeCallbacks(HomeFragment.this.reset);
                    Utils.post(HomeFragment.this.reset);
                }
                boolean zIsFeaturedMemberEnabled = HomeFragment.this.communityConfigHelper.isFeaturedMemberEnabled();
                HomeFragment homeFragment = HomeFragment.this;
                if (zIsFeaturedMemberEnabled != homeFragment.featureMemberEnabled) {
                    homeFragment.featureMemberEnabled = zIsFeaturedMemberEnabled;
                    if (zIsFeaturedMemberEnabled) {
                        homeFragment.sendFeaturedUserListRequest();
                    } else {
                        homeFragment.checkFeaturedUser();
                    }
                }
                if (speedDialHeaderLayout != null) {
                    speedDialHeaderLayout.reConfigNormalItemViews();
                    speedDialHeaderLayout.updateCommunityInfo();
                }
            }
        }
    };
    private final Runnable reset = new Runnable() { // from class: com.narvii.amino.HomeFragment.2
        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            List<Page> homePageList = HomeFragment.this.configHelper.getHomePageList();
            HomeFragment homeFragment = HomeFragment.this;
            homeFragment.homePages = homePageList;
            homeFragment.startPageIndex = homeFragment.configHelper.getStartPageIndex();
            if (HomeFragment.this.isAdded()) {
                HomeFragment.this.resetAdapter();
            }
            Utils.post(new Runnable() { // from class: com.narvii.amino.HomeFragment.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (HomeFragment.this.getCurIndex() == HomeFragment.this.defaultTabIndex() && HomeFragment.this.isAdded()) {
                        HomeFragment homeFragment2 = HomeFragment.this;
                        homeFragment2.pageChangeListener.onPageSelected(homeFragment2.defaultTabIndex());
                    }
                }
            });
        }
    };
    private int refreshingCount = 0;
    private final Callback<Integer> headerRefreshCallback = new Callback<Integer>() { // from class: com.narvii.amino.HomeFragment.3
        @Override // com.narvii.util.Callback
        public void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout;
            HomeFragment.access$410(HomeFragment.this);
            if (HomeFragment.this.refreshingCount != 0 || (swipeRefreshLayout = HomeFragment.this.swipeRefreshLayout) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
        }
    };
    private final Callback<Integer> bodyRefreshCallback = new Callback<Integer>() { // from class: com.narvii.amino.HomeFragment.4
        @Override // com.narvii.util.Callback
        public void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout;
            HomeFragment.access$410(HomeFragment.this);
            if (HomeFragment.this.refreshingCount != 0 || (swipeRefreshLayout = HomeFragment.this.swipeRefreshLayout) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
        }
    };
    SpeedDialLayout.SpeedDialItemClickListener speedDialItemClickListener = new SpeedDialLayout.SpeedDialItemClickListener() { // from class: com.narvii.amino.HomeFragment.5
        @Override // com.narvii.amino.speeddial.SpeedDialLayout.SpeedDialItemClickListener
        public void onNormalItemClicked(View view, LiveCategory liveCategory) {
            Intent intent = LiveLayerActivity.intent(LiveLayerFragment.class);
            intent.putExtra("customFinishAnimOut", com.narvii.amino.mastes.R.anim.activity_push_bottom_out);
            intent.putExtra("customFinishAnimIn", 0);
            intent.putExtra("targetTopic", LiveCategory.getLiveCategoryType(liveCategory == null ? null : liveCategory.topic));
            intent.putExtra("Source", "Speed Dial");
            LiveLayerActivity.prepare(HomeFragment.this.getActivity());
            HomeFragment.this.startActivity(intent);
            HomeFragment.this.getActivity().overridePendingTransition(com.narvii.amino.mastes.R.anim.activity_push_bottom_in, 0);
        }

        @Override // com.narvii.amino.speeddial.SpeedDialLayout.SpeedDialItemClickListener
        public void onLiveItemClicked(View view, ChatThread chatThread) {
            if (chatThread == null) {
                return;
            }
            SpeedDialHeaderLayout speedDialHeaderLayout = HomeFragment.this.getSpeedDialHeaderLayout();
            if (speedDialHeaderLayout != null) {
                StandaloneRecyclerImpressionCollector<ChatThread> standaloneRecyclerImpressionCollector = speedDialHeaderLayout.ipc;
                ObjectInfo impressionObjectInfo = standaloneRecyclerImpressionCollector != null ? standaloneRecyclerImpressionCollector.getImpressionObjectInfo(chatThread) : null;
                LogEvent.Builder builderActSemantic = LogEvent.builder(HomeFragment.this).objectInfo(impressionObjectInfo).actClick().actSemantic(ActSemantic.checkDetail);
                StandaloneRecyclerImpressionCollector<ChatThread> standaloneRecyclerImpressionCollector2 = speedDialHeaderLayout.ipc;
                if (standaloneRecyclerImpressionCollector2 != null) {
                    standaloneRecyclerImpressionCollector2.completeImpressionLogBuilder(builderActSemantic, impressionObjectInfo);
                }
                builderActSemantic.send();
            }
            new VVChatEntryHelper(HomeFragment.this);
        }
    };
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.amino.HomeFragment.11
        private int curSelectedPos;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
            List<NVScrollablePagerAdapter.TabInfo> list;
            int i3;
            Fragment fragmentAtIndex = HomeFragment.this.getFragmentAtIndex(i);
            Fragment fragmentAtIndex2 = (f == 0.0f || (list = HomeFragment.this.tabs) == null || (i3 = i + 1) >= list.size()) ? null : HomeFragment.this.getFragmentAtIndex(i3);
            if (fragmentAtIndex != 0 && fragmentAtIndex2 != null && fragmentAtIndex.getView() != null && fragmentAtIndex2.getView() != null) {
                fragmentAtIndex.getView().setVisibility(0);
                fragmentAtIndex2.getView().setVisibility(0);
            }
            if (HomeFragment.this.getActivity() instanceof DrawerActivity) {
                float f2 = fragmentAtIndex instanceof NVFragment ? ((NVFragment) fragmentAtIndex).hasPostEntry() == Boolean.FALSE ? 0 : 1 : 1.0f;
                float f3 = (f2 * (1.0f - f)) + ((fragmentAtIndex2 instanceof NVFragment ? ((NVFragment) fragmentAtIndex2).hasPostEntry() == Boolean.FALSE ? 0 : 1 : f2) * f);
                PostEntryView postEntryView = ((DrawerActivity) HomeFragment.this.getActivity()).getPostEntryView();
                if (postEntryView != null) {
                    View viewFindViewById = postEntryView.findViewById(com.narvii.amino.mastes.R.id.post_entry_frame);
                    viewFindViewById.setAlpha(f3);
                    if (f3 == 0.0f) {
                        if (viewFindViewById.getVisibility() != 8) {
                            viewFindViewById.setVisibility(8);
                        }
                    } else if (viewFindViewById.getVisibility() != 0) {
                        viewFindViewById.setVisibility(0);
                    }
                }
            }
            if (HomeFragment.this.getActivity() instanceof DrawerActivity) {
                float f4 = fragmentAtIndex instanceof NVFragment ? ((NVFragment) fragmentAtIndex).hasOnlineBar() == Boolean.FALSE ? 0 : 1 : 1.0f;
                float f5 = (f4 * (1.0f - f)) + ((fragmentAtIndex2 instanceof NVFragment ? ((NVFragment) fragmentAtIndex2).hasOnlineBar() == Boolean.FALSE ? 0 : 1 : f4) * f);
                View liveLayerView = ((DrawerActivity) HomeFragment.this.getActivity()).getLiveLayerView();
                if (liveLayerView != null) {
                    liveLayerView.setAlpha(f5);
                    if (f5 == 0.0f) {
                        if (liveLayerView.getVisibility() != 8) {
                            liveLayerView.setVisibility(8);
                        }
                    } else if (liveLayerView.getVisibility() != 0) {
                        liveLayerView.setVisibility(0);
                    }
                }
            }
            if (HomeFragment.this.getActivity() instanceof DrawerActivity) {
                float f6 = fragmentAtIndex instanceof NVFragment ? !((NVFragment) fragmentAtIndex).hideCBBInHomeFragment() ? 1 : 0 : 1.0f;
                float f7 = (f6 * (1.0f - f)) + ((fragmentAtIndex2 instanceof NVFragment ? !((NVFragment) fragmentAtIndex2).hideCBBInHomeFragment() ? 1 : 0 : f6) * f);
                View cBBView = ((DrawerActivity) HomeFragment.this.getActivity()).getCBBView();
                if (cBBView != null) {
                    cBBView.setAlpha(f7);
                    if (f7 == 0.0f) {
                        ((DrawerActivity) HomeFragment.this.getActivity()).setDisableCBB(true);
                    } else {
                        ((DrawerActivity) HomeFragment.this.getActivity()).setDisableCBB(false);
                    }
                }
            }
            int dimensionPixelSize = HomeFragment.this.tabs.size() > 1 ? HomeFragment.this.getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.home_tab_bar_height) : 0;
            boolean z = fragmentAtIndex instanceof HasExtraHeight;
            if (z) {
                ((HasExtraHeight) fragmentAtIndex).setExtraHeight(dimensionPixelSize);
            }
            boolean z2 = fragmentAtIndex2 instanceof HasExtraHeight;
            if (z2) {
                ((HasExtraHeight) fragmentAtIndex2).setExtraHeight(dimensionPixelSize);
            }
            float tabAlpha = z ? ((HasExtraHeight) fragmentAtIndex).getTabAlpha() : 1.0f;
            float tabAlpha2 = z2 ? ((HasExtraHeight) fragmentAtIndex2).getTabAlpha() : 1.0f;
            float f8 = 1.0f - f;
            float f9 = (tabAlpha * f8) + (tabAlpha2 * f);
            int iColorPrimary = HomeFragment.this.configService.getTheme().colorPrimary();
            if (f9 > 1.0f) {
                f9 = 1.0f;
            }
            int iArgb = Color.argb((int) (f9 * 255.0f), Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary));
            if (iArgb != (HomeFragment.this.getTabLayout().getBackground() instanceof ColorDrawable ? ((ColorDrawable) HomeFragment.this.getTabLayout().getBackground()).getColor() : -1)) {
                HomeFragment.this.getTabLayout().setBackgroundDrawable(new ColorDrawable(iArgb));
            }
            HomeMenuController homeMenuController = HomeFragment.this.menuControllers.get(fragmentAtIndex);
            View view = homeMenuController == null ? null : homeMenuController.getView();
            HomeMenuController homeMenuController2 = HomeFragment.this.menuControllers.get(fragmentAtIndex2);
            View view2 = homeMenuController2 == null ? null : homeMenuController2.getView();
            if (view != null) {
                view.setAlpha(f8);
            }
            if (view2 != null) {
                view2.setAlpha(f);
            }
            for (int childCount = HomeFragment.this.menuFrame.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = HomeFragment.this.menuFrame.getChildAt(childCount);
                if (childAt == view) {
                    view = null;
                } else if (childAt == view2) {
                    view2 = null;
                } else {
                    HomeFragment.this.menuFrame.removeViewAt(childCount);
                }
            }
            if (view != null) {
                HomeFragment.this.menuFrame.addView(view);
            }
            if (view2 != null) {
                HomeFragment.this.menuFrame.addView(view2);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            PostEntryView postEntryView;
            this.curSelectedPos = i;
            Fragment fragmentAtIndex = HomeFragment.this.getFragmentAtIndex(i);
            boolean z = fragmentAtIndex instanceof NVFragment;
            if (z) {
                HomeFragment.this.currentShowingFragment = (NVFragment) fragmentAtIndex;
            }
            if ((HomeFragment.this.getActivity() instanceof DrawerActivity) && (postEntryView = ((DrawerActivity) HomeFragment.this.getActivity()).getPostEntryView()) != null) {
                postEntryView.setLift1(z ? ((NVFragment) fragmentAtIndex).getPostEntryLift() : 0, HomeFragment.this.pageCreateComplete);
            }
            LiveLayerHost liveLayerHost = (LiveLayerHost) HomeFragment.this.getService("liveLayerHost");
            if (!z || liveLayerHost == null || liveLayerHost.onlineBar != null) {
            }
            CBBHost cBBHost = (CBBHost) HomeFragment.this.getService("cbbHost");
            if (!z || cBBHost != null) {
            }
            if (HomeFragment.this.scrollableTabLayout != null) {
                for (int i2 = 0; i2 < HomeFragment.this.scrollableTabLayout.getTabCount(); i2++) {
                    View childTabAt = HomeFragment.this.scrollableTabLayout.getChildTabAt(i2);
                    if (childTabAt != null) {
                        TextView textView = (TextView) childTabAt.findViewById(com.narvii.amino.mastes.R.id.tab_title);
                        if (i2 == i) {
                            if (textView != null) {
                                textView.setAlpha(1.0f);
                                textView.setTextSize(1, 17.0f);
                            }
                        } else if (textView != null) {
                            textView.setAlpha(0.6f);
                            textView.setTextSize(1, 15.0f);
                        }
                    }
                }
            }
            SoftKeyboard.hideSoftKeyboard(HomeFragment.this.getContext());
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            HomeFragment.this.pageScrollState = i;
            if (i == 0) {
                int i2 = 0;
                while (i2 < ((NVBaseScrollableTabFragment) HomeFragment.this).mViewPager.getAdapter().getCount()) {
                    Fragment fragmentAtIndex = HomeFragment.this.getFragmentAtIndex(i2);
                    if (fragmentAtIndex != null && fragmentAtIndex.getView() != null) {
                        fragmentAtIndex.getView().setVisibility(i2 == this.curSelectedPos ? 0 : 8);
                    }
                    i2++;
                }
            }
        }
    };
    Runnable autoRefreshSpeedDialRunnable = new Runnable() { // from class: com.narvii.amino.HomeFragment.12
        @Override // java.lang.Runnable
        public void run() {
            NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = HomeFragment.this.collapsibleLayout;
            if (nVHeaderCollapsibleLayout != null && nVHeaderCollapsibleLayout.getCurrentHeaderStatus() == 4 && HomeFragment.this.isAdded() && HomeFragment.this.isActive()) {
                HomeFragment.this.sendSpeedDialRequest(false);
            }
        }
    };

    public interface HasExtraHeight {
        float getTabAlpha();

        void setExtraHeight(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFeaturedUser(boolean z) {
    }

    private void checkInfluencer() {
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 10;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Amino";
    }

    @Override // com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    @Override // com.narvii.account.AccountService.FanClubListListener
    public void onFanClubListChanged(List<FanClub> list) {
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderStartCollapsing() {
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderStartExpanding() {
    }

    @Override // com.narvii.app.NVFragment
    protected boolean showThemeColorAsAlternativeBackground() {
        return true;
    }

    static /* synthetic */ int access$408(HomeFragment homeFragment) {
        int i = homeFragment.refreshingCount;
        homeFragment.refreshingCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$410(HomeFragment homeFragment) {
        int i = homeFragment.refreshingCount;
        homeFragment.refreshingCount = i - 1;
        return i;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.configService = (ConfigService) getService("config");
        this.communityService = (CommunityService) getService("community");
        this.masterThemeHelper = new MasterThemeHelper(this);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        registerLocalReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(FeatureUserHelper.ACTION_FEATURE_USER_CHANGED));
        this.configHelper = new CommunityConfigHelper(this);
        this.homePages = this.configHelper.getHomePageList();
        this.startPageIndex = this.configHelper.getStartPageIndex();
        setHasOptionsMenu(true);
        sendFeaturedUserListRequest(true, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.mastes.R.layout.home_tab_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        this.collapsibleLayout = (NVHeaderCollapsibleLayout) view.findViewById(com.narvii.amino.mastes.R.id.collapsible_layout);
        this.collapsibleLayout.addOnHeaderStatusChangedListener(this);
        this.collapsibleHeaderLayout = (SpeedDialHeaderLayout) view.findViewById(com.narvii.amino.mastes.R.id.home_header_layout);
        if (this.collapsibleLayout.getTopView() instanceof SpeedDialHeaderLayout) {
            ((SpeedDialHeaderLayout) this.collapsibleLayout.getTopView()).setOnHeaderInvalidatedListener(new SpeedDialHeaderLayout.OnHeaderInvalidatedListener() { // from class: com.narvii.amino.-$$Lambda$HomeFragment$99fj4wHMmGQ9JUbpUrBgIdEo25c
                @Override // com.narvii.amino.speeddial.SpeedDialHeaderLayout.OnHeaderInvalidatedListener
                public final void notifyHeaderInvalidated(View view2, boolean z) {
                    this.f$0.lambda$onViewCreated$0$HomeFragment(view2, z);
                }
            });
            if (getActivity() instanceof MainActivity) {
                ((MainActivity) getActivity()).updateOverlayListPlaceholder((OverlayListPlaceholder) view.findViewById(com.narvii.amino.mastes.R.id.fake_action_bar));
            }
            this.collapsibleHeaderLayout.setSpeedDialItemClicked(this.speedDialItemClickListener);
            checkInfluencer();
            checkFeaturedUser();
        }
        this.menuFrame = (FrameLayout) view.findViewById(com.narvii.amino.mastes.R.id.menu_frame);
        this.scrollableTabLayout = (NVPagerTabLayout) view.findViewById(com.narvii.amino.mastes.R.id.tabs);
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(com.narvii.amino.mastes.R.id.home_swipe_refresh_layout);
        super.onViewCreated(view, bundle);
        this.scrollableTabLayout.setScrollOffset(getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.tab_scroll_offset));
        setPageChangeListener(this.pageChangeListener);
        setupSwipeRefreshLayout();
        this.mViewPager.setBackgroundDrawable(new ColorDrawable(-1));
        ((AccountService) getService("account")).addFanClubListListener(this);
        getSpeedDialHeaderLayout().ipc.setRootView(view);
        this.keyboardObserver = SoftKeyboard.observeKeyboard(view, new Callback() { // from class: com.narvii.amino.-$$Lambda$HomeFragment$C7MbfacKPwwfvzwfQmtD4KhpZEI
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$onViewCreated$1$HomeFragment((Boolean) obj);
            }
        });
    }

    public /* synthetic */ void lambda$onViewCreated$0$HomeFragment(View view, boolean z) {
        if (getActivity() != null) {
            Fragment fragmentFindFragmentByTag = getActivity().getSupportFragmentManager().findFragmentByTag("communityNavBar");
            if (fragmentFindFragmentByTag instanceof CommunityNavBarFragment) {
                ((CommunityNavBarFragment) fragmentFindFragmentByTag).hideCommunityView();
            }
        }
    }

    public /* synthetic */ void lambda$onViewCreated$1$HomeFragment(Boolean bool) {
        if (!bool.booleanValue() || getLifecycleState() < 3) {
            return;
        }
        this.collapsibleLayout.collapse();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        SpeedDialHeaderLayout speedDialHeaderLayout = getSpeedDialHeaderLayout();
        if (speedDialHeaderLayout != null) {
            speedDialHeaderLayout.updateCommunityInfo();
            if (this.collapsibleLayout.getCurrentHeaderStatus() == 4 || this.collapsibleLayout.getCurrentHeaderStatus() == 3) {
                return;
            }
            this.collapsibleLayout.smoothExpand();
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        ((AccountService) getService("account")).removeFanClubListListener(this);
        super.onDestroyView();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification.obj instanceof ChatThread) && "update".equals(notification.action)) {
            getSpeedDialHeaderLayout().updateFeaturedChatThreadList((ChatThread) notification.obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SpeedDialHeaderLayout getSpeedDialHeaderLayout() {
        if (this.collapsibleHeaderLayout != null && (this.collapsibleLayout.getTopView() instanceof SpeedDialHeaderLayout)) {
            return (SpeedDialHeaderLayout) this.collapsibleLayout.getTopView();
        }
        return null;
    }

    private boolean isFeaturedMemberEnabled() {
        boolean zIsFeaturedMemberEnabled = this.communityConfigHelper.isFeaturedMemberEnabled();
        this.featureMemberEnabled = zIsFeaturedMemberEnabled;
        return zIsFeaturedMemberEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFeaturedUser() {
        checkFeaturedUser(false);
    }

    public boolean shouldShowSpeedDial() {
        CommunityConfigHelper communityConfigHelper;
        return Utils.isEligibleForSpeedDial() && (communityConfigHelper = this.communityConfigHelper) != null && !communityConfigHelper.isSpeedDialDisabled() && this.communityConfigHelper.isChatEnabled() && this.communityConfigHelper.isPublicChatEnabled() && (this.communityConfigHelper.isScreenRoomEnable() || this.communityConfigHelper.isAvatarChatEnable() || this.communityConfigHelper.isVideoChatEnable() || this.communityConfigHelper.isAudio2ChatEnable());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        ActionBar actionBar = getActivity().getActionBar();
        if (actionBar != null) {
            actionBar.show();
        }
        Utils.post(new Runnable() { // from class: com.narvii.amino.HomeFragment.6
            @Override // java.lang.Runnable
            public void run() {
                HomeFragment.this.pageCreateComplete = true;
            }
        });
        ViewPager.OnPageChangeListener onPageChangeListener = this.pageChangeListener;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(getCurIndex());
        }
        Utils.handler.removeCallbacks(this.autoRefreshSpeedDialRunnable);
        Utils.postDelayed(this.autoRefreshSpeedDialRunnable, 20000L);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        Utils.handler.removeCallbacks(this.autoRefreshSpeedDialRunnable);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        Runnable runnable = this.reset;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
    }

    private void setupSwipeRefreshLayout() {
        this.swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.narvii.amino.HomeFragment.7
            @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                HomeFragment homeFragment = HomeFragment.this;
                if (homeFragment.currentShowingFragment != null) {
                    HomeFragment.access$408(homeFragment);
                    HomeFragment homeFragment2 = HomeFragment.this;
                    NVFragment nVFragment = homeFragment2.currentShowingFragment;
                    if (nVFragment instanceof NVListFragment) {
                        ((NVListFragment) nVFragment).onRefresh(homeFragment2.bodyRefreshCallback);
                    } else {
                        nVFragment.manuallyRefresh(homeFragment2.bodyRefreshCallback);
                    }
                }
                HomeFragment.this.sendFeaturedUserListRequest(true, true);
            }
        });
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        int actionBarOverlaySize = getActionBarOverlaySize();
        if (actionBarOverlaySize > 0) {
            actionBarOverlaySize += getStatusBarOverlaySize();
        }
        this.swipeRefreshLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(com.narvii.amino.mastes.R.dimen.swipe_refresh_start) + actionBarOverlaySize, actionBarOverlaySize + getResources().getDimensionPixelOffset(com.narvii.amino.mastes.R.dimen.swipe_refresh_end));
    }

    private void sendSpeedDialRequest() {
        sendSpeedDialRequest(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFeaturedUserListRequest() {
        sendFeaturedUserListRequest(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFeaturedUserListRequest(final boolean z, final boolean z2) {
        if (!isFeaturedMemberEnabled()) {
            this.skipLayout = false;
            if (z) {
                sendSpeedDialRequest(z2);
                return;
            }
            return;
        }
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.featuredUserRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.featuredUserRequest = null;
        }
        this.featuredUserRequest = ApiRequest.builder().path("/user-profile").param("type", Module.MODULE_FEATURED).build();
        apiService.exec(this.featuredUserRequest, new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.amino.HomeFragment.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, UserListResponse userListResponse) throws Exception {
                super.onFinish(apiRequest2, (ApiRequest) userListResponse);
                HomeFragment.this.featuredUserRequest = null;
                HomeFragment.this.featureUserList = userListResponse.list();
                HomeFragment homeFragment = HomeFragment.this;
                homeFragment.checkFeaturedUser(homeFragment.skipLayout);
                if (z) {
                    HomeFragment.this.sendSpeedDialRequest(z2);
                }
                HomeFragment.this.skipLayout = false;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest2, i, list, str, apiResponse, th);
                if (z) {
                    HomeFragment.this.sendSpeedDialRequest(z2);
                }
                HomeFragment.this.featuredUserRequest = null;
                HomeFragment.this.skipLayout = false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSpeedDialRequest(final boolean z) {
        if (shouldShowSpeedDial()) {
            if (z) {
                this.refreshingCount++;
            }
            Utils.handler.removeCallbacks(this.autoRefreshSpeedDialRunnable);
            Utils.postDelayed(this.autoRefreshSpeedDialRunnable, 20000L);
            this.lastSpeedDialQueryTime = System.currentTimeMillis();
            ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/live-layer/speed-dial-public").param("v", 2).build(), new ApiResponseListener<SpeedDialResponse>(SpeedDialResponse.class) { // from class: com.narvii.amino.HomeFragment.9
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, SpeedDialResponse speedDialResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) speedDialResponse);
                    if (HomeFragment.this.isAdded()) {
                        if (speedDialResponse != null && HomeFragment.this.isSpeedDialInitialCall && HomeFragment.this.collapsibleLayout != null) {
                            List<ChatThread> list = speedDialResponse.threadList;
                            if (list != null && !list.isEmpty() && HomeFragment.this.collapsibleLayout.getCurrentHeaderStatus() != 4 && HomeFragment.this.collapsibleLayout.getCurrentHeaderStatus() != 3) {
                                HomeFragment.this.collapsibleLayout.smoothExpand();
                            }
                            HomeFragment.this.isSpeedDialInitialCall = false;
                        }
                        if (z && HomeFragment.this.headerRefreshCallback != null) {
                            HomeFragment.this.headerRefreshCallback.call(0);
                        }
                        NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = HomeFragment.this.collapsibleLayout;
                        if (nVHeaderCollapsibleLayout == null || !(nVHeaderCollapsibleLayout.getTopView() instanceof SpeedDialHeaderLayout)) {
                            return;
                        }
                        ((SpeedDialHeaderLayout) HomeFragment.this.collapsibleLayout.getTopView()).updateSpeedDial(speedDialResponse);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    if (!z || HomeFragment.this.headerRefreshCallback == null) {
                        return;
                    }
                    HomeFragment.this.headerRefreshCallback.call(1);
                }
            });
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        Integer num = this.startPageIndex;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() throws Resources.NotFoundException, ClassNotFoundException {
        Adapter adapter = new Adapter(getContext(), getChildFragmentManager());
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            Uri uri = null;
            if (i >= this.homePages.size()) {
                break;
            }
            Page page = this.homePages.get(Utils.isRtl() ? (this.homePages.size() - 1) - i : i);
            String string = page.id;
            if (string == null) {
                string = UUID.randomUUID().toString();
            }
            String str = string;
            String displayName = page.getDisplayName(getContext());
            CommunityConfigHelper.InlineMapping inlineMapping = this.configHelper.inlineMapping(page.url);
            Class cls = inlineMapping == null ? FailoverPage.class : inlineMapping.component;
            Bundle bundle = inlineMapping == null ? null : inlineMapping.args;
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = bundle;
            bundle2.putBoolean("__embed", true);
            try {
                uri = Uri.parse(page.url);
            } catch (Exception unused) {
            }
            bundle2.putParcelable("__url", uri);
            bundle2.putString("Source", "Home Page");
            arrayList.add(new NVScrollablePagerAdapter.TabInfo(str, displayName, getTabView(displayName, page.getIcon(getContext())), cls, bundle2));
            i++;
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new NVScrollablePagerAdapter.TabInfo("emptyHome", "", getTabView("", null), EmptyHomePage.class, null));
        }
        this.tabs = arrayList;
        adapter.setTabs(arrayList);
        boolean z = this.tabs.size() > 1;
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.home_tab_bar_height);
        getTabLayout().setVisibility(z ? 0 : 8);
        ((ViewGroup.MarginLayoutParams) this.mViewPager.getLayoutParams()).topMargin = z ? dimensionPixelSize : 0;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.menuFrame.getLayoutParams();
        if (!z) {
            dimensionPixelSize = 0;
        }
        marginLayoutParams.topMargin = dimensionPixelSize;
        this.mViewPager.requestLayout();
        this.menuFrame.requestLayout();
        Utils.post(new Runnable() { // from class: com.narvii.amino.HomeFragment.10
            int c = 0;

            @Override // java.lang.Runnable
            public void run() {
                if (HomeFragment.this.isAdded() && HomeFragment.this.getCurIndex() == HomeFragment.this.defaultTabIndex() && HomeFragment.this.getCurrentFragment() != null) {
                    HomeFragment homeFragment = HomeFragment.this;
                    homeFragment.pageChangeListener.onPageSelected(homeFragment.defaultTabIndex());
                    return;
                }
                int i2 = this.c + 1;
                this.c = i2;
                if (i2 < 4) {
                    Utils.post(this);
                }
            }
        });
        return adapter;
    }

    class Adapter extends NVScrollablePagerAdapter {
        public Adapter(Context context, FragmentManager fragmentManager) {
            super(context, fragmentManager);
        }

        @Override // com.narvii.app.NVScrollablePagerAdapter, com.narvii.util.LazyFragmentPagerAdapter
        public Fragment createFragment(int i) {
            Fragment fragmentCreateFragment = super.createFragment(i);
            if (fragmentCreateFragment instanceof NVFragment) {
                NVFragment nVFragment = (NVFragment) fragmentCreateFragment;
                ServiceManager serviceManager = new ServiceManager(nVFragment);
                serviceManager.addServiceProvider("api", new ApiServiceProvider());
                nVFragment.setEmbedServiceManager(serviceManager);
                boolean z = false;
                if (nVFragment instanceof NVListFragment) {
                    NVListFragment nVListFragment = (NVListFragment) nVFragment;
                    nVListFragment.setOverScrollMode(2);
                    nVListFragment.setSwipeRefreshEnabled(false);
                } else if (nVFragment instanceof NVRecyclerViewFragment) {
                    NVRecyclerViewFragment nVRecyclerViewFragment = (NVRecyclerViewFragment) nVFragment;
                    nVRecyclerViewFragment.setOverScrollMode(2);
                    nVRecyclerViewFragment.setSwipeRefreshEnabled(false);
                }
                List<NVScrollablePagerAdapter.TabInfo> list = HomeFragment.this.tabs;
                Page page = null;
                NVScrollablePagerAdapter.TabInfo tabInfo = (list == null || i >= list.size()) ? null : HomeFragment.this.tabs.get(i);
                List<Page> list2 = HomeFragment.this.homePages;
                if (list2 != null && i < list2.size()) {
                    page = HomeFragment.this.homePages.get(i);
                }
                if (tabInfo == null || page == null) {
                    Log.i("home tab " + fragmentCreateFragment.getClass().getSimpleName() + " created");
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("home tab [");
                    sb.append(page);
                    sb.append("] created: ");
                    sb.append(tabInfo.clazz.getSimpleName());
                    if (tabInfo.args != null) {
                        sb.append(" [");
                        for (String str : tabInfo.args.keySet()) {
                            if (!str.startsWith("_")) {
                                if (z) {
                                    sb.append(", ");
                                } else {
                                    z = true;
                                }
                                sb.append(str);
                                sb.append('=');
                                sb.append(tabInfo.args.get(str));
                            }
                        }
                        sb.append("]");
                    }
                    Log.i(sb.toString());
                }
            }
            return fragmentCreateFragment;
        }
    }

    public boolean isFragmentSelected(Fragment fragment) {
        return fragment != null && getFragmentAtIndex(getCurIndex()) == fragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateTabView(Fragment fragment) {
        if (this.pageScrollState == 0 && getCurrentFragment() == fragment) {
            float tabAlpha = fragment instanceof HasExtraHeight ? ((HasExtraHeight) fragment).getTabAlpha() : 1.0f;
            int iColorPrimary = this.configService.getTheme().colorPrimary();
            if (tabAlpha > 1.0f) {
                tabAlpha = 1.0f;
            }
            int iArgb = Color.argb((int) (tabAlpha * 255.0f), Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary));
            if (iArgb != (getTabLayout().getBackground() instanceof ColorDrawable ? ((ColorDrawable) getTabLayout().getBackground()).getColor() : -1)) {
                getTabLayout().setBackgroundDrawable(new ColorDrawable(iArgb));
            }
        }
    }

    private View getTabView(String str, Drawable drawable) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(com.narvii.amino.mastes.R.layout.home_tab_layout, (ViewGroup) null);
        String strTrim = str.trim();
        TextView textView = (TextView) viewInflate.findViewById(com.narvii.amino.mastes.R.id.tab_title);
        if (TextUtils.isEmpty(strTrim)) {
            strTrim = getString(com.narvii.amino.mastes.R.string.draft_untitled);
        }
        textView.setText(strTrim);
        ((TextView) viewInflate.findViewById(com.narvii.amino.mastes.R.id.tab_title)).setTextColor(-1);
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment
    public void smoothScrollToTop() {
        Fragment currentFragment = getCurrentFragment();
        if (currentFragment instanceof NVFragment) {
            ((NVFragment) currentFragment).smoothScrollToTop();
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean canScrollUp() {
        Fragment currentFragment = getCurrentFragment();
        if (currentFragment instanceof NVFragment) {
            return ((NVFragment) currentFragment).canScrollUp();
        }
        return false;
    }

    public void restoreHomeTab() {
        setTabIndex(defaultTabIndex());
        smoothScrollToTop();
    }

    @Override // android.support.v4.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder("Home ");
        sb.append(getCurIndex());
        sb.append(" [");
        NVScrollablePagerAdapter adapter = getAdapter();
        if (this.homePages != null) {
            for (int i = 0; i < this.homePages.size(); i++) {
                Page page = this.homePages.get(i);
                Fragment fragmentAt = adapter.getFragmentAt(i);
                sb.append(i);
                sb.append(":");
                sb.append(page.url);
                if (fragmentAt != null) {
                    sb.append('(');
                    sb.append(fragmentAt.getClass().getSimpleName());
                    sb.append(')');
                }
                if (i < this.homePages.size() - 1) {
                    sb.append("; ");
                }
            }
        }
        sb.append(']');
        return sb.toString();
    }

    class HomeMenuController implements NVFragment.MenuController, Runnable, View.OnClickListener, PopupMenu.OnMenuItemClickListener, PopupMenu.OnDismissListener {
        ViewGroup container;
        boolean hidden;
        Fragment host;
        final int menuHeight;
        View popupBtn;
        boolean popupDirty;
        PopupMenu popupMenu;
        boolean popupShown;
        boolean scrollDisabled;
        int scrollY;
        int topMargin;
        View view;
        ArrayList<NVFragment> clients = new ArrayList<>();
        ArrayList<MenuItem> iconMenus = new ArrayList<>();

        HomeMenuController(Fragment fragment) {
            this.host = fragment;
            this.menuHeight = (int) Utils.dpToPx(HomeFragment.this.getContext(), 50.0f);
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void registerMenu(NVFragment nVFragment) {
            if (this.clients.contains(nVFragment)) {
                return;
            }
            this.clients.add(nVFragment);
            this.popupMenu = null;
            invalidate();
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void unregisterMenu(NVFragment nVFragment) {
            this.clients.remove(nVFragment);
            this.popupMenu = null;
            invalidate();
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void invalidateMenu(NVFragment nVFragment) {
            invalidate();
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void setTopMargin(int i, boolean z) {
            if (this.topMargin != i) {
                this.topMargin = i;
                update(z);
            }
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void setScrollEnabled(boolean z) {
            this.scrollDisabled = !z;
            if (z) {
                return;
            }
            this.hidden = false;
            this.scrollY = 0;
            update(false);
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void onScrollDistance(int i) {
            if (this.scrollDisabled) {
                return;
            }
            if (i <= 0) {
                i /= 2;
            }
            this.scrollY = i;
            update(false);
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void onScrollFinish() {
            int i;
            if (this.scrollDisabled) {
                return;
            }
            if (this.hidden) {
                i = -this.menuHeight;
            } else {
                i = this.topMargin;
            }
            this.hidden = Math.min(this.topMargin, Math.max(-this.menuHeight, i + this.scrollY)) < (this.topMargin - this.menuHeight) / 2;
            this.scrollY = 0;
            update(true);
        }

        void update(boolean z) {
            int i;
            if (this.container != null) {
                if (this.hidden) {
                    i = -this.menuHeight;
                } else {
                    i = this.topMargin;
                }
                int iMin = Math.min(this.topMargin, Math.max(-this.menuHeight, i + this.scrollY));
                if (z) {
                    this.container.animate().translationY(iMin).setDuration(200L).start();
                } else {
                    this.container.setTranslationY(iMin);
                }
            }
        }

        void invalidate() {
            Utils.handler.removeCallbacks(this);
            this.popupDirty = true;
            if (this.popupShown) {
                return;
            }
            Utils.handler.post(this);
        }

        View getView() {
            if (this.view == null) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(HomeFragment.this.menuFrame.getContext());
                this.view = layoutInflaterFrom.inflate(com.narvii.amino.mastes.R.layout.home_menu_controller_layout, (ViewGroup) HomeFragment.this.menuFrame, false);
                this.container = (ViewGroup) this.view;
                update(false);
                this.popupBtn = layoutInflaterFrom.inflate(com.narvii.amino.mastes.R.layout.home_menu_item, this.container, false);
                ((ImageView) this.popupBtn.findViewById(com.narvii.amino.mastes.R.id.home_menu_icon)).setImageResource(com.narvii.amino.mastes.R.drawable.actionbar_ops);
                this.popupBtn.setOnClickListener(this);
                run();
            }
            return this.view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getTag() instanceof MenuItem) {
                onMenuItemClick((MenuItem) view.getTag());
                return;
            }
            Iterator<MenuItem> it = this.iconMenus.iterator();
            while (it.hasNext()) {
                it.next().setVisible(false);
            }
            this.popupMenu.show();
        }

        @Override // android.widget.PopupMenu.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Iterator<NVFragment> it = this.clients.iterator();
            while (it.hasNext()) {
                if (it.next().onOptionsItemSelected(menuItem)) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.widget.PopupMenu.OnDismissListener
        public void onDismiss(PopupMenu popupMenu) {
            Iterator<MenuItem> it = this.iconMenus.iterator();
            while (it.hasNext()) {
                it.next().setVisible(true);
            }
            this.popupShown = false;
            if (this.popupDirty) {
                Utils.handler.removeCallbacks(this);
                run();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.view == null || this.popupShown) {
                return;
            }
            this.popupDirty = false;
            LinkedList linkedList = new LinkedList();
            int childCount = this.container.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.container.getChildAt(i);
                if (childAt != this.popupBtn && (childAt instanceof FrameLayout)) {
                    linkedList.push((FrameLayout) childAt);
                }
            }
            this.container.removeAllViews();
            if (this.popupMenu == null) {
                Fragment fragment = this.host;
                this.popupMenu = new PopupMenu(new ContextThemeWrapper(this.container.getContext(), (fragment instanceof NVFragment) && ((NVFragment) fragment).isDarkTheme() ? android.R.style.Theme.DeviceDefault : android.R.style.Theme.DeviceDefault.Light), this.popupBtn);
                this.popupMenu.setOnMenuItemClickListener(this);
                this.popupMenu.setOnDismissListener(this);
                Iterator<NVFragment> it = this.clients.iterator();
                while (it.hasNext()) {
                    it.next().onCreateOptionsMenu(this.popupMenu.getMenu(), this.popupMenu.getMenuInflater());
                }
            }
            Menu menu = this.popupMenu.getMenu();
            Iterator<NVFragment> it2 = this.clients.iterator();
            while (it2.hasNext()) {
                NVFragment next = it2.next();
                if (next.getActivity() != null) {
                    next.onPrepareOptionsMenu(menu);
                }
            }
            this.iconMenus.clear();
            int size = menu.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                MenuItem item = menu.getItem(i3);
                if (item.isVisible()) {
                    int menuItemShowAsAction = HomeFragment.getMenuItemShowAsAction(item);
                    if ((menuItemShowAsAction & 2) == 0 && (menuItemShowAsAction & 1) == 0) {
                        i2++;
                    } else {
                        this.iconMenus.add(item);
                    }
                }
            }
            if (this.iconMenus.size() > 0) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.container.getContext());
                Iterator<MenuItem> it3 = this.iconMenus.iterator();
                while (it3.hasNext()) {
                    MenuItem next2 = it3.next();
                    FrameLayout frameLayout = linkedList.isEmpty() ? null : (FrameLayout) linkedList.removeFirst();
                    if (frameLayout == null) {
                        frameLayout = (FrameLayout) layoutInflaterFrom.inflate(com.narvii.amino.mastes.R.layout.home_menu_item, this.container, false);
                        frameLayout.setOnClickListener(this);
                    }
                    View actionView = next2.getActionView();
                    Drawable icon = actionView == null ? next2.getIcon() : null;
                    ImageView imageView = (ImageView) frameLayout.findViewById(com.narvii.amino.mastes.R.id.home_menu_icon);
                    ScaleView scaleView = (ScaleView) frameLayout.findViewById(com.narvii.amino.mastes.R.id.home_menu_action_view);
                    int iIntValue = com.narvii.amino.mastes.R.drawable.home_menu_item_bg;
                    if (actionView == null) {
                        scaleView.removeAllViews();
                        scaleView.setVisibility(8);
                    } else {
                        if (actionView.getTag(com.narvii.amino.mastes.R.id.embed_menu_background) instanceof Integer) {
                            iIntValue = ((Integer) actionView.getTag(com.narvii.amino.mastes.R.id.embed_menu_background)).intValue();
                        }
                        scaleView.setScale(actionView.getTag(com.narvii.amino.mastes.R.id.embed_menu_scale) instanceof Number ? ((Number) actionView.getTag(com.narvii.amino.mastes.R.id.embed_menu_scale)).floatValue() : 0.75f);
                        scaleView.setVisibility(0);
                        if (actionView.getParent() != scaleView) {
                            if (actionView.getParent() != null) {
                                ((ViewGroup) actionView.getParent()).removeView(actionView);
                            }
                            scaleView.removeAllViews();
                            scaleView.addView(actionView);
                        }
                    }
                    imageView.setImageDrawable(icon);
                    frameLayout.setBackgroundResource(iIntValue);
                    frameLayout.setTag(next2);
                    this.container.addView(frameLayout);
                }
            }
            if (i2 > 0) {
                this.container.addView(this.popupBtn);
            }
        }
    }

    Fragment getHostFragment(NVFragment nVFragment) {
        while (true) {
            Fragment parentFragment = nVFragment.getParentFragment();
            if (parentFragment == this) {
                return nVFragment;
            }
            if (parentFragment == null) {
                return null;
            }
            nVFragment = parentFragment;
        }
    }

    @Override // com.narvii.app.NVFragment.MenuHost
    public NVFragment.MenuController getMenuController(NVFragment nVFragment) {
        Fragment hostFragment = getHostFragment(nVFragment);
        HomeMenuController homeMenuController = this.menuControllers.get(hostFragment);
        if (homeMenuController != null) {
            return homeMenuController;
        }
        HomeMenuController homeMenuController2 = new HomeMenuController(hostFragment);
        this.menuControllers.put(hostFragment, homeMenuController2);
        return homeMenuController2;
    }

    static int getMenuItemShowAsAction(MenuItem menuItem) {
        try {
            if (fMenuItemShowAsAction == null) {
                for (Class<?> superclass = menuItem.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    try {
                        fMenuItemShowAsAction = menuItem.getClass().getDeclaredField("mShowAsAction");
                        break;
                    } catch (NoSuchFieldException unused) {
                    }
                }
                fMenuItemShowAsAction.setAccessible(true);
            }
            return ((Integer) fMenuItemShowAsAction.get(menuItem)).intValue();
        } catch (Exception unused2) {
            fMenuItemShowAsAction = null;
            return 0;
        }
    }

    public NVHeaderCollapsibleLayout getCollapsibleLayout() {
        return this.collapsibleLayout;
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderCollapsed() {
        this.collapsibleHeaderLayout.updateHeaderOffset(1.0f);
        if (getActivity() != null) {
            Fragment fragmentFindFragmentByTag = getActivity().getSupportFragmentManager().findFragmentByTag("communityNavBar");
            if (fragmentFindFragmentByTag instanceof CommunityNavBarFragment) {
                ((CommunityNavBarFragment) fragmentFindFragmentByTag).showCommunityView();
            }
        }
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderExpanded() {
        if (System.currentTimeMillis() - this.lastSpeedDialQueryTime > 20000) {
            sendSpeedDialRequest();
        }
        this.collapsibleHeaderLayout.updateHeaderOffset(0.0f);
        SpeedDialHeaderLayout speedDialHeaderLayout = getSpeedDialHeaderLayout();
        if (speedDialHeaderLayout != null) {
            speedDialHeaderLayout.logSpeedDialImpression();
        }
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderOffsetChanged(int i, int i2, float f, boolean z) {
        this.collapsibleHeaderLayout.updateHeaderOffset(f);
        if (getActivity() != null) {
            Fragment fragmentFindFragmentByTag = getActivity().getSupportFragmentManager().findFragmentByTag("communityNavBar");
            if (fragmentFindFragmentByTag instanceof CommunityNavBarFragment) {
                if (f >= 1.0d) {
                    ((CommunityNavBarFragment) fragmentFindFragmentByTag).showCommunityView();
                } else {
                    ((CommunityNavBarFragment) fragmentFindFragmentByTag).hideCommunityView();
                }
            }
        }
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        SpeedDialHeaderLayout speedDialHeaderLayout = getSpeedDialHeaderLayout();
        if (speedDialHeaderLayout == null || !z) {
            return;
        }
        speedDialHeaderLayout.logSpeedDialImpression();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.extraParam("isVisitorMode", Boolean.valueOf(isVisitorNotJoined()));
    }

    @Override // com.narvii.app.NVFragment
    public void updateThemeUI() {
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        SpeedDialHeaderLayout speedDialHeaderLayout = getSpeedDialHeaderLayout();
        if (speedDialHeaderLayout != null) {
            speedDialHeaderLayout.updateThemeUI();
        }
        updateTabView(getCurrentFragment());
    }

    public String getCurrentDeepLink() {
        List<Page> list;
        int curIndex = getCurIndex();
        if (Utils.isRtl() && (list = this.homePages) != null) {
            curIndex = (list.size() - 1) - curIndex;
        }
        List<Page> list2 = this.homePages;
        Page page = (list2 == null || curIndex >= list2.size() || curIndex < 0) ? null : this.homePages.get(curIndex);
        if (page != null) {
            return page.url;
        }
        return null;
    }
}

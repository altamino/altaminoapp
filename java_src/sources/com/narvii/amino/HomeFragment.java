package com.narvii.amino;

import android.app.ActionBar;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
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
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
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
import com.narvii.chat.ChatActivity;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.community.CBBHost;
import com.narvii.community.CommunityService;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.FanClub;
import com.narvii.list.NVListFragment;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerActivity;
import com.narvii.livelayer.LiveLayerFragment;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.StandaloneRecyclerImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.modulization.page.Page;
import com.narvii.modulization.page.PageManager;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.ScaleView;
import com.narvii.widget.headercollapse.NVHeaderCollapsibleLayout;
import com.narvii.widget.headercollapse.OnHeaderStatusChangedListener;
import com.safedk.android.utils.Logger;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public class HomeFragment extends NVBaseScrollableTabFragment implements NVFragment.MenuHost, OnHeaderStatusChangedListener, AccountService.FanClubListListener, NotificationListener {
    private static final int AUTO_REFRESH_TIME = 20000;
    static Field fMenuItemShowAsAction;
    SpeedDialHeaderLayout collapsibleHeaderLayout;
    NVHeaderCollapsibleLayout collapsibleLayout;
    CommunityConfigHelper communityConfigHelper;
    CommunityService communityService;
    CommunityConfigHelper configHelper;
    ConfigService configService;
    public int curSelectedPos;
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
                action.hashCode();
                switch (action) {
                    case "com.narvii.action.COMMUNITY_CHANGED":
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
                            break;
                        }
                        break;
                    case "com.narvii.action.ACCOUNT_CHANGED":
                        if (speedDialHeaderLayout != null) {
                            speedDialHeaderLayout.updateAccountInfo();
                            break;
                        }
                        break;
                    case "com.narvii.action.FEATURE_USER_CHANGED":
                        HomeFragment.this.sendFeaturedUserListRequest();
                        break;
                }
            }
        }
    };
    private final Runnable reset = new Runnable() { // from class: com.narvii.amino.HomeFragment.2
        @Override // java.lang.Runnable
        public void run() {
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
            HomeFragment.this.refreshingCount--;
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
            HomeFragment.this.refreshingCount--;
            if (HomeFragment.this.refreshingCount != 0 || (swipeRefreshLayout = HomeFragment.this.swipeRefreshLayout) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
        }
    };
    SpeedDialLayout.SpeedDialItemClickListener speedDialItemClickListener = new SpeedDialLayout.SpeedDialItemClickListener() { // from class: com.narvii.amino.HomeFragment.5
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
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
            new VVChatEntryHelper(HomeFragment.this).launchLiveChannelFromLaunchEvent(chatThread, chatThread.getRTCType(), "Speed Dial Direct", true);
            StatisticsService statisticsService = (StatisticsService) HomeFragment.this.getService("statistics");
            String strStatChannelType = ChatActivity.statChannelType(chatThread.getRTCType());
            statisticsService.event(null).userPropInc("Enters Active VV " + strStatChannelType + " via Speed Dial Direct Total");
        }

        @Override // com.narvii.amino.speeddial.SpeedDialLayout.SpeedDialItemClickListener
        public void onNormalItemClicked(View view, LiveCategory liveCategory) {
            Intent intent = LiveLayerActivity.intent(LiveLayerFragment.class);
            intent.putExtra("customFinishAnimOut", com.narvii.amino.master.R.anim.activity_push_bottom_out);
            intent.putExtra("customFinishAnimIn", 0);
            String liveCategoryType = LiveCategory.getLiveCategoryType(liveCategory == null ? null : liveCategory.topic);
            intent.putExtra("targetTopic", liveCategoryType);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Speed Dial");
            LiveLayerActivity.prepare(HomeFragment.this.getActivity());
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(HomeFragment.this, intent);
            HomeFragment.this.getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.activity_push_bottom_in, 0);
            if (HomeFragment.this.getSpeedDialHeaderLayout() != null) {
                LogEvent.builder(HomeFragment.this).actClick().area("SpeedDial").actSemantic(ActSemantic.listViewEnter).send();
            }
            StatisticsService statisticsService = (StatisticsService) HomeFragment.this.getService("statistics");
            if (LiveCategory.LIVE_CATEGORY_TOPIC_CHAT.equals(liveCategoryType)) {
                statisticsService.event(null).userPropInc("Chatting Speed Dial Total");
            } else if (LiveCategory.LIVE_CATEGORY_TYPE_LIVE_CHATTING.equals(liveCategoryType)) {
                statisticsService.event(null).userPropInc("Live Chatting Speed Dial Total");
            }
        }
    };
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.amino.HomeFragment.9
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
            HomeFragment.this.pageScrollState = i10;
            if (i10 == 0) {
                int i11 = 0;
                while (i11 < ((NVBaseScrollableTabFragment) HomeFragment.this).mViewPager.getAdapter().getCount()) {
                    Fragment fragmentAtIndex = HomeFragment.this.getFragmentAtIndex(i11);
                    if (fragmentAtIndex != null && fragmentAtIndex.getView() != null) {
                        fragmentAtIndex.getView().setVisibility(i11 == HomeFragment.this.curSelectedPos ? 0 : 8);
                    }
                    i11++;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f, int i11) {
            List<NVScrollablePagerAdapter.TabInfo> list;
            int i12;
            Fragment fragmentAtIndex = HomeFragment.this.getFragmentAtIndex(i10);
            Fragment fragmentAtIndex2 = (f == 0.0f || (list = HomeFragment.this.tabs) == null || (i12 = i10 + 1) >= list.size()) ? null : HomeFragment.this.getFragmentAtIndex(i12);
            if (fragmentAtIndex != 0 && fragmentAtIndex2 != null && fragmentAtIndex.getView() != null && fragmentAtIndex2.getView() != null) {
                fragmentAtIndex.getView().setVisibility(0);
                fragmentAtIndex2.getView().setVisibility(0);
            }
            if (HomeFragment.this.getActivity() instanceof DrawerActivity) {
                float f6 = fragmentAtIndex instanceof NVFragment ? ((NVFragment) fragmentAtIndex).hasPostEntry() == Boolean.FALSE ? 0 : 1 : 1.0f;
                float f7 = (f6 * (1.0f - f)) + ((fragmentAtIndex2 instanceof NVFragment ? ((NVFragment) fragmentAtIndex2).hasPostEntry() == Boolean.FALSE ? 0 : 1 : f6) * f);
                PostEntryView postEntryView = ((DrawerActivity) HomeFragment.this.getActivity()).getPostEntryView();
                if (postEntryView != null) {
                    View viewFindViewById = postEntryView.findViewById(com.narvii.amino.master.R.id.post_entry_frame);
                    viewFindViewById.setAlpha(f7);
                    if (f7 == 0.0f) {
                        if (viewFindViewById.getVisibility() != 8) {
                            viewFindViewById.setVisibility(8);
                        }
                    } else if (viewFindViewById.getVisibility() != 0) {
                        viewFindViewById.setVisibility(0);
                    }
                }
            }
            if (HomeFragment.this.getActivity() instanceof DrawerActivity) {
                float f10 = fragmentAtIndex instanceof NVFragment ? ((NVFragment) fragmentAtIndex).hasOnlineBar() == Boolean.FALSE ? 0 : 1 : 1.0f;
                float f11 = (f10 * (1.0f - f)) + ((fragmentAtIndex2 instanceof NVFragment ? ((NVFragment) fragmentAtIndex2).hasOnlineBar() == Boolean.FALSE ? 0 : 1 : f10) * f);
                View liveLayerView = ((DrawerActivity) HomeFragment.this.getActivity()).getLiveLayerView();
                if (liveLayerView != null) {
                    liveLayerView.setAlpha(f11);
                    if (f11 == 0.0f) {
                        if (liveLayerView.getVisibility() != 8) {
                            liveLayerView.setVisibility(8);
                        }
                    } else if (liveLayerView.getVisibility() != 0) {
                        liveLayerView.setVisibility(0);
                    }
                }
            }
            if (HomeFragment.this.getActivity() instanceof DrawerActivity) {
                float f12 = fragmentAtIndex instanceof NVFragment ? !((NVFragment) fragmentAtIndex).hideCBBInHomeFragment() ? 1 : 0 : 1.0f;
                float f13 = (f12 * (1.0f - f)) + ((fragmentAtIndex2 instanceof NVFragment ? !((NVFragment) fragmentAtIndex2).hideCBBInHomeFragment() ? 1 : 0 : f12) * f);
                View cBBView = ((DrawerActivity) HomeFragment.this.getActivity()).getCBBView();
                if (cBBView != null) {
                    cBBView.setAlpha(f13);
                    if (f13 == 0.0f) {
                        ((DrawerActivity) HomeFragment.this.getActivity()).setDisableCBB(true);
                    } else {
                        ((DrawerActivity) HomeFragment.this.getActivity()).setDisableCBB(false);
                    }
                }
            }
            int dimensionPixelSize = HomeFragment.this.tabs.size() > 1 ? HomeFragment.this.getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.home_tab_bar_height) : 0;
            boolean z6 = fragmentAtIndex instanceof HasExtraHeight;
            if (z6) {
                ((HasExtraHeight) fragmentAtIndex).setExtraHeight(dimensionPixelSize);
            }
            boolean z10 = fragmentAtIndex2 instanceof HasExtraHeight;
            if (z10) {
                ((HasExtraHeight) fragmentAtIndex2).setExtraHeight(dimensionPixelSize);
            }
            float tabAlpha = z6 ? ((HasExtraHeight) fragmentAtIndex).getTabAlpha() : 1.0f;
            float tabAlpha2 = z10 ? ((HasExtraHeight) fragmentAtIndex2).getTabAlpha() : 1.0f;
            float f14 = 1.0f - f;
            float f15 = (tabAlpha * f14) + (tabAlpha2 * f);
            int iColorPrimary = HomeFragment.this.configService.getTheme().colorPrimary();
            int iArgb = Color.argb((int) ((f15 <= 1.0f ? f15 : 1.0f) * 255.0f), Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary));
            if (iArgb != (HomeFragment.this.getTabLayout().getBackground() instanceof ColorDrawable ? ((ColorDrawable) HomeFragment.this.getTabLayout().getBackground()).getColor() : -1)) {
                HomeFragment.this.getTabLayout().setBackgroundDrawable(new ColorDrawable(iArgb));
            }
            HomeMenuController homeMenuController = HomeFragment.this.menuControllers.get(fragmentAtIndex);
            View view = homeMenuController == null ? null : homeMenuController.getView();
            HomeMenuController homeMenuController2 = HomeFragment.this.menuControllers.get(fragmentAtIndex2);
            View view2 = homeMenuController2 == null ? null : homeMenuController2.getView();
            if (view != null) {
                view.setAlpha(f14);
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
                if (view.getParent() != null) {
                    ((ViewGroup) view.getParent()).removeView(view);
                }
                HomeFragment.this.menuFrame.addView(view);
            }
            if (view2 != null) {
                if (view2.getParent() != null) {
                    ((ViewGroup) view2.getParent()).removeView(view2);
                }
                HomeFragment.this.menuFrame.addView(view2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            LiveLayerOnlineBar liveLayerOnlineBar;
            PostEntryView postEntryView;
            HomeFragment homeFragment = HomeFragment.this;
            homeFragment.curSelectedPos = i10;
            homeFragment.setScreenNameForTabs();
            Fragment fragmentAtIndex = HomeFragment.this.getFragmentAtIndex(i10);
            boolean z6 = fragmentAtIndex instanceof NVFragment;
            if (z6) {
                HomeFragment.this.currentShowingFragment = (NVFragment) fragmentAtIndex;
            }
            if ((HomeFragment.this.getActivity() instanceof DrawerActivity) && (postEntryView = ((DrawerActivity) HomeFragment.this.getActivity()).getPostEntryView()) != null) {
                postEntryView.setLift1(z6 ? ((NVFragment) fragmentAtIndex).getPostEntryLift() : 0, HomeFragment.this.pageCreateComplete);
            }
            LiveLayerHost liveLayerHost = (LiveLayerHost) HomeFragment.this.getService("liveLayerHost");
            if (z6 && liveLayerHost != null && (liveLayerOnlineBar = liveLayerHost.onlineBar) != null) {
                liveLayerOnlineBar.setLift(((NVFragment) fragmentAtIndex).getOnlineBarLift());
            }
            CBBHost cBBHost = (CBBHost) HomeFragment.this.getService("cbbHost");
            if (z6 && cBBHost != null) {
                cBBHost.setLift(((NVFragment) fragmentAtIndex).getCBBLift());
            }
            if (HomeFragment.this.scrollableTabLayout != null) {
                for (int i11 = 0; i11 < HomeFragment.this.scrollableTabLayout.getTabCount(); i11++) {
                    View childTabAt = HomeFragment.this.scrollableTabLayout.getChildTabAt(i11);
                    if (childTabAt != null) {
                        TextView textView = (TextView) childTabAt.findViewById(com.narvii.amino.master.R.id.tab_title);
                        if (i11 == i10) {
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
    };
    Runnable autoRefreshSpeedDialRunnable = new Runnable() { // from class: com.narvii.amino.HomeFragment.10
        @Override // java.lang.Runnable
        public void run() {
            NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = HomeFragment.this.collapsibleLayout;
            if (nVHeaderCollapsibleLayout != null && nVHeaderCollapsibleLayout.getCurrentHeaderStatus() == 4 && HomeFragment.this.isAdded() && HomeFragment.this.isActive()) {
                HomeFragment.this.sendSpeedDialRequest(false);
            }
        }
    };

    class Adapter extends NVScrollablePagerAdapter {
        public Adapter(Context context, FragmentManager fragmentManager) {
            super(context, fragmentManager);
        }

        @Override // com.narvii.app.NVScrollablePagerAdapter, com.narvii.util.LazyFragmentPagerAdapter
        public Fragment createFragment(int i10) {
            NVScrollablePagerAdapter.TabInfo tabInfo;
            Fragment fragmentCreateFragment = super.createFragment(i10);
            if (fragmentCreateFragment instanceof NVFragment) {
                NVFragment nVFragment = (NVFragment) fragmentCreateFragment;
                ServiceManager serviceManager = new ServiceManager(nVFragment);
                serviceManager.addServiceProvider("api", new ApiServiceProvider());
                nVFragment.setEmbedServiceManager(serviceManager);
                boolean z6 = false;
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
                if (list != null && i10 < list.size()) {
                    tabInfo = HomeFragment.this.tabs.get(i10);
                } else {
                    tabInfo = null;
                }
                List<Page> list2 = HomeFragment.this.homePages;
                if (list2 != null && i10 < list2.size()) {
                    page = HomeFragment.this.homePages.get(i10);
                }
                if (tabInfo != null && page != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("home tab [");
                    sb.append(page);
                    sb.append("] created: ");
                    sb.append(tabInfo.clazz.getSimpleName());
                    if (tabInfo.args != null) {
                        sb.append(" [");
                        for (String str : tabInfo.args.keySet()) {
                            if (!str.startsWith("_")) {
                                if (z6) {
                                    sb.append(", ");
                                } else {
                                    z6 = true;
                                }
                                sb.append(str);
                                sb.append('=');
                                sb.append(tabInfo.args.get(str));
                            }
                        }
                        sb.append("]");
                    }
                    Log.i(sb.toString());
                } else {
                    Log.i("home tab " + fragmentCreateFragment.getClass().getSimpleName() + " created");
                }
            }
            return fragmentCreateFragment;
        }
    }

    public interface HasExtraHeight {
        float getTabAlpha();

        void setExtraHeight(int i10);
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

        View getView() {
            if (this.view == null) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(HomeFragment.this.menuFrame.getContext());
                View viewInflate = layoutInflaterFrom.inflate(com.narvii.amino.master.R.layout.home_menu_controller_layout, (ViewGroup) HomeFragment.this.menuFrame, false);
                this.view = viewInflate;
                this.container = (ViewGroup) viewInflate;
                update(false);
                View viewInflate2 = layoutInflaterFrom.inflate(com.narvii.amino.master.R.layout.home_menu_item, this.container, false);
                this.popupBtn = viewInflate2;
                ((ImageView) viewInflate2.findViewById(com.narvii.amino.master.R.id.home_menu_icon)).setImageResource(com.narvii.amino.master.R.drawable.actionbar_ops);
                this.popupBtn.setOnClickListener(this);
                run();
            }
            return this.view;
        }

        void invalidate() {
            Handler handler = Utils.handler;
            handler.removeCallbacks(this);
            this.popupDirty = true;
            if (this.popupShown) {
                return;
            }
            handler.post(this);
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

        @Override // com.narvii.app.NVFragment.MenuController
        public void onScrollDistance(int i10) {
            if (this.scrollDisabled) {
                return;
            }
            if (i10 <= 0) {
                i10 /= 2;
            }
            this.scrollY = i10;
            update(false);
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void onScrollFinish() {
            if (this.scrollDisabled) {
                return;
            }
            this.hidden = Math.min(this.topMargin, Math.max(-this.menuHeight, (this.hidden ? -this.menuHeight : this.topMargin) + this.scrollY)) < (this.topMargin - this.menuHeight) / 2;
            this.scrollY = 0;
            update(true);
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

        @Override // java.lang.Runnable
        public void run() {
            if (this.view == null || this.popupShown) {
                return;
            }
            this.popupDirty = false;
            LinkedList linkedList = new LinkedList();
            int childCount = this.container.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = this.container.getChildAt(i10);
                if (childAt != this.popupBtn && (childAt instanceof FrameLayout)) {
                    linkedList.push((FrameLayout) childAt);
                }
            }
            this.container.removeAllViews();
            if (this.popupMenu == null) {
                Fragment fragment = this.host;
                PopupMenu popupMenu = new PopupMenu(new ContextThemeWrapper(this.container.getContext(), (fragment instanceof NVFragment) && ((NVFragment) fragment).isDarkTheme() ? android.R.style.Theme.DeviceDefault : android.R.style.Theme.DeviceDefault.Light), this.popupBtn);
                this.popupMenu = popupMenu;
                popupMenu.setOnMenuItemClickListener(this);
                this.popupMenu.setOnDismissListener(this);
                Iterator<NVFragment> it = this.clients.iterator();
                while (it.hasNext()) {
                    it.next().onCreateOptionsMenu(this.popupMenu.getMenu(), this.popupMenu.getMenuInflater());
                }
            }
            Menu menu = this.popupMenu.getMenu();
            for (NVFragment nVFragment : this.clients) {
                if (nVFragment.getActivity() != null) {
                    nVFragment.onPrepareOptionsMenu(menu);
                }
            }
            this.iconMenus.clear();
            int size = menu.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                MenuItem item = menu.getItem(i12);
                if (item.isVisible()) {
                    int menuItemShowAsAction = HomeFragment.getMenuItemShowAsAction(item);
                    if ((menuItemShowAsAction & 2) == 0 && (menuItemShowAsAction & 1) == 0) {
                        i11++;
                    } else {
                        this.iconMenus.add(item);
                    }
                }
            }
            if (this.iconMenus.size() > 0) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.container.getContext());
                for (MenuItem menuItem : this.iconMenus) {
                    FrameLayout frameLayout = linkedList.isEmpty() ? null : (FrameLayout) linkedList.removeFirst();
                    if (frameLayout == null) {
                        frameLayout = (FrameLayout) layoutInflaterFrom.inflate(com.narvii.amino.master.R.layout.home_menu_item, this.container, false);
                        frameLayout.setOnClickListener(this);
                    }
                    View actionView = menuItem.getActionView();
                    Drawable icon = actionView == null ? menuItem.getIcon() : null;
                    ImageView imageView = (ImageView) frameLayout.findViewById(com.narvii.amino.master.R.id.home_menu_icon);
                    ScaleView scaleView = (ScaleView) frameLayout.findViewById(com.narvii.amino.master.R.id.home_menu_action_view);
                    int iIntValue = com.narvii.amino.master.R.drawable.home_menu_item_bg;
                    if (actionView == null) {
                        scaleView.removeAllViews();
                        scaleView.setVisibility(8);
                    } else {
                        if (actionView.getTag(com.narvii.amino.master.R.id.embed_menu_background) instanceof Integer) {
                            iIntValue = ((Integer) actionView.getTag(com.narvii.amino.master.R.id.embed_menu_background)).intValue();
                        }
                        scaleView.setScale(actionView.getTag(com.narvii.amino.master.R.id.embed_menu_scale) instanceof Number ? ((Number) actionView.getTag(com.narvii.amino.master.R.id.embed_menu_scale)).floatValue() : 0.75f);
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
                    frameLayout.setTag(menuItem);
                    this.container.addView(frameLayout);
                }
            }
            if (i11 > 0) {
                this.container.addView(this.popupBtn);
            }
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void setScrollEnabled(boolean z6) {
            this.scrollDisabled = !z6;
            if (z6) {
                return;
            }
            this.hidden = false;
            this.scrollY = 0;
            update(false);
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void setTopMargin(int i10, boolean z6) {
            if (this.topMargin != i10) {
                this.topMargin = i10;
                update(z6);
            }
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void unregisterMenu(NVFragment nVFragment) {
            this.clients.remove(nVFragment);
            this.popupMenu = null;
            invalidate();
        }

        void update(boolean z6) {
            if (this.container != null) {
                int iMin = Math.min(this.topMargin, Math.max(-this.menuHeight, (this.hidden ? -this.menuHeight : this.topMargin) + this.scrollY));
                if (z6) {
                    this.container.animate().translationY(iMin).setDuration(200L).start();
                } else {
                    this.container.setTranslationY(iMin);
                }
            }
        }

        @Override // com.narvii.app.NVFragment.MenuController
        public void invalidateMenu(NVFragment nVFragment) {
            invalidate();
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFeaturedUser(boolean z6) {
    }

    private void checkInfluencer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$2() {
        this.pageCreateComplete = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFeaturedUserListRequest() {
        sendFeaturedUserListRequest(false, false);
    }

    private void sendSpeedDialRequest() {
        sendSpeedDialRequest(false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 10;
    }

    public NVHeaderCollapsibleLayout getCollapsibleLayout() {
        return this.collapsibleLayout;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "community_home";
    }

    public boolean isFragmentSelected(Fragment fragment) {
        return fragment != null && getFragmentAtIndex(getCurIndex()) == fragment;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFeaturedUser() {
        checkFeaturedUser(false);
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
    public /* synthetic */ void lambda$setupSwipeRefreshLayout$3() {
        NVFragment nVFragment = this.currentShowingFragment;
        if (nVFragment != null) {
            this.refreshingCount++;
            if (nVFragment instanceof NVListFragment) {
                ((NVListFragment) nVFragment).onRefresh(this.bodyRefreshCallback);
            } else {
                nVFragment.manuallyRefresh(this.bodyRefreshCallback);
            }
        }
        sendFeaturedUserListRequest(true, true);
    }

    private void sendFeaturedUserListRequest(final boolean z6, final boolean z10) {
        if (!isFeaturedMemberEnabled()) {
            this.skipLayout = false;
            if (z6) {
                sendSpeedDialRequest(z10);
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
        ApiRequest apiRequestBuild = ApiRequest.builder().path("/user-profile").param("type", Module.MODULE_FEATURED).build();
        this.featuredUserRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.amino.HomeFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, UserListResponse userListResponse) throws Exception {
                super.onFinish(apiRequest2, userListResponse);
                HomeFragment.this.featuredUserRequest = null;
                HomeFragment.this.featureUserList = userListResponse.list();
                HomeFragment homeFragment = HomeFragment.this;
                homeFragment.checkFeaturedUser(homeFragment.skipLayout);
                if (z6) {
                    HomeFragment.this.sendSpeedDialRequest(z10);
                }
                HomeFragment.this.skipLayout = false;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest2, i10, list, str, apiResponse, th);
                if (z6) {
                    HomeFragment.this.sendSpeedDialRequest(z10);
                }
                HomeFragment.this.featuredUserRequest = null;
                HomeFragment.this.skipLayout = false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSpeedDialRequest(final boolean z6) {
        if (shouldShowSpeedDial()) {
            if (z6) {
                this.refreshingCount++;
            }
            Utils.handler.removeCallbacks(this.autoRefreshSpeedDialRunnable);
            Utils.postDelayed(this.autoRefreshSpeedDialRunnable, 20000L);
            this.lastSpeedDialQueryTime = System.currentTimeMillis();
            ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/live-layer/speed-dial-public").param("v", 2).build(), new ApiResponseListener<SpeedDialResponse>(SpeedDialResponse.class) { // from class: com.narvii.amino.HomeFragment.7
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, SpeedDialResponse speedDialResponse) throws Exception {
                    super.onFinish(apiRequest, speedDialResponse);
                    if (HomeFragment.this.isAdded()) {
                        if (speedDialResponse != null && HomeFragment.this.isSpeedDialInitialCall && HomeFragment.this.collapsibleLayout != null) {
                            List<ChatThread> list = speedDialResponse.threadList;
                            if (list != null && !list.isEmpty() && HomeFragment.this.collapsibleLayout.getCurrentHeaderStatus() != 4 && HomeFragment.this.collapsibleLayout.getCurrentHeaderStatus() != 3) {
                                HomeFragment.this.collapsibleLayout.smoothExpand();
                            }
                            HomeFragment.this.isSpeedDialInitialCall = false;
                        }
                        if (z6 && HomeFragment.this.headerRefreshCallback != null) {
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
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    if (z6 && HomeFragment.this.headerRefreshCallback != null) {
                        HomeFragment.this.headerRefreshCallback.call(1);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void setScreenNameForTabs() {
        List<Page> list = this.homePages;
        if (list == null || this.curSelectedPos >= list.size()) {
            return;
        }
        String str = this.homePages.get(this.curSelectedPos).url;
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -1909797177:
                if (str.equals(PageManager.PAGE_MY_CHAT_URI)) {
                    b7 = 0;
                }
                break;
            case -1586358886:
                if (str.equals(PageManager.PAGE_LATEST_FEED_URI)) {
                    b7 = 1;
                }
                break;
            case -1342479548:
                if (str.equals(PageManager.PAGE_PUBLIC_CHATROOMS_URI)) {
                    b7 = 2;
                }
                break;
            case -1251215458:
                if (str.equals(PageManager.PAGE_EXTERNAL_POSTS_URI)) {
                    b7 = 3;
                }
                break;
            case -600995206:
                if (str.equals(PageManager.PAGE_TOPIC_CATEGORIES_URI)) {
                    b7 = 4;
                }
                break;
            case -587867002:
                if (str.equals(PageManager.PAGE_QUIZZES_URI)) {
                    b7 = 5;
                }
                break;
            case -289953221:
                if (str.equals(PageManager.PAGE_FEATURED_URI)) {
                    b7 = 6;
                }
                break;
            case -132249367:
                if (str.equals(PageManager.PAGE_SHARED_FOLDER_URI)) {
                    b7 = 7;
                }
                break;
            case 430134029:
                if (str.equals(PageManager.PAGE_LINK_POST_URI)) {
                    b7 = 8;
                }
                break;
            case 643099572:
                if (str.equals(PageManager.PAGE_IMAGE_POST_URI)) {
                    b7 = 9;
                }
                break;
            case 1097203658:
                if (str.equals(PageManager.PAGE_SHARED_FOLDER_ALBUMS_URI)) {
                    b7 = 10;
                }
                break;
            case 1163797670:
                if (str.equals(PageManager.PAGE_STORIES_URI)) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 1384153636:
                if (str.equals(PageManager.PAGE_BLOG_URI)) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case 1397169575:
                if (str.equals(PageManager.PAGE_POLL_URI)) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
            case 1523333223:
                if (str.equals(PageManager.PAGE_SHARED_FOLDER_LATEST_PHOTOS_URI)) {
                    b7 = com.google.common.base.c.SO;
                }
                break;
            case 1795706791:
                if (str.equals(PageManager.PAGE_FOLLOWING_FEED_URI)) {
                    b7 = com.google.common.base.c.SI;
                }
                break;
        }
        switch (b7) {
            case 0:
                setScreenName("community_my_chats");
                break;
            case 1:
                setScreenName("community_latest");
                break;
            case 2:
                setScreenName("community_public_chatrooms");
                break;
            case 3:
                setScreenName("community_external_posts");
                break;
            case 4:
                setScreenName("community_post_categories");
                break;
            case 5:
                setScreenName("community_quizzes");
                break;
            case 6:
                setScreenName("community_featured");
                break;
            case 7:
            case 10:
            case 14:
                setScreenName("community_shared_folder");
                break;
            case 8:
                setScreenName("community_link_posts");
                break;
            case 9:
                setScreenName("community_image_posts");
                break;
            case 11:
                setScreenName("community_stories");
                break;
            case 12:
                setScreenName("community_blogs");
                break;
            case 13:
                setScreenName("community_polls");
                break;
            case 15:
                setScreenName("community_following");
                break;
            default:
                setScreenName(null);
                break;
        }
    }

    private void setupSwipeRefreshLayout() {
        this.swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.narvii.amino.g
            @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                this.f1807a.lambda$setupSwipeRefreshLayout$3();
            }
        });
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        int actionBarOverlaySize = getActionBarOverlaySize();
        if (actionBarOverlaySize > 0) {
            actionBarOverlaySize += getStatusBarOverlaySize();
        }
        this.swipeRefreshLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(com.narvii.amino.master.R.dimen.swipe_refresh_start) + actionBarOverlaySize, actionBarOverlaySize + getResources().getDimensionPixelOffset(com.narvii.amino.master.R.dimen.swipe_refresh_end));
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        Adapter adapter = new Adapter(getContext(), getChildFragmentManager());
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            Uri uri = null;
            if (i10 >= this.homePages.size()) {
                break;
            }
            Page page = this.homePages.get(Utils.isRtl() ? (this.homePages.size() - 1) - i10 : i10);
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
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, "Home Page");
            arrayList.add(new NVScrollablePagerAdapter.TabInfo(str, displayName, getTabView(displayName, page.getIcon(getContext())), cls, bundle2));
            i10++;
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new NVScrollablePagerAdapter.TabInfo("emptyHome", "", getTabView("", null), EmptyHomePage.class, null));
        }
        this.tabs = arrayList;
        adapter.setTabs(arrayList);
        boolean z6 = this.tabs.size() > 1;
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.home_tab_bar_height);
        getTabLayout().setVisibility(z6 ? 0 : 8);
        ((ViewGroup.MarginLayoutParams) this.mViewPager.getLayoutParams()).topMargin = z6 ? dimensionPixelSize : 0;
        ((ViewGroup.MarginLayoutParams) this.menuFrame.getLayoutParams()).topMargin = z6 ? dimensionPixelSize : 0;
        this.mViewPager.requestLayout();
        this.menuFrame.requestLayout();
        Utils.post(new Runnable() { // from class: com.narvii.amino.HomeFragment.8

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f1794c = 0;

            @Override // java.lang.Runnable
            public void run() {
                if (HomeFragment.this.isAdded() && HomeFragment.this.getCurIndex() == HomeFragment.this.defaultTabIndex() && HomeFragment.this.getCurrentFragment() != null) {
                    HomeFragment homeFragment = HomeFragment.this;
                    homeFragment.pageChangeListener.onPageSelected(homeFragment.defaultTabIndex());
                    return;
                }
                int i11 = this.f1794c + 1;
                this.f1794c = i11;
                if (i11 < 4) {
                    Utils.post(this);
                }
            }
        });
        return adapter;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        Integer num = this.startPageIndex;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        ((AccountService) getService("account")).removeFanClubListListener(this);
        SpeedDialHeaderLayout speedDialHeaderLayout = getSpeedDialHeaderLayout();
        if (speedDialHeaderLayout != null) {
            speedDialHeaderLayout.clearAdViewObstructions();
        }
        super.onDestroyView();
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderCollapsed() {
        this.collapsibleHeaderLayout.updateHeaderOffset(1.0f);
        if (getActivity() != null) {
            Fragment fragmentM0 = getActivity().getSupportFragmentManager().m0("communityNavBar");
            if (fragmentM0 instanceof CommunityNavBarFragment) {
                ((CommunityNavBarFragment) fragmentM0).showCommunityView();
            }
        }
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderOffsetChanged(int i10, int i11, float f, boolean z6) {
        this.collapsibleHeaderLayout.updateHeaderOffset(f);
        if (getActivity() != null) {
            Fragment fragmentM0 = getActivity().getSupportFragmentManager().m0("communityNavBar");
            if (fragmentM0 instanceof CommunityNavBarFragment) {
                if (f >= 1.0d) {
                    ((CommunityNavBarFragment) fragmentM0).showCommunityView();
                } else {
                    ((CommunityNavBarFragment) fragmentM0).hideCommunityView();
                }
            }
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        SpeedDialHeaderLayout speedDialHeaderLayout;
        if ((notification.obj instanceof ChatThread) && "update".equals(notification.action) && (speedDialHeaderLayout = getSpeedDialHeaderLayout()) != null) {
            speedDialHeaderLayout.updateFeaturedChatThreadList((ChatThread) notification.obj);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        Fragment fragmentAt;
        StringBuilder sb = new StringBuilder("Home ");
        sb.append(getCurIndex());
        sb.append(" [");
        NVScrollablePagerAdapter adapter = getAdapter();
        if (this.homePages != null) {
            for (int i10 = 0; i10 < this.homePages.size(); i10++) {
                Page page = this.homePages.get(i10);
                sb.append(i10);
                sb.append(":");
                sb.append(page.url);
                if (adapter != null && (fragmentAt = adapter.getFragmentAt(i10)) != null) {
                    sb.append('(');
                    sb.append(fragmentAt.getClass().getSimpleName());
                    sb.append(')');
                }
                if (i10 < this.homePages.size() - 1) {
                    sb.append("; ");
                }
            }
        }
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateTabView(Fragment fragment) {
        if (this.pageScrollState == 0 && getCurrentFragment() == fragment) {
            float tabAlpha = fragment instanceof HasExtraHeight ? ((HasExtraHeight) fragment).getTabAlpha() : 1.0f;
            int iColorPrimary = this.configService.getTheme().colorPrimary();
            int iArgb = Color.argb((int) ((tabAlpha <= 1.0f ? tabAlpha : 1.0f) * 255.0f), Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary));
            if (iArgb != (getTabLayout().getBackground() instanceof ColorDrawable ? ((ColorDrawable) getTabLayout().getBackground()).getColor() : -1)) {
                getTabLayout().setBackgroundDrawable(new ColorDrawable(iArgb));
            }
        }
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

    private View getTabView(String str, Drawable drawable) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(com.narvii.amino.master.R.layout.home_tab_layout, (ViewGroup) null);
        String strTrim = str.trim();
        TextView textView = (TextView) viewInflate.findViewById(com.narvii.amino.master.R.id.tab_title);
        if (TextUtils.isEmpty(strTrim)) {
            strTrim = getString(com.narvii.amino.master.R.string.draft_untitled);
        }
        textView.setText(strTrim);
        ((TextView) viewInflate.findViewById(com.narvii.amino.master.R.id.tab_title)).setTextColor(-1);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view, boolean z6) {
        if (getActivity() != null) {
            Fragment fragmentM0 = getActivity().getSupportFragmentManager().m0("communityNavBar");
            if (fragmentM0 instanceof CommunityNavBarFragment) {
                ((CommunityNavBarFragment) fragmentM0).hideCommunityView();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(Boolean bool) {
        if (bool.booleanValue() && getLifecycleState() >= 3) {
            this.collapsibleLayout.collapse();
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.extraParam("isVisitorMode", Boolean.valueOf(isVisitorNotJoined()));
    }

    public String getCurrentDeepLink() {
        Page page;
        List<Page> list;
        int curIndex = getCurIndex();
        if (Utils.isRtl() && (list = this.homePages) != null) {
            curIndex = (list.size() - 1) - curIndex;
        }
        List<Page> list2 = this.homePages;
        if (list2 != null && curIndex < list2.size() && curIndex >= 0) {
            page = this.homePages.get(curIndex);
        } else {
            page = null;
        }
        if (page == null) {
            return null;
        }
        return page.url;
    }

    Fragment getHostFragment(NVFragment nVFragment) {
        Fragment fragment = nVFragment;
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == this) {
                return fragment;
            }
            if (parentFragment == null) {
                return null;
            }
            fragment = parentFragment;
        }
    }

    @Override // com.narvii.app.NVFragment.MenuHost
    public NVFragment.MenuController getMenuController(NVFragment nVFragment) {
        Fragment hostFragment = getHostFragment(nVFragment);
        HomeMenuController homeMenuController = this.menuControllers.get(hostFragment);
        if (homeMenuController == null) {
            HomeMenuController homeMenuController2 = new HomeMenuController(hostFragment);
            this.menuControllers.put(hostFragment, homeMenuController2);
            return homeMenuController2;
        }
        return homeMenuController;
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        SpeedDialHeaderLayout speedDialHeaderLayout = getSpeedDialHeaderLayout();
        if (speedDialHeaderLayout != null && z6) {
            speedDialHeaderLayout.logSpeedDialImpression();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SpeedDialHeaderLayout speedDialHeaderLayout = getSpeedDialHeaderLayout();
        if (speedDialHeaderLayout != null) {
            speedDialHeaderLayout.updateCommunityInfo();
            speedDialHeaderLayout.setupAdView();
            if (this.collapsibleLayout.getCurrentHeaderStatus() != 4 && this.collapsibleLayout.getCurrentHeaderStatus() != 3) {
                this.collapsibleLayout.smoothExpand();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.configService = (ConfigService) getService("config");
        this.communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.masterThemeHelper = new MasterThemeHelper(this);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        registerLocalReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(FeatureUserHelper.ACTION_FEATURE_USER_CHANGED));
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
        this.configHelper = communityConfigHelper;
        this.homePages = communityConfigHelper.getHomePageList();
        this.startPageIndex = this.configHelper.getStartPageIndex();
        setHasOptionsMenu(true);
        sendFeaturedUserListRequest(true, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.master.R.layout.home_tab_fragment_layout, viewGroup, false);
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Utils.handler.removeCallbacks(this.autoRefreshSpeedDialRunnable);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ActionBar actionBar = getActivity().getActionBar();
        if (actionBar != null) {
            actionBar.show();
        }
        Utils.post(new Runnable() { // from class: com.narvii.amino.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f1804a.lambda$onResume$2();
            }
        });
        ViewPager.OnPageChangeListener onPageChangeListener = this.pageChangeListener;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(getCurIndex());
        }
        Utils.handler.removeCallbacks(this.autoRefreshSpeedDialRunnable);
        Utils.postDelayed(this.autoRefreshSpeedDialRunnable, 20000L);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = (NVHeaderCollapsibleLayout) view.findViewById(com.narvii.amino.master.R.id.collapsible_layout);
        this.collapsibleLayout = nVHeaderCollapsibleLayout;
        nVHeaderCollapsibleLayout.addOnHeaderStatusChangedListener(this);
        this.collapsibleHeaderLayout = (SpeedDialHeaderLayout) view.findViewById(com.narvii.amino.master.R.id.home_header_layout);
        if (this.collapsibleLayout.getTopView() instanceof SpeedDialHeaderLayout) {
            ((SpeedDialHeaderLayout) this.collapsibleLayout.getTopView()).setOnHeaderInvalidatedListener(new SpeedDialHeaderLayout.OnHeaderInvalidatedListener() { // from class: com.narvii.amino.e
                @Override // com.narvii.amino.speeddial.SpeedDialHeaderLayout.OnHeaderInvalidatedListener
                public final void notifyHeaderInvalidated(View view2, boolean z6) {
                    this.f1805a.lambda$onViewCreated$0(view2, z6);
                }
            });
            if (getActivity() instanceof MainActivity) {
                ((MainActivity) getActivity()).updateOverlayListPlaceholder((OverlayListPlaceholder) view.findViewById(com.narvii.amino.master.R.id.fake_action_bar));
            }
            this.collapsibleHeaderLayout.setSpeedDialItemClicked(this.speedDialItemClickListener);
            checkInfluencer();
            checkFeaturedUser();
        }
        this.menuFrame = (FrameLayout) view.findViewById(com.narvii.amino.master.R.id.menu_frame);
        this.scrollableTabLayout = (NVPagerTabLayout) view.findViewById(com.narvii.amino.master.R.id.tabs);
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(com.narvii.amino.master.R.id.home_swipe_refresh_layout);
        super.onViewCreated(view, bundle);
        this.scrollableTabLayout.setScrollOffset(getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.tab_scroll_offset));
        setPageChangeListener(this.pageChangeListener);
        setupSwipeRefreshLayout();
        this.mViewPager.setBackgroundDrawable(new ColorDrawable(-1));
        ((AccountService) getService("account")).addFanClubListListener(this);
        getSpeedDialHeaderLayout().ipc.setRootView(view);
        this.keyboardObserver = SoftKeyboard.observeKeyboard(view, new Callback() { // from class: com.narvii.amino.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f1806a.lambda$onViewCreated$1((Boolean) obj);
            }
        });
    }

    public void restoreHomeTab() {
        setTabIndex(defaultTabIndex());
        smoothScrollToTop();
    }

    public boolean shouldShowSpeedDial() {
        CommunityConfigHelper communityConfigHelper;
        if (Utils.isEligibleForSpeedDial() && (communityConfigHelper = this.communityConfigHelper) != null && !communityConfigHelper.isSpeedDialDisabled() && this.communityConfigHelper.isChatEnabled() && this.communityConfigHelper.isPublicChatEnabled() && (this.communityConfigHelper.isScreenRoomEnable() || this.communityConfigHelper.isAvatarChatEnable() || this.communityConfigHelper.isVideoChatEnable() || this.communityConfigHelper.isAudio2ChatEnable())) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public void smoothScrollToTop() {
        Fragment currentFragment = getCurrentFragment();
        if (currentFragment instanceof NVFragment) {
            ((NVFragment) currentFragment).smoothScrollToTop();
        }
    }
}

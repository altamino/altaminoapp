package com.narvii.leaderboard;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVBaseScrollableTabFragment;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.leaderboard.LeaderBoardShareHelper;
import com.narvii.leaderboard.LeaderBoardTabBar;
import com.narvii.leaderboard.share.LeaderBoardShareFragment;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Community;
import com.narvii.model.LeaderBoardItem;
import com.narvii.model.Media;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.scene.quiz.SceneQuizView;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public class LeaderBoardTabFragment extends NVBaseScrollableTabFragment {
    private static final int COUNT_CATEGORY = 5;
    private static final int COUNT_COLUMN = 3;
    public static int bottomOffsetHeight;
    public static int childMarginTopHeight;
    public static int topOverlayHeight;
    NVScrollablePagerAdapter adapter;
    NVImageView backgroundView;
    private Community community;
    CommunityConfigHelper configHelper;
    ConfigService configService;
    private int globalScrollOffset;
    LeaderBoardShareHelper helper;
    private int lastPosition;
    List<LeaderBoardItem> leaderBoardItems;
    NVImageView nextBackgroundView;
    View overlay;
    private int rankingTypeBarHeight;
    LeaderBoardTabBar tabBar;
    List<NVScrollablePagerAdapter.TabInfo> tabs;
    public static SparseArray<Integer> titleMapper = new SparseArray<>();
    public static SparseArray<Integer> subTitleMapper = new SparseArray<>();
    SparseArray<String> backgroundUrls = new SparseArray<>();
    private Drawable colorDrawable = new ColorDrawable(-11842741);
    private final String[] statTabs = {"Most Active 24", "Most Active 7 Day", "Check In", SceneQuizView.AREA_QUIZ, "Hall of Fame"};
    private ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.leaderboard.LeaderBoardTabFragment.2
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            int rankingTypeIndex;
            if (i != LeaderBoardTabFragment.this.lastPosition) {
                f = 1.0f - f;
            }
            LeaderBoardTabFragment.this.backgroundView.setAlpha(1.0f - f);
            if (i == LeaderBoardTabFragment.this.lastPosition) {
                i++;
            }
            if (i < LeaderBoardTabFragment.this.leaderBoardItems.size() && (rankingTypeIndex = LeaderBoardTabFragment.this.getRankingTypeIndex(i)) >= 1 && rankingTypeIndex <= 5 && i < LeaderBoardTabFragment.this.leaderBoardItems.size()) {
                LeaderBoardTabFragment leaderBoardTabFragment = LeaderBoardTabFragment.this;
                leaderBoardTabFragment.changeBackground(leaderBoardTabFragment.nextBackgroundView, rankingTypeIndex);
                if (i >= 4) {
                    return;
                }
                LeaderBoardTabFragment leaderBoardTabFragment2 = LeaderBoardTabFragment.this;
                float overlayAlpha = leaderBoardTabFragment2.getOverlayAlpha(leaderBoardTabFragment2.lastPosition + 1);
                float overlayAlpha2 = LeaderBoardTabFragment.this.getOverlayAlpha(rankingTypeIndex);
                if (overlayAlpha != overlayAlpha2) {
                    LeaderBoardTabFragment.this.overlay.setAlpha(overlayAlpha + ((overlayAlpha2 - overlayAlpha) * f));
                }
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            LeaderBoardTabBar leaderBoardTabBar = LeaderBoardTabFragment.this.tabBar;
            if (leaderBoardTabBar != null) {
                leaderBoardTabBar.setCheckPosition(i);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 1) {
                LeaderBoardTabFragment.this.globalScrollOffset = LeaderBoardTabFragment.topOverlayHeight;
                LeaderBoardTabFragment leaderBoardTabFragment = LeaderBoardTabFragment.this;
                leaderBoardTabFragment.invalidAllList(leaderBoardTabFragment.globalScrollOffset);
            }
            if (i == 0) {
                LeaderBoardTabFragment leaderBoardTabFragment2 = LeaderBoardTabFragment.this;
                leaderBoardTabFragment2.lastPosition = leaderBoardTabFragment2.getCurIndex();
                LeaderBoardTabFragment.this.resetBackground();
                LeaderBoardTabFragment.this.backgroundView.setAlpha(1.0f);
            }
        }
    };

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 5;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "LeaderBoard";
    }

    static {
        SparseArray<Integer> sparseArray = titleMapper;
        Integer numValueOf = Integer.valueOf(R.string.leader_board_category_active);
        sparseArray.put(1, numValueOf);
        titleMapper.put(2, numValueOf);
        titleMapper.put(3, Integer.valueOf(R.string.leader_board_category_hall));
        titleMapper.put(4, Integer.valueOf(R.string.leader_board_category_checkin));
        titleMapper.put(5, Integer.valueOf(R.string.leader_board_category_quiz));
        subTitleMapper.put(1, Integer.valueOf(R.string.leader_board_label_24hrs));
        subTitleMapper.put(2, Integer.valueOf(R.string.leader_board_label_7days));
        SparseArray<Integer> sparseArray2 = subTitleMapper;
        Integer numValueOf2 = Integer.valueOf(R.string.leader_board_label_all);
        sparseArray2.put(3, numValueOf2);
        subTitleMapper.put(4, Integer.valueOf(R.string.leader_board_label_streaks));
        subTitleMapper.put(5, numValueOf2);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.configHelper = new CommunityConfigHelper(this);
        this.configService = (ConfigService) getService("config");
        buildLeaderBoardItems();
        this.rankingTypeBarHeight = ((this.leaderBoardItems.size() / 3) + (this.leaderBoardItems.size() % 3 == 0 ? 0 : 1)) * getResources().getDimensionPixelSize(R.dimen.ranking_category_bar_height);
        this.community = ((CommunityService) getService("community")).getCommunity(this.configService.getCommunityId());
        if (bundle != null) {
            this.globalScrollOffset = bundle.getInt(IjkMediaPlayer.OnNativeInvokeListener.ARG_OFFSET);
        }
        this.helper = new LeaderBoardShareHelper(this);
        topOverlayHeight = getTopOverlayHeight();
        setUpBackgroundUrls();
        updateChildMarginTop();
        bottomOffsetHeight = (Utils.getScreenSize(getActivity()).y - childMarginTopHeight) - getResources().getDimensionPixelSize(R.dimen.ranking_category_bar_height);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.leader_board_tab_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setTitle((CharSequence) null);
        this.tabBar = (LeaderBoardTabBar) view.findViewById(R.id.tab_bars);
        initLeaderBoardTabBar();
        this.mViewPager.disableScroll = getBooleanParam("__embed");
        this.lastPosition = getCurIndex();
        setPageChangeListener(this.pageChangeListener);
        this.backgroundView = (NVImageView) view.findViewById(R.id.leader_board_background);
        this.nextBackgroundView = (NVImageView) view.findViewById(R.id.leader_board_background_next);
        this.overlay = view.findViewById(R.id.leader_board_background_overlay);
        resetBackground();
        view.findViewById(R.id.top_placeholder).setVisibility(getBooleanParam("__embed") ? 8 : 0);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setTitle("");
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        LeaderBoardTabBar leaderBoardTabBar = this.tabBar;
        if (leaderBoardTabBar != null) {
            leaderBoardTabBar.setVisibility(0);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (z) {
            updateChildMarginTop();
        }
        ((LiveLayerService) getService("liveLayer")).reportBrowsing("leaderboards", z);
    }

    private void buildLeaderBoardItems() {
        this.leaderBoardItems = this.configHelper.getLeaderBoardList();
        if (this.leaderBoardItems == null) {
            this.leaderBoardItems = buildDefaultLeaderBoardItems();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetBackground() {
        changeBackground(this.backgroundView, getRankingTypeIndex(getCurIndex()));
        this.overlay.setAlpha(getOverlayAlpha(getRankingTypeIndex(getCurIndex())));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            LogEvent.clickBuilder(this, ActSemantic.share).area("ShareIcon").send();
            shareLeaderBoard();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void shareLeaderBoard() {
        LeaderBoardTabBar leaderBoardTabBar;
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        if (isEmbedFragment() && (leaderBoardTabBar = this.tabBar) != null) {
            leaderBoardTabBar.setVisibility(4);
        }
        if (getCurFragment() instanceof CheckInRankingListFragment) {
            ((CheckInRankingListFragment) getCurFragment()).hideBottomBar();
        }
        this.helper.saveLeaderBoardBackGround(getActivity(), R.id.leader_board_root, this.community, new LeaderBoardShareHelper.SaveCallBack() { // from class: com.narvii.leaderboard.LeaderBoardTabFragment.1
            @Override // com.narvii.leaderboard.LeaderBoardShareHelper.SaveCallBack
            public void onSaved() {
                if (LeaderBoardTabFragment.this.isAdded()) {
                    if (progressDialog.isShowing() && LeaderBoardTabFragment.this.isAdded()) {
                        progressDialog.dismiss();
                    }
                    new ShareDarkRoomHelper(LeaderBoardTabFragment.this).saveDynamicThemeBg(LeaderBoardTabFragment.this.getActivity());
                    Intent intent = FragmentWrapperActivity.intent(LeaderBoardShareFragment.class);
                    intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, "Leaderboard");
                    intent.putExtra(LeaderBoardShareFragment.KEY_STATISTIC_TAB, LeaderBoardTabFragment.this.getCurIndex() < LeaderBoardTabFragment.this.statTabs.length ? LeaderBoardTabFragment.this.statTabs[LeaderBoardTabFragment.this.getCurIndex()] : "");
                    LeaderBoardTabFragment.this.startActivity(intent);
                }
            }
        });
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(IjkMediaPlayer.OnNativeInvokeListener.ARG_OFFSET, this.globalScrollOffset);
    }

    private void setUpBackgroundUrls() {
        List<LeaderBoardItem> list = this.leaderBoardItems;
        if (list == null || list.size() == 0) {
            return;
        }
        this.backgroundUrls.clear();
        for (int i = 0; i < this.leaderBoardItems.size(); i++) {
            LeaderBoardItem leaderBoardItem = this.leaderBoardItems.get(i);
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(leaderBoardItem.style, "backgroundMediaList");
            if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
                try {
                    Media[] mediaArr = (Media[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Media[].class);
                    if (mediaArr != null && mediaArr.length > 0) {
                        this.backgroundUrls.put(leaderBoardItem.type, mediaArr[0].url);
                    }
                } catch (JsonProcessingException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getOverlayAlpha(int i) {
        return this.backgroundUrls.get(i) == null ? 0.0f : 1.0f;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment
    public void manuallyRefresh(Callback<Integer> callback) {
        if (callback != null) {
            callback.call(1);
        }
    }

    private ShareHeaderFragment getCurFragment() {
        Fragment fragmentAtIndex = getFragmentAtIndex(getCurIndex());
        if (fragmentAtIndex instanceof ShareHeaderFragment) {
            return (ShareHeaderFragment) fragmentAtIndex;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidAllList(int i) {
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        if (fragments != null) {
            for (int i2 = 0; i2 < fragments.size(); i2++) {
                Fragment fragment = fragments.get(i2);
                if (fragment instanceof ShareHeaderFragment) {
                    ((ShareHeaderFragment) fragment).setCurrentOffset(i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeBackground(NVImageView nVImageView, int i) {
        if (!isAdded() || i < 1 || i > 5 || nVImageView == null) {
            return;
        }
        try {
            if (this.backgroundUrls.get(i) == null) {
                int i2 = R.drawable.leader_board_day;
                if (i != 1) {
                    if (i == 2) {
                        i2 = R.drawable.leader_board_week;
                    } else if (i == 3) {
                        i2 = R.drawable.leader_board_all_time;
                    } else if (i == 4) {
                        i2 = R.drawable.leader_board_check_in;
                    } else if (i == 5) {
                        i2 = R.drawable.leader_board_quiz;
                    }
                }
                nVImageView.setImageDrawable(getResources().getDrawable(i2));
                return;
            }
            nVImageView.setImageDrawable(null);
            if (nVImageView == this.backgroundView && this.nextBackgroundView != null && this.nextBackgroundView.getDrawable() != null) {
                nVImageView.defaultDrawable = null;
            } else {
                nVImageView.defaultDrawable = this.colorDrawable;
            }
            nVImageView.setImageUrl(this.backgroundUrls.get(i));
        } catch (OutOfMemoryError e) {
            Log.d("oom when change background");
            OomHelper.test(e);
        }
    }

    public int getTopOverlayHeight() {
        return getResources().getDimensionPixelSize(getBooleanParam("__embed") ? R.dimen.leader_board_offset_height_embed : R.dimen.leader_board_offset_height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRankingTypeIndex(int i) {
        LeaderBoardItem leaderBoardItem = this.leaderBoardItems.get(i);
        if (leaderBoardItem == null) {
            return 1;
        }
        return leaderBoardItem.type;
    }

    private void initLeaderBoardTabBar() {
        LeaderBoardTabBar leaderBoardTabBar = this.tabBar;
        if (leaderBoardTabBar != null) {
            leaderBoardTabBar.setLeaderBoardItems(this.leaderBoardItems);
            this.tabBar.setCheckPosition(0);
            this.tabBar.setLeaderBoardTabClickListener(new LeaderBoardTabBar.LeaderBoardClickListener() { // from class: com.narvii.leaderboard.LeaderBoardTabFragment.3
                @Override // com.narvii.leaderboard.LeaderBoardTabBar.LeaderBoardClickListener
                public void onItemClick(int i) throws Resources.NotFoundException {
                    if (((NVBaseScrollableTabFragment) LeaderBoardTabFragment.this).mViewPager != null) {
                        if (Utils.isRtl()) {
                            i = (LeaderBoardTabFragment.this.adapter.getCount() - i) - 1;
                        }
                        ((NVBaseScrollableTabFragment) LeaderBoardTabFragment.this).mViewPager.setCurrentItem(i);
                    }
                }
            });
        }
    }

    private void updateChildMarginTop() {
        childMarginTopHeight = getActionBarOverlaySize() + getStatusBarOverlaySize();
        childMarginTopHeight += this.rankingTypeBarHeight;
        NVFragment.MenuController menuController = getMenuController();
        if (menuController != null) {
            menuController.setTopMargin(childMarginTopHeight, true);
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        if (this.adapter == null) {
            this.adapter = new NVScrollablePagerAdapter(getContext(), getChildFragmentManager());
        }
        if (!isAdded()) {
            return this.adapter;
        }
        ArrayList arrayList = new ArrayList();
        for (LeaderBoardItem leaderBoardItem : this.leaderBoardItems) {
            String string = leaderBoardItem.id;
            if (string == null) {
                string = UUID.randomUUID().toString();
            }
            Class<? extends NVFragment> mappedClzz = getMappedClzz(leaderBoardItem.type);
            Bundle mappedBundle = getMappedBundle(leaderBoardItem.type);
            arrayList.add(new NVScrollablePagerAdapter.TabInfo(string, leaderBoardItem.id, getTabView(leaderBoardItem.id, getResources().getDrawable(R.drawable.post_entry_close)), mappedClzz, mappedBundle));
        }
        this.tabs = arrayList;
        this.adapter.setTabs(arrayList);
        return this.adapter;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        if (getBooleanParam("__embed")) {
            return super.getCustomTheme();
        }
        return 2131755020;
    }

    private List<LeaderBoardItem> buildDefaultLeaderBoardItems() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(0, new LeaderBoardItem(1));
        arrayList.add(0, new LeaderBoardItem(2));
        arrayList.add(0, new LeaderBoardItem(3));
        arrayList.add(0, new LeaderBoardItem(4));
        arrayList.add(0, new LeaderBoardItem(5));
        return arrayList;
    }

    public Class<? extends NVFragment> getMappedClzz(int i) {
        if (i == 4) {
            return CheckInRankingListFragment.class;
        }
        return UserRankingListFragment.class;
    }

    public Bundle getMappedBundle(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(ShareHeaderFragment.STATE_RANKING_MODE, i);
        bundle.putBoolean("__embed", getBooleanParam("__embed"));
        return bundle;
    }

    private View getTabView(String str, Drawable drawable) {
        return getActivity().getLayoutInflater().inflate(R.layout.leader_board_tab_category_item, (ViewGroup) null);
    }
}

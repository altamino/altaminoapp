package com.narvii.app;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.headercollapse.HeaderCollapsibleLayout;
import com.narvii.widget.headercollapse.OnHeaderStatusChangedListener;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class NVCollapsibleTabFragment extends NVFragment implements OnHeaderStatusChangedListener, SwipeRefreshLayout.OnRefreshListener {
    private static final int MAX_TABS = 8;
    protected HeaderCollapsibleLayout collapsibleLayout;
    protected NVFragment currentShowingFragment;
    protected NVScrollablePagerAdapter pagerAdapter;
    protected NVPagerTabLayout scrollableTabLayout;
    protected SwipeRefreshLayout swipeRefreshLayout;
    protected NVViewPager viewPager;
    private SparseArray<Integer> realPositions = new SparseArray<>();
    private SparseArray<Integer> positionToIndexMap = new SparseArray<>();
    ViewPager.SimpleOnPageChangeListener onPageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.app.NVCollapsibleTabFragment.1
        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            Fragment fragmentAt = NVCollapsibleTabFragment.this.getPagerAdapter().getFragmentAt(i);
            if (fragmentAt instanceof NVFragment) {
                NVCollapsibleTabFragment.this.currentShowingFragment = (NVFragment) fragmentAt;
            }
            NVCollapsibleTabFragment.this.updateTabView(i);
        }
    };
    private int refreshingCount = 0;
    private final Callback<Integer> headerRefreshCallback = new Callback<Integer>() { // from class: com.narvii.app.NVCollapsibleTabFragment.2
        @Override // com.narvii.util.Callback
        public void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout;
            NVCollapsibleTabFragment.access$010(NVCollapsibleTabFragment.this);
            if (NVCollapsibleTabFragment.this.refreshingCount != 0 || (swipeRefreshLayout = NVCollapsibleTabFragment.this.swipeRefreshLayout) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
        }
    };
    private final Callback<Integer> bodyRefreshCallback = new Callback<Integer>() { // from class: com.narvii.app.NVCollapsibleTabFragment.3
        @Override // com.narvii.util.Callback
        public void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout;
            NVCollapsibleTabFragment.access$010(NVCollapsibleTabFragment.this);
            if (NVCollapsibleTabFragment.this.refreshingCount != 0 || (swipeRefreshLayout = NVCollapsibleTabFragment.this.swipeRefreshLayout) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
        }
    };
    private final DataSetObserver observer = new DataSetObserver() { // from class: com.narvii.app.NVCollapsibleTabFragment.5
        @Override // android.database.DataSetObserver
        public void onInvalidated() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            NVPagerTabLayout nVPagerTabLayout = NVCollapsibleTabFragment.this.scrollableTabLayout;
            if (nVPagerTabLayout != null) {
                nVPagerTabLayout.notifyDataSetChanged();
            }
        }
    };

    protected abstract int bodyLayoutId();

    protected int defaultTabIndex() {
        return 0;
    }

    protected Bundle getBundles(int i) {
        return null;
    }

    protected abstract Class<? extends NVFragment> getFragment(int i);

    protected Drawable getIconDrawable(int i) {
        return null;
    }

    protected abstract String getTabLabel(int i);

    protected View getTabView(int i, String str, Drawable drawable) {
        return null;
    }

    protected View getTabView(String str, Drawable drawable) {
        return null;
    }

    protected abstract int headerLayoutId();

    protected boolean isScrollable() {
        return true;
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderCollapsed() {
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderExpanded() {
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderOffsetChanged(int i, int i2, float f, boolean z) {
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderStartCollapsing() {
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderStartExpanding() {
    }

    @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
    }

    protected int stickyFooterLayoutId() {
        return -1;
    }

    protected void updateTabView(int i) {
    }

    protected boolean useUniformSwipeRefresh() {
        return true;
    }

    static /* synthetic */ int access$008(NVCollapsibleTabFragment nVCollapsibleTabFragment) {
        int i = nVCollapsibleTabFragment.refreshingCount;
        nVCollapsibleTabFragment.refreshingCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$010(NVCollapsibleTabFragment nVCollapsibleTabFragment) {
        int i = nVCollapsibleTabFragment.refreshingCount;
        nVCollapsibleTabFragment.refreshingCount = i - 1;
        return i;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_collapsible_tab_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.collapsibleLayout = (HeaderCollapsibleLayout) view.findViewById(R.id.collapsible_layout);
        this.collapsibleLayout.setTopLayout(headerLayoutId());
        this.collapsibleLayout.setBottomLayout(bodyLayoutId());
        this.collapsibleLayout.addOnHeaderStatusChangedListener(this);
        this.pagerAdapter = createAdapter();
        this.pagerAdapter.setUserVisibleHint(getUserVisibleHint());
        this.pagerAdapter.registerDataSetObserver(this.observer);
        this.viewPager = (NVViewPager) view.findViewById(R.id.viewpager);
        this.viewPager.disableScroll = !isScrollable();
        this.viewPager.addOnPageChangeListener(this.pagerAdapter);
        this.viewPager.addOnPageChangeListener(this.onPageChangeListener);
        this.viewPager.setAdapter(this.pagerAdapter);
        this.scrollableTabLayout = (NVPagerTabLayout) view.findViewById(R.id.tabs);
        this.scrollableTabLayout.setViewPager(this.viewPager);
        this.viewPager.setCurrentItem(defaultTabIndex());
        updateTabView(this.viewPager.getCurrentItem());
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh_layout);
        setupSwipeRefreshLayout();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.pagerAdapter.unregisterDataSetObserver(this.observer);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z);
        }
    }

    protected View getBodyView() {
        HeaderCollapsibleLayout headerCollapsibleLayout = this.collapsibleLayout;
        if (headerCollapsibleLayout == null) {
            return null;
        }
        return headerCollapsibleLayout.getBottomView();
    }

    private void setupSwipeRefreshLayout() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout == null) {
            return;
        }
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.narvii.app.NVCollapsibleTabFragment.4
            @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                NVCollapsibleTabFragment nVCollapsibleTabFragment = NVCollapsibleTabFragment.this;
                if (nVCollapsibleTabFragment.currentShowingFragment == null && (nVCollapsibleTabFragment.getCurrentFragment() instanceof NVFragment)) {
                    NVCollapsibleTabFragment nVCollapsibleTabFragment2 = NVCollapsibleTabFragment.this;
                    nVCollapsibleTabFragment2.currentShowingFragment = (NVFragment) nVCollapsibleTabFragment2.getCurrentFragment();
                }
                NVCollapsibleTabFragment nVCollapsibleTabFragment3 = NVCollapsibleTabFragment.this;
                if (nVCollapsibleTabFragment3.currentShowingFragment != null) {
                    NVCollapsibleTabFragment.access$008(nVCollapsibleTabFragment3);
                    NVCollapsibleTabFragment nVCollapsibleTabFragment4 = NVCollapsibleTabFragment.this;
                    NVFragment nVFragment = nVCollapsibleTabFragment4.currentShowingFragment;
                    if (nVFragment instanceof NVListFragment) {
                        ((NVListFragment) nVFragment).onRefresh(nVCollapsibleTabFragment4.bodyRefreshCallback);
                    } else {
                        nVFragment.manuallyRefresh(nVCollapsibleTabFragment4.bodyRefreshCallback);
                    }
                }
                NVCollapsibleTabFragment nVCollapsibleTabFragment5 = NVCollapsibleTabFragment.this;
                nVCollapsibleTabFragment5.sendHeaderRequest(nVCollapsibleTabFragment5.headerRefreshCallback);
            }
        });
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        int iSwipeTopOffset = swipeTopOffset();
        this.swipeRefreshLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_start) + iSwipeTopOffset, iSwipeTopOffset + getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_end));
    }

    protected int swipeTopOffset() {
        int actionBarOverlaySize = getActionBarOverlaySize();
        return actionBarOverlaySize > 0 ? actionBarOverlaySize + getStatusBarOverlaySize() : actionBarOverlaySize;
    }

    protected void sendHeaderRequest(Callback callback) {
        this.refreshingCount++;
        if (callback != null) {
            callback.call(null);
        }
    }

    public NVPagerTabLayout getScrollableTabLayout() {
        return this.scrollableTabLayout;
    }

    public void resetAdapter() throws Resources.NotFoundException {
        resetAdapter(defaultTabIndex());
    }

    public void resetAdapter(int i) throws Resources.NotFoundException {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            try {
                nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
            } catch (Exception unused) {
            }
            this.viewPager.removeOnPageChangeListener(this.pagerAdapter);
        }
        this.pagerAdapter = createAdapter();
        this.viewPager.addOnPageChangeListener(this.pagerAdapter);
        this.viewPager.setAdapter(this.pagerAdapter);
        this.scrollableTabLayout.notifyDataSetChanged();
        this.pagerAdapter.registerDataSetObserver(this.observer);
        try {
            this.viewPager.setCurrentItem(i);
        } catch (Exception unused2) {
        }
    }

    public NVScrollablePagerAdapter createAdapter() {
        this.realPositions.clear();
        this.positionToIndexMap.clear();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (Utils.isRtl()) {
            for (int i2 = 7; i2 >= 0; i2--) {
                String tabLabel = getTabLabel(i2);
                if (tabLabel != null) {
                    Class<? extends NVFragment> fragment = getFragment(i2);
                    Bundle bundles = getBundles(i2);
                    View tabView = getTabView(tabLabel, getIconDrawable(i2));
                    if (tabView == null) {
                        tabView = getTabView(i2, tabLabel, getIconDrawable(i2));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i2 + "_" + fragment.getSimpleName(), tabLabel, tabView, fragment, bundles));
                    this.realPositions.put(i2, Integer.valueOf(i));
                    this.positionToIndexMap.put(i, Integer.valueOf(i2));
                    i++;
                }
            }
        } else {
            int i3 = 0;
            while (i < 8) {
                String tabLabel2 = getTabLabel(i);
                if (tabLabel2 != null) {
                    Class<? extends NVFragment> fragment2 = getFragment(i);
                    Bundle bundles2 = getBundles(i);
                    View tabView2 = getTabView(tabLabel2, getIconDrawable(i));
                    if (tabView2 == null) {
                        tabView2 = getTabView(i, tabLabel2, getIconDrawable(i));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i + "_" + fragment2.getSimpleName(), tabLabel2, tabView2, fragment2, bundles2));
                    this.realPositions.put(i, Integer.valueOf(i3));
                    this.positionToIndexMap.put(i3, Integer.valueOf(i));
                    i3++;
                }
                i++;
            }
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapter = new NVScrollablePagerAdapter(getContext(), getChildFragmentManager()) { // from class: com.narvii.app.NVCollapsibleTabFragment.6
            @Override // com.narvii.app.NVScrollablePagerAdapter, com.narvii.util.LazyFragmentPagerAdapter
            public Fragment createFragment(int i4) {
                Fragment fragmentCreateFragment = super.createFragment(i4);
                NVCollapsibleTabFragment.this.onSubFragmentCreated(fragmentCreateFragment, i4);
                return fragmentCreateFragment;
            }
        };
        nVScrollablePagerAdapter.setTabs(arrayList);
        return nVScrollablePagerAdapter;
    }

    protected NVScrollablePagerAdapter getPagerAdapter() {
        return this.pagerAdapter;
    }

    protected void onSubFragmentCreated(Fragment fragment, int i) {
        if (useUniformSwipeRefresh() && (fragment instanceof NVListFragment)) {
            NVListFragment nVListFragment = (NVListFragment) fragment;
            nVListFragment.setOverScrollMode(2);
            nVListFragment.setSwipeRefreshEnabled(false);
        }
    }

    public int getRealPositionOfIndex(int i) {
        Integer num = this.realPositions.get(i);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public int getIndexOfRealPosition(int i) {
        Integer num = this.positionToIndexMap.get(i);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public int getCurIndex() {
        NVViewPager nVViewPager = this.viewPager;
        if (nVViewPager != null) {
            return nVViewPager.getCurrentItem();
        }
        return 0;
    }

    public Fragment getCurrentFragment() {
        return getFragmentAtIndex(getCurIndex());
    }

    public Fragment getFragmentAtIndex(int i) {
        return this.pagerAdapter.getFragmentAt(i);
    }
}

package com.narvii.app;

import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
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

/* JADX INFO: loaded from: classes9.dex */
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
        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            Fragment fragmentAt = NVCollapsibleTabFragment.this.getPagerAdapter().getFragmentAt(i10);
            if (fragmentAt instanceof NVFragment) {
                NVCollapsibleTabFragment.this.currentShowingFragment = (NVFragment) fragmentAt;
            }
            NVCollapsibleTabFragment.this.updateTabView(i10);
        }
    };
    private int refreshingCount = 0;
    private final Callback<Integer> headerRefreshCallback = new Callback<Integer>() { // from class: com.narvii.app.NVCollapsibleTabFragment.2
        @Override // com.narvii.util.Callback
        public void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout;
            NVCollapsibleTabFragment.this.refreshingCount--;
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
            NVCollapsibleTabFragment.this.refreshingCount--;
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

    protected Bundle getBundles(int i10) {
        return null;
    }

    protected abstract Class<? extends NVFragment> getFragment(int i10);

    protected Drawable getIconDrawable(int i10) {
        return null;
    }

    protected NVScrollablePagerAdapter getPagerAdapter() {
        return this.pagerAdapter;
    }

    public NVPagerTabLayout getScrollableTabLayout() {
        return this.scrollableTabLayout;
    }

    protected abstract String getTabLabel(int i10);

    protected View getTabView(int i10, String str, Drawable drawable) {
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
    public void onHeaderOffsetChanged(int i10, int i11, float f, boolean z6) {
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

    public void resetAdapter() {
        resetAdapter(defaultTabIndex());
    }

    protected int stickyFooterLayoutId() {
        return -1;
    }

    protected void updateTabView(int i10) {
    }

    protected boolean useUniformSwipeRefresh() {
        return true;
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
                    nVCollapsibleTabFragment3.refreshingCount++;
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

    public NVScrollablePagerAdapter createAdapter() {
        this.realPositions.clear();
        this.positionToIndexMap.clear();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        if (Utils.isRtl()) {
            for (int i11 = 7; i11 >= 0; i11--) {
                String tabLabel = getTabLabel(i11);
                if (tabLabel != null) {
                    Class<? extends NVFragment> fragment = getFragment(i11);
                    Bundle bundles = getBundles(i11);
                    View tabView = getTabView(tabLabel, getIconDrawable(i11));
                    if (tabView == null) {
                        tabView = getTabView(i11, tabLabel, getIconDrawable(i11));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i11 + "_" + fragment.getSimpleName(), tabLabel, tabView, fragment, bundles));
                    this.realPositions.put(i11, Integer.valueOf(i10));
                    this.positionToIndexMap.put(i10, Integer.valueOf(i11));
                    i10++;
                }
            }
        } else {
            int i12 = 0;
            while (i10 < 8) {
                String tabLabel2 = getTabLabel(i10);
                if (tabLabel2 != null) {
                    Class<? extends NVFragment> fragment2 = getFragment(i10);
                    Bundle bundles2 = getBundles(i10);
                    View tabView2 = getTabView(tabLabel2, getIconDrawable(i10));
                    if (tabView2 == null) {
                        tabView2 = getTabView(i10, tabLabel2, getIconDrawable(i10));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i10 + "_" + fragment2.getSimpleName(), tabLabel2, tabView2, fragment2, bundles2));
                    this.realPositions.put(i10, Integer.valueOf(i12));
                    this.positionToIndexMap.put(i12, Integer.valueOf(i10));
                    i12++;
                }
                i10++;
            }
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapter = new NVScrollablePagerAdapter(getContext(), getChildFragmentManager()) { // from class: com.narvii.app.NVCollapsibleTabFragment.6
            @Override // com.narvii.app.NVScrollablePagerAdapter, com.narvii.util.LazyFragmentPagerAdapter
            public Fragment createFragment(int i13) {
                Fragment fragmentCreateFragment = super.createFragment(i13);
                NVCollapsibleTabFragment.this.onSubFragmentCreated(fragmentCreateFragment, i13);
                return fragmentCreateFragment;
            }
        };
        nVScrollablePagerAdapter.setTabs(arrayList);
        return nVScrollablePagerAdapter;
    }

    protected View getBodyView() {
        HeaderCollapsibleLayout headerCollapsibleLayout = this.collapsibleLayout;
        if (headerCollapsibleLayout == null) {
            return null;
        }
        return headerCollapsibleLayout.getBottomView();
    }

    public int getCurIndex() {
        NVViewPager nVViewPager = this.viewPager;
        if (nVViewPager != null) {
            return nVViewPager.getCurrentItem();
        }
        return 0;
    }

    public Fragment getFragmentAtIndex(int i10) {
        return this.pagerAdapter.getFragmentAt(i10);
    }

    public int getIndexOfRealPosition(int i10) {
        Integer num = this.positionToIndexMap.get(i10);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public int getRealPositionOfIndex(int i10) {
        Integer num = this.realPositions.get(i10);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    protected View getTabView(String str, Drawable drawable) {
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_collapsible_tab_layout, viewGroup, false);
    }

    public void resetAdapter(int i10) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            try {
                nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
            } catch (Exception unused) {
            }
            this.viewPager.removeOnPageChangeListener(this.pagerAdapter);
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = createAdapter();
        this.pagerAdapter = nVScrollablePagerAdapterCreateAdapter;
        this.viewPager.addOnPageChangeListener(nVScrollablePagerAdapterCreateAdapter);
        this.viewPager.setAdapter(this.pagerAdapter);
        this.scrollableTabLayout.notifyDataSetChanged();
        this.pagerAdapter.registerDataSetObserver(this.observer);
        try {
            this.viewPager.setCurrentItem(i10);
        } catch (Exception unused2) {
        }
    }

    protected void sendHeaderRequest(Callback callback) {
        this.refreshingCount++;
        if (callback != null) {
            callback.call(null);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z6) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z6);
        }
    }

    public Fragment getCurrentFragment() {
        return getFragmentAtIndex(getCurIndex());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.pagerAdapter.unregisterDataSetObserver(this.observer);
    }

    protected void onSubFragmentCreated(Fragment fragment, int i10) {
        if (useUniformSwipeRefresh() && (fragment instanceof NVListFragment)) {
            NVListFragment nVListFragment = (NVListFragment) fragment;
            nVListFragment.setOverScrollMode(2);
            nVListFragment.setSwipeRefreshEnabled(false);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        HeaderCollapsibleLayout headerCollapsibleLayout = (HeaderCollapsibleLayout) view.findViewById(R.id.collapsible_layout);
        this.collapsibleLayout = headerCollapsibleLayout;
        headerCollapsibleLayout.setTopLayout(headerLayoutId());
        this.collapsibleLayout.setBottomLayout(bodyLayoutId());
        this.collapsibleLayout.addOnHeaderStatusChangedListener(this);
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = createAdapter();
        this.pagerAdapter = nVScrollablePagerAdapterCreateAdapter;
        nVScrollablePagerAdapterCreateAdapter.setUserVisibleHint(getUserVisibleHint());
        this.pagerAdapter.registerDataSetObserver(this.observer);
        NVViewPager nVViewPager = (NVViewPager) view.findViewById(R.id.viewpager);
        this.viewPager = nVViewPager;
        nVViewPager.disableScroll = !isScrollable();
        this.viewPager.addOnPageChangeListener(this.pagerAdapter);
        this.viewPager.addOnPageChangeListener(this.onPageChangeListener);
        this.viewPager.setAdapter(this.pagerAdapter);
        NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) view.findViewById(R.id.tabs);
        this.scrollableTabLayout = nVPagerTabLayout;
        nVPagerTabLayout.setViewPager(this.viewPager);
        this.viewPager.setCurrentItem(defaultTabIndex());
        updateTabView(this.viewPager.getCurrentItem());
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh_layout);
        setupSwipeRefreshLayout();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        super.setUserVisibleHint(z6);
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z6);
        }
    }

    protected int swipeTopOffset() {
        int actionBarOverlaySize = getActionBarOverlaySize();
        if (actionBarOverlaySize > 0) {
            return actionBarOverlaySize + getStatusBarOverlaySize();
        }
        return actionBarOverlaySize;
    }
}

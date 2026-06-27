package com.narvii.nested;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.config.ConfigService;
import com.narvii.config.ConfigTheme;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.nested.behavior.SpringBehavior;
import com.narvii.nested.tab.SelectTabViewDelegate;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoordinateTabFragment.kt */
/* loaded from: classes3.dex */
public abstract class CoordinateTabFragment extends NVFragment implements FragmentOnBackListener, NVAppBarLayout.CollapseStatusChangeListener, NVPagerTabLayout.PositionChangeListener {
    private HashMap _$_findViewCache;
    private NVAppBarLayout appbarLayout;
    private NVFragment currentShowingFragment;
    private boolean enterRefresh;
    private int lastVerticalOffset;
    private NVScrollablePagerAdapter pagerAdapter;
    private boolean refreshRequestSent;
    private int refreshingCount;
    private int showTabCount;
    private SwipeRefreshLayout swipeRefreshLayout;
    private NVPagerTabLayout tabLayout;
    private UpdateTabViewDelegate updateTabViewDelegate;
    public NVViewPager viewPager;
    private final SparseArray<Integer> realPositions = new SparseArray<>();
    private final SparseArray<Integer> positionToIndexMap = new SparseArray<>();
    private boolean enableSwipeRefreshLayout = true;
    private final NVAppBarLayout.OnOffsetChangedListener listener = new NVAppBarLayout.OnOffsetChangedListener() { // from class: com.narvii.nested.CoordinateTabFragment$listener$1
        @Override // com.narvii.nested.NVAppBarLayout.OnOffsetChangedListener
        public void onOffsetChanged(NVAppBarLayout nVAppBarLayout, int i) {
            SwipeRefreshLayout swipeRefreshLayout;
            NVAppBarLayout appbarLayout = this.this$0.getAppbarLayout();
            ViewGroup.LayoutParams layoutParams = appbarLayout != null ? appbarLayout.getLayoutParams() : null;
            boolean z = (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SpringBehavior);
            if (this.this$0.useUniformSwipeRefresh() && !z && (swipeRefreshLayout = this.this$0.getSwipeRefreshLayout()) != null) {
                swipeRefreshLayout.setEnabled(this.this$0.getEnableSwipeRefreshLayout() && i >= 0);
            }
            this.this$0.onAppBarLayoutOffsetChanged(nVAppBarLayout, i);
            if (this.this$0.lastVerticalOffset != i) {
                this.this$0.lastVerticalOffset = i;
                this.this$0.onAppBarLayoutScroll(i);
            }
        }
    };
    private final DataSetObserver observer = new DataSetObserver() { // from class: com.narvii.nested.CoordinateTabFragment$observer$1
        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            NVPagerTabLayout tabLayout = this.this$0.getTabLayout();
            if (tabLayout != null) {
                tabLayout.notifyDataSetChanged();
            }
        }
    };
    private final ViewPager.SimpleOnPageChangeListener pageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.nested.CoordinateTabFragment$pageChangeListener$1
        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            NVScrollablePagerAdapter pagerAdapter = this.this$0.getPagerAdapter();
            Fragment fragmentAt = pagerAdapter != null ? pagerAdapter.getFragmentAt(i) : null;
            if (fragmentAt instanceof NVFragment) {
                this.this$0.setCurrentShowingFragment((NVFragment) fragmentAt);
            }
            this.this$0.updateTabView(i);
        }
    };
    private final Callback<Integer> bodyRefreshCallback = new Callback<Integer>() { // from class: com.narvii.nested.CoordinateTabFragment$bodyRefreshCallback$1
        @Override // com.narvii.util.Callback
        public final void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout;
            this.this$0.setRefreshingCount(r2.getRefreshingCount() - 1);
            if (this.this$0.getRefreshingCount() != 0 || (swipeRefreshLayout = this.this$0.getSwipeRefreshLayout()) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
        }
    };
    private final Callback<Integer> headerRefreshCallback = new Callback<Integer>() { // from class: com.narvii.nested.CoordinateTabFragment$headerRefreshCallback$1
        @Override // com.narvii.util.Callback
        public final void call(Integer num) {
            SwipeRefreshLayout swipeRefreshLayout;
            this.this$0.setRefreshingCount(r2.getRefreshingCount() - 1);
            if (this.this$0.getRefreshingCount() != 0 || (swipeRefreshLayout = this.this$0.getSwipeRefreshLayout()) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
        }
    };

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    protected abstract NVScrollablePagerAdapter createAdapter();

    protected int defaultTabIndex() {
        return 0;
    }

    public final NVScrollablePagerAdapter getBaseAdapter(List<Integer> list, List<? extends Class<? extends NVFragment>> list2) {
        return getBaseAdapter$default(this, list, list2, null, null, 12, null);
    }

    public final NVScrollablePagerAdapter getBaseAdapter(List<Integer> list, List<? extends Class<? extends NVFragment>> list2, List<Bundle> list3) {
        return getBaseAdapter$default(this, list, list2, list3, null, 8, null);
    }

    public View getTabView(int i, String str) {
        return null;
    }

    protected final boolean isScrollable() {
        return true;
    }

    public void onAppBarLayoutOffsetChanged(NVAppBarLayout nVAppBarLayout, int i) {
    }

    public void onAppBarLayoutScroll(int i) {
    }

    @Override // com.narvii.nested.NVAppBarLayout.CollapseStatusChangeListener
    public void onCollapseStatusChanged(boolean z) {
    }

    public void onInstantiateItem(Object any) {
        Intrinsics.checkParameterIsNotNull(any, "any");
    }

    public final void updateHeaderLayout() {
    }

    public boolean useUniformSwipeRefresh() {
        return true;
    }

    public final NVPagerTabLayout getTabLayout() {
        return this.tabLayout;
    }

    public final void setTabLayout(NVPagerTabLayout nVPagerTabLayout) {
        this.tabLayout = nVPagerTabLayout;
    }

    public final NVViewPager getViewPager() {
        NVViewPager nVViewPager = this.viewPager;
        if (nVViewPager != null) {
            return nVViewPager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        throw null;
    }

    public final void setViewPager(NVViewPager nVViewPager) {
        Intrinsics.checkParameterIsNotNull(nVViewPager, "<set-?>");
        this.viewPager = nVViewPager;
    }

    public final NVScrollablePagerAdapter getPagerAdapter() {
        return this.pagerAdapter;
    }

    public final void setPagerAdapter(NVScrollablePagerAdapter nVScrollablePagerAdapter) {
        this.pagerAdapter = nVScrollablePagerAdapter;
    }

    public final NVAppBarLayout getAppbarLayout() {
        return this.appbarLayout;
    }

    public final void setAppbarLayout(NVAppBarLayout nVAppBarLayout) {
        this.appbarLayout = nVAppBarLayout;
    }

    public final SwipeRefreshLayout getSwipeRefreshLayout() {
        return this.swipeRefreshLayout;
    }

    public final void setSwipeRefreshLayout(SwipeRefreshLayout swipeRefreshLayout) {
        this.swipeRefreshLayout = swipeRefreshLayout;
    }

    public final NVFragment getCurrentShowingFragment() {
        return this.currentShowingFragment;
    }

    public final void setCurrentShowingFragment(NVFragment nVFragment) {
        this.currentShowingFragment = nVFragment;
    }

    public final SparseArray<Integer> getRealPositions() {
        return this.realPositions;
    }

    public final SparseArray<Integer> getPositionToIndexMap() {
        return this.positionToIndexMap;
    }

    protected final int getShowTabCount() {
        return this.showTabCount;
    }

    protected final void setShowTabCount(int i) {
        this.showTabCount = i;
    }

    public final boolean getEnableSwipeRefreshLayout() {
        return this.enableSwipeRefreshLayout;
    }

    public final void setEnableSwipeRefreshLayout(boolean z) {
        this.enableSwipeRefreshLayout = z;
    }

    public final boolean getEnterRefresh() {
        return this.enterRefresh;
    }

    public final void setEnterRefresh(boolean z) {
        this.enterRefresh = z;
    }

    public final boolean getRefreshRequestSent() {
        return this.refreshRequestSent;
    }

    public final void setRefreshRequestSent(boolean z) {
        this.refreshRequestSent = z;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_coordinate_tab, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.pagerAdapter = createAdapter();
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.registerDataSetObserver(this.observer);
        }
        View viewFindViewById = view.findViewById(R.id.viewpager);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.viewpager)");
        this.viewPager = (NVViewPager) viewFindViewById;
        NVViewPager nVViewPager = this.viewPager;
        if (nVViewPager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        nVViewPager.disableScroll = !isScrollable();
        NVScrollablePagerAdapter nVScrollablePagerAdapter2 = this.pagerAdapter;
        if (nVScrollablePagerAdapter2 != null) {
            ((NVViewPager) _$_findCachedViewById(R.id.viewpager)).addOnPageChangeListener(nVScrollablePagerAdapter2);
        }
        ((NVViewPager) _$_findCachedViewById(R.id.viewpager)).addOnPageChangeListener(this.pageChangeListener);
        NVViewPager nVViewPager2 = this.viewPager;
        if (nVViewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        nVViewPager2.setAdapter(this.pagerAdapter);
        this.updateTabViewDelegate = createUpdateTabViewDelegate();
        this.tabLayout = (NVPagerTabLayout) view.findViewById(R.id.tabs);
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            NVViewPager nVViewPager3 = this.viewPager;
            if (nVViewPager3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                throw null;
            }
            nVPagerTabLayout.setViewPager(nVViewPager3);
        }
        NVPagerTabLayout nVPagerTabLayout2 = this.tabLayout;
        if (nVPagerTabLayout2 != null) {
            nVPagerTabLayout2.addPositionListener(this);
        }
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh_layout);
        this.appbarLayout = (NVAppBarLayout) view.findViewById(R.id.appbar_layout);
        NVAppBarLayout nVAppBarLayout = this.appbarLayout;
        if (nVAppBarLayout != null) {
            nVAppBarLayout.addOnOffsetChangedListener(this.listener);
        }
        NVAppBarLayout nVAppBarLayout2 = this.appbarLayout;
        if (nVAppBarLayout2 != null) {
            nVAppBarLayout2.addCollapseListener(this);
        }
        setupSwipeRefreshLayout();
        NVAppBarLayout nVAppBarLayout3 = this.appbarLayout;
        ViewGroup.LayoutParams layoutParams = nVAppBarLayout3 != null ? nVAppBarLayout3.getLayoutParams() : null;
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
            if (layoutParams2.getBehavior() instanceof SpringBehavior) {
                CoordinatorLayout.Behavior behavior = layoutParams2.getBehavior();
                if (behavior == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.nested.behavior.SpringBehavior");
                }
                ((SpringBehavior) behavior).setSpringOffsetCallback(new SpringBehavior.SpringOffsetCallback() { // from class: com.narvii.nested.CoordinateTabFragment.onViewCreated.2
                    @Override // com.narvii.nested.behavior.SpringBehavior.SpringOffsetCallback
                    public void springCallback(int i) {
                        SwipeRefreshLayout swipeRefreshLayout;
                        if (CoordinateTabFragment.this.useUniformSwipeRefresh()) {
                            boolean z = CoordinateTabFragment.this.getEnableSwipeRefreshLayout() && i >= CoordinateTabFragment.this.springRefreshOffset();
                            SwipeRefreshLayout swipeRefreshLayout2 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                            if (swipeRefreshLayout2 != null) {
                                swipeRefreshLayout2.setEnabled(z);
                            }
                            SwipeRefreshLayout swipeRefreshLayout3 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                            if (swipeRefreshLayout3 != null) {
                                swipeRefreshLayout3.configSpinnerBeforeMove();
                            }
                            if (!CoordinateTabFragment.this.getEnterRefresh()) {
                                SwipeRefreshLayout swipeRefreshLayout4 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                                if (swipeRefreshLayout4 != null) {
                                    swipeRefreshLayout4.moveSpinner(i);
                                }
                                if (z) {
                                    CoordinateTabFragment.this.setEnterRefresh(true);
                                    SwipeRefreshLayout swipeRefreshLayout5 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                                    if (swipeRefreshLayout5 != null) {
                                        swipeRefreshLayout5.finishSpinner(i);
                                    }
                                }
                                if (i != 0 || (swipeRefreshLayout = CoordinateTabFragment.this.getSwipeRefreshLayout()) == null) {
                                    return;
                                }
                                swipeRefreshLayout.finishSpinner(i);
                                return;
                            }
                            if (i == 0 && CoordinateTabFragment.this.getRefreshRequestSent()) {
                                CoordinateTabFragment.this.setRefreshRequestSent(false);
                                CoordinateTabFragment.this.setEnterRefresh(false);
                            }
                        }
                    }
                });
            }
        }
        NVAppBarLayout nVAppBarLayout4 = this.appbarLayout;
        if (nVAppBarLayout4 != null) {
            nVAppBarLayout4.getLayoutParams();
        }
        updateTabView(defaultTabIndex());
        NVViewPager nVViewPager4 = this.viewPager;
        if (nVViewPager4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        nVViewPager4.setCurrentItem(defaultTabIndex());
        if (bundle != null) {
            this.enableSwipeRefreshLayout = bundle.getBoolean("enableSwipeRefreshLayout");
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("enableSwipeRefreshLayout", this.enableSwipeRefreshLayout);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        NVAppBarLayout nVAppBarLayout = this.appbarLayout;
        if (nVAppBarLayout != null) {
            nVAppBarLayout.removeOnOffsetChangedListener(this.listener);
        }
        NVAppBarLayout nVAppBarLayout2 = this.appbarLayout;
        if (nVAppBarLayout2 != null) {
            nVAppBarLayout2.removeCollapseListener(this);
        }
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.removePositionListener(this);
        }
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter == null || nVScrollablePagerAdapter == null) {
            return;
        }
        nVScrollablePagerAdapter.setUserVisibleHint(z);
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter == null || nVScrollablePagerAdapter == null) {
            return;
        }
        nVScrollablePagerAdapter.setUserVisibleHint(z);
    }

    public int springRefreshOffset() {
        return Utils.dpToPxInt(getContext(), 65.0f);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
        }
    }

    public final NVAppBarLayout.OnOffsetChangedListener getListener() {
        return this.listener;
    }

    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new SelectTabViewDelegate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NVScrollablePagerAdapter getBaseAdapter$default(CoordinateTabFragment coordinateTabFragment, List list, List list2, List list3, List list4, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getBaseAdapter");
        }
        if ((i & 4) != 0) {
            list3 = null;
        }
        if ((i & 8) != 0) {
            list4 = null;
        }
        return coordinateTabFragment.getBaseAdapter(list, list2, list3, list4);
    }

    public final NVScrollablePagerAdapter getBaseAdapter(List<Integer> labelResIds, List<? extends Class<? extends NVFragment>> fragmentClzzList, List<Bundle> list, List<String> list2) {
        Intrinsics.checkParameterIsNotNull(labelResIds, "labelResIds");
        Intrinsics.checkParameterIsNotNull(fragmentClzzList, "fragmentClzzList");
        if (fragmentClzzList.isEmpty()) {
            throw new IllegalArgumentException("You must add fragment class");
        }
        ArrayList arrayList = new ArrayList();
        int size = fragmentClzzList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int size2 = Utils.isRtl() ? (fragmentClzzList.size() - 1) - i2 : i2;
            String string = "";
            Bundle bundle = null;
            if (list2 != null) {
                if (size2 < list2.size()) {
                    string = list2.get(size2);
                }
            } else {
                if (size2 < labelResIds.size()) {
                    Context context = getContext();
                    string = context != null ? context.getString(labelResIds.get(size2).intValue()) : null;
                }
                Intrinsics.checkExpressionValueIsNotNull(string, "if (index < labelResIds.…belResIds[index]) else \"\"");
            }
            Class<? extends NVFragment> cls = fragmentClzzList.get(size2);
            if (size2 < (list != null ? list.size() : 0) && list != null) {
                bundle = list.get(size2);
            }
            Bundle bundle2 = bundle;
            View tabView = getTabView(size2, string);
            if (tabView == null) {
                throw new IllegalArgumentException("You must override [getTabView] method, when you user this methods");
            }
            arrayList.add(new NVScrollablePagerAdapter.TabInfo(String.valueOf(size2) + "_" + cls.getSimpleName(), string, tabView, cls, bundle2));
            this.realPositions.put(size2, Integer.valueOf(i));
            this.positionToIndexMap.put(i, Integer.valueOf(size2));
            i++;
        }
        this.showTabCount = i;
        final Context context2 = getContext();
        final FragmentManager childFragmentManager = getChildFragmentManager();
        NVScrollablePagerAdapter nVScrollablePagerAdapter = new NVScrollablePagerAdapter(context2, childFragmentManager) { // from class: com.narvii.nested.CoordinateTabFragment$getBaseAdapter$adapter$1
            @Override // com.narvii.app.NVScrollablePagerAdapter, com.narvii.util.LazyFragmentPagerAdapter
            public Fragment createFragment(int i3) {
                Fragment f = super.createFragment(i3);
                CoordinateTabFragment coordinateTabFragment = this.this$0;
                Intrinsics.checkExpressionValueIsNotNull(f, "f");
                coordinateTabFragment.onSubFragmentCreated(f, i3);
                return f;
            }

            @Override // com.narvii.util.LazyFragmentPagerAdapter, com.narvii.util.NoDetachFragmentPagerAdapter, android.support.v4.view.PagerAdapter
            public Object instantiateItem(ViewGroup container, int i3) {
                Intrinsics.checkParameterIsNotNull(container, "container");
                Object objInstantiateItem = super.instantiateItem(container, i3);
                Intrinsics.checkExpressionValueIsNotNull(objInstantiateItem, "super.instantiateItem(container, position)");
                if (this.this$0.getCurrentShowingFragment() == null) {
                    CoordinateTabFragment coordinateTabFragment = this.this$0;
                    NVScrollablePagerAdapter pagerAdapter = coordinateTabFragment.getPagerAdapter();
                    coordinateTabFragment.setCurrentShowingFragment((NVFragment) (pagerAdapter != null ? pagerAdapter.getFragmentAt(i3) : null));
                }
                this.this$0.onInstantiateItem(objInstantiateItem);
                return objInstantiateItem;
            }
        };
        nVScrollablePagerAdapter.setTabs(arrayList);
        return nVScrollablePagerAdapter;
    }

    public void onSubFragmentCreated(Fragment f, int i) {
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (useUniformSwipeRefresh()) {
            if (f instanceof NVListFragment) {
                NVListFragment nVListFragment = (NVListFragment) f;
                nVListFragment.setOverScrollMode(2);
                nVListFragment.setSwipeRefreshEnabled(false);
            }
            if (f instanceof NVRecyclerViewFragment) {
                NVRecyclerViewFragment nVRecyclerViewFragment = (NVRecyclerViewFragment) f;
                nVRecyclerViewFragment.setOverScrollMode(2);
                nVRecyclerViewFragment.setSwipeRefreshEnabled(false);
            }
        }
    }

    public void updateTabView(int i) {
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            int tabCount = nVPagerTabLayout.getTabCount();
            int i2 = 0;
            while (i2 < tabCount) {
                UpdateTabViewDelegate updateTabViewDelegate = this.updateTabViewDelegate;
                if (updateTabViewDelegate != null) {
                    updateTabViewDelegate.onSelected(nVPagerTabLayout.getChildTabAt(i2), i2, i == i2);
                }
                i2++;
            }
        }
    }

    public final DataSetObserver getObserver() {
        return this.observer;
    }

    public final ViewPager.SimpleOnPageChangeListener getPageChangeListener() {
        return this.pageChangeListener;
    }

    public int getRefreshingCount() {
        return this.refreshingCount;
    }

    public void setRefreshingCount(int i) {
        this.refreshingCount = i;
    }

    public void sendHeaderRequest(Callback<Integer> callback) {
        setRefreshingCount(getRefreshingCount() + 1);
        if (callback != null) {
            callback.call(null);
        }
    }

    public final Callback<Integer> getHeaderRefreshCallback() {
        return this.headerRefreshCallback;
    }

    private final void setupSwipeRefreshLayout() throws Resources.NotFoundException {
        ConfigTheme theme;
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.narvii.nested.CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1
                @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
                public final void onRefresh() {
                    this.this$0.setRefreshRequestSent(true);
                    if (this.this$0.getCurrentShowingFragment() == null) {
                        CoordinateTabFragment coordinateTabFragment = this.this$0;
                        Fragment currentFragment = coordinateTabFragment.getCurrentFragment();
                        if (!(currentFragment instanceof NVFragment)) {
                            currentFragment = null;
                        }
                        coordinateTabFragment.setCurrentShowingFragment((NVFragment) currentFragment);
                    }
                    if (this.this$0.getCurrentShowingFragment() != null) {
                        CoordinateTabFragment coordinateTabFragment2 = this.this$0;
                        coordinateTabFragment2.setRefreshingCount(coordinateTabFragment2.getRefreshingCount() + 1);
                        if (this.this$0.getCurrentShowingFragment() instanceof NVListFragment) {
                            NVFragment currentShowingFragment = this.this$0.getCurrentShowingFragment();
                            if (currentShowingFragment == null) {
                                throw new TypeCastException("null cannot be cast to non-null type com.narvii.list.NVListFragment");
                            }
                            ((NVListFragment) currentShowingFragment).onRefresh(this.this$0.bodyRefreshCallback);
                        } else if (this.this$0.getCurrentShowingFragment() instanceof NVRecyclerViewFragment) {
                            NVFragment currentShowingFragment2 = this.this$0.getCurrentShowingFragment();
                            if (currentShowingFragment2 == null) {
                                throw new TypeCastException("null cannot be cast to non-null type com.narvii.paging.NVRecyclerViewFragment");
                            }
                            ((NVRecyclerViewFragment) currentShowingFragment2).onRefresh(new PageRequestCallback() { // from class: com.narvii.nested.CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1.1
                                @Override // com.narvii.paging.source.PageRequestCallback
                                public void onPageRequestFinished(int i) {
                                    CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1.this.this$0.bodyRefreshCallback.call(Integer.valueOf(i));
                                }
                            });
                        } else {
                            NVFragment currentShowingFragment3 = this.this$0.getCurrentShowingFragment();
                            if (currentShowingFragment3 != null) {
                                currentShowingFragment3.manuallyRefresh(this.this$0.bodyRefreshCallback);
                            }
                        }
                    }
                    CoordinateTabFragment coordinateTabFragment3 = this.this$0;
                    coordinateTabFragment3.sendHeaderRequest(coordinateTabFragment3.getHeaderRefreshCallback());
                }
            });
        }
        ConfigService configService = (ConfigService) getService("config");
        SwipeRefreshLayout swipeRefreshLayout2 = this.swipeRefreshLayout;
        if (swipeRefreshLayout2 != null) {
            int[] iArr = new int[1];
            iArr[0] = (configService == null || (theme = configService.getTheme()) == null) ? -1 : theme.colorPrimary();
            swipeRefreshLayout2.setColorSchemeColors(iArr);
        }
        int iSwipeRefreshTopOffset = swipeRefreshTopOffset();
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_start);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_end);
        SwipeRefreshLayout swipeRefreshLayout3 = this.swipeRefreshLayout;
        if (swipeRefreshLayout3 != null) {
            swipeRefreshLayout3.setProgressViewOffset(false, dimensionPixelOffset + iSwipeRefreshTopOffset, iSwipeRefreshTopOffset + dimensionPixelOffset2);
        }
        NVAppBarLayout nVAppBarLayout = this.appbarLayout;
        ViewGroup.LayoutParams layoutParams = nVAppBarLayout != null ? nVAppBarLayout.getLayoutParams() : null;
        boolean z = (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SpringBehavior);
        SwipeRefreshLayout swipeRefreshLayout4 = this.swipeRefreshLayout;
        if (swipeRefreshLayout4 != null) {
            swipeRefreshLayout4.setEnabled(!z && useUniformSwipeRefresh());
        }
    }

    protected int swipeRefreshTopOffset() {
        int actionBarOverlaySize = getActionBarOverlaySize();
        return actionBarOverlaySize > 0 ? actionBarOverlaySize + getStatusBarOverlaySize() : actionBarOverlaySize;
    }

    public final int getCurIndex() {
        NVViewPager nVViewPager = this.viewPager;
        if (nVViewPager != null) {
            return nVViewPager.getCurrentItem();
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewPager");
        throw null;
    }

    public final Fragment getCurrentFragment() {
        return getFragmentAtIndex(getCurIndex());
    }

    public final Fragment getFragmentAtIndex(int i) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            return nVScrollablePagerAdapter.getFragmentAt(i);
        }
        return null;
    }

    public final void resetAdapter() throws Resources.NotFoundException {
        resetAdapter(defaultTabIndex());
    }

    public final void resetAdapter(int i) throws Resources.NotFoundException {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
            NVViewPager nVViewPager = this.viewPager;
            if (nVViewPager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                throw null;
            }
            nVViewPager.removeOnPageChangeListener(nVScrollablePagerAdapter);
        }
        this.pagerAdapter = createAdapter();
        NVScrollablePagerAdapter nVScrollablePagerAdapter2 = this.pagerAdapter;
        if (nVScrollablePagerAdapter2 != null) {
            nVScrollablePagerAdapter2.setUserVisibleHint(getUserVisibleHint());
            NVViewPager nVViewPager2 = this.viewPager;
            if (nVViewPager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                throw null;
            }
            nVViewPager2.addOnPageChangeListener(nVScrollablePagerAdapter2);
        }
        NVViewPager nVViewPager3 = this.viewPager;
        if (nVViewPager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewPager");
            throw null;
        }
        nVViewPager3.setAdapter(this.pagerAdapter);
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.notifyDataSetChanged();
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapter3 = this.pagerAdapter;
        if (nVScrollablePagerAdapter3 != null) {
            nVScrollablePagerAdapter3.registerDataSetObserver(this.observer);
        }
        try {
            NVViewPager nVViewPager4 = this.viewPager;
            if (nVViewPager4 != null) {
                nVViewPager4.setCurrentItem(i);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                throw null;
            }
        } catch (Exception unused) {
        }
    }

    public boolean onBackPressed(NVActivity nVActivity) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null && nVScrollablePagerAdapter != null) {
            int count = nVScrollablePagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                ComponentCallbacks fragmentAt = nVScrollablePagerAdapter.getFragmentAt(i);
                if ((fragmentAt instanceof FragmentOnBackListener) && ((FragmentOnBackListener) fragmentAt).onBackPressed(nVActivity)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.narvii.widget.NVPagerTabLayout.PositionChangeListener
    public void onPositionChange(int i, float f) {
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            int tabCount = nVPagerTabLayout.getTabCount();
            for (int i2 = 0; i2 < tabCount; i2++) {
                View childTabAt = nVPagerTabLayout.getChildTabAt(i2);
                if (i2 == i) {
                    UpdateTabViewDelegate updateTabViewDelegate = this.updateTabViewDelegate;
                    if (updateTabViewDelegate != null) {
                        updateTabViewDelegate.onScrolled(childTabAt, i2, 1 - f);
                    }
                } else if (i2 == i + 1) {
                    UpdateTabViewDelegate updateTabViewDelegate2 = this.updateTabViewDelegate;
                    if (updateTabViewDelegate2 != null) {
                        updateTabViewDelegate2.onScrolled(childTabAt, i2, f);
                    }
                } else {
                    UpdateTabViewDelegate updateTabViewDelegate3 = this.updateTabViewDelegate;
                    if (updateTabViewDelegate3 != null) {
                        updateTabViewDelegate3.onScrolled(childTabAt, i2, 0.0f);
                    }
                }
            }
        }
    }
}

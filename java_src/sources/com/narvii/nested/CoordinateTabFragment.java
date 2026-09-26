package com.narvii.nested;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCaller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.config.ConfigService;
import com.narvii.config.ConfigTheme;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
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
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class CoordinateTabFragment extends NVFragment implements FragmentOnBackListener, NVAppBarLayout.CollapseStatusChangeListener, NVPagerTabLayout.PositionChangeListener {

    @Nullable
    private NVAppBarLayout appbarLayout;

    @Nullable
    private NVFragment currentShowingFragment;
    private boolean enterRefresh;
    private int lastVerticalOffset;
    private boolean observerRegistered;

    @Nullable
    private NVScrollablePagerAdapter pagerAdapter;
    private boolean refreshRequestSent;
    private int refreshingCount;
    private int showTabCount;

    @Nullable
    private SwipeRefreshLayout swipeRefreshLayout;

    @Nullable
    private NVPagerTabLayout tabLayout;

    @Nullable
    private UpdateTabViewDelegate updateTabViewDelegate;
    public NVViewPager viewPager;

    @NotNull
    private final SparseArray<Integer> realPositions = new SparseArray<>();

    @NotNull
    private final SparseArray<Integer> positionToIndexMap = new SparseArray<>();
    private boolean enableSwipeRefreshLayout = true;

    @NotNull
    private final NVAppBarLayout.OnOffsetChangedListener listener = new NVAppBarLayout.OnOffsetChangedListener() { // from class: com.narvii.nested.CoordinateTabFragment$listener$1
        @Override // com.narvii.nested.NVAppBarLayout.OnOffsetChangedListener
        public void onOffsetChanged(@Nullable NVAppBarLayout nVAppBarLayout, int i10) {
            SwipeRefreshLayout swipeRefreshLayout;
            NVAppBarLayout appbarLayout = this.this$0.getAppbarLayout();
            ViewGroup.LayoutParams layoutParams = appbarLayout != null ? appbarLayout.getLayoutParams() : null;
            boolean z6 = false;
            boolean z10 = (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).f() instanceof SpringBehavior);
            if (this.this$0.useUniformSwipeRefresh() && !z10 && (swipeRefreshLayout = this.this$0.getSwipeRefreshLayout()) != null) {
                if (this.this$0.getEnableSwipeRefreshLayout() && i10 >= 0) {
                    z6 = true;
                }
                swipeRefreshLayout.setEnabled(z6);
            }
            this.this$0.onAppBarLayoutOffsetChanged(nVAppBarLayout, i10);
            if (this.this$0.lastVerticalOffset != i10) {
                this.this$0.lastVerticalOffset = i10;
                this.this$0.onAppBarLayoutScroll(i10);
            }
        }
    };

    @NotNull
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

    @NotNull
    private final ViewPager.SimpleOnPageChangeListener pageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.nested.CoordinateTabFragment$pageChangeListener$1
        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            Fragment fragmentAt;
            super.onPageSelected(i10);
            NVScrollablePagerAdapter pagerAdapter = this.this$0.getPagerAdapter();
            if (pagerAdapter != null) {
                fragmentAt = pagerAdapter.getFragmentAt(i10);
            } else {
                fragmentAt = null;
            }
            if (fragmentAt instanceof NVFragment) {
                this.this$0.setCurrentShowingFragment((NVFragment) fragmentAt);
            }
            this.this$0.updateTabView(i10);
        }
    };

    @NotNull
    private final Callback<Integer> bodyRefreshCallback = new Callback() { // from class: com.narvii.nested.a
        @Override // com.narvii.util.Callback
        public final void call(Object obj) {
            CoordinateTabFragment.bodyRefreshCallback$lambda$2(this.f2536a, (Integer) obj);
        }
    };

    @NotNull
    private final Callback<Integer> headerRefreshCallback = new Callback() { // from class: com.narvii.nested.b
        @Override // com.narvii.util.Callback
        public final void call(Object obj) {
            CoordinateTabFragment.headerRefreshCallback$lambda$3(this.f2537a, (Integer) obj);
        }
    };

    @NotNull
    protected abstract NVScrollablePagerAdapter createAdapter();

    protected int defaultTabIndex() {
        return 0;
    }

    @Nullable
    public final NVAppBarLayout getAppbarLayout() {
        return this.appbarLayout;
    }

    @NotNull
    public final NVScrollablePagerAdapter getBaseAdapter(@NotNull List<Integer> labelResIds, @NotNull List<? extends Class<? extends NVFragment>> fragmentClzzList) {
        t.j(labelResIds, "labelResIds");
        t.j(fragmentClzzList, "fragmentClzzList");
        return getBaseAdapter$default(this, labelResIds, fragmentClzzList, null, null, 12, null);
    }

    @Nullable
    public final NVFragment getCurrentShowingFragment() {
        return this.currentShowingFragment;
    }

    public final boolean getEnableSwipeRefreshLayout() {
        return this.enableSwipeRefreshLayout;
    }

    public final boolean getEnterRefresh() {
        return this.enterRefresh;
    }

    @NotNull
    public final Callback<Integer> getHeaderRefreshCallback() {
        return this.headerRefreshCallback;
    }

    @NotNull
    public final NVAppBarLayout.OnOffsetChangedListener getListener() {
        return this.listener;
    }

    @NotNull
    public final DataSetObserver getObserver() {
        return this.observer;
    }

    public final boolean getObserverRegistered() {
        return this.observerRegistered;
    }

    @NotNull
    public final ViewPager.SimpleOnPageChangeListener getPageChangeListener() {
        return this.pageChangeListener;
    }

    @Nullable
    public final NVScrollablePagerAdapter getPagerAdapter() {
        return this.pagerAdapter;
    }

    @NotNull
    public final SparseArray<Integer> getPositionToIndexMap() {
        return this.positionToIndexMap;
    }

    @NotNull
    public final SparseArray<Integer> getRealPositions() {
        return this.realPositions;
    }

    public final boolean getRefreshRequestSent() {
        return this.refreshRequestSent;
    }

    public int getRefreshingCount() {
        return this.refreshingCount;
    }

    protected final int getShowTabCount() {
        return this.showTabCount;
    }

    @Nullable
    public final SwipeRefreshLayout getSwipeRefreshLayout() {
        return this.swipeRefreshLayout;
    }

    @Nullable
    public final NVPagerTabLayout getTabLayout() {
        return this.tabLayout;
    }

    @Nullable
    public View getTabView(int i10, @Nullable String str) {
        return null;
    }

    protected final boolean isScrollable() {
        return true;
    }

    public void onAppBarLayoutOffsetChanged(@Nullable NVAppBarLayout nVAppBarLayout, int i10) {
    }

    public void onAppBarLayoutScroll(int i10) {
    }

    @Override // com.narvii.nested.NVAppBarLayout.CollapseStatusChangeListener
    public void onCollapseStatusChanged(boolean z6) {
    }

    public void onInstantiateItem(@NotNull Object any) {
        t.j(any, "any");
    }

    public final void resetAdapter() {
        resetAdapter(defaultTabIndex());
    }

    public final void setAppbarLayout(@Nullable NVAppBarLayout nVAppBarLayout) {
        this.appbarLayout = nVAppBarLayout;
    }

    public final void setCurrentShowingFragment(@Nullable NVFragment nVFragment) {
        this.currentShowingFragment = nVFragment;
    }

    public final void setEnableSwipeRefreshLayout(boolean z6) {
        this.enableSwipeRefreshLayout = z6;
    }

    public final void setEnterRefresh(boolean z6) {
        this.enterRefresh = z6;
    }

    public final void setObserverRegistered(boolean z6) {
        this.observerRegistered = z6;
    }

    public final void setPagerAdapter(@Nullable NVScrollablePagerAdapter nVScrollablePagerAdapter) {
        this.pagerAdapter = nVScrollablePagerAdapter;
    }

    public final void setRefreshRequestSent(boolean z6) {
        this.refreshRequestSent = z6;
    }

    public void setRefreshingCount(int i10) {
        this.refreshingCount = i10;
    }

    protected final void setShowTabCount(int i10) {
        this.showTabCount = i10;
    }

    public final void setSwipeRefreshLayout(@Nullable SwipeRefreshLayout swipeRefreshLayout) {
        this.swipeRefreshLayout = swipeRefreshLayout;
    }

    public final void setTabLayout(@Nullable NVPagerTabLayout nVPagerTabLayout) {
        this.tabLayout = nVPagerTabLayout;
    }

    public final void setViewPager(@NotNull NVViewPager nVViewPager) {
        t.j(nVViewPager, "<set-?>");
        this.viewPager = nVViewPager;
    }

    public final void updateHeaderLayout() {
    }

    public boolean useUniformSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bodyRefreshCallback$lambda$2(CoordinateTabFragment this$0, Integer num) {
        SwipeRefreshLayout swipeRefreshLayout;
        t.j(this$0, "this$0");
        this$0.setRefreshingCount(this$0.getRefreshingCount() - 1);
        if (this$0.getRefreshingCount() != 0 || (swipeRefreshLayout = this$0.swipeRefreshLayout) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NVScrollablePagerAdapter getBaseAdapter$default(CoordinateTabFragment coordinateTabFragment, List list, List list2, List list3, List list4, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getBaseAdapter");
        }
        if ((i10 & 4) != 0) {
            list3 = null;
        }
        if ((i10 & 8) != 0) {
            list4 = null;
        }
        return coordinateTabFragment.getBaseAdapter(list, list2, list3, list4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void headerRefreshCallback$lambda$3(CoordinateTabFragment this$0, Integer num) {
        SwipeRefreshLayout swipeRefreshLayout;
        t.j(this$0, "this$0");
        this$0.setRefreshingCount(this$0.getRefreshingCount() - 1);
        if (this$0.getRefreshingCount() != 0 || (swipeRefreshLayout = this$0.swipeRefreshLayout) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    private final void setupSwipeRefreshLayout() {
        ConfigTheme theme;
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.narvii.nested.c
                @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
                public final void onRefresh() {
                    CoordinateTabFragment.setupSwipeRefreshLayout$lambda$5$lambda$4(this.f2538a);
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
        boolean z6 = (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).f() instanceof SpringBehavior);
        SwipeRefreshLayout swipeRefreshLayout4 = this.swipeRefreshLayout;
        if (swipeRefreshLayout4 == null) {
            return;
        }
        swipeRefreshLayout4.setEnabled(!z6 && useUniformSwipeRefresh());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSwipeRefreshLayout$lambda$5$lambda$4(final CoordinateTabFragment this$0) {
        t.j(this$0, "this$0");
        this$0.refreshRequestSent = true;
        if (this$0.currentShowingFragment == null) {
            Fragment currentFragment = this$0.getCurrentFragment();
            this$0.currentShowingFragment = currentFragment instanceof NVFragment ? (NVFragment) currentFragment : null;
        }
        if (this$0.currentShowingFragment != null) {
            this$0.setRefreshingCount(this$0.getRefreshingCount() + 1);
            NVFragment nVFragment = this$0.currentShowingFragment;
            if (nVFragment instanceof NVListFragment) {
                t.h(nVFragment, "null cannot be cast to non-null type com.narvii.list.NVListFragment");
                ((NVListFragment) nVFragment).onRefresh(this$0.bodyRefreshCallback);
            } else if (nVFragment instanceof NVRecyclerViewFragment) {
                t.h(nVFragment, "null cannot be cast to non-null type com.narvii.paging.NVRecyclerViewFragment");
                ((NVRecyclerViewFragment) nVFragment).onRefresh(new PageRequestCallback() { // from class: com.narvii.nested.CoordinateTabFragment$setupSwipeRefreshLayout$1$1$1
                    @Override // com.narvii.paging.source.PageRequestCallback
                    public void onPageRequestFinished(int i10) {
                        this.this$0.bodyRefreshCallback.call(Integer.valueOf(i10));
                    }
                });
            } else if (nVFragment != null) {
                nVFragment.manuallyRefresh(this$0.bodyRefreshCallback);
            }
        }
        this$0.sendHeaderRequest(this$0.headerRefreshCallback);
    }

    @Nullable
    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new SelectTabViewDelegate();
    }

    @NotNull
    public final NVScrollablePagerAdapter getBaseAdapter(@NotNull List<Integer> labelResIds, @NotNull List<? extends Class<? extends NVFragment>> fragmentClzzList, @Nullable List<Bundle> list) {
        t.j(labelResIds, "labelResIds");
        t.j(fragmentClzzList, "fragmentClzzList");
        return getBaseAdapter$default(this, labelResIds, fragmentClzzList, list, null, 8, null);
    }

    @Nullable
    public final Fragment getFragmentAtIndex(int i10) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            return nVScrollablePagerAdapter.getFragmentAt(i10);
        }
        return null;
    }

    @NotNull
    public final NVViewPager getViewPager() {
        NVViewPager nVViewPager = this.viewPager;
        if (nVViewPager != null) {
            return nVViewPager;
        }
        t.B("viewPager");
        return null;
    }

    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null && nVScrollablePagerAdapter != null) {
            int count = nVScrollablePagerAdapter.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                ActivityResultCaller fragmentAt = nVScrollablePagerAdapter.getFragmentAt(i10);
                if ((fragmentAt instanceof FragmentOnBackListener) && ((FragmentOnBackListener) fragmentAt).onBackPressed(nVActivity)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_coordinate_tab, viewGroup, false);
    }

    @Override // com.narvii.widget.NVPagerTabLayout.PositionChangeListener
    public void onPositionChange(int i10, float f) {
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            int tabCount = nVPagerTabLayout.getTabCount();
            for (int i11 = 0; i11 < tabCount; i11++) {
                View childTabAt = nVPagerTabLayout.getChildTabAt(i11);
                if (i11 == i10) {
                    UpdateTabViewDelegate updateTabViewDelegate = this.updateTabViewDelegate;
                    if (updateTabViewDelegate != null) {
                        updateTabViewDelegate.onScrolled(childTabAt, i11, 1 - f);
                    }
                } else if (i11 == i10 + 1) {
                    UpdateTabViewDelegate updateTabViewDelegate2 = this.updateTabViewDelegate;
                    if (updateTabViewDelegate2 != null) {
                        updateTabViewDelegate2.onScrolled(childTabAt, i11, f);
                    }
                } else {
                    UpdateTabViewDelegate updateTabViewDelegate3 = this.updateTabViewDelegate;
                    if (updateTabViewDelegate3 != null) {
                        updateTabViewDelegate3.onScrolled(childTabAt, i11, 0.0f);
                    }
                }
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("enableSwipeRefreshLayout", this.enableSwipeRefreshLayout);
    }

    public void onSubFragmentCreated(@NotNull Fragment f, int i10) {
        t.j(f, "f");
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

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = createAdapter();
        this.pagerAdapter = nVScrollablePagerAdapterCreateAdapter;
        if (!this.observerRegistered) {
            if (nVScrollablePagerAdapterCreateAdapter != null) {
                nVScrollablePagerAdapterCreateAdapter.registerDataSetObserver(this.observer);
            }
            this.observerRegistered = true;
        }
        View viewFindViewById = view.findViewById(R.id.viewpager);
        t.i(viewFindViewById, "findViewById(...)");
        setViewPager((NVViewPager) viewFindViewById);
        getViewPager().disableScroll = !isScrollable();
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            getViewPager().addOnPageChangeListener(nVScrollablePagerAdapter);
        }
        getViewPager().addOnPageChangeListener(this.pageChangeListener);
        getViewPager().setAdapter(this.pagerAdapter);
        this.updateTabViewDelegate = createUpdateTabViewDelegate();
        NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) view.findViewById(R.id.tabs);
        this.tabLayout = nVPagerTabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.setViewPager(getViewPager());
        }
        NVPagerTabLayout nVPagerTabLayout2 = this.tabLayout;
        if (nVPagerTabLayout2 != null) {
            nVPagerTabLayout2.addPositionListener(this);
        }
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh_layout);
        NVAppBarLayout nVAppBarLayout = (NVAppBarLayout) view.findViewById(R.id.appbar_layout);
        this.appbarLayout = nVAppBarLayout;
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
            if (layoutParams2.f() instanceof SpringBehavior) {
                CoordinatorLayout.Behavior behaviorF = layoutParams2.f();
                t.h(behaviorF, "null cannot be cast to non-null type com.narvii.nested.behavior.SpringBehavior");
                ((SpringBehavior) behaviorF).setSpringOffsetCallback(new SpringBehavior.SpringOffsetCallback() { // from class: com.narvii.nested.CoordinateTabFragment.onViewCreated.2
                    @Override // com.narvii.nested.behavior.SpringBehavior.SpringOffsetCallback
                    public void springCallback(int i10) {
                        SwipeRefreshLayout swipeRefreshLayout;
                        if (CoordinateTabFragment.this.useUniformSwipeRefresh()) {
                            boolean z6 = CoordinateTabFragment.this.getEnableSwipeRefreshLayout() && i10 >= CoordinateTabFragment.this.springRefreshOffset();
                            SwipeRefreshLayout swipeRefreshLayout2 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                            if (swipeRefreshLayout2 != null) {
                                swipeRefreshLayout2.setEnabled(z6);
                            }
                            SwipeRefreshLayout swipeRefreshLayout3 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                            if (swipeRefreshLayout3 != null) {
                                swipeRefreshLayout3.configSpinnerBeforeMove();
                            }
                            if (CoordinateTabFragment.this.getEnterRefresh()) {
                                if (i10 == 0 && CoordinateTabFragment.this.getRefreshRequestSent()) {
                                    CoordinateTabFragment.this.setRefreshRequestSent(false);
                                    CoordinateTabFragment.this.setEnterRefresh(false);
                                    return;
                                }
                                return;
                            }
                            SwipeRefreshLayout swipeRefreshLayout4 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                            if (swipeRefreshLayout4 != null) {
                                swipeRefreshLayout4.moveSpinner(i10);
                            }
                            if (z6) {
                                CoordinateTabFragment.this.setEnterRefresh(true);
                                SwipeRefreshLayout swipeRefreshLayout5 = CoordinateTabFragment.this.getSwipeRefreshLayout();
                                if (swipeRefreshLayout5 != null) {
                                    swipeRefreshLayout5.finishSpinner(i10);
                                }
                            }
                            if (i10 != 0 || (swipeRefreshLayout = CoordinateTabFragment.this.getSwipeRefreshLayout()) == null) {
                                return;
                            }
                            swipeRefreshLayout.finishSpinner(i10);
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
        getViewPager().setCurrentItem(defaultTabIndex());
        if (bundle != null) {
            this.enableSwipeRefreshLayout = bundle.getBoolean("enableSwipeRefreshLayout");
        }
    }

    public final void resetAdapter(int i10) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            if (this.observerRegistered) {
                nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
                this.observerRegistered = false;
            }
            getViewPager().removeOnPageChangeListener(nVScrollablePagerAdapter);
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = createAdapter();
        this.pagerAdapter = nVScrollablePagerAdapterCreateAdapter;
        if (nVScrollablePagerAdapterCreateAdapter != null) {
            nVScrollablePagerAdapterCreateAdapter.setUserVisibleHint(getUserVisibleHint());
            getViewPager().addOnPageChangeListener(nVScrollablePagerAdapterCreateAdapter);
        }
        getViewPager().setAdapter(this.pagerAdapter);
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.notifyDataSetChanged();
        }
        if (!this.observerRegistered) {
            NVScrollablePagerAdapter nVScrollablePagerAdapter2 = this.pagerAdapter;
            if (nVScrollablePagerAdapter2 != null) {
                nVScrollablePagerAdapter2.registerDataSetObserver(this.observer);
            }
            this.observerRegistered = true;
        }
        try {
            getViewPager().setCurrentItem(i10);
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z6) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter == null || nVScrollablePagerAdapter == null) {
            return;
        }
        nVScrollablePagerAdapter.setUserVisibleHint(z6);
    }

    public void updateTabView(int i10) {
        NVPagerTabLayout nVPagerTabLayout = this.tabLayout;
        if (nVPagerTabLayout != null) {
            int tabCount = nVPagerTabLayout.getTabCount();
            int i11 = 0;
            while (i11 < tabCount) {
                UpdateTabViewDelegate updateTabViewDelegate = this.updateTabViewDelegate;
                if (updateTabViewDelegate != null) {
                    updateTabViewDelegate.onSelected(nVPagerTabLayout.getChildTabAt(i11), i11, i10 == i11);
                }
                i11++;
            }
        }
    }

    @NotNull
    public final NVScrollablePagerAdapter getBaseAdapter(@NotNull List<Integer> labelResIds, @NotNull List<? extends Class<? extends NVFragment>> fragmentClzzList, @Nullable List<Bundle> list, @Nullable List<String> list2) {
        t.j(labelResIds, "labelResIds");
        t.j(fragmentClzzList, "fragmentClzzList");
        if (!fragmentClzzList.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int size = fragmentClzzList.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                int size2 = Utils.isRtl() ? (fragmentClzzList.size() - 1) - i11 : i11;
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
                    t.g(string);
                }
                String str = string;
                Class<? extends NVFragment> cls = fragmentClzzList.get(size2);
                if (size2 < (list != null ? list.size() : 0) && list != null) {
                    bundle = list.get(size2);
                }
                Bundle bundle2 = bundle;
                View tabView = getTabView(size2, str);
                if (tabView != null) {
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(size2 + '_' + cls.getSimpleName(), str, tabView, cls, bundle2));
                    this.realPositions.put(size2, Integer.valueOf(i10));
                    this.positionToIndexMap.put(i10, Integer.valueOf(size2));
                    i10++;
                } else {
                    throw new IllegalArgumentException("You must override [getTabView] method, when you user this methods");
                }
            }
            this.showTabCount = i10;
            final Context context2 = getContext();
            final FragmentManager childFragmentManager = getChildFragmentManager();
            NVScrollablePagerAdapter nVScrollablePagerAdapter = new NVScrollablePagerAdapter(context2, childFragmentManager) { // from class: com.narvii.nested.CoordinateTabFragment$getBaseAdapter$adapter$1
                @Override // com.narvii.util.LazyFragmentPagerAdapter, com.narvii.util.NoDetachFragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
                @NotNull
                public Object instantiateItem(@NotNull ViewGroup container, int i12) {
                    t.j(container, "container");
                    Object objInstantiateItem = super.instantiateItem(container, i12);
                    t.i(objInstantiateItem, "instantiateItem(...)");
                    if (this.this$0.getCurrentShowingFragment() == null) {
                        CoordinateTabFragment coordinateTabFragment = this.this$0;
                        NVScrollablePagerAdapter pagerAdapter = coordinateTabFragment.getPagerAdapter();
                        coordinateTabFragment.setCurrentShowingFragment((NVFragment) (pagerAdapter != null ? pagerAdapter.getFragmentAt(i12) : null));
                    }
                    this.this$0.onInstantiateItem(objInstantiateItem);
                    return objInstantiateItem;
                }

                @Override // com.narvii.app.NVScrollablePagerAdapter, com.narvii.util.LazyFragmentPagerAdapter
                @NotNull
                public Fragment createFragment(int i12) {
                    Fragment fragmentCreateFragment = super.createFragment(i12);
                    CoordinateTabFragment coordinateTabFragment = this.this$0;
                    t.g(fragmentCreateFragment);
                    coordinateTabFragment.onSubFragmentCreated(fragmentCreateFragment, i12);
                    return fragmentCreateFragment;
                }
            };
            nVScrollablePagerAdapter.setTabs(arrayList);
            return nVScrollablePagerAdapter;
        }
        throw new IllegalArgumentException("You must add fragment class");
    }

    public final int getCurIndex() {
        return getViewPager().getCurrentItem();
    }

    @Nullable
    public final Fragment getCurrentFragment() {
        return getFragmentAtIndex(getCurIndex());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.observerRegistered) {
            NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
            if (nVScrollablePagerAdapter != null) {
                nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
            }
            this.observerRegistered = false;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
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
    }

    public void sendHeaderRequest(@Nullable Callback<Integer> callback) {
        setRefreshingCount(getRefreshingCount() + 1);
        if (callback != null) {
            callback.call(null);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        super.setUserVisibleHint(z6);
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.pagerAdapter;
        if (nVScrollablePagerAdapter != null && nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z6);
        }
    }

    public int springRefreshOffset() {
        return Utils.dpToPxInt(getContext(), 65.0f);
    }

    protected int swipeRefreshTopOffset() {
        int actionBarOverlaySize = getActionBarOverlaySize();
        if (actionBarOverlaySize > 0) {
            return actionBarOverlaySize + getStatusBarOverlaySize();
        }
        return actionBarOverlaySize;
    }
}

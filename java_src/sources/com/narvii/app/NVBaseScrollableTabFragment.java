package com.narvii.app;

import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.logging.LogUtils;
import com.narvii.logging.PageRefererInfo;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.util.Callback;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public abstract class NVBaseScrollableTabFragment extends NVFragment implements NVPagerTabLayout.PositionChangeListener {
    private static final String KEY_VIEWPAGER_INDEX = "view_pager_index";
    private static final int VIEWPAGER_INDEX_INVALID = -1;
    protected NVFragment currentShowingFragment;
    protected NVScrollablePagerAdapter mPagerAdapter;
    protected NVViewPager mViewPager;
    protected NVPagerTabLayout scrollableTabLayout;
    private UpdateTabViewDelegate updateTabViewDelegate;
    ViewPager.SimpleOnPageChangeListener pageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.app.NVBaseScrollableTabFragment.3
        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            NVBaseScrollableTabFragment.this.updateTabView(i10);
        }
    };
    private final DataSetObserver observer = new DataSetObserver() { // from class: com.narvii.app.NVBaseScrollableTabFragment.4
        @Override // android.database.DataSetObserver
        public void onInvalidated() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            NVBaseScrollableTabFragment.this.scrollableTabLayout.notifyDataSetChanged();
        }
    };

    protected abstract NVScrollablePagerAdapter createAdapter();

    protected UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return null;
    }

    public int defaultOffScreenPage() {
        return 1;
    }

    public int defaultTabIndex() {
        return 0;
    }

    public NVScrollablePagerAdapter getAdapter() {
        return this.mPagerAdapter;
    }

    public NVPagerTabLayout getTabLayout() {
        return this.scrollableTabLayout;
    }

    protected boolean isScrollable() {
        return true;
    }

    public void resetAdapter(int i10) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
            this.mViewPager.removeOnPageChangeListener(this.mPagerAdapter);
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = createAdapter();
        this.mPagerAdapter = nVScrollablePagerAdapterCreateAdapter;
        this.mViewPager.addOnPageChangeListener(nVScrollablePagerAdapterCreateAdapter);
        this.mViewPager.setAdapter(this.mPagerAdapter);
        this.scrollableTabLayout.notifyDataSetChanged();
        this.mPagerAdapter.registerDataSetObserver(this.observer);
        try {
            this.mViewPager.setCurrentItem(i10);
        } catch (Exception unused) {
        }
    }

    public int getCurIndex() {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            return nVViewPager.getCurrentItem();
        }
        return 0;
    }

    public Fragment getFragmentAtIndex(int i10) {
        return this.mPagerAdapter.getFragmentAt(i10);
    }

    @Override // com.narvii.app.NVFragment
    public void manuallyRefresh(Callback<Integer> callback) {
        if (this.currentShowingFragment == null) {
            Fragment fragmentAt = getAdapter().getFragmentAt(defaultTabIndex());
            if (fragmentAt instanceof NVFragment) {
                this.currentShowingFragment = (NVFragment) fragmentAt;
            }
        }
        NVFragment nVFragment = this.currentShowingFragment;
        if (nVFragment instanceof NVListFragment) {
            ((NVListFragment) nVFragment).onRefresh(callback);
        } else if (callback != null) {
            callback.call(1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.scrollable_tab_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.widget.NVPagerTabLayout.PositionChangeListener
    public void onPositionChange(int i10, float f) {
        if (this.updateTabViewDelegate != null) {
            for (int i11 = 0; i11 < this.scrollableTabLayout.getTabCount(); i11++) {
                View childTabAt = this.scrollableTabLayout.getChildTabAt(i11);
                if (i11 == i10) {
                    this.updateTabViewDelegate.onScrolled(childTabAt, i11, 1.0f - f);
                } else if (i11 == i10 + 1) {
                    this.updateTabViewDelegate.onScrolled(childTabAt, i11, f);
                } else {
                    this.updateTabViewDelegate.onScrolled(childTabAt, i11, 0.0f);
                }
            }
        }
    }

    public void setCurrentItem(int i10) {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager == null) {
            return;
        }
        int currentItem = nVViewPager.getCurrentItem();
        this.mViewPager.setCurrentItem(i10);
        if (currentItem == i10) {
            NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
            if (nVPagerTabLayout != null) {
                nVPagerTabLayout.updateTabsSelectStatus();
            }
            updateTabView(i10);
        }
    }

    public void setPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.addPagerListener(onPageChangeListener);
        }
    }

    public void setTabIndex(int i10) {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setCurrentItem(i10);
        }
    }

    public Drawable tabLayoutBackground() {
        return new ColorDrawable(((ConfigService) getService("config")).getTheme().colorPrimary());
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z6) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z6);
        }
    }

    protected void updateTabView(int i10) {
        if (this.updateTabViewDelegate != null) {
            int i11 = 0;
            while (i11 < this.scrollableTabLayout.getTabCount()) {
                this.updateTabViewDelegate.onSelected(this.scrollableTabLayout.getChildTabAt(i11), i11, i11 == i10);
                i11++;
            }
        }
    }

    public Fragment getCurrentFragment() {
        return getFragmentAtIndex(getCurIndex());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mViewPager.removeOnPageChangeListener(this.pageChangeListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        int currentItem;
        super.onSaveInstanceState(bundle);
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager == null) {
            currentItem = -1;
        } else {
            currentItem = nVViewPager.getCurrentItem();
        }
        bundle.putInt(KEY_VIEWPAGER_INDEX, currentItem);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.scrollableTabLayout = (NVPagerTabLayout) view.findViewById(R.id.tabs);
        this.mViewPager = (NVViewPager) view.findViewById(R.id.viewpager);
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = createAdapter();
        this.mPagerAdapter = nVScrollablePagerAdapterCreateAdapter;
        nVScrollablePagerAdapterCreateAdapter.setUserVisibleHint(getUserVisibleHint());
        this.updateTabViewDelegate = createUpdateTabViewDelegate();
        this.mViewPager.disableScroll = !isScrollable();
        this.mViewPager.addOnPageChangeListener(this.mPagerAdapter);
        this.mViewPager.setOffscreenPageLimit(defaultOffScreenPage());
        this.mViewPager.setAdapter(this.mPagerAdapter);
        this.scrollableTabLayout.setViewPager(this.mViewPager);
        this.scrollableTabLayout.addPagerListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.app.NVBaseScrollableTabFragment.1
            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i10) {
                String str;
                Fragment fragmentAt = NVBaseScrollableTabFragment.this.getAdapter().getFragmentAt(i10);
                if (fragmentAt instanceof NVFragment) {
                    NVFragment nVFragment = NVBaseScrollableTabFragment.this.currentShowingFragment;
                    if (nVFragment != null && (str = LogUtils.getLogContextInfo(nVFragment).pageName) != null) {
                        ((NVFragment) fragmentAt).setPageRefererInfo(new PageRefererInfo(str));
                    }
                    NVBaseScrollableTabFragment.this.currentShowingFragment = (NVFragment) fragmentAt;
                }
            }
        });
        this.scrollableTabLayout.addOnTabItemClickListener(new NVPagerTabLayout.OnTabItemClickListener() { // from class: com.narvii.app.NVBaseScrollableTabFragment.2
            @Override // com.narvii.widget.NVPagerTabLayout.OnTabItemClickListener
            public void onTabItemClicked(int i10) {
                NVBaseScrollableTabFragment.this.mViewPager.getCurrentItem();
            }
        });
        this.scrollableTabLayout.addPositionListener(this);
        this.mPagerAdapter.registerDataSetObserver(this.observer);
        this.scrollableTabLayout.setBackground(tabLayoutBackground());
        if (bundle != null) {
            this.mViewPager.setCurrentItem(bundle.getInt(KEY_VIEWPAGER_INDEX, -1));
        } else {
            this.mViewPager.setCurrentItem(defaultTabIndex());
        }
        updateTabView(this.mViewPager.getCurrentItem());
        this.mViewPager.addOnPageChangeListener(this.pageChangeListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        super.setUserVisibleHint(z6);
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z6);
        }
    }

    public void resetAdapter() {
        resetAdapter(defaultTabIndex());
    }
}

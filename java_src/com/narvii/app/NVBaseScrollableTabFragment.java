package com.narvii.app;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.logging.LogUtils;
import com.narvii.logging.PageRefererInfo;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.util.Callback;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* loaded from: classes2.dex */
public abstract class NVBaseScrollableTabFragment extends NVFragment implements NVPagerTabLayout.PositionChangeListener {
    private static final String KEY_VIEWPAGER_INDEX = "view_pager_index";
    private static final int VIEWPAGER_INDEX_INVALID = -1;
    protected NVFragment currentShowingFragment;
    protected NVScrollablePagerAdapter mPagerAdapter;
    protected NVViewPager mViewPager;
    protected NVPagerTabLayout scrollableTabLayout;
    private UpdateTabViewDelegate updateTabViewDelegate;
    ViewPager.SimpleOnPageChangeListener pageChangeListener = new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.app.NVBaseScrollableTabFragment.3
        @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            NVBaseScrollableTabFragment.this.updateTabView(i);
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

    protected boolean isScrollable() {
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.scrollable_tab_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.scrollableTabLayout = (NVPagerTabLayout) view.findViewById(R.id.tabs);
        this.mViewPager = (NVViewPager) view.findViewById(R.id.viewpager);
        this.mPagerAdapter = createAdapter();
        this.mPagerAdapter.setUserVisibleHint(getUserVisibleHint());
        this.updateTabViewDelegate = createUpdateTabViewDelegate();
        this.mViewPager.disableScroll = !isScrollable();
        this.mViewPager.addOnPageChangeListener(this.mPagerAdapter);
        this.mViewPager.setOffscreenPageLimit(defaultOffScreenPage());
        this.mViewPager.setAdapter(this.mPagerAdapter);
        this.scrollableTabLayout.setViewPager(this.mViewPager);
        this.scrollableTabLayout.addPagerListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.app.NVBaseScrollableTabFragment.1
            @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                String str;
                Fragment fragmentAt = NVBaseScrollableTabFragment.this.getAdapter().getFragmentAt(i);
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
            public void onTabItemClicked(int i) {
                if (i == NVBaseScrollableTabFragment.this.mViewPager.getCurrentItem()) {
                }
            }
        });
        this.scrollableTabLayout.addPositionListener(this);
        this.mPagerAdapter.registerDataSetObserver(this.observer);
        if (Build.VERSION.SDK_INT >= 16) {
            this.scrollableTabLayout.setBackground(tabLayoutBackground());
        } else {
            this.scrollableTabLayout.setBackgroundDrawable(tabLayoutBackground());
        }
        if (bundle != null) {
            this.mViewPager.setCurrentItem(bundle.getInt(KEY_VIEWPAGER_INDEX, -1));
        } else {
            this.mViewPager.setCurrentItem(defaultTabIndex());
        }
        updateTabView(this.mViewPager.getCurrentItem());
        this.mViewPager.addOnPageChangeListener(this.pageChangeListener);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mViewPager.removeOnPageChangeListener(this.pageChangeListener);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        NVViewPager nVViewPager = this.mViewPager;
        bundle.putInt(KEY_VIEWPAGER_INDEX, nVViewPager == null ? -1 : nVViewPager.getCurrentItem());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void updateChildrenVisibleHint(boolean z) {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.setUserVisibleHint(z);
        }
    }

    public void resetAdapter(int i) throws Resources.NotFoundException {
        NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
        if (nVScrollablePagerAdapter != null) {
            nVScrollablePagerAdapter.unregisterDataSetObserver(this.observer);
            this.mViewPager.removeOnPageChangeListener(this.mPagerAdapter);
        }
        this.mPagerAdapter = createAdapter();
        this.mViewPager.addOnPageChangeListener(this.mPagerAdapter);
        this.mViewPager.setAdapter(this.mPagerAdapter);
        this.scrollableTabLayout.notifyDataSetChanged();
        this.mPagerAdapter.registerDataSetObserver(this.observer);
        try {
            this.mViewPager.setCurrentItem(i);
        } catch (Exception unused) {
        }
    }

    public void resetAdapter() throws Resources.NotFoundException {
        resetAdapter(defaultTabIndex());
    }

    protected void updateTabView(int i) {
        if (this.updateTabViewDelegate != null) {
            int i2 = 0;
            while (i2 < this.scrollableTabLayout.getTabCount()) {
                this.updateTabViewDelegate.onSelected(this.scrollableTabLayout.getChildTabAt(i2), i2, i2 == i);
                i2++;
            }
        }
    }

    @Override // com.narvii.widget.NVPagerTabLayout.PositionChangeListener
    public void onPositionChange(int i, float f) {
        if (this.updateTabViewDelegate != null) {
            for (int i2 = 0; i2 < this.scrollableTabLayout.getTabCount(); i2++) {
                View childTabAt = this.scrollableTabLayout.getChildTabAt(i2);
                if (i2 == i) {
                    this.updateTabViewDelegate.onScrolled(childTabAt, i2, 1.0f - f);
                } else if (i2 == i + 1) {
                    this.updateTabViewDelegate.onScrolled(childTabAt, i2, f);
                } else {
                    this.updateTabViewDelegate.onScrolled(childTabAt, i2, 0.0f);
                }
            }
        }
    }

    public Drawable tabLayoutBackground() {
        return new ColorDrawable(((ConfigService) getService("config")).getTheme().colorPrimary());
    }

    public void setPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.addPagerListener(onPageChangeListener);
        }
    }

    public NVPagerTabLayout getTabLayout() {
        return this.scrollableTabLayout;
    }

    public int getCurIndex() {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            return nVViewPager.getCurrentItem();
        }
        return 0;
    }

    public void setTabIndex(int i) throws Resources.NotFoundException {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setCurrentItem(i);
        }
    }

    public NVScrollablePagerAdapter getAdapter() {
        return this.mPagerAdapter;
    }

    public Fragment getCurrentFragment() {
        return getFragmentAtIndex(getCurIndex());
    }

    public Fragment getFragmentAtIndex(int i) {
        return this.mPagerAdapter.getFragmentAt(i);
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

    public void setCurrentItem(int i) throws Resources.NotFoundException {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager == null) {
            return;
        }
        int currentItem = nVViewPager.getCurrentItem();
        this.mViewPager.setCurrentItem(i);
        if (currentItem == i) {
            NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
            if (nVPagerTabLayout != null) {
                nVPagerTabLayout.updateTabsSelectStatus();
            }
            updateTabView(i);
        }
    }
}

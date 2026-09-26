package com.narvii.app;

import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TabPagerFragment extends NVFragment {
    PagerAdapter mPagerAdapter;
    protected NVViewPager mViewPager;
    private final DataSetObserver observer = new DataSetObserver() { // from class: com.narvii.app.TabPagerFragment.1
        @Override // android.database.DataSetObserver
        public void onInvalidated() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabPagerFragment.this.scrollableTabLayout.notifyDataSetChanged();
        }
    };
    protected NVPagerTabLayout scrollableTabLayout;

    protected abstract PagerAdapter createAdapter();

    public int defaultOffScreenPage() {
        return 1;
    }

    public int defaultTabIndex() {
        return 0;
    }

    public PagerAdapter getAdapter() {
        return this.mPagerAdapter;
    }

    public NVPagerTabLayout getTabLayout() {
        return this.scrollableTabLayout;
    }

    protected boolean isScrollable() {
        return true;
    }

    protected void updateTabView(int i10) {
    }

    public int getCurIndex() {
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            return nVViewPager.getCurrentItem();
        }
        return 0;
    }

    public Drawable tabLayoutBackground() {
        return new ColorDrawable(((ConfigService) getService("config")).getTheme().colorPrimary());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        PagerAdapter pagerAdapter;
        super.onViewCreated(view, bundle);
        this.scrollableTabLayout = (NVPagerTabLayout) view.findViewById(R.id.tabs);
        this.mViewPager = (NVViewPager) view.findViewById(R.id.viewpager);
        this.mPagerAdapter = createAdapter();
        this.mViewPager.disableScroll = !isScrollable();
        this.mViewPager.setOffscreenPageLimit(defaultOffScreenPage());
        this.mViewPager.setAdapter(this.mPagerAdapter);
        this.scrollableTabLayout.setViewPager(this.mViewPager);
        this.mPagerAdapter.registerDataSetObserver(this.observer);
        this.scrollableTabLayout.setBackground(tabLayoutBackground());
        this.mViewPager.setCurrentItem(defaultTabIndex());
        int iDefaultTabIndex = defaultTabIndex();
        if (Utils.isRtl() && (pagerAdapter = this.mPagerAdapter) != null && pagerAdapter.getCount() > 0) {
            iDefaultTabIndex = (this.mPagerAdapter.getCount() - iDefaultTabIndex) - 1;
        }
        updateTabView(iDefaultTabIndex);
    }
}

package com.narvii.app;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public abstract class NVPagerTabFragment extends NVFragment implements TabsAdapter.NVTabChangedListener {
    private static final int MAX_TABS = 8;
    protected TabHost mTabHost;
    protected TabsAdapter mTabsAdapter;
    protected ViewPager mViewPager;

    protected int checkedTextColor() {
        return -1;
    }

    public int defaultOffScreenPage() {
        return 1;
    }

    public int defaultTabIndex() {
        return 0;
    }

    protected Bundle getBundles(int i10) {
        return null;
    }

    protected abstract Class<? extends NVFragment> getFragment(int i10);

    protected Drawable getIconDrawable(int i10) {
        return null;
    }

    protected abstract String getTabLabel(int i10);

    @Override // com.narvii.app.TabsAdapter.NVTabChangedListener
    public void onTabChanged(TabHost tabHost, int i10) {
        for (int i11 = 0; i11 < 8; i11++) {
            View childTabViewAt = this.mTabHost.getTabWidget().getChildTabViewAt(i11);
            TextView textView = childTabViewAt != null ? (TextView) childTabViewAt.findViewById(R.id.tab_title) : null;
            if (i11 == i10) {
                if (textView != null) {
                    textView.setTypeface(textView.getTypeface(), 1);
                    textView.setTextColor(checkedTextColor());
                }
            } else if (textView != null) {
                textView.setTypeface(null);
                textView.setTextColor(unCheckedTextColor());
            }
        }
    }

    protected TabsAdapter createAdapter(Fragment fragment, TabHost tabHost, ViewPager viewPager) {
        return new TabsAdapter(fragment, tabHost, viewPager);
    }

    public int getCurIndex() {
        return this.mViewPager.getCurrentItem();
    }

    public Fragment getCurrentFragment() {
        return this.mTabsAdapter.getCurrentFragment();
    }

    public TabWidget getTabWidgetLayout() {
        TabHost tabHost = this.mTabHost;
        if (tabHost != null) {
            return tabHost.getTabWidget();
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.pager_tab_fragment_layout, viewGroup, false);
    }

    public void setTabIndex(int i10) {
        this.mTabHost.setCurrentTab(i10);
    }

    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.tab_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        if (drawable != null) {
            int i10 = R.id.tab_icon;
            ((ImageView) viewInflate.findViewById(i10)).setImageDrawable(drawable);
            viewInflate.findViewById(i10).setVisibility(0);
        } else {
            viewInflate.findViewById(R.id.tab_icon).setVisibility(8);
        }
        viewInflate.setBackgroundDrawable(new NVTabDrawable(this));
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        TabHost tabHost = (TabHost) view.findViewById(android.R.id.tabhost);
        this.mTabHost = tabHost;
        if (tabHost != null) {
            tabHost.setup();
        }
        ViewPager viewPager = (ViewPager) view.findViewById(R.id.pager);
        this.mViewPager = viewPager;
        TabsAdapter tabsAdapterCreateAdapter = createAdapter(this, this.mTabHost, viewPager);
        this.mTabsAdapter = tabsAdapterCreateAdapter;
        tabsAdapterCreateAdapter.listener = this;
        for (int i10 = 0; i10 < 8; i10++) {
            if (getTabLabel(i10) != null) {
                this.mTabsAdapter.addTab(this.mTabHost.newTabSpec(getTabLabel(i10)).setIndicator(getTabView(getTabLabel(i10), getIconDrawable(i10))), getFragment(i10), getBundles(i10));
            }
        }
        this.mViewPager.setOffscreenPageLimit(defaultOffScreenPage());
        this.mTabHost.setCurrentTab(defaultTabIndex());
    }

    protected int unCheckedTextColor() {
        return getContext().getResources().getColor(R.color.tab_default_text);
    }
}

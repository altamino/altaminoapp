package com.narvii.app;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import com.narvii.app.TabsAdapter;
import com.narvii.lib.R;

/* loaded from: classes2.dex */
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

    protected Bundle getBundles(int i) {
        return null;
    }

    protected abstract Class<? extends NVFragment> getFragment(int i);

    protected Drawable getIconDrawable(int i) {
        return null;
    }

    protected abstract String getTabLabel(int i);

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.pager_tab_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.mTabHost = (TabHost) view.findViewById(android.R.id.tabhost);
        TabHost tabHost = this.mTabHost;
        if (tabHost != null) {
            tabHost.setup();
        }
        this.mViewPager = (ViewPager) view.findViewById(R.id.pager);
        this.mTabsAdapter = createAdapter(this, this.mTabHost, this.mViewPager);
        this.mTabsAdapter.listener = this;
        for (int i = 0; i < 8; i++) {
            if (getTabLabel(i) != null) {
                this.mTabsAdapter.addTab(this.mTabHost.newTabSpec(getTabLabel(i)).setIndicator(getTabView(getTabLabel(i), getIconDrawable(i))), getFragment(i), getBundles(i));
            }
        }
        this.mViewPager.setOffscreenPageLimit(defaultOffScreenPage());
        this.mTabHost.setCurrentTab(defaultTabIndex());
    }

    public void setTabIndex(int i) {
        this.mTabHost.setCurrentTab(i);
    }

    public int getCurIndex() {
        return this.mViewPager.getCurrentItem();
    }

    public TabWidget getTabWidgetLayout() {
        TabHost tabHost = this.mTabHost;
        if (tabHost != null) {
            return tabHost.getTabWidget();
        }
        return null;
    }

    protected TabsAdapter createAdapter(Fragment fragment, TabHost tabHost, ViewPager viewPager) {
        return new TabsAdapter(fragment, tabHost, viewPager);
    }

    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.tab_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        if (drawable != null) {
            ((ImageView) viewInflate.findViewById(R.id.tab_icon)).setImageDrawable(drawable);
            viewInflate.findViewById(R.id.tab_icon).setVisibility(0);
        } else {
            viewInflate.findViewById(R.id.tab_icon).setVisibility(8);
        }
        viewInflate.setBackgroundDrawable(new NVTabDrawable(this));
        return viewInflate;
    }

    @Override // com.narvii.app.TabsAdapter.NVTabChangedListener
    public void onTabChanged(TabHost tabHost, int i) {
        for (int i2 = 0; i2 < 8; i2++) {
            View childTabViewAt = this.mTabHost.getTabWidget().getChildTabViewAt(i2);
            TextView textView = childTabViewAt != null ? (TextView) childTabViewAt.findViewById(R.id.tab_title) : null;
            if (i2 == i) {
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

    protected int unCheckedTextColor() {
        return getContext().getResources().getColor(R.color.tab_default_text);
    }

    public Fragment getCurrentFragment() {
        return this.mTabsAdapter.getCurrentFragment();
    }
}

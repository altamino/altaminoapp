package com.narvii.app;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class TabsAdapter extends FragmentPagerAdapter implements TabHost.OnTabChangeListener, ViewPager.OnPageChangeListener {
    public NVTabChangedListener listener;
    private final Context mContext;
    private FragmentManager mFragmentManager;
    private final TabHost mTabHost;
    private final ArrayList<TabInfo> mTabs;
    private Map<Integer, String> mTags;
    private final ViewPager mViewPager;

    public interface NVTabChangedListener {
        void onTabChanged(TabHost tabHost, int i);
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    public TabsAdapter(Fragment fragment, TabHost tabHost, ViewPager viewPager) throws Resources.NotFoundException {
        super(fragment.getChildFragmentManager());
        this.mTabs = new ArrayList<>();
        this.mFragmentManager = fragment.getChildFragmentManager();
        this.mContext = fragment.getContext();
        this.mTabHost = tabHost;
        this.mViewPager = viewPager;
        this.mTabHost.setOnTabChangedListener(this);
        this.mViewPager.setAdapter(this);
        this.mViewPager.setOnPageChangeListener(this);
        this.mTags = new HashMap();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Object objInstantiateItem = super.instantiateItem(viewGroup, i);
        if (objInstantiateItem instanceof Fragment) {
            this.mTags.put(Integer.valueOf(i), ((Fragment) objInstantiateItem).getTag());
        }
        return objInstantiateItem;
    }

    public Fragment getCurrentFragment() {
        String str = this.mTags.get(Integer.valueOf(this.mViewPager.getCurrentItem()));
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.mFragmentManager.findFragmentByTag(str);
    }

    static final class TabInfo {
        private final Bundle args;
        private final Class<?> clss;
        private final String tag;

        TabInfo(String str, Class<?> cls, Bundle bundle) {
            this.tag = str;
            this.clss = cls;
            this.args = bundle;
        }
    }

    static class NVTabContentFactory implements TabHost.TabContentFactory {
        private final Context mContext;

        public NVTabContentFactory(Context context) {
            this.mContext = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.mContext);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    public void addTab(TabHost.TabSpec tabSpec, Class<?> cls, Bundle bundle) {
        tabSpec.setContent(new NVTabContentFactory(this.mContext));
        this.mTabs.add(new TabInfo(tabSpec.getTag(), cls, bundle));
        this.mTabHost.addTab(tabSpec);
        notifyDataSetChanged();
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        TabInfo tabInfo = this.mTabs.get(i);
        return Fragment.instantiate(this.mContext, tabInfo.clss.getName(), tabInfo.args);
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        TabWidget tabWidget = this.mTabHost.getTabWidget();
        int descendantFocusability = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(393216);
        this.mTabHost.setCurrentTab(i);
        tabWidget.setDescendantFocusability(descendantFocusability);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) throws Resources.NotFoundException {
        this.mViewPager.setCurrentItem(this.mTabHost.getCurrentTab());
        NVTabChangedListener nVTabChangedListener = this.listener;
        if (nVTabChangedListener != null) {
            TabHost tabHost = this.mTabHost;
            nVTabChangedListener.onTabChanged(tabHost, tabHost.getCurrentTab());
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.mTabs.size();
    }
}

package com.narvii.app;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class TabsAdapter extends FragmentPagerAdapter implements TabHost.OnTabChangeListener, ViewPager.OnPageChangeListener {
    public NVTabChangedListener listener;
    private final Context mContext;
    private FragmentManager mFragmentManager;
    private final TabHost mTabHost;
    private final ArrayList<TabInfo> mTabs;
    private Map<Integer, String> mTags;
    private final ViewPager mViewPager;

    public interface NVTabChangedListener {
        void onTabChanged(TabHost tabHost, int i10);
    }

    static class NVTabContentFactory implements TabHost.TabContentFactory {
        private final Context mContext;

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.mContext);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }

        public NVTabContentFactory(Context context) {
            this.mContext = context;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i10, float f, int i11) {
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

    public void addTab(TabHost.TabSpec tabSpec, Class<?> cls, Bundle bundle) {
        tabSpec.setContent(new NVTabContentFactory(this.mContext));
        this.mTabs.add(new TabInfo(tabSpec.getTag(), cls, bundle));
        this.mTabHost.addTab(tabSpec);
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.mTabs.size();
    }

    public Fragment getCurrentFragment() {
        String str = this.mTags.get(Integer.valueOf(this.mViewPager.getCurrentItem()));
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.mFragmentManager.m0(str);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i10) {
        TabInfo tabInfo = this.mTabs.get(i10);
        return Fragment.instantiate(this.mContext, tabInfo.clss.getName(), tabInfo.args);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i10) {
        TabWidget tabWidget = this.mTabHost.getTabWidget();
        int descendantFocusability = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(393216);
        this.mTabHost.setCurrentTab(i10);
        tabWidget.setDescendantFocusability(descendantFocusability);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        this.mViewPager.setCurrentItem(this.mTabHost.getCurrentTab());
        NVTabChangedListener nVTabChangedListener = this.listener;
        if (nVTabChangedListener != null) {
            TabHost tabHost = this.mTabHost;
            nVTabChangedListener.onTabChanged(tabHost, tabHost.getCurrentTab());
        }
    }

    public TabsAdapter(Fragment fragment, TabHost tabHost, ViewPager viewPager) {
        super(fragment.getChildFragmentManager());
        this.mTabs = new ArrayList<>();
        this.mFragmentManager = fragment.getChildFragmentManager();
        this.mContext = fragment.getContext();
        this.mTabHost = tabHost;
        this.mViewPager = viewPager;
        tabHost.setOnTabChangedListener(this);
        viewPager.setAdapter(this);
        viewPager.setOnPageChangeListener(this);
        this.mTags = new HashMap();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        Object objInstantiateItem = super.instantiateItem(viewGroup, i10);
        if (objInstantiateItem instanceof Fragment) {
            this.mTags.put(Integer.valueOf(i10), ((Fragment) objInstantiateItem).getTag());
        }
        return objInstantiateItem;
    }
}

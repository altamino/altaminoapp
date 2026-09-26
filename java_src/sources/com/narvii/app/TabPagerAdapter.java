package com.narvii.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.util.FixedFragmentStatePagerAdapter;
import com.narvii.widget.NVPagerTabLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class TabPagerAdapter extends FixedFragmentStatePagerAdapter implements NVPagerTabLayout.CustomPagerTabView {
    private FragmentManager fragmentManager;
    private Context mContext;
    private List<TabInfo> tabs;

    public static final class TabInfo {
        public final Bundle args;
        public final Class<?> clazz;
        public final String id;
        public final String title;
        public final View view;

        public int hashCode() {
            String str = this.id;
            int iHashCode = str == null ? 0 : str.hashCode();
            Class<?> cls = this.clazz;
            return iHashCode | (cls != null ? cls.hashCode() : 0);
        }

        public TabInfo(String str, String str2, View view, Class<?> cls, Bundle bundle) {
            this.id = str;
            this.title = str2;
            this.view = view;
            this.clazz = cls;
            this.args = bundle;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.tabs.size();
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter
    public Fragment getItem(int i10) {
        TabInfo tabInfo = this.tabs.get(i10);
        return Fragment.instantiate(this.mContext, tabInfo.clazz.getName(), tabInfo.args);
    }

    @Override // com.narvii.widget.NVPagerTabLayout.CustomPagerTabView
    public View getPageTabView(int i10) {
        return this.tabs.get(i10).view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i10) {
        return this.tabs.get(i10).title;
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter
    public String getTag(int i10) {
        return this.tabs.get(i10).id;
    }

    public void setTabs(List<TabInfo> list) {
        this.tabs = list;
        notifyDataSetChanged();
    }

    public TabPagerAdapter(Context context, FragmentManager fragmentManager) {
        super(fragmentManager);
        this.mContext = context;
        this.fragmentManager = fragmentManager;
        this.tabs = new ArrayList();
    }

    public Fragment getFragmentAt(int i10) {
        String tag = getTag(i10);
        if (tag == null) {
            return null;
        }
        return this.fragmentManager.m0(tag);
    }
}

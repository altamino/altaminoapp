package com.narvii.app;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.View;
import com.narvii.util.FixedFragmentStatePagerAdapter;
import com.narvii.widget.NVPagerTabLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class TabPagerAdapter extends FixedFragmentStatePagerAdapter implements NVPagerTabLayout.CustomPagerTabView {
    private FragmentManager fragmentManager;
    private Context mContext;
    private List<TabInfo> tabs;

    @Override // android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    public TabPagerAdapter(Context context, FragmentManager fragmentManager) {
        super(fragmentManager);
        this.mContext = context;
        this.fragmentManager = fragmentManager;
        this.tabs = new ArrayList();
    }

    public void setTabs(List<TabInfo> list) {
        this.tabs = list;
        notifyDataSetChanged();
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter
    public String getTag(int i) {
        return this.tabs.get(i).id;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.tabs.size();
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter
    public Fragment getItem(int i) {
        TabInfo tabInfo = this.tabs.get(i);
        return Fragment.instantiate(this.mContext, tabInfo.clazz.getName(), tabInfo.args);
    }

    public static final class TabInfo {
        public final Bundle args;
        public final Class<?> clazz;
        public final String id;
        public final String title;
        public final View view;

        public TabInfo(String str, String str2, View view, Class<?> cls, Bundle bundle) {
            this.id = str;
            this.title = str2;
            this.view = view;
            this.clazz = cls;
            this.args = bundle;
        }

        public int hashCode() {
            String str = this.id;
            int iHashCode = str == null ? 0 : str.hashCode();
            Class<?> cls = this.clazz;
            return iHashCode | (cls != null ? cls.hashCode() : 0);
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.tabs.get(i).title;
    }

    @Override // com.narvii.widget.NVPagerTabLayout.CustomPagerTabView
    public View getPageTabView(int i) {
        return this.tabs.get(i).view;
    }

    public Fragment getFragmentAt(int i) {
        String tag = getTag(i);
        if (tag == null) {
            return null;
        }
        return this.fragmentManager.findFragmentByTag(tag);
    }
}

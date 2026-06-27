package com.narvii.app;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.View;
import com.narvii.util.LazyFragmentPagerAdapter;
import com.narvii.widget.NVPagerTabLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class NVScrollablePagerAdapter extends LazyFragmentPagerAdapter implements NVPagerTabLayout.CustomPagerTabView {
    private FragmentManager fragmentManager;
    private Context mContext;
    private List<TabInfo> tabs;

    public NVScrollablePagerAdapter(Context context, FragmentManager fragmentManager) {
        super(fragmentManager);
        this.mContext = context;
        this.fragmentManager = fragmentManager;
        this.tabs = new ArrayList();
    }

    public void setTabs(List<TabInfo> list) {
        this.tabs = list;
        notifyDataSetChanged();
    }

    public void addTabs(List<TabInfo> list) {
        if (list == null) {
            return;
        }
        if (this.tabs == null) {
            this.tabs = new ArrayList();
        }
        this.tabs.addAll(list);
        notifyDataSetChanged();
    }

    public List<TabInfo> getTabs() {
        return this.tabs;
    }

    @Override // com.narvii.util.LazyFragmentPagerAdapter
    public long getFragmentId(int i) {
        TabInfo tabInfo = this.tabs.get(i);
        return (((tabInfo.id == null ? 0L : r1.hashCode()) << 32) | (tabInfo.clazz != null ? r0.getName().hashCode() : 0L)) ^ i;
    }

    @Override // com.narvii.util.LazyFragmentPagerAdapter
    public Fragment createFragment(int i) {
        TabInfo tabInfo = this.tabs.get(i);
        return Fragment.instantiate(this.mContext, tabInfo.clazz.getName(), tabInfo.args);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.tabs.size();
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
        String fragmentTag = getFragmentTag(i);
        if (fragmentTag == null) {
            return null;
        }
        return this.fragmentManager.findFragmentByTag(fragmentTag);
    }
}

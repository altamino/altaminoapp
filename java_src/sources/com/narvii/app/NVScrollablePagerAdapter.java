package com.narvii.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.util.LazyFragmentPagerAdapter;
import com.narvii.widget.NVPagerTabLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class NVScrollablePagerAdapter extends LazyFragmentPagerAdapter implements NVPagerTabLayout.CustomPagerTabView {
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

    public List<TabInfo> getTabs() {
        return this.tabs;
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

    @Override // com.narvii.util.LazyFragmentPagerAdapter
    public Fragment createFragment(int i10) {
        TabInfo tabInfo = this.tabs.get(i10);
        return Fragment.instantiate(this.mContext, tabInfo.clazz.getName(), tabInfo.args);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.tabs.size();
    }

    @Override // com.narvii.util.LazyFragmentPagerAdapter
    public long getFragmentId(int i10) {
        TabInfo tabInfo = this.tabs.get(i10);
        String str = tabInfo.id;
        long jHashCode = str == null ? 0L : str.hashCode();
        Class<?> cls = tabInfo.clazz;
        return ((jHashCode << 32) | (cls != null ? cls.getName().hashCode() : 0L)) ^ ((long) i10);
    }

    @Override // com.narvii.widget.NVPagerTabLayout.CustomPagerTabView
    public View getPageTabView(int i10) {
        return this.tabs.get(i10).view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i10) {
        return this.tabs.get(i10).title;
    }

    public void setTabs(List<TabInfo> list) {
        this.tabs = list;
        notifyDataSetChanged();
    }

    public NVScrollablePagerAdapter(Context context, FragmentManager fragmentManager) {
        super(fragmentManager);
        this.mContext = context;
        this.fragmentManager = fragmentManager;
        this.tabs = new ArrayList();
    }

    public Fragment getFragmentAt(int i10) {
        String fragmentTag = getFragmentTag(i10);
        if (fragmentTag == null) {
            return null;
        }
        return this.fragmentManager.m0(fragmentTag);
    }
}

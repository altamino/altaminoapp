package com.narvii.app;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class NVScrollableTabFragment extends NVBaseScrollableTabFragment {
    private static final int MAX_TABS = 8;
    private SparseArray<Integer> realPositions = new SparseArray<>();
    private SparseArray<Integer> positionToIndexMap = new SparseArray<>();

    protected Bundle getBundles(int i) {
        return null;
    }

    protected abstract Class<? extends NVFragment> getFragment(int i);

    protected Drawable getIconDrawable(int i) {
        return null;
    }

    protected abstract String getTabLabel(int i);

    protected View getTabView(int i, String str, Drawable drawable) {
        return null;
    }

    protected View getTabView(String str, Drawable drawable) {
        return null;
    }

    protected void onInstantiateItem(Object obj) {
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        this.realPositions.clear();
        this.positionToIndexMap.clear();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (Utils.isRtl()) {
            for (int i2 = 7; i2 >= 0; i2--) {
                String tabLabel = getTabLabel(i2);
                if (tabLabel != null) {
                    Class<? extends NVFragment> fragment = getFragment(i2);
                    Bundle bundles = getBundles(i2);
                    View tabView = getTabView(tabLabel, getIconDrawable(i2));
                    if (tabView == null) {
                        tabView = getTabView(i2, tabLabel, getIconDrawable(i2));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i2 + "_" + fragment.getSimpleName(), tabLabel, tabView, fragment, bundles));
                    this.realPositions.put(i2, Integer.valueOf(i));
                    this.positionToIndexMap.put(i, Integer.valueOf(i2));
                    i++;
                }
            }
        } else {
            int i3 = 0;
            while (i < 8) {
                String tabLabel2 = getTabLabel(i);
                if (tabLabel2 != null) {
                    Class<? extends NVFragment> fragment2 = getFragment(i);
                    Bundle bundles2 = getBundles(i);
                    View tabView2 = getTabView(tabLabel2, getIconDrawable(i));
                    if (tabView2 == null) {
                        tabView2 = getTabView(i, tabLabel2, getIconDrawable(i));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i + "_" + fragment2.getSimpleName(), tabLabel2, tabView2, fragment2, bundles2));
                    this.realPositions.put(i, Integer.valueOf(i3));
                    this.positionToIndexMap.put(i3, Integer.valueOf(i));
                    i3++;
                }
                i++;
            }
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapter = new NVScrollablePagerAdapter(getContext(), getChildFragmentManager()) { // from class: com.narvii.app.NVScrollableTabFragment.1
            @Override // com.narvii.util.LazyFragmentPagerAdapter, com.narvii.util.NoDetachFragmentPagerAdapter, android.support.v4.view.PagerAdapter
            public Object instantiateItem(ViewGroup viewGroup, int i4) {
                Object objInstantiateItem = super.instantiateItem(viewGroup, i4);
                NVScrollableTabFragment.this.onInstantiateItem(objInstantiateItem);
                return objInstantiateItem;
            }
        };
        nVScrollablePagerAdapter.setTabs(arrayList);
        return nVScrollablePagerAdapter;
    }

    public int getRealPositionOfIndex(int i) {
        Integer num = this.realPositions.get(i);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public int getIndexOfRealPosition(int i) {
        Integer num = this.positionToIndexMap.get(i);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }
}

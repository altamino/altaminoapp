package com.narvii.app;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public abstract class NVScrollableTabFragment extends NVBaseScrollableTabFragment {
    private static final int MAX_TABS = 8;
    private SparseArray<Integer> realPositions = new SparseArray<>();
    private SparseArray<Integer> positionToIndexMap = new SparseArray<>();

    @Nullable
    protected Bundle getBundles(int i10) {
        return null;
    }

    @Nullable
    protected abstract Class<? extends NVFragment> getFragment(int i10);

    @Nullable
    protected Drawable getIconDrawable(int i10) {
        return null;
    }

    @Nullable
    protected abstract String getTabLabel(int i10);

    protected View getTabView(int i10, String str, Drawable drawable) {
        return null;
    }

    protected void onInstantiateItem(Object obj) {
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        this.realPositions.clear();
        this.positionToIndexMap.clear();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        if (Utils.isRtl()) {
            for (int i11 = 7; i11 >= 0; i11--) {
                String tabLabel = getTabLabel(i11);
                if (tabLabel != null) {
                    Class<? extends NVFragment> fragment = getFragment(i11);
                    Bundle bundles = getBundles(i11);
                    View tabView = getTabView(tabLabel, getIconDrawable(i11));
                    if (tabView == null) {
                        tabView = getTabView(i11, tabLabel, getIconDrawable(i11));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i11 + "_" + fragment.getSimpleName(), tabLabel, tabView, fragment, bundles));
                    this.realPositions.put(i11, Integer.valueOf(i10));
                    this.positionToIndexMap.put(i10, Integer.valueOf(i11));
                    i10++;
                }
            }
        } else {
            int i12 = 0;
            while (i10 < 8) {
                String tabLabel2 = getTabLabel(i10);
                if (tabLabel2 != null) {
                    Class<? extends NVFragment> fragment2 = getFragment(i10);
                    Bundle bundles2 = getBundles(i10);
                    View tabView2 = getTabView(tabLabel2, getIconDrawable(i10));
                    if (tabView2 == null) {
                        tabView2 = getTabView(i10, tabLabel2, getIconDrawable(i10));
                    }
                    arrayList.add(new NVScrollablePagerAdapter.TabInfo(i10 + "_" + fragment2.getSimpleName(), tabLabel2, tabView2, fragment2, bundles2));
                    this.realPositions.put(i10, Integer.valueOf(i12));
                    this.positionToIndexMap.put(i12, Integer.valueOf(i10));
                    i12++;
                }
                i10++;
            }
        }
        NVScrollablePagerAdapter nVScrollablePagerAdapter = new NVScrollablePagerAdapter(getContext(), getChildFragmentManager()) { // from class: com.narvii.app.NVScrollableTabFragment.1
            @Override // com.narvii.util.LazyFragmentPagerAdapter, com.narvii.util.NoDetachFragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
            public Object instantiateItem(ViewGroup viewGroup, int i13) {
                Object objInstantiateItem = super.instantiateItem(viewGroup, i13);
                NVScrollableTabFragment.this.onInstantiateItem(objInstantiateItem);
                return objInstantiateItem;
            }
        };
        nVScrollablePagerAdapter.setTabs(arrayList);
        return nVScrollablePagerAdapter;
    }

    public int getIndexOfRealPosition(int i10) {
        Integer num = this.positionToIndexMap.get(i10);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public int getRealPositionOfIndex(int i10) {
        Integer num = this.realPositions.get(i10);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    protected View getTabView(String str, Drawable drawable) {
        return null;
    }
}

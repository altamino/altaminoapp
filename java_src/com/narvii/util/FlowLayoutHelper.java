package com.narvii.util;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class FlowLayoutHelper<T> {
    public abstract View createChildView(ViewGroup viewGroup);

    public abstract void updateChildView(View view, T t);

    public void updateList(NVFlowLayout nVFlowLayout, List<T> list, int i) {
        if (nVFlowLayout == null) {
            return;
        }
        int size = CollectionUtils.getSize(list);
        if (i != -1) {
            size = Math.min(i, size);
        }
        int childCount = nVFlowLayout.getChildCount();
        int iAbs = Math.abs(childCount - size);
        boolean z = childCount < size;
        for (int i2 = 0; i2 < iAbs; i2++) {
            if (z) {
                nVFlowLayout.addView(createChildView(nVFlowLayout));
            } else {
                nVFlowLayout.removeViewAt(0);
            }
        }
        if (nVFlowLayout.getChildCount() != size) {
            Log.e("assert");
            return;
        }
        for (int i3 = 0; i3 < size; i3++) {
            updateChildView(nVFlowLayout.getChildAt(i3), list.get(i3));
        }
    }
}

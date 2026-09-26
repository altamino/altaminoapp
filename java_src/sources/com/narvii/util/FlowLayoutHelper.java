package com.narvii.util;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class FlowLayoutHelper<T> {
    public abstract View createChildView(ViewGroup viewGroup);

    public abstract void updateChildView(View view, T t5);

    public void updateList(NVFlowLayout nVFlowLayout, List<T> list, int i10) {
        if (nVFlowLayout == null) {
            return;
        }
        int size = CollectionUtils.getSize(list);
        if (i10 != -1) {
            size = Math.min(i10, size);
        }
        int childCount = nVFlowLayout.getChildCount();
        int iAbs = Math.abs(childCount - size);
        boolean z6 = childCount < size;
        for (int i11 = 0; i11 < iAbs; i11++) {
            if (z6) {
                nVFlowLayout.addView(createChildView(nVFlowLayout));
            } else {
                nVFlowLayout.removeViewAt(0);
            }
        }
        if (nVFlowLayout.getChildCount() != size) {
            Log.e("assert");
            return;
        }
        for (int i12 = 0; i12 < size; i12++) {
            updateChildView(nVFlowLayout.getChildAt(i12), list.get(i12));
        }
    }
}

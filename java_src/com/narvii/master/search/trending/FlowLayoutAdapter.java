package com.narvii.master.search.trending;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.logging.LogUtils;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FlowLayoutAdapter.kt */
/* loaded from: classes3.dex */
public abstract class FlowLayoutAdapter<T> extends AdriftAdapter {
    private List<T> list;

    public abstract View createChildView(ViewGroup viewGroup);

    protected View createMoreButton(NVFlowLayout flowLayout) {
        Intrinsics.checkParameterIsNotNull(flowLayout, "flowLayout");
        return null;
    }

    protected boolean hasMoreButton() {
        return false;
    }

    public abstract void updateChildView(T t, View view);

    protected void updateFlowLayout(NVFlowLayout cell) {
        Intrinsics.checkParameterIsNotNull(cell, "cell");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowLayoutAdapter(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.list = new ArrayList();
    }

    protected final List<T> getList() {
        return this.list;
    }

    protected final void setList(List<T> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.list = list;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        return !this.list.isEmpty() ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View cell = createView(R.layout.all_search_history_layout, viewGroup, view);
        NVFlowLayout flowLayout = (NVFlowLayout) cell.findViewById(R.id.flow_layout);
        Intrinsics.checkExpressionValueIsNotNull(flowLayout, "flowLayout");
        updateFlowLayout(flowLayout);
        View viewFindViewWithTag = flowLayout.findViewWithTag("more_view");
        if (viewFindViewWithTag != null) {
            flowLayout.removeView(viewFindViewWithTag);
        }
        ArrayList arrayList = new ArrayList();
        int childCount = flowLayout.getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View child = flowLayout.getChildAt(i3);
            if (child.getTag(R.id.flow_layout_adapter_view_key) != null) {
                Intrinsics.checkExpressionValueIsNotNull(child, "child");
                arrayList.add(child);
            }
        }
        if (this.list.size() < arrayList.size()) {
            Iterator it = arrayList.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                View view2 = (View) it.next();
                if (i4 >= this.list.size()) {
                    flowLayout.removeView(view2);
                    it.remove();
                }
                i4++;
            }
        } else if (this.list.size() > arrayList.size()) {
            int size = this.list.size() - arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                View viewCreateChildView = createChildView(flowLayout);
                viewCreateChildView.setTag(R.id.flow_layout_adapter_view_key, Integer.valueOf(i));
                arrayList.add(viewCreateChildView);
                flowLayout.addView(viewCreateChildView);
            }
        }
        for (T t : this.list) {
            int i6 = i2 + 1;
            if (i2 >= 0) {
                updateChildView(t, (View) arrayList.get(i2));
                i2 = i6;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        if (hasMoreButton()) {
            if (viewFindViewWithTag == null) {
                viewFindViewWithTag = createMoreButton(flowLayout);
            }
            if (viewFindViewWithTag != null) {
                viewFindViewWithTag.setTag("more_view");
                flowLayout.addMoreView(viewFindViewWithTag);
            }
        }
        flowLayout.setShowMore(hasMoreButton());
        cell.setTag(R.id._contains_flowLayout, true);
        LogUtils.setShownInAdapter(cell, this);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return cell;
    }
}

package com.narvii.master.search.trending;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.logging.LogUtils;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class FlowLayoutAdapter<T> extends AdriftAdapter {

    @NotNull
    private List<T> list;

    @NotNull
    public abstract View createChildView(@NotNull ViewGroup viewGroup);

    @Nullable
    protected View createMoreButton(@NotNull NVFlowLayout flowLayout) {
        t.j(flowLayout, "flowLayout");
        return null;
    }

    @NotNull
    protected final List<T> getList() {
        return this.list;
    }

    protected boolean hasMoreButton() {
        return false;
    }

    protected final void setList(@NotNull List<T> list) {
        t.j(list, "<set-?>");
        this.list = list;
    }

    public abstract void updateChildView(T t5, @NotNull View view);

    protected void updateFlowLayout(@NotNull NVFlowLayout cell) {
        t.j(cell, "cell");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowLayoutAdapter(@NotNull NVContext ctx) {
        super(ctx);
        t.j(ctx, "ctx");
        this.list = new ArrayList();
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        return !this.list.isEmpty() ? 1 : 0;
    }

    @Override // android.widget.Adapter
    @NotNull
    public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.all_search_history_layout, viewGroup, view);
        NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView.findViewById(R.id.flow_layout);
        t.g(nVFlowLayout);
        updateFlowLayout(nVFlowLayout);
        View viewFindViewWithTag = nVFlowLayout.findViewWithTag("more_view");
        if (viewFindViewWithTag != null) {
            nVFlowLayout.removeView(viewFindViewWithTag);
        }
        ArrayList arrayList = new ArrayList();
        int childCount = nVFlowLayout.getChildCount();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = nVFlowLayout.getChildAt(i12);
            if (childAt.getTag(R.id.flow_layout_adapter_view_key) != null) {
                t.g(childAt);
                arrayList.add(childAt);
            }
        }
        if (this.list.size() < arrayList.size()) {
            Iterator it = arrayList.iterator();
            int i13 = 0;
            while (it.hasNext()) {
                View view2 = (View) it.next();
                if (i13 >= this.list.size()) {
                    nVFlowLayout.removeView(view2);
                    it.remove();
                }
                i13++;
            }
        } else if (this.list.size() > arrayList.size()) {
            int size = this.list.size() - arrayList.size();
            for (int i14 = 0; i14 < size; i14++) {
                View viewCreateChildView = createChildView(nVFlowLayout);
                viewCreateChildView.setTag(R.id.flow_layout_adapter_view_key, Integer.valueOf(i10));
                arrayList.add(viewCreateChildView);
                nVFlowLayout.addView(viewCreateChildView);
            }
        }
        for (T t5 : this.list) {
            int i15 = i11 + 1;
            if (i11 < 0) {
                v.w();
            }
            updateChildView(t5, (View) arrayList.get(i11));
            i11 = i15;
        }
        if (hasMoreButton()) {
            if (viewFindViewWithTag == null) {
                viewFindViewWithTag = createMoreButton(nVFlowLayout);
            }
            if (viewFindViewWithTag != null) {
                viewFindViewWithTag.setTag("more_view");
                nVFlowLayout.addMoreView(viewFindViewWithTag);
            }
        }
        nVFlowLayout.setShowMore(hasMoreButton());
        viewCreateView.setTag(R.id._contains_flowLayout, Boolean.TRUE);
        LogUtils.setShownInAdapter(viewCreateView, this);
        t.g(viewCreateView);
        return viewCreateView;
    }
}

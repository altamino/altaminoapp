package com.narvii.widget.recycleview.layoutmanager;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.List;

/* loaded from: classes3.dex */
public interface ILayoutHelper {
    void layoutARow(List<View> list, RecyclerView.Recycler recycler, FlowLayoutManager flowLayoutManager, boolean z);

    void layoutReverse(RecyclerView.Recycler recycler, RecyclerView.State state, FlowLayoutManager flowLayoutManager);

    void recycleUnvisibleViews(RecyclerView.Recycler recycler, RecyclerView.State state, FlowLayoutManager flowLayoutManager);

    void willCalculateUnVisibleViews();
}

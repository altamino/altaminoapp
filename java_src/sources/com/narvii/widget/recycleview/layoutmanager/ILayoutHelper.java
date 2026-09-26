package com.narvii.widget.recycleview.layoutmanager;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface ILayoutHelper {
    void layoutARow(List<View> list, RecyclerView.Recycler recycler, FlowLayoutManager flowLayoutManager, boolean z6);

    void layoutReverse(RecyclerView.Recycler recycler, RecyclerView.State state, FlowLayoutManager flowLayoutManager);

    void recycleUnvisibleViews(RecyclerView.Recycler recycler, RecyclerView.State state, FlowLayoutManager flowLayoutManager);

    void willCalculateUnVisibleViews();
}

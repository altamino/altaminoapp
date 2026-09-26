package com.narvii.widget.recycleview.viewholder;

import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class RecyclerViewAdriftAdapter extends NVRecyclerViewBaseAdapter {
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    public RecyclerViewAdriftAdapter(@Nullable NVContext nVContext) {
        super(nVContext);
    }
}

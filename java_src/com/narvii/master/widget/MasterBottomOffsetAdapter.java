package com.narvii.master.widget;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MasterBottomOffsetAdapter.kt */
/* loaded from: classes3.dex */
public final class MasterBottomOffsetAdapter extends NVRecyclerViewBaseAdapter {
    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    public MasterBottomOffsetAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        final View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_master_bottom, parent, false);
        return new RecyclerView.ViewHolder(viewInflate) { // from class: com.narvii.master.widget.MasterBottomOffsetAdapter.onCreateViewHolder.1
        };
    }
}

package com.narvii.adapter.recyclerview;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OverlayThemeTopOffsetAdapter.kt */
/* loaded from: classes2.dex */
public final class OverlayThemeTopOffsetAdapter extends NVRecyclerViewBaseAdapter {
    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    public OverlayThemeTopOffsetAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_list_overlay, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new VH(cell);
    }

    /* compiled from: OverlayThemeTopOffsetAdapter.kt */
    public static final class VH extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VH(View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        }
    }
}

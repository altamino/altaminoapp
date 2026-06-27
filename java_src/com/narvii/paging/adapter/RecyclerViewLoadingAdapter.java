package com.narvii.paging.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecyclerViewLoadingAdapter.kt */
/* loaded from: classes3.dex */
public class RecyclerViewLoadingAdapter extends RecyclerViewAdriftAdapter {
    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    public RecyclerViewLoadingAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recycler_loading, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new LoadingViewHolder(cell);
    }

    /* compiled from: RecyclerViewLoadingAdapter.kt */
    public static final class LoadingViewHolder extends BaseViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadingViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        }
    }
}

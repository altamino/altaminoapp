package com.narvii.paging.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class RecyclerViewLoadingAdapter extends RecyclerViewAdriftAdapter {

    public static final class LoadingViewHolder extends BaseViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadingViewHolder(@NotNull View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        t.j(holder, "holder");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recycler_loading, parent, false);
        t.g(viewInflate);
        return new LoadingViewHolder(viewInflate);
    }

    public RecyclerViewLoadingAdapter(@Nullable NVContext nVContext) {
        super(nVContext);
    }
}

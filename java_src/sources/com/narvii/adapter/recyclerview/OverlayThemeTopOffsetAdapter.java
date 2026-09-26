package com.narvii.adapter.recyclerview;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class OverlayThemeTopOffsetAdapter extends NVRecyclerViewBaseAdapter {

    public static final class VH extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VH(@NotNull View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        t.j(holder, "holder");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_list_overlay, parent, false);
        t.g(viewInflate);
        return new VH(viewInflate);
    }

    public OverlayThemeTopOffsetAdapter(@Nullable NVContext nVContext) {
        super(nVContext);
    }
}

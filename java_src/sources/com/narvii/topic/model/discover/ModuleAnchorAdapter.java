package com.narvii.topic.model.discover;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ModuleAnchorAdapter extends RecyclerViewAdriftAdapter {

    @Nullable
    private ContentModule contentModule;

    public static final class AnchorViewHolder extends BaseViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnchorViewHolder(@NotNull View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
        }
    }

    public ModuleAnchorAdapter(@Nullable NVContext nVContext) {
        super(nVContext);
    }

    @Nullable
    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        t.j(holder, "holder");
    }

    public final void setContentModule(@Nullable ContentModule contentModule) {
        this.contentModule = contentModule;
    }

    public ModuleAnchorAdapter(@Nullable NVContext nVContext, @Nullable ContentModule contentModule) {
        super(nVContext);
        this.contentModule = contentModule;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_anchor, parent, false);
        t.i(viewInflate, "inflate(...)");
        return new AnchorViewHolder(viewInflate);
    }
}

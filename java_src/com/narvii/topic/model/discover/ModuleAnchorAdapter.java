package com.narvii.topic.model.discover;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModuleAnchorAdapter.kt */
/* loaded from: classes3.dex */
public final class ModuleAnchorAdapter extends RecyclerViewAdriftAdapter {
    private ContentModule contentModule;

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    public ModuleAnchorAdapter(NVContext nVContext) {
        super(nVContext);
    }

    public ModuleAnchorAdapter(NVContext nVContext, ContentModule contentModule) {
        super(nVContext);
        this.contentModule = contentModule;
    }

    public final ContentModule getContentModule() {
        return this.contentModule;
    }

    public final void setContentModule(ContentModule contentModule) {
        this.contentModule = contentModule;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_anchor, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…em_anchor, parent, false)");
        return new AnchorViewHolder(viewInflate);
    }

    /* compiled from: ModuleAnchorAdapter.kt */
    public static final class AnchorViewHolder extends BaseViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnchorViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        }
    }
}

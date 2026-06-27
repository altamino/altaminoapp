package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.util.Utils;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TopicTopAdapter.kt */
/* loaded from: classes3.dex */
public final class TopicTopAdapter extends RecyclerViewAdriftAdapter {
    private NVRecyclerViewBaseAdapter host;
    private final ModuleDisplayConfig moduleDisplayConfig;

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicTopAdapter(NVContext ctx, ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.moduleDisplayConfig = moduleDisplayConfig;
    }

    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    public final void setHost(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.topic_top_view, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…_top_view, parent, false)");
        TopicTopViewHolder topicTopViewHolder = new TopicTopViewHolder(this, viewInflate);
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isTop) {
            View view = topicTopViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "topicTopViewHolder.itemView");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = Utils.dpToPxInt(getContext(), 30.0f);
            View view2 = topicTopViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "topicTopViewHolder.itemView");
            view2.setLayoutParams(layoutParams);
        }
        return topicTopViewHolder;
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.host;
        if (nVRecyclerViewBaseAdapter == null) {
            return 0;
        }
        if (nVRecyclerViewBaseAdapter == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        if (!nVRecyclerViewBaseAdapter.isListShow()) {
            return 0;
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.host;
        if (nVRecyclerViewBaseAdapter2 != null) {
            return nVRecyclerViewBaseAdapter2.getItemCount() > 0 ? 1 : 0;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* compiled from: TopicTopAdapter.kt */
    private final class TopicTopViewHolder extends BaseViewHolder {
        final /* synthetic */ TopicTopAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicTopViewHolder(TopicTopAdapter topicTopAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = topicTopAdapter;
        }
    }
}

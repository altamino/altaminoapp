package com.narvii.master.home.discover.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.util.Utils;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class TopicTopAdapter extends RecyclerViewAdriftAdapter {

    @Nullable
    private NVRecyclerViewBaseAdapter host;

    @Nullable
    private final ModuleDisplayConfig moduleDisplayConfig;

    private final class TopicTopViewHolder extends BaseViewHolder {
        final /* synthetic */ TopicTopAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicTopViewHolder(@NotNull TopicTopAdapter topicTopAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = topicTopAdapter;
        }
    }

    @Nullable
    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
    }

    public final void setHost(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicTopAdapter(@NotNull NVContext ctx, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.moduleDisplayConfig = moduleDisplayConfig;
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.host;
        if (nVRecyclerViewBaseAdapter == null) {
            return 0;
        }
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter);
        if (!nVRecyclerViewBaseAdapter.isListShow()) {
            return 0;
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = this.host;
        kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter2);
        return nVRecyclerViewBaseAdapter2.getItemCount() > 0 ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.topic_top_view, parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        TopicTopViewHolder topicTopViewHolder = new TopicTopViewHolder(this, viewInflate);
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isTop) {
            ViewGroup.LayoutParams layoutParams = topicTopViewHolder.itemView.getLayoutParams();
            layoutParams.height = Utils.dpToPxInt(getContext(), 30.0f);
            topicTopViewHolder.itemView.setLayoutParams(layoutParams);
        }
        return topicTopViewHolder;
    }
}

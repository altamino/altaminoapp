package com.narvii.master.home.discover.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.Area;
import com.narvii.master.home.discover.ITopicNotInterestedHost;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class CardBottomAdapter extends RecyclerViewAdriftAdapter {

    @Nullable
    private final ModuleDisplayConfig displayConfig;

    @Nullable
    private NVRecyclerViewBaseAdapter host;

    private final class CardBottomViewHolder extends BaseViewHolder {
        final /* synthetic */ CardBottomAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardBottomViewHolder(@NotNull CardBottomAdapter cardBottomAdapter, View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
            this.this$0 = cardBottomAdapter;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardBottomAdapter(@NotNull NVContext ctx, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.displayConfig = moduleDisplayConfig;
    }

    @Nullable
    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
    }

    @Nullable
    public final NVRecyclerViewBaseAdapter getHost() {
        return this.host;
    }

    public int getItemLayout() {
        return R.layout.view_card_bottom;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        kotlin.jvm.internal.t.j(holder, "holder");
    }

    public final void setHost(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.host = nVRecyclerViewBaseAdapter;
    }

    public /* synthetic */ CardBottomAdapter(NVContext nVContext, ModuleDisplayConfig moduleDisplayConfig, int i10, kotlin.jvm.internal.k kVar) {
        this(nVContext, (i10 & 2) != 0 ? null : moduleDisplayConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        Area area = this.host;
        if (area instanceof SubRequestHost) {
            kotlin.jvm.internal.t.h(area, "null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost");
            if (((SubRequestHost) area).isEnd()) {
                Area area2 = this.host;
                if (area2 instanceof ITopicNotInterestedHost) {
                    kotlin.jvm.internal.t.h(area2, "null cannot be cast to non-null type com.narvii.master.home.discover.ITopicNotInterestedHost");
                    if (((ITopicNotInterestedHost) area2).notInterested()) {
                        return 0;
                    }
                }
                return 1;
            }
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.host;
        if (nVRecyclerViewBaseAdapter != 0 && (nVRecyclerViewBaseAdapter instanceof SubRequestHost)) {
            kotlin.jvm.internal.t.h(nVRecyclerViewBaseAdapter, "null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost");
            return ((SubRequestHost) nVRecyclerViewBaseAdapter).geSubResponseSize() > 0 ? 1 : 0;
        }
        if (nVRecyclerViewBaseAdapter != 0) {
            kotlin.jvm.internal.t.g(nVRecyclerViewBaseAdapter);
            if (nVRecyclerViewBaseAdapter.getItemCount() > 0) {
                return 1;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        kotlin.jvm.internal.t.j(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(getItemLayout(), parent, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        return new CardBottomViewHolder(this, viewInflate);
    }
}

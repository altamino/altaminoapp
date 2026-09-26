package com.narvii.master.home.discover.adapter;

import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class CardTopAdapter extends CardBottomAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardTopAdapter(@NotNull NVContext ctx, @Nullable ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx, moduleDisplayConfig);
        kotlin.jvm.internal.t.j(ctx, "ctx");
    }

    @Override // com.narvii.master.home.discover.adapter.CardBottomAdapter
    public int getItemLayout() {
        return R.layout.view_card_top;
    }

    public /* synthetic */ CardTopAdapter(NVContext nVContext, ModuleDisplayConfig moduleDisplayConfig, int i10, kotlin.jvm.internal.k kVar) {
        this(nVContext, (i10 & 2) != 0 ? null : moduleDisplayConfig);
    }

    @Override // com.narvii.master.home.discover.adapter.CardBottomAdapter, com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (getHost() != null) {
            NVRecyclerViewBaseAdapter host = getHost();
            kotlin.jvm.internal.t.g(host);
            if (host.getItemCount() > 0) {
                return 1;
            }
            return 0;
        }
        return 0;
    }
}

package com.narvii.master.home.discover.adapter;

import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CardTopAdapter.kt */
/* loaded from: classes3.dex */
public final class CardTopAdapter extends CardBottomAdapter {
    @Override // com.narvii.master.home.discover.adapter.CardBottomAdapter
    public int getItemLayout() {
        return R.layout.view_card_top;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardTopAdapter(NVContext ctx, ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx, moduleDisplayConfig);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    public /* synthetic */ CardTopAdapter(NVContext nVContext, ModuleDisplayConfig moduleDisplayConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, (i & 2) != 0 ? null : moduleDisplayConfig);
    }

    @Override // com.narvii.master.home.discover.adapter.CardBottomAdapter, com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (getHost() == null) {
            return 0;
        }
        NVRecyclerViewBaseAdapter host = getHost();
        if (host != null) {
            return host.getItemCount() > 0 ? 1 : 0;
        }
        Intrinsics.throwNpe();
        throw null;
    }
}

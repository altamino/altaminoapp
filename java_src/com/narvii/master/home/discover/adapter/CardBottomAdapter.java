package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.Area;
import com.narvii.master.home.discover.ITopicNotInterestedHost;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CardBottomAdapter.kt */
/* loaded from: classes3.dex */
public class CardBottomAdapter extends RecyclerViewAdriftAdapter {
    private final ModuleDisplayConfig displayConfig;
    private NVRecyclerViewBaseAdapter host;

    public int getItemLayout() {
        return R.layout.view_card_bottom;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardBottomAdapter(NVContext ctx, ModuleDisplayConfig moduleDisplayConfig) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.displayConfig = moduleDisplayConfig;
    }

    public /* synthetic */ CardBottomAdapter(NVContext nVContext, ModuleDisplayConfig moduleDisplayConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, (i & 2) != 0 ? null : moduleDisplayConfig);
    }

    public final ModuleDisplayConfig getDisplayConfig() {
        return this.displayConfig;
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
        View viewInflate = LayoutInflater.from(getContext()).inflate(getItemLayout(), parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…mLayout(), parent, false)");
        return new CardBottomViewHolder(this, viewInflate);
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        ModuleDisplayConfig moduleDisplayConfig = this.displayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.showNoStoriesYet) {
            Area area = this.host;
            if (area instanceof SubRequestHost) {
                if (area == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost");
                }
                if (((SubRequestHost) area).isEnd()) {
                    Area area2 = this.host;
                    if (area2 instanceof ITopicNotInterestedHost) {
                        if (area2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.ITopicNotInterestedHost");
                        }
                        if (((ITopicNotInterestedHost) area2).notInterested()) {
                            return 0;
                        }
                    }
                    return 1;
                }
            }
        }
        Area area3 = this.host;
        if (area3 != null && (area3 instanceof SubRequestHost)) {
            if (area3 != null) {
                return ((SubRequestHost) area3).geSubResponseSize() > 0 ? 1 : 0;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost");
        }
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.host;
        if (nVRecyclerViewBaseAdapter != null) {
            if (nVRecyclerViewBaseAdapter == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (nVRecyclerViewBaseAdapter.getItemCount() > 0) {
                return 1;
            }
        }
        return 0;
    }

    /* compiled from: CardBottomAdapter.kt */
    private final class CardBottomViewHolder extends BaseViewHolder {
        final /* synthetic */ CardBottomAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardBottomViewHolder(CardBottomAdapter cardBottomAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = cardBottomAdapter;
        }
    }
}

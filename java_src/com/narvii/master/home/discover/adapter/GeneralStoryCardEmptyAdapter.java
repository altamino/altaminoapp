package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.ITopicNotInterestedHost;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GeneralStoryCardEmptyAdapter.kt */
/* loaded from: classes3.dex */
public final class GeneralStoryCardEmptyAdapter extends RecyclerViewAdriftAdapter {
    private SubRequestHost host;

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralStoryCardEmptyAdapter(NVContext ctx) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    public final SubRequestHost getHost() {
        return this.host;
    }

    public final void setHost(SubRequestHost subRequestHost) {
        this.host = subRequestHost;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.general_story_empty_view, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…mpty_view, parent, false)");
        return new EmptyViewHolder(this, viewInflate);
    }

    @Override // com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        SubRequestHost subRequestHost = this.host;
        if (subRequestHost != null) {
            if (subRequestHost == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (subRequestHost.isEnd()) {
                SubRequestHost subRequestHost2 = this.host;
                if (subRequestHost2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (subRequestHost2.geSubResponseSize() == 0) {
                    SubRequestHost subRequestHost3 = this.host;
                    if (!(subRequestHost3 instanceof ITopicNotInterestedHost)) {
                        return 1;
                    }
                    if (subRequestHost3 != null) {
                        return ((ITopicNotInterestedHost) subRequestHost3).notInterested() ? 0 : 1;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.ITopicNotInterestedHost");
                }
            }
        }
        return 0;
    }

    /* compiled from: GeneralStoryCardEmptyAdapter.kt */
    private final class EmptyViewHolder extends BaseViewHolder {
        final /* synthetic */ GeneralStoryCardEmptyAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyViewHolder(GeneralStoryCardEmptyAdapter generalStoryCardEmptyAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = generalStoryCardEmptyAdapter;
        }
    }
}

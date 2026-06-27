package com.narvii.topic.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.widget.recycleview.StaticViewHolder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TopicTopOffsetAdapter.kt */
/* loaded from: classes3.dex */
public final class TopicTopOffsetAdapter extends NVRecyclerViewBaseAdapter {
    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    public TopicTopOffsetAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        return new StaticViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_topic_top_offset, parent, false));
    }
}

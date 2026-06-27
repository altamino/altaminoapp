package com.narvii.master.home.discover.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.adapter.ShowAllStoryAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GeneralShowAllStoryAdapter.kt */
/* loaded from: classes3.dex */
public final class GeneralShowAllStoryAdapter extends ShowAllStoryAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralShowAllStoryAdapter(NVContext ctx) {
        super(ctx, 0, 2, null);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    @Override // com.narvii.master.home.discover.adapter.ShowAllStoryAdapter, android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_show_more_story_general, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…y_general, parent, false)");
        return new ShowAllStoryAdapter.ShowAllStoryViewHolder(this, viewInflate);
    }
}

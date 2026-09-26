package com.narvii.paging.adapter;

import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class a implements Callback {
    @Override // com.narvii.util.Callback
    public final void call(Object obj) {
        ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
    }
}

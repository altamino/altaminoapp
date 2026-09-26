package com.narvii.monetization.common;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.NVAdapter;

/* JADX INFO: loaded from: classes5.dex */
public class RecommendHeaderAdapter extends AdriftAdapter {
    NVAdapter attachedAdapter;

    public void setAttachAdapter(NVAdapter nVAdapter) {
        this.attachedAdapter = nVAdapter;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.attachedAdapter;
        return (nVAdapter == null || !nVAdapter.isListShown() || this.attachedAdapter.getCount() <= 0) ? 0 : 1;
    }

    public RecommendHeaderAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        return createView(R.layout.item_recommnd_header, viewGroup, view);
    }
}

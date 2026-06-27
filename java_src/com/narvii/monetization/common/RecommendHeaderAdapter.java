package com.narvii.monetization.common;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.NVAdapter;

/* loaded from: classes3.dex */
public class RecommendHeaderAdapter extends AdriftAdapter {
    NVAdapter attachedAdapter;

    public RecommendHeaderAdapter(NVContext nVContext) {
        super(nVContext);
    }

    public void setAttachAdapter(NVAdapter nVAdapter) {
        this.attachedAdapter = nVAdapter;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return createView(R.layout.item_recommnd_header, viewGroup, view);
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.attachedAdapter;
        return (nVAdapter == null || !nVAdapter.isListShown() || this.attachedAdapter.getCount() <= 0) ? 0 : 1;
    }
}

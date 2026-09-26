package com.narvii.master;

import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.DividerAdapter;

/* JADX INFO: loaded from: classes7.dex */
public class HeadlineDividerAdapter extends DividerAdapter {
    @Override // com.narvii.list.DividerAdapter
    protected int getDividerLayoutId() {
        return R.layout.item_headline_divider;
    }

    public HeadlineDividerAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.DividerAdapter, com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        this.flags = 3;
    }
}

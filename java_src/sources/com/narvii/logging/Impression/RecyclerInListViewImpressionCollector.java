package com.narvii.logging.Impression;

import com.narvii.lib.R;
import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes4.dex */
public class RecyclerInListViewImpressionCollector<T extends NVObject> extends ContainerInListViewImpressionCollector<T> {
    @Override // com.narvii.logging.Impression.ContainerInListViewImpressionCollector
    protected int getContainTag() {
        return R.id._contains_recycler;
    }

    public RecyclerInListViewImpressionCollector(Class cls, int i10) {
        super(cls, i10);
    }
}

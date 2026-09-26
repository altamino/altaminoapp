package com.narvii.logging.Impression;

import com.narvii.lib.R;
import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes8.dex */
public class GridLayoutImpressionCollector<T extends NVObject> extends ContainerInListViewImpressionCollector<T> {
    @Override // com.narvii.logging.Impression.ContainerInListViewImpressionCollector
    protected int getContainTag() {
        return R.id._contains_gridlayout;
    }

    public GridLayoutImpressionCollector(Class cls, int i10) {
        super(cls, i10);
    }
}

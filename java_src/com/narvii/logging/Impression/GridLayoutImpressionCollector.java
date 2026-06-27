package com.narvii.logging.Impression;

import com.narvii.lib.R;
import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class GridLayoutImpressionCollector<T extends NVObject> extends ContainerInListViewImpressionCollector<T> {
    public GridLayoutImpressionCollector(Class cls, int i) {
        super(cls, i);
    }

    @Override // com.narvii.logging.Impression.ContainerInListViewImpressionCollector
    protected int getContainTag() {
        return R.id._contains_gridlayout;
    }
}

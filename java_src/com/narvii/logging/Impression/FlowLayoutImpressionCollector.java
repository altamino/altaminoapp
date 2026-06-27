package com.narvii.logging.Impression;

import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class FlowLayoutImpressionCollector extends ContainerInListViewImpressionCollector {
    public FlowLayoutImpressionCollector(Class cls, int i) {
        super(cls, i);
    }

    @Override // com.narvii.logging.Impression.ContainerInListViewImpressionCollector
    protected int getContainTag() {
        return R.id._contains_flowLayout;
    }
}

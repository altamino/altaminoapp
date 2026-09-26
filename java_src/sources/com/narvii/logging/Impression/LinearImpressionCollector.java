package com.narvii.logging.Impression;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class LinearImpressionCollector extends ImpressionCollector {
    int cellLayoutId;

    public LinearImpressionCollector(Class cls) {
        super(cls);
        this.cellLayoutId = 0;
    }

    public LinearImpressionCollector(Class cls, int i10) {
        this(cls);
        this.cellLayoutId = i10;
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        int i10 = this.cellLayoutId;
        if (i10 == 0) {
            addImpressionCell(view, list);
            return;
        }
        View viewFindViewById = view.findViewById(i10);
        if (viewFindViewById == null || !ImpressionUtils.isViewUserVisible(this.listView, viewFindViewById)) {
            return;
        }
        addImpressionCell(view, list);
    }
}

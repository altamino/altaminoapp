package com.narvii.logging.Impression;

import android.view.View;
import java.util.List;

/* loaded from: classes3.dex */
public class LinearImpressionCollector extends ImpressionCollector {
    int cellLayoutId;

    public LinearImpressionCollector(Class cls) {
        super(cls);
        this.cellLayoutId = 0;
    }

    public LinearImpressionCollector(Class cls, int i) {
        this(cls);
        this.cellLayoutId = i;
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        int i = this.cellLayoutId;
        if (i == 0) {
            addImpressionCell(view, list);
            return;
        }
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById == null || !ImpressionUtils.isViewUserVisible(this.listView, viewFindViewById)) {
            return;
        }
        addImpressionCell(view, list);
    }
}

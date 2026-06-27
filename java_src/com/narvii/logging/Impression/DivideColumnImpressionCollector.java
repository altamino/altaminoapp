package com.narvii.logging.Impression;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.list.NVPagedAdapter;
import com.narvii.util.LibConstants;
import java.util.List;

/* loaded from: classes3.dex */
public class DivideColumnImpressionCollector extends ImpressionCollector {
    public DivideColumnImpressionCollector(NVPagedAdapter nVPagedAdapter) {
        super(nVPagedAdapter);
    }

    public DivideColumnImpressionCollector(Class cls) {
        super(cls);
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        if ((view instanceof ViewGroup) && view.getTag() == LibConstants.GRID_ROW) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof ViewGroup) && childAt.getVisibility() == 0) {
                    addImpressionCell(((ViewGroup) childAt).getChildAt(0), list);
                }
            }
        }
    }
}

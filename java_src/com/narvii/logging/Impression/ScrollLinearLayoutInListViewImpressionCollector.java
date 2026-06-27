package com.narvii.logging.Impression;

import android.view.View;
import android.widget.LinearLayout;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.model.NVObject;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ScrollLinearLayoutInListViewImpressionCollector<T extends NVObject> extends ImpressionCollector<T> {
    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean checkCellAdapterWhenAdd() {
        return false;
    }

    public abstract int getLinearLayoutId();

    public ScrollLinearLayoutInListViewImpressionCollector(Class<T> cls) {
        super(cls);
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        LinearLayout linearLayout;
        if (this.adapter != null && LogUtils.getShownInAdapter(view) == this.adapter && view.getTag(R.id._contains_scroll_linearLayout) == Boolean.TRUE) {
            View viewFindViewById = view.findViewById(getLinearLayoutId());
            if ((viewFindViewById instanceof LinearLayout) && (linearLayout = (LinearLayout) viewFindViewById) != null && ImpressionUtils.isViewUserVisible(this.listView, linearLayout)) {
                for (int i = 0; i < linearLayout.getChildCount(); i++) {
                    View childAt = linearLayout.getChildAt(i);
                    if (ImpressionUtils.isViewUserVisible(linearLayout, childAt)) {
                        addImpressionCell(childAt, list);
                    }
                }
                this.index = -1;
            }
        }
    }
}

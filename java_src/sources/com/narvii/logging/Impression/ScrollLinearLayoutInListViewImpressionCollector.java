package com.narvii.logging.Impression;

import android.view.View;
import android.widget.LinearLayout;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.model.NVObject;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ScrollLinearLayoutInListViewImpressionCollector<T extends NVObject> extends ImpressionCollector<T> {
    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean checkCellAdapterWhenAdd() {
        return false;
    }

    public abstract int getLinearLayoutId();

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        LinearLayout linearLayout;
        if (this.adapter != null && LogUtils.getShownInAdapter(view) == this.adapter && view.getTag(R.id._contains_scroll_linearLayout) == Boolean.TRUE) {
            View viewFindViewById = view.findViewById(getLinearLayoutId());
            if ((viewFindViewById instanceof LinearLayout) && (linearLayout = (LinearLayout) viewFindViewById) != null && ImpressionUtils.isViewUserVisible(this.listView, linearLayout)) {
                for (int i10 = 0; i10 < linearLayout.getChildCount(); i10++) {
                    View childAt = linearLayout.getChildAt(i10);
                    if (ImpressionUtils.isViewUserVisible(linearLayout, childAt)) {
                        addImpressionCell(childAt, list);
                    }
                }
                this.index = -1;
            }
        }
    }

    public ScrollLinearLayoutInListViewImpressionCollector(Class<T> cls) {
        super(cls);
    }
}

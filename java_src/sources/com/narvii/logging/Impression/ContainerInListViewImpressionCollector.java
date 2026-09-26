package com.narvii.logging.Impression;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.logging.LogUtils;
import com.narvii.model.NVObject;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ContainerInListViewImpressionCollector<T extends NVObject> extends ImpressionCollector<T> {
    int containerId;

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean checkCellAdapterWhenAdd() {
        return false;
    }

    protected abstract int getContainTag();

    public int getContainerId() {
        return this.containerId;
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        ViewGroup viewGroup;
        if (this.adapter != null && LogUtils.getShownInAdapter(view) == this.adapter && view.getTag(getContainTag()) == Boolean.TRUE && (viewGroup = (ViewGroup) view.findViewById(this.containerId)) != null && ImpressionUtils.isViewUserVisible(this.listView, viewGroup)) {
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (ImpressionUtils.isViewUserVisible(viewGroup, childAt)) {
                    addImpressionCell(childAt, list);
                }
            }
            this.index = -1;
        }
    }

    public ContainerInListViewImpressionCollector(Class cls, int i10) {
        super(cls);
        this.containerId = i10;
    }
}

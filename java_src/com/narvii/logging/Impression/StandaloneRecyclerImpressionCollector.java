package com.narvii.logging.Impression;

import android.view.View;
import com.narvii.model.NVObject;
import java.util.List;

/* loaded from: classes3.dex */
public class StandaloneRecyclerImpressionCollector<T extends NVObject> extends ImpressionCollector<T> {
    View rootView;

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean checkCellAdapterWhenAdd() {
        return false;
    }

    public StandaloneRecyclerImpressionCollector(Class<T> cls) {
        super(cls);
    }

    public void setRootView(View view) {
        this.rootView = view;
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        if (ImpressionUtils.isViewUserVisible(this.listView, view)) {
            addImpressionCell(view, list);
        }
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean isListViewVisible() {
        View view = this.rootView;
        if (view == null) {
            return true;
        }
        return ImpressionUtils.isViewUserVisible(view, this.listView);
    }
}

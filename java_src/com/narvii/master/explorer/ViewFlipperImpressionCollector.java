package com.narvii.master.explorer;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.LogUtils;
import com.narvii.model.NVObject;
import com.narvii.widget.Flipper;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ViewFlipperImpressionCollector<T extends NVObject> extends ImpressionCollector<T> {
    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean checkCellAdapterWhenAdd() {
        return false;
    }

    protected abstract int getFlipperId();

    public ViewFlipperImpressionCollector(NVPagedAdapter nVPagedAdapter) {
        super(nVPagedAdapter);
    }

    public ViewFlipperImpressionCollector(Class<T> cls) {
        super(cls);
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        Flipper flipper;
        if (this.adapter != null && LogUtils.getShownInAdapter(view) == this.adapter && view.getTag(R.id._contains_flipper) == Boolean.TRUE && (flipper = (Flipper) view.findViewById(getFlipperId())) != null && ImpressionUtils.isViewUserVisible(this.listView, flipper)) {
            addImpressionCell(flipper.getCurrentView(), list);
            this.index = -1;
        }
    }
}

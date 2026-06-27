package com.narvii.topic.adapter;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.LogUtils;
import com.narvii.model.Blog;
import com.narvii.topic.widgets.StorySectionItemView;
import java.util.List;

/* loaded from: classes3.dex */
public class StorySectionImpressionCollector extends ImpressionCollector<Blog> {
    int[] layoutIds;

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean checkCellAdapterWhenAdd() {
        return false;
    }

    public StorySectionImpressionCollector(Class<Blog> cls) {
        super(cls);
        this.layoutIds = new int[]{R.id.card_1, R.id.card_2, R.id.card_3, R.id.card_4};
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        if (this.adapter != null && LogUtils.getShownInAdapter(view) == this.adapter && (view instanceof StorySectionItemView)) {
            for (int i : this.layoutIds) {
                View viewFindViewById = view.findViewById(i);
                if (ImpressionUtils.isViewUserVisible(this.listView, viewFindViewById)) {
                    addImpressionCell(viewFindViewById, list);
                }
            }
            this.index = -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0013  */
    @Override // com.narvii.logging.Impression.ImpressionCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String getObjectKey(com.narvii.logging.ObjectInfo<com.narvii.model.Blog> r4) {
        /*
            r3 = this;
            if (r4 == 0) goto L13
            java.util.HashMap<java.lang.String, java.lang.Object> r0 = r4.localHashMap
            if (r0 == 0) goto L13
            java.lang.String r1 = "areaName"
            java.lang.Object r0 = r0.get(r1)
            boolean r1 = r0 instanceof java.lang.String
            if (r1 == 0) goto L13
            java.lang.String r0 = (java.lang.String) r0
            goto L14
        L13:
            r0 = 0
        L14:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            T extends com.narvii.model.NVObject r4 = r4.object
            com.narvii.model.Blog r4 = (com.narvii.model.Blog) r4
            java.lang.String r4 = r4.id()
            r1.append(r4)
            if (r0 == 0) goto L38
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r2 = "_"
            r4.append(r2)
            r4.append(r0)
            java.lang.String r4 = r4.toString()
            goto L3a
        L38:
            java.lang.String r4 = ""
        L3a:
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.topic.adapter.StorySectionImpressionCollector.getObjectKey(com.narvii.logging.ObjectInfo):java.lang.String");
    }
}

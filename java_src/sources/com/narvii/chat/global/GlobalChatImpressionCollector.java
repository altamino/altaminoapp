package com.narvii.chat.global;

import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.model.ChatThread;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GlobalChatImpressionCollector extends ImpressionCollector<ChatThread> {
    int[] layoutIds;

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected boolean checkCellAdapterWhenAdd() {
        return false;
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        if (this.adapter != null && LogUtils.getShownInAdapter(view) == this.adapter && (view instanceof GlobalChatCategoryItemView)) {
            for (int i10 : this.layoutIds) {
                View viewFindViewById = view.findViewById(i10);
                if (ImpressionUtils.isViewUserVisible(this.listView, viewFindViewById)) {
                    addImpressionCell(viewFindViewById, list);
                }
            }
            this.index = -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected String getObjectKey(ObjectInfo<ChatThread> objectInfo) {
        String str;
        String str2;
        if (objectInfo == null || objectInfo.getExtraInfo() == null) {
            str = null;
        } else {
            Object obj = objectInfo.getExtraInfo().get("collectionId");
            if (obj instanceof String) {
                str = (String) obj;
            } else {
                str = null;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(((ChatThread) objectInfo.object).id());
        if (str != null) {
            str2 = "_" + str;
        } else {
            str2 = "";
        }
        sb.append(str2);
        return sb.toString();
    }

    public GlobalChatImpressionCollector(Class<ChatThread> cls) {
        super(cls);
        this.layoutIds = new int[]{R.id.thread_1, R.id.thread_2, R.id.thread_3, R.id.thread_4};
    }
}

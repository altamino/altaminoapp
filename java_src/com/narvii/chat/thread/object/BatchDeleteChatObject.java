package com.narvii.chat.thread.object;

import com.narvii.model.NVObject;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BatchDeleteChatObject.kt */
/* loaded from: classes2.dex */
public final class BatchDeleteChatObject extends NVObject {
    private int ndcId;
    private List<String> selectThreadIdsList;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return "";
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return "";
    }

    public final List<String> getSelectThreadIdsList() {
        return this.selectThreadIdsList;
    }

    public final void setSelectThreadIdsList(List<String> list) {
        this.selectThreadIdsList = list;
    }

    public final int getNdcId() {
        return this.ndcId;
    }

    public final void setNdcId(int i) {
        this.ndcId = i;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        StringBuilder sb = new StringBuilder();
        List<String> list = this.selectThreadIdsList;
        if (list != null) {
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i >= 0) {
                    String str = (String) obj;
                    if (i > 0) {
                        sb.append(",");
                    }
                    sb.append(str);
                    i = i2;
                } else {
                    CollectionsKt.throwIndexOverflow();
                    throw null;
                }
            }
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "sb.toString()");
        return string;
    }
}

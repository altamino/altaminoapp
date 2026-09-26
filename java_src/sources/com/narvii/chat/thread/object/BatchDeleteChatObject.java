package com.narvii.chat.thread.object;

import com.narvii.model.NVObject;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class BatchDeleteChatObject extends NVObject {
    private int ndcId;

    @Nullable
    private List<String> selectThreadIdsList;

    public final int getNdcId() {
        return this.ndcId;
    }

    @Nullable
    public final List<String> getSelectThreadIdsList() {
        return this.selectThreadIdsList;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @NotNull
    public String parentId() {
        return "";
    }

    public final void setNdcId(int i10) {
        this.ndcId = i10;
    }

    public final void setSelectThreadIdsList(@Nullable List<String> list) {
        this.selectThreadIdsList = list;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @NotNull
    public String uid() {
        return "";
    }

    @Override // com.narvii.model.NVObject
    @NotNull
    public String id() {
        StringBuilder sb = new StringBuilder();
        List<String> list = this.selectThreadIdsList;
        if (list != null) {
            int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    v.w();
                }
                String str = (String) obj;
                if (i10 > 0) {
                    sb.append(",");
                }
                sb.append(str);
                i10 = i11;
            }
        }
        String string = sb.toString();
        t.i(string, "toString(...)");
        return string;
    }
}

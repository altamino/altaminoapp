package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes2.dex */
final class zzhc<FieldDescriptorType> extends zzhb<FieldDescriptorType, Object> {
    zzhc(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    public final void zzjz() {
        if (!isImmutable()) {
            for (int i = 0; i < zzoi(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryZzbf = zzbf(i);
                if (((zzes) entryZzbf.getKey()).zzmc()) {
                    entryZzbf.setValue(Collections.unmodifiableList((List) entryZzbf.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : zzoj()) {
                if (((zzes) entry.getKey()).zzmc()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzjz();
    }
}

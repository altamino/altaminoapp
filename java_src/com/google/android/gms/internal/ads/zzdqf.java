package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes2.dex */
final class zzdqf<FieldDescriptorType> extends zzdqe<FieldDescriptorType, Object> {
    zzdqf(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdqe
    public final void zzavj() {
        if (!isImmutable()) {
            for (int i = 0; i < zzazp(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryZzgz = zzgz(i);
                if (((zzdnu) entryZzgz.getKey()).zzaxn()) {
                    entryZzgz.setValue(Collections.unmodifiableList((List) entryZzgz.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : zzazq()) {
                if (((zzdnu) entry.getKey()).zzaxn()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzavj();
    }
}

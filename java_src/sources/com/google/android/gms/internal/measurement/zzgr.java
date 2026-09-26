package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes7.dex */
final class zzgr extends zzgn<Long> {
    zzgr(zzgv zzgvVar, String str, Long l, boolean z6) {
        super(zzgvVar, str, l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzgn
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final Long zza(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        Log.e("PhenotypeFlag", "Invalid long value for " + super.zzb() + ": " + String.valueOf(obj));
        return null;
    }
}

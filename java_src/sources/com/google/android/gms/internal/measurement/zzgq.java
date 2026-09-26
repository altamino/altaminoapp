package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes7.dex */
final class zzgq extends zzgn<Boolean> {
    zzgq(zzgv zzgvVar, String str, Boolean bool, boolean z6) {
        super(zzgvVar, str, bool);
    }

    @Override // com.google.android.gms.internal.measurement.zzgn
    final /* synthetic */ Boolean zza(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzfr.zzb.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (zzfr.zzc.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + super.zzb() + ": " + String.valueOf(obj));
        return null;
    }
}

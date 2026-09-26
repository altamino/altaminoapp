package com.google.android.gms.internal.auth;

import android.util.Log;

/* JADX INFO: loaded from: classes9.dex */
final class zzcx extends zzdc {
    zzcx(zzcz zzczVar, String str, Double d, boolean z6) {
        super(zzczVar, str, d, true, null);
    }

    @Override // com.google.android.gms.internal.auth.zzdc
    final /* bridge */ /* synthetic */ Object zza(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            Log.e("PhenotypeFlag", "Invalid double value for " + super.zzc() + ": " + ((String) obj));
            return null;
        }
    }
}

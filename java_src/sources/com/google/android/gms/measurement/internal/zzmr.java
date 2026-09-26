package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
final class zzmr implements zzfx {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzmp zzb;

    zzmr(zzmp zzmpVar, String str) {
        this.zzb = zzmpVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzfx
    public final void zza(String str, int i10, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzb.zza(true, i10, th, bArr, this.zza);
    }
}

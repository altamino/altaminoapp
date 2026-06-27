package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzfw implements zzba {
    private final /* synthetic */ zzft zzsr;

    zzfw(zzft zzftVar) {
        this.zzsr = zzftVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzba
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) throws IllegalStateException {
        this.zzsr.zzb(str, i, th, bArr, map);
    }
}

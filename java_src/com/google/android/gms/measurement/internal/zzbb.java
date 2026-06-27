package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbb implements Runnable {
    private final String packageName;
    private final int status;
    private final zzba zzkk;
    private final Throwable zzkl;
    private final byte[] zzkm;
    private final Map<String, List<String>> zzkn;

    private zzbb(String str, zzba zzbaVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        Preconditions.checkNotNull(zzbaVar);
        this.zzkk = zzbaVar;
        this.status = i;
        this.zzkl = th;
        this.zzkm = bArr;
        this.packageName = str;
        this.zzkn = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzkk.zza(this.packageName, this.status, this.zzkl, this.zzkm, this.zzkn);
    }
}

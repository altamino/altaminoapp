package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
final class zzcmv<T> implements zzban<T> {
    private final /* synthetic */ String zzgbh;
    private final /* synthetic */ long zzgbi;
    private final /* synthetic */ zzcmu zzgbj;

    zzcmv(zzcmu zzcmuVar, String str, long j) {
        this.zzgbj = zzcmuVar;
        this.zzgbh = str;
        this.zzgbi = j;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzk(T t) {
        this.zzgbj.zza(this.zzgbh, 0, this.zzgbj.zzbsa.elapsedRealtime() - this.zzgbi);
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        long jElapsedRealtime = this.zzgbj.zzbsa.elapsedRealtime();
        int i = 3;
        if (th instanceof TimeoutException) {
            i = 2;
        } else if (!(th instanceof zzcmk)) {
            if (th instanceof CancellationException) {
                i = 4;
            } else {
                i = ((th instanceof zzcgm) && ((zzcgm) th).getErrorCode() == 3) ? 1 : 6;
            }
        }
        this.zzgbj.zza(this.zzgbh, i, jElapsedRealtime - this.zzgbi);
    }
}

package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzfd implements Runnable {
    private final /* synthetic */ zzey zzqz;

    zzfd(zzey zzeyVar) {
        this.zzqz = zzeyVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzeg.zza(this.zzqz.zzqq, (zzam) null);
        this.zzqz.zzqq.zzfk();
    }
}

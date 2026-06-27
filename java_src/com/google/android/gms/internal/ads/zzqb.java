package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzqb implements Runnable {
    private final /* synthetic */ zzpz zzbis;

    zzqb(zzpz zzpzVar) {
        this.zzbis = zzpzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzbis.zzacf) {
            return;
        }
        this.zzbis.zzbik.zza((zzqk) this.zzbis);
    }
}

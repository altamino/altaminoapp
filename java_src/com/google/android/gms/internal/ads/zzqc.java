package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzqc implements Runnable {
    private final /* synthetic */ zzpz zzbis;
    private final /* synthetic */ zzqf zzbit;

    zzqc(zzpz zzpzVar, zzqf zzqfVar) {
        this.zzbis = zzpzVar;
        this.zzbit = zzqfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbit.release();
        int size = this.zzbis.zzaif.size();
        for (int i = 0; i < size; i++) {
            ((zzqt) this.zzbis.zzaif.valueAt(i)).disable();
        }
    }
}

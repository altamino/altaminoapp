package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzmd implements Runnable {
    private final /* synthetic */ zzma zzavk;
    private final /* synthetic */ zzlh zzavn;

    zzmd(zzma zzmaVar, zzlh zzlhVar) {
        this.zzavk = zzmaVar;
        this.zzavn = zzlhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzavk.zzavi.zzb(this.zzavn);
    }
}

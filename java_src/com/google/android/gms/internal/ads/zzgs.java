package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzgs implements Runnable {
    private final /* synthetic */ zzgv zzaei;
    private final /* synthetic */ zzgr zzaej;

    zzgs(zzgr zzgrVar, zzgv zzgvVar) {
        this.zzaej = zzgrVar;
        this.zzaei = zzgvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaej.zzadn.zzb(this.zzaei);
    }
}

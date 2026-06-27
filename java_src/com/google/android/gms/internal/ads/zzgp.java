package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzgp implements Runnable {
    private final /* synthetic */ zzgn zzadd;
    private final /* synthetic */ zzhv zzade;

    zzgp(zzgn zzgnVar, zzhv zzhvVar) {
        this.zzadd = zzgnVar;
        this.zzade = zzhvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzadd.zzacy.zza(this.zzade);
    }
}

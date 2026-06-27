package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzcs implements Runnable {
    private final /* synthetic */ String zzax;
    private final /* synthetic */ String zzdk;
    private final /* synthetic */ zzca zzot;
    private final /* synthetic */ String zzow;
    private final /* synthetic */ long zzox;

    zzcs(zzca zzcaVar, String str, String str2, String str3, long j) {
        this.zzot = zzcaVar;
        this.zzow = str;
        this.zzdk = str2;
        this.zzax = str3;
        this.zzox = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zzow;
        if (str == null) {
            this.zzot.zzkt.zzgi().zzv().zza(this.zzdk, (zzec) null);
        } else {
            this.zzot.zzkt.zzgi().zzv().zza(this.zzdk, new zzec(this.zzax, str, this.zzox));
        }
    }
}

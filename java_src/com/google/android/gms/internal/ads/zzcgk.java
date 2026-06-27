package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcgk extends zzair {
    private final /* synthetic */ Object zzfvm;
    private final /* synthetic */ String zzfvn;
    private final /* synthetic */ long zzfvo;
    private final /* synthetic */ zzbbr zzfvp;
    private final /* synthetic */ zzcgb zzfvq;

    zzcgk(zzcgb zzcgbVar, Object obj, String str, long j, zzbbr zzbbrVar) {
        this.zzfvq = zzcgbVar;
        this.zzfvm = obj;
        this.zzfvn = str;
        this.zzfvo = j;
        this.zzfvp = zzbbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final void onInitializationSucceeded() {
        synchronized (this.zzfvm) {
            this.zzfvq.zza(this.zzfvn, true, "", (int) (com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - this.zzfvo));
            this.zzfvp.set(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final void onInitializationFailed(String str) {
        synchronized (this.zzfvm) {
            this.zzfvq.zza(this.zzfvn, false, str, (int) (com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - this.zzfvo));
            this.zzfvp.set(false);
        }
    }
}

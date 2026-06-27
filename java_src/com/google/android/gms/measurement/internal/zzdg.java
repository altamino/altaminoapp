package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzdg implements Runnable {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzbn;
    private final /* synthetic */ zzdd zzpm;
    private final /* synthetic */ long zzpn;
    private final /* synthetic */ Object zzpr;

    zzdg(zzdd zzddVar, String str, String str2, Object obj, long j) {
        this.zzpm = zzddVar;
        this.zzao = str;
        this.zzbn = str2;
        this.zzpr = obj;
        this.zzpn = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzpm.zza(this.zzao, this.zzbn, this.zzpr, this.zzpn);
    }
}

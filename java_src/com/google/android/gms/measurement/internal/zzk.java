package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzk implements Runnable {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzav;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzq zzdh;
    private final /* synthetic */ AppMeasurementDynamiteService zzdi;

    zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzq zzqVar, String str, String str2) {
        this.zzdi = appMeasurementDynamiteService;
        this.zzdh = zzqVar;
        this.zzao = str;
        this.zzav = str2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzdi.zzl.zzu().zza(this.zzdh, this.zzao, this.zzav);
    }
}

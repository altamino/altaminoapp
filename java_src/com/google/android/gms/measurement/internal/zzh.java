package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzh implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzq zzdh;
    private final /* synthetic */ AppMeasurementDynamiteService zzdi;

    zzh(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzq zzqVar) {
        this.zzdi = appMeasurementDynamiteService;
        this.zzdh = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzdi.zzl.zzu().getAppInstanceId(this.zzdh);
    }
}

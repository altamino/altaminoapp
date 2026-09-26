package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes11.dex */
public final class f {
    private com.google.firebase.analytics.connector.a.b zza;
    private AppMeasurementSdk zzb;
    private e zzc;

    public f(AppMeasurementSdk appMeasurementSdk, com.google.firebase.analytics.connector.a.b bVar) {
        this.zza = bVar;
        this.zzb = appMeasurementSdk;
        e eVar = new e(this);
        this.zzc = eVar;
        this.zzb.registerOnMeasurementEventListener(eVar);
    }
}

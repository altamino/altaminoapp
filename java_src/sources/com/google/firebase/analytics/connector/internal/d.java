package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes11.dex */
public final class d {
    Set<String> zza;
    private com.google.firebase.analytics.connector.a.b zzb;
    private AppMeasurementSdk zzc;
    private c zzd;

    public d(AppMeasurementSdk appMeasurementSdk, com.google.firebase.analytics.connector.a.b bVar) {
        this.zzb = bVar;
        this.zzc = appMeasurementSdk;
        c cVar = new c(this);
        this.zzd = cVar;
        this.zzc.registerOnMeasurementEventListener(cVar);
        this.zza = new HashSet();
    }
}

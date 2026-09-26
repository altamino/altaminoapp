package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes11.dex */
final class c implements AppMeasurementSdk.OnEventListener {
    private final /* synthetic */ d zza;

    public c(d dVar) {
        this.zza = dVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzil
    public final void onEvent(String str, String str2, Bundle bundle, long j6) {
        if (this.zza.zza.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("events", a.c(str2));
            this.zza.zzb.a(2, bundle2);
        }
    }
}

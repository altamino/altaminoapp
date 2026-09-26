package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes11.dex */
final class e implements AppMeasurementSdk.OnEventListener {
    private final /* synthetic */ f zza;

    public e(f fVar) {
        this.zza = fVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzil
    public final void onEvent(String str, String str2, Bundle bundle, long j6) {
        if (str == null || !a.i(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j6);
        bundle2.putBundle("params", bundle);
        this.zza.zza.a(3, bundle2);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzagw implements zzaho<Object> {
    private final zzagx zzczp;

    public zzagw(zzagx zzagxVar) {
        this.zzczp = zzagxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (str == null) {
            zzbad.zzep("App event with no name parameter.");
        } else {
            this.zzczp.onAppEvent(str, map.get("info"));
        }
    }
}

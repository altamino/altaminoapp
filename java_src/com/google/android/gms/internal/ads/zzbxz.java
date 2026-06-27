package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbxz implements zzaho<Object> {
    private WeakReference<zzbxx> zzfnf;

    private zzbxz(zzbxx zzbxxVar) {
        this.zzfnf = new WeakReference<>(zzbxxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        zzbxx zzbxxVar = this.zzfnf.get();
        if (zzbxxVar != null && "_ac".equals(map.get("eventName"))) {
            zzbxxVar.zzfms.onAdClicked();
        }
    }
}

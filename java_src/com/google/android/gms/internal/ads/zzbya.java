package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbya implements zzaho<Object> {
    private WeakReference<zzbxx> zzfnf;

    private zzbya(zzbxx zzbxxVar) {
        this.zzfnf = new WeakReference<>(zzbxxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        zzbxx zzbxxVar = this.zzfnf.get();
        if (zzbxxVar == null) {
            return;
        }
        zzbxxVar.zzfmr.onAdImpression();
    }
}

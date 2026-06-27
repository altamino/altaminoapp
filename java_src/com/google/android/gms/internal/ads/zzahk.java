package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzahk implements zzaho<zzbgz> {
    zzahk() {
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbgz zzbgzVar, Map map) {
        zzbgz zzbgzVar2 = zzbgzVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzbgzVar2.zzlc();
        } else if ("resume".equals(str)) {
            zzbgzVar2.zzld();
        }
    }
}

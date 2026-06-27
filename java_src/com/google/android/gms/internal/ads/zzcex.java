package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcex implements zzczz {
    private zzwj zzftz;
    private Map<zzczs, zzcez> zzfuj;

    zzcex(zzwj zzwjVar, Map<zzczs, zzcez> map) {
        this.zzfuj = map;
        this.zzftz = zzwjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzb(zzczs zzczsVar, String str) {
        if (this.zzfuj.containsKey(zzczsVar)) {
            this.zzftz.zza(this.zzfuj.get(zzczsVar).zzfuk);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str, Throwable th) {
        if (this.zzfuj.containsKey(zzczsVar)) {
            this.zzftz.zza(this.zzfuj.get(zzczsVar).zzfum);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzc(zzczs zzczsVar, String str) {
        if (this.zzfuj.containsKey(zzczsVar)) {
            this.zzftz.zza(this.zzfuj.get(zzczsVar).zzful);
        }
    }
}

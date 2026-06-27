package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzccp implements zzban<zzbgz> {
    private final /* synthetic */ String zzfso;
    private final /* synthetic */ Map zzfsp;

    zzccp(zzccj zzccjVar, String str, Map map) {
        this.zzfso = str;
        this.zzfsp = map;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzbgz zzbgzVar) {
        zzbgzVar.zza(this.zzfso, this.zzfsp);
    }
}

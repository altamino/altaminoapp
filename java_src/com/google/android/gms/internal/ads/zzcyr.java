package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcyr implements zzdti<Context> {
    private final zzcyo zzglu;
    private final zzdtu<zzcym> zzglv;

    private zzcyr(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        this.zzglu = zzcyoVar;
        this.zzglv = zzdtuVar;
    }

    public static zzcyr zzb(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        return new zzcyr(zzcyoVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Context) zzdto.zza(this.zzglv.get().zzys, "Cannot return null from a non-@Nullable @Provides method");
    }
}

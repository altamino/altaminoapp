package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbqn implements zzdti<com.google.android.gms.ads.internal.zzb> {
    private final zzdtu<Context> zzeoj;
    private final zzbqm zzfjm;
    private final zzdtu<zzavb> zzfjn;

    private zzbqn(zzbqm zzbqmVar, zzdtu<Context> zzdtuVar, zzdtu<zzavb> zzdtuVar2) {
        this.zzfjm = zzbqmVar;
        this.zzeoj = zzdtuVar;
        this.zzfjn = zzdtuVar2;
    }

    public static zzbqn zza(zzbqm zzbqmVar, zzdtu<Context> zzdtuVar, zzdtu<zzavb> zzdtuVar2) {
        return new zzbqn(zzbqmVar, zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (com.google.android.gms.ads.internal.zzb) zzdto.zza(new com.google.android.gms.ads.internal.zzb(this.zzeoj.get(), this.zzfjn.get(), null), "Cannot return null from a non-@Nullable @Provides method");
    }
}

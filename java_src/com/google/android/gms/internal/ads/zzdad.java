package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzdad implements zzdti<zzalr> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfjy;
    private final zzdac zzgnq;

    public zzdad(zzdac zzdacVar, zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2) {
        this.zzgnq = zzdacVar;
        this.zzeoj = zzdtuVar;
        this.zzfjy = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzalr) zzdto.zza(new zzalk().zzb(this.zzeoj.get(), this.zzfjy.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

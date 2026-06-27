package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcwa implements zzdti<zzcvy> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<String> zzftu;
    private final zzdtu<zzasc> zzgit;

    public zzcwa(zzdtu<zzasc> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<String> zzdtuVar3, zzdtu<zzbbl> zzdtuVar4) {
        this.zzgit = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzftu = zzdtuVar3;
        this.zzfgh = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcvy(this.zzgit.get(), this.zzeoj.get(), this.zzftu.get(), this.zzfgh.get());
    }
}

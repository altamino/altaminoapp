package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcwl implements zzdti<zzcwj> {
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<String> zzftu;
    private final zzdtu<zzawe> zzgit;

    public zzcwl(zzdtu<zzawe> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<String> zzdtuVar3) {
        this.zzgit = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzftu = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcwj(this.zzgit.get(), this.zzfgh.get(), this.zzftu.get());
    }
}

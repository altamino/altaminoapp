package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzbxw implements zzdti<zzbpe<zzbnf>> {
    private final zzdtu<zzbtb> zzfjt;
    private final zzdtu<zzbjm> zzfmk;
    private final zzdtu<zzbqy.zza> zzfml;
    private final zzdtu<zzbtv> zzfmm;
    private final zzdtu<zzbxk> zzfmn;

    public zzbxw(zzdtu<zzbjm> zzdtuVar, zzdtu<zzbqy.zza> zzdtuVar2, zzdtu<zzbtv> zzdtuVar3, zzdtu<zzbxk> zzdtuVar4, zzdtu<zzbtb> zzdtuVar5) {
        this.zzfmk = zzdtuVar;
        this.zzfml = zzdtuVar2;
        this.zzfmm = zzdtuVar3;
        this.zzfmn = zzdtuVar4;
        this.zzfjt = zzdtuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzbjm zzbjmVar = this.zzfmk.get();
        zzbqy.zza zzaVar = this.zzfml.get();
        zzbtv zzbtvVar = this.zzfmm.get();
        return (zzbpe) zzdto.zza(zzbjmVar.zzacj().zzb(zzaVar.zzagh()).zzb(zzbtvVar).zzb(this.zzfmn.get()).zza(new zzcow(null)).zza(new zzbox(this.zzfjt.get())).zza(new zzbnc(null)).zzads().zzadv(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

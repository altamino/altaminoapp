package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcmp implements zzdti<zzcmo> {
    private final zzdtu<zzbtb> zzfjt;
    private final zzdtu<zzbjm> zzfmk;
    private final zzdtu<zzbqy.zza> zzfml;
    private final zzdtu<zzbtv> zzfmm;
    private final zzdtu<zzbxk> zzfmn;
    private final zzdtu<zzcow> zzgbe;
    private final zzdtu<ViewGroup> zzgbf;

    public zzcmp(zzdtu<zzbjm> zzdtuVar, zzdtu<zzbqy.zza> zzdtuVar2, zzdtu<zzcow> zzdtuVar3, zzdtu<zzbtv> zzdtuVar4, zzdtu<zzbxk> zzdtuVar5, zzdtu<zzbtb> zzdtuVar6, zzdtu<ViewGroup> zzdtuVar7) {
        this.zzfmk = zzdtuVar;
        this.zzfml = zzdtuVar2;
        this.zzgbe = zzdtuVar3;
        this.zzfmm = zzdtuVar4;
        this.zzfmn = zzdtuVar5;
        this.zzfjt = zzdtuVar6;
        this.zzgbf = zzdtuVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcmo(this.zzfmk.get(), this.zzfml.get(), this.zzgbe.get(), this.zzfmm.get(), this.zzfmn.get(), this.zzfjt.get(), this.zzgbf.get());
    }
}

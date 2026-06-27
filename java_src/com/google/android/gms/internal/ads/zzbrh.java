package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbrh implements zzdti<zzavb> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcxm> zzfgo;
    private final zzbrg zzfjx;
    private final zzdtu<zzbai> zzfjy;
    private final zzdtu<zzavd> zzfjz;

    private zzbrh(zzbrg zzbrgVar, zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzavd> zzdtuVar4) {
        this.zzfjx = zzbrgVar;
        this.zzeoj = zzdtuVar;
        this.zzfjy = zzdtuVar2;
        this.zzfgo = zzdtuVar3;
        this.zzfjz = zzdtuVar4;
    }

    public static zzbrh zza(zzbrg zzbrgVar, zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzavd> zzdtuVar4) {
        return new zzbrh(zzbrgVar, zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        Context context = this.zzeoj.get();
        zzbai zzbaiVar = this.zzfjy.get();
        zzcxm zzcxmVar = this.zzfgo.get();
        zzavd zzavdVar = this.zzfjz.get();
        zzauy zzauyVar = zzcxmVar.zzgki;
        if (zzauyVar != null) {
            return new zzauq(context, zzbaiVar, zzauyVar, zzcxmVar.zzgke.zzdkn, zzavdVar);
        }
        return null;
    }
}

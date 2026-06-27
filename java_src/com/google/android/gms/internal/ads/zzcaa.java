package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcaa implements zzdti<zzbzt> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzccj> zzeve;
    private final zzdtu<zzbzb> zzeyi;
    private final zzdtu<zzcdn> zzfqk;
    private final zzdtu<zzbmy> zzfql;

    public zzcaa(zzdtu<Context> zzdtuVar, zzdtu<zzcdn> zzdtuVar2, zzdtu<zzccj> zzdtuVar3, zzdtu<zzbmy> zzdtuVar4, zzdtu<zzbzb> zzdtuVar5) {
        this.zzeoj = zzdtuVar;
        this.zzfqk = zzdtuVar2;
        this.zzeve = zzdtuVar3;
        this.zzfql = zzdtuVar4;
        this.zzeyi = zzdtuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbzt(this.zzeoj.get(), this.zzfqk.get(), this.zzeve.get(), this.zzfql.get(), this.zzeyi.get());
    }
}

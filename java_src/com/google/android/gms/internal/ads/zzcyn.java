package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcyn implements zzdti<zzcyk> {
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<Context> zzfjq;
    private final zzdtu<zzawm> zzggj;

    public zzcyn(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzawm> zzdtuVar3) {
        this.zzfjq = zzdtuVar;
        this.zzfgp = zzdtuVar2;
        this.zzggj = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcyk(this.zzfjq.get(), this.zzfgp.get(), this.zzggj.get());
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcid implements zzdti<zzcic> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzavg> zzfly;

    private zzcid(zzdtu<Context> zzdtuVar, zzdtu<zzavg> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfly = zzdtuVar2;
    }

    public static zzcid zzad(zzdtu<Context> zzdtuVar, zzdtu<zzavg> zzdtuVar2) {
        return new zzcid(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcic(this.zzeoj.get(), this.zzfly.get());
    }
}

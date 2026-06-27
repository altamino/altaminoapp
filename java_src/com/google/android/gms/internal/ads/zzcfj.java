package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcfj implements zzdti<zzcfi> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<String> zzftu;

    private zzcfj(zzdtu<Context> zzdtuVar, zzdtu<String> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzftu = zzdtuVar2;
    }

    public static zzcfj zzx(zzdtu<Context> zzdtuVar, zzdtu<String> zzdtuVar2) {
        return new zzcfj(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcfi(this.zzeoj.get(), this.zzftu.get());
    }
}

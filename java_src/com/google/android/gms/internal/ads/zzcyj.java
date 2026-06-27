package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcyj implements zzdti<zzcyi> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzawu> zzerc;

    private zzcyj(zzdtu<Context> zzdtuVar, zzdtu<zzawu> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzerc = zzdtuVar2;
    }

    public static zzcyj zzau(zzdtu<Context> zzdtuVar, zzdtu<zzawu> zzdtuVar2) {
        return new zzcyj(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcyi(this.zzeoj.get(), this.zzerc.get());
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcuj implements zzdti<zzcuh> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<String> zzeqf;

    private zzcuj(zzdtu<Context> zzdtuVar, zzdtu<String> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzeqf = zzdtuVar2;
    }

    public static zzcuj zzar(zzdtu<Context> zzdtuVar, zzdtu<String> zzdtuVar2) {
        return new zzcuj(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcuh(this.zzeoj.get(), this.zzeqf.get());
    }
}

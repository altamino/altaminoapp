package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcjb implements zzdti<zzcja> {
    private final zzdtu<Context> zzeoj;

    private zzcjb(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    public static zzcjb zzaf(zzdtu<Context> zzdtuVar) {
        return new zzcjb(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcja(this.zzeoj.get());
    }
}

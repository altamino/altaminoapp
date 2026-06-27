package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzchi implements zzdti<zzchv> {
    private final zzdtu<Context> zzeoj;

    private zzchi(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    public static zzchi zzae(zzdtu<Context> zzdtuVar) {
        return new zzchi(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzchv) zzdto.zza(new zzchv(this.zzeoj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzchh implements zzdti<String> {
    private final zzdtu<Context> zzeoj;

    private zzchh(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    public static zzchh zzad(zzdtu<Context> zzdtuVar) {
        return new zzchh(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (String) zzdto.zza(this.zzeoj.get().getPackageName(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

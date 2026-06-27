package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzble implements zzdti<zzdan> {
    private final zzdtu<Context> zzeoj;

    public zzble(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzdan) zzdto.zza(new zzdan(this.zzeoj.get(), com.google.android.gms.ads.internal.zzk.zzlu().zzwr()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

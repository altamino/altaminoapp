package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzblf implements zzdti<zzayu> {
    private final zzdtu<Context> zzeoj;

    public zzblf(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzayu) zzdto.zza(new zzayu(this.zzeoj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

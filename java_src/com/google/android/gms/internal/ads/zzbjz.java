package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbjz implements zzdti<zzasl> {
    private final zzdtu<Context> zzeoj;

    public zzbjz(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        Context context = this.zzeoj.get();
        return (zzasl) zzdto.zza(new zzasj(context, new zzaso(context).zztt()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

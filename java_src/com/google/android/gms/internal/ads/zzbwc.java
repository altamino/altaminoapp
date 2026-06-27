package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
public final class zzbwc implements zzdti<View> {
    private final zzbvz zzflo;

    private zzbwc(zzbvz zzbvzVar) {
        this.zzflo = zzbvzVar;
    }

    public static zzbwc zza(zzbvz zzbvzVar) {
        return new zzbwc(zzbvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return this.zzflo.zzahb();
    }
}

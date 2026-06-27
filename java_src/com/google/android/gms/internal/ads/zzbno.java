package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
public final class zzbno implements zzdti<View> {
    private final zzbnk zzfhp;

    public zzbno(zzbnk zzbnkVar) {
        this.zzfhp = zzbnkVar;
    }

    public static View zza(zzbnk zzbnkVar) {
        return (View) zzdto.zza(zzbnkVar.zzafi(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfhp);
    }
}

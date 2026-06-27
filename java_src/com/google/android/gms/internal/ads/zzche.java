package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* loaded from: classes2.dex */
public final class zzche implements zzdti<ApplicationInfo> {
    private final zzdtu<Context> zzeoj;

    private zzche(zzdtu<Context> zzdtuVar) {
        this.zzeoj = zzdtuVar;
    }

    public static zzche zzac(zzdtu<Context> zzdtuVar) {
        return new zzche(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (ApplicationInfo) zzdto.zza(this.zzeoj.get().getApplicationInfo(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

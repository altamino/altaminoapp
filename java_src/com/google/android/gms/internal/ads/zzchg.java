package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* loaded from: classes2.dex */
public final class zzchg implements zzdti<PackageInfo> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<ApplicationInfo> zzfws;

    private zzchg(zzdtu<Context> zzdtuVar, zzdtu<ApplicationInfo> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfws = zzdtuVar2;
    }

    public static zzchg zzac(zzdtu<Context> zzdtuVar, zzdtu<ApplicationInfo> zzdtuVar2) {
        return new zzchg(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzcgt.zza(this.zzeoj.get(), this.zzfws.get());
    }
}

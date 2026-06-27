package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* loaded from: classes2.dex */
public final class zzcuc implements zzdti<zzcub> {
    private final zzdtu<PackageInfo> zzfwk;
    private final zzdtu<ApplicationInfo> zzfws;

    private zzcuc(zzdtu<ApplicationInfo> zzdtuVar, zzdtu<PackageInfo> zzdtuVar2) {
        this.zzfws = zzdtuVar;
        this.zzfwk = zzdtuVar2;
    }

    public static zzcuc zzap(zzdtu<ApplicationInfo> zzdtuVar, zzdtu<PackageInfo> zzdtuVar2) {
        return new zzcuc(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcub(this.zzfws.get(), this.zzfwk.get());
    }
}

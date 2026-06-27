package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcug implements zzdti<zzcue> {
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<Bundle> zzghq;

    private zzcug(zzdtu<zzbbl> zzdtuVar, zzdtu<Bundle> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzghq = zzdtuVar2;
    }

    public static zzcug zzaq(zzdtu<zzbbl> zzdtuVar, zzdtu<Bundle> zzdtuVar2) {
        return new zzcug(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcue(this.zzfgh.get(), this.zzghq.get());
    }
}

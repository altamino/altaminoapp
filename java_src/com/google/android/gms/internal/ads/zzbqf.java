package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzbqf implements zzdti<zzbqe> {
    private final zzdtu<Clock> zzfgj;
    private final zzdtu<zzawj> zzfjl;

    private zzbqf(zzdtu<Clock> zzdtuVar, zzdtu<zzawj> zzdtuVar2) {
        this.zzfgj = zzdtuVar;
        this.zzfjl = zzdtuVar2;
    }

    public static zzbqf zzb(zzdtu<Clock> zzdtuVar, zzdtu<zzawj> zzdtuVar2) {
        return new zzbqf(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbqe(this.zzfgj.get(), this.zzfjl.get());
    }
}

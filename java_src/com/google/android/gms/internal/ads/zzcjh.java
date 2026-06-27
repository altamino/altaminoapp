package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcjh implements zzdti<zzcjg> {
    private final zzdtu<zzcjm> zzfyk;

    private zzcjh(zzdtu<zzcjm> zzdtuVar) {
        this.zzfyk = zzdtuVar;
    }

    public static zzcjh zzag(zzdtu<zzcjm> zzdtuVar) {
        return new zzcjh(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcjg(this.zzfyk.get());
    }
}

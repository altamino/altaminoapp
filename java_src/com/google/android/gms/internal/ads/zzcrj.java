package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcrj implements zzdti<zzcri> {
    private final zzdtu<zzcxv> zzfhr;

    private zzcrj(zzdtu<zzcxv> zzdtuVar) {
        this.zzfhr = zzdtuVar;
    }

    public static zzcrj zzaj(zzdtu<zzcxv> zzdtuVar) {
        return new zzcrj(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcri(this.zzfhr.get());
    }
}

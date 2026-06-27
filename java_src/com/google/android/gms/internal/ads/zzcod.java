package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcod implements zzdti<zzcoc> {
    private final zzdtu<zzclc> zzeog;

    private zzcod(zzdtu<zzclc> zzdtuVar) {
        this.zzeog = zzdtuVar;
    }

    public static zzcod zzai(zzdtu<zzclc> zzdtuVar) {
        return new zzcod(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcoc(this.zzeog.get());
    }
}

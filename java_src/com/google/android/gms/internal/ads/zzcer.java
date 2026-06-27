package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcer implements zzdti<zzcep> {
    private final zzdtu<zzwj> zzfuc;

    private zzcer(zzdtu<zzwj> zzdtuVar) {
        this.zzfuc = zzdtuVar;
    }

    public static zzcer zzab(zzdtu<zzwj> zzdtuVar) {
        return new zzcer(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcep(this.zzfuc.get());
    }
}

package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcoy implements zzdti<zzcow> {
    private final zzcow zzgdc;

    private zzcoy(zzcow zzcowVar) {
        this.zzgdc = zzcowVar;
    }

    public static zzcoy zzd(zzcow zzcowVar) {
        return new zzcoy(zzcowVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzcow zzcowVar = this.zzgdc;
        if (zzcowVar == null) {
            throw null;
        }
        return (zzcow) zzdto.zza(zzcowVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}

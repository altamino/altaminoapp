package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbxm implements zzdti<zzbxk> {
    private final zzbxk zzfmf;

    private zzbxm(zzbxk zzbxkVar) {
        this.zzfmf = zzbxkVar;
    }

    public static zzbxm zzc(zzbxk zzbxkVar) {
        return new zzbxm(zzbxkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzbxk zzbxkVar = this.zzfmf;
        if (zzbxkVar == null) {
            throw null;
        }
        return (zzbxk) zzdto.zza(zzbxkVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}

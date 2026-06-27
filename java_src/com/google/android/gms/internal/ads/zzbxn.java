package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbxn implements zzdti<zzbzc> {
    private final zzbxk zzfmf;

    private zzbxn(zzbxk zzbxkVar) {
        this.zzfmf = zzbxkVar;
    }

    public static zzbxn zzd(zzbxk zzbxkVar) {
        return new zzbxn(zzbxkVar);
    }

    public static zzbzc zze(zzbxk zzbxkVar) {
        return (zzbzc) zzdto.zza(zzbxkVar.zzahf(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zze(this.zzfmf);
    }
}

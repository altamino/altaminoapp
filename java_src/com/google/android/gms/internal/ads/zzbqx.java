package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbqx implements zzdti<zzbtb> {
    private final zzdtu<zzbtb> zzfjt;

    private zzbqx(zzdtu<zzbtb> zzdtuVar) {
        this.zzfjt = zzdtuVar;
    }

    public static zzbqx zzl(zzdtu<zzbtb> zzdtuVar) {
        return new zzbqx(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbtb) zzdto.zza(this.zzfjt.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbqp implements zzdti<zzbuz<com.google.android.gms.ads.internal.overlay.zzo>> {
    private final zzdtu<zzbpv> zzfhs;
    private final zzbqo zzfjo;

    private zzbqp(zzbqo zzbqoVar, zzdtu<zzbpv> zzdtuVar) {
        this.zzfjo = zzbqoVar;
        this.zzfhs = zzdtuVar;
    }

    public static zzbqp zza(zzbqo zzbqoVar, zzdtu<zzbpv> zzdtuVar) {
        return new zzbqp(zzbqoVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbuk implements zzdti<zzbtv> {
    private final zzbtv zzfky;

    private zzbuk(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbuk zzr(zzbtv zzbtvVar) {
        return new zzbuk(zzbtvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzbtv zzbtvVar = this.zzfky;
        if (zzbtvVar == null) {
            throw null;
        }
        return (zzbtv) zzdto.zza(zzbtvVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}

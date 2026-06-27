package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbln implements zzdti<zzawi> {
    private static final zzbln zzfet = new zzbln();

    public static zzbln zzafa() {
        return zzfet;
    }

    public static zzawi zzafb() {
        return (zzawi) zzdto.zza(new zzawg(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzafb();
    }
}

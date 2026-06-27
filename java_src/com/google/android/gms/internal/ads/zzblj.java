package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzblj implements zzdti<zzwa> {
    private static final zzblj zzfep = new zzblj();

    public static zzblj zzaes() {
        return zzfep;
    }

    public static zzwa zzaet() {
        return (zzwa) zzdto.zza(new zzwa(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzaet();
    }
}

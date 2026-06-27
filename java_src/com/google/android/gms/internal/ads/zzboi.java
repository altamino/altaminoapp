package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzboi implements zzdti<String> {
    private static final zzboi zzfhy = new zzboi();

    public static zzboi zzafs() {
        return zzfhy;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (String) zzdto.zza("banner", "Cannot return null from a non-@Nullable @Provides method");
    }
}

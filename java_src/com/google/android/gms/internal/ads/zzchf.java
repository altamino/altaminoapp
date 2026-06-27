package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes2.dex */
public final class zzchf implements zzdti<List<String>> {
    private static final zzchf zzfwr = new zzchf();

    public static zzchf zzake() {
        return zzfwr;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (List) zzdto.zza(zzacu.zzqn(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

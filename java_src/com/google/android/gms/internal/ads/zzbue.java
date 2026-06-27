package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbue implements zzdti<Set<zzbuz<zzbrs>>> {
    private final zzbtv zzfky;

    public zzbue(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(this.zzfky.zzago(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcru implements zzdti<zzcrs> {
    private final zzdtu<Set<String>> zzggm;

    private zzcru(zzdtu<Set<String>> zzdtuVar) {
        this.zzggm = zzdtuVar;
    }

    public static zzcru zzak(zzdtu<Set<String>> zzdtuVar) {
        return new zzcru(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcrs(this.zzggm.get());
    }
}

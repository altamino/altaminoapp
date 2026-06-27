package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbxr implements zzdti<Set<String>> {
    private final zzdtu<zzbzc> zzfhh;

    public zzbxr(zzdtu<zzbzc> zzdtuVar) {
        this.zzfhh = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        Set setEmptySet;
        if (this.zzfhh.get().zzail() != null) {
            setEmptySet = Collections.singleton("banner");
        } else {
            setEmptySet = Collections.emptySet();
        }
        return (Set) zzdto.zza(setEmptySet, "Cannot return null from a non-@Nullable @Provides method");
    }
}

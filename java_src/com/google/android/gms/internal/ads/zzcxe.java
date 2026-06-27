package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcxe implements zzdti<zzcva<? extends zzcuz<JSONObject>>> {
    private static final zzcxe zzgjr = new zzcxe();

    public static zzcva<? extends zzcuz<JSONObject>> zzamj() {
        return (zzcva) zzdto.zza(zzcxc.zzgjp, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzamj();
    }
}

package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdpc<K, V> {
    static <K, V> void zza(zzdni zzdniVar, zzdpd<K, V> zzdpdVar, K k, V v) throws IOException {
        zzdns.zza(zzdniVar, zzdpdVar.zzhji, 1, k);
        zzdns.zza(zzdniVar, zzdpdVar.zzhjk, 2, v);
    }

    static <K, V> int zza(zzdpd<K, V> zzdpdVar, K k, V v) {
        return zzdns.zza(zzdpdVar.zzhji, 1, k) + zzdns.zza(zzdpdVar.zzhjk, 2, v);
    }
}

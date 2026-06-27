package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
final class zzdoa implements zzdpj {
    private static final zzdoa zzhhc = new zzdoa();

    private zzdoa() {
    }

    public static zzdoa zzaxq() {
        return zzhhc;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final boolean zzc(Class<?> cls) {
        return zzdob.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final zzdpi zzd(Class<?> cls) {
        if (!zzdob.class.isAssignableFrom(cls)) {
            String strValueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unsupported message type: ".concat(strValueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzdpi) zzdob.zze(cls.asSubclass(zzdob.class)).zza(zzdob.zze.zzhhm, (Object) null, (Object) null);
        } catch (Exception e) {
            String strValueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(strValueOf2.length() != 0 ? "Unable to get message info for ".concat(strValueOf2) : new String("Unable to get message info for "), e);
        }
    }
}

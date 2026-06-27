package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzdmm {
    private static final Class<?> zzhcj = zzgu("libcore.io.Memory");
    private static final boolean zzhck;

    static boolean zzavl() {
        return (zzhcj == null || zzhck) ? false : true;
    }

    static Class<?> zzavm() {
        return zzhcj;
    }

    private static <T> Class<T> zzgu(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static {
        zzhck = zzgu("org.robolectric.Robolectric") != null;
    }
}

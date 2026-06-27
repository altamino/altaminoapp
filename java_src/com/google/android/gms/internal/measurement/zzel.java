package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzel {
    private static final Class<?> zzadi = zzlo();

    private static Class<?> zzlo() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzem zzlp() {
        if (zzadi != null) {
            try {
                return zzcr("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return zzem.zzadm;
    }

    static zzem zzlq() {
        zzem zzemVarZzcr;
        if (zzadi != null) {
            try {
                zzemVarZzcr = zzcr("loadGeneratedRegistry");
            } catch (Exception unused) {
            }
        } else {
            zzemVarZzcr = null;
        }
        if (zzemVarZzcr == null) {
            zzemVarZzcr = zzem.zzlq();
        }
        return zzemVarZzcr == null ? zzlp() : zzemVarZzcr;
    }

    private static final zzem zzcr(String str) throws Exception {
        return (zzem) zzadi.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}

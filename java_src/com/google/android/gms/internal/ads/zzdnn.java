package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzdnn {
    private static final Class<?> zzhdy = zzawz();

    private static Class<?> zzawz() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzdno zzaxa() {
        if (zzhdy != null) {
            try {
                return zzgz("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return zzdno.zzhec;
    }

    static zzdno zzaxb() {
        zzdno zzdnoVarZzgz;
        if (zzhdy != null) {
            try {
                zzdnoVarZzgz = zzgz("loadGeneratedRegistry");
            } catch (Exception unused) {
            }
        } else {
            zzdnoVarZzgz = null;
        }
        if (zzdnoVarZzgz == null) {
            zzdnoVarZzgz = zzdno.zzaxb();
        }
        return zzdnoVarZzgz == null ? zzaxa() : zzdnoVarZzgz;
    }

    private static final zzdno zzgz(String str) throws Exception {
        return (zzdno) zzhdy.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}

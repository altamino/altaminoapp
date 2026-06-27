package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
final class zzddi {
    public static void zza(zzdft zzdftVar) throws GeneralSecurityException {
        zzdkr.zza(zza(zzdftVar.zzaqp().zzara()));
        zza(zzdftVar.zzaqp().zzaoo());
        if (zzdftVar.zzaqr() == zzdfd.UNKNOWN_FORMAT) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        zzdcf.zza(zzdftVar.zzaqq().zzaqk());
    }

    public static String zza(zzdgj zzdgjVar) throws NoSuchAlgorithmException {
        int i = zzddj.zzgqb[zzdgjVar.ordinal()];
        if (i == 1) {
            return "HmacSha1";
        }
        if (i == 2) {
            return "HmacSha256";
        }
        if (i == 3) {
            return "HmacSha512";
        }
        String strValueOf = String.valueOf(zzdgjVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("hash unsupported for HMAC: ");
        sb.append(strValueOf);
        throw new NoSuchAlgorithmException(sb.toString());
    }

    public static zzdkt zza(zzdgf zzdgfVar) throws GeneralSecurityException {
        int i = zzddj.zzgqc[zzdgfVar.ordinal()];
        if (i == 1) {
            return zzdkt.NIST_P256;
        }
        if (i == 2) {
            return zzdkt.NIST_P384;
        }
        if (i == 3) {
            return zzdkt.NIST_P521;
        }
        String strValueOf = String.valueOf(zzdgfVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 20);
        sb.append("unknown curve type: ");
        sb.append(strValueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    public static zzdkv zza(zzdfd zzdfdVar) throws GeneralSecurityException {
        int i = zzddj.zzgqd[zzdfdVar.ordinal()];
        if (i == 1) {
            return zzdkv.UNCOMPRESSED;
        }
        if (i == 2) {
            return zzdkv.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        }
        if (i == 3) {
            return zzdkv.COMPRESSED;
        }
        String strValueOf = String.valueOf(zzdfdVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
        sb.append("unknown point format: ");
        sb.append(strValueOf);
        throw new GeneralSecurityException(sb.toString());
    }
}

package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzdlv {
    public static String zza(zzdlg zzdlgVar) throws GeneralSecurityException {
        zzdlx.zzc(zzdlgVar);
        String strValueOf = String.valueOf(zzdlgVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 9);
        sb.append(strValueOf);
        sb.append("withECDSA");
        return sb.toString();
    }

    public static String zzb(zzdlg zzdlgVar) throws GeneralSecurityException {
        int i = zzdlw.zzhbp[zzdlgVar.ordinal()];
        if (i == 1) {
            return "SHA-1";
        }
        if (i == 2) {
            return "SHA-256";
        }
        if (i == 3) {
            return "SHA-512";
        }
        String strValueOf = String.valueOf(zzdlgVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 17);
        sb.append("Unsupported hash ");
        sb.append(strValueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    public static boolean zzavd() throws ClassNotFoundException {
        try {
            Class.forName("android.app.Application", false, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static BigInteger zzx(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public static byte[] zza(BigInteger bigInteger, int i) throws GeneralSecurityException {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i) {
            return byteArray;
        }
        int i2 = i + 1;
        if (byteArray.length > i2) {
            throw new GeneralSecurityException("integer too large");
        }
        if (byteArray.length == i2) {
            if (byteArray[0] == 0) {
                return Arrays.copyOfRange(byteArray, 1, byteArray.length);
            }
            throw new GeneralSecurityException("integer too large");
        }
        byte[] bArr = new byte[i];
        System.arraycopy(byteArray, 0, bArr, i - byteArray.length, byteArray.length);
        return bArr;
    }

    public static byte[] zza(byte[] bArr, int i, zzdlg zzdlgVar) throws GeneralSecurityException {
        MessageDigest messageDigestZzgt = zzdkx.zzhas.zzgt(zzb(zzdlgVar));
        int digestLength = messageDigestZzgt.getDigestLength();
        byte[] bArr2 = new byte[i];
        int length = 0;
        for (int i2 = 0; i2 <= (i - 1) / digestLength; i2++) {
            messageDigestZzgt.reset();
            messageDigestZzgt.update(bArr);
            messageDigestZzgt.update(zza(BigInteger.valueOf(i2), 4));
            byte[] bArrDigest = messageDigestZzgt.digest();
            System.arraycopy(bArrDigest, 0, bArr2, length, Math.min(bArrDigest.length, bArr2.length - length));
            length += bArrDigest.length;
        }
        return bArr2;
    }
}

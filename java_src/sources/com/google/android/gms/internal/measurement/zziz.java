package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public final class zziz {
    public static final byte[] zzb;
    private static final ByteBuffer zze;
    private static final zzib zzf;
    private static final Charset zzc = Charset.forName("US-ASCII");
    static final Charset zza = Charset.forName("UTF-8");
    private static final Charset zzd = Charset.forName("ISO-8859-1");

    public static int zza(long j6) {
        return (int) (j6 ^ (j6 >>> 32));
    }

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        zze = ByteBuffer.wrap(bArr);
        zzf = zzib.zza(bArr, 0, bArr.length, false);
    }

    public static int zza(boolean z6) {
        return z6 ? 1231 : 1237;
    }

    public static String zzb(byte[] bArr) {
        return new String(bArr, zza);
    }

    public static int zza(byte[] bArr) {
        int length = bArr.length;
        int iZza = zza(length, bArr, 0, length);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    public static boolean zzc(byte[] bArr) {
        return zzmh.zza(bArr);
    }

    static int zza(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    static <T> T zza(T t5) {
        t5.getClass();
        return t5;
    }

    static <T> T zza(T t5, String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str);
    }

    static boolean zza(zzkj zzkjVar) {
        if (!(zzkjVar instanceof zzhe)) {
            return false;
        }
        return false;
    }
}

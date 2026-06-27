package com.google.android.gms.internal.measurement;

import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class zzfb {
    public static final byte[] zzahk;
    private static final ByteBuffer zzahl;
    private static final zzeb zzahm;
    static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    public static int zzba(long j) {
        return (int) (j ^ (j >>> 32));
    }

    static boolean zzf(zzgh zzghVar) {
        return false;
    }

    public static int zzo(boolean z) {
        return z ? 1231 : 1237;
    }

    static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    static <T> T zza(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static boolean zzj(byte[] bArr) {
        return zzhy.zzj(bArr);
    }

    public static String zzk(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int iZza = zza(length, bArr, 0, length);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    static Object zza(Object obj, Object obj2) {
        return ((zzgh) obj).zzmk().zza((zzgh) obj2).zzmq();
    }

    static {
        byte[] bArr = new byte[0];
        zzahk = bArr;
        zzahl = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzahk;
        zzahm = zzeb.zza(bArr2, 0, bArr2.length, false);
    }
}

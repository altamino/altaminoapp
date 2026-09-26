package com.google.android.gms.internal.play_billing;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes10.dex */
public final class zzfd {
    static final Charset zza = Charset.forName("US-ASCII");
    static final Charset zzb = Charset.forName("UTF-8");
    static final Charset zzc = Charset.forName("ISO-8859-1");
    public static final byte[] zzd;
    public static final ByteBuffer zze;
    public static final zzea zzf;

    public static int zza(boolean z6) {
        return z6 ? 1231 : 1237;
    }

    static int zzb(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static String zzd(byte[] bArr) {
        return new String(bArr, zzb);
    }

    static {
        byte[] bArr = new byte[0];
        zzd = bArr;
        zze = ByteBuffer.wrap(bArr);
        int i10 = zzea.zza;
        zzdy zzdyVar = new zzdy(bArr, 0, 0, false, null);
        try {
            zzdyVar.zza(0);
            zzf = zzdyVar;
        } catch (zzff e) {
            throw new IllegalArgumentException(e);
        }
    }

    static Object zzc(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("messageType");
    }
}

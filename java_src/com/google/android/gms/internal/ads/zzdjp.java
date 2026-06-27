package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class zzdjp {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);

    public static byte[] decode(String str) {
        byte[] bytes = str.getBytes(UTF_8);
        int length = bytes.length;
        zzdjr zzdjrVar = new zzdjr(2, new byte[(length * 3) / 4]);
        if (!zzdjrVar.zzb(bytes, 0, length, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        int i = zzdjrVar.zzgya;
        byte[] bArr = zzdjrVar.zzgxz;
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }
}

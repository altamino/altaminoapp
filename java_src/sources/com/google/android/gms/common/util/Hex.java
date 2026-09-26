package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.common.base.c;

/* JADX INFO: loaded from: classes6.dex */
@ShowFirstParty
@KeepForSdk
public class Hex {
    private static final char[] zza = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] zzb = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @NonNull
    @KeepForSdk
    public static String bytesToStringLowercase(@NonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i10 = 0;
        for (byte b7 : bArr) {
            char[] cArr2 = zzb;
            cArr[i10] = cArr2[(b7 & 255) >>> 4];
            cArr[i10 + 1] = cArr2[b7 & c.SI];
            i10 += 2;
        }
        return new String(cArr);
    }

    @NonNull
    @KeepForSdk
    public static String bytesToStringUppercase(@NonNull byte[] bArr) {
        return bytesToStringUppercase(bArr, false);
    }

    @NonNull
    @KeepForSdk
    public static String bytesToStringUppercase(@NonNull byte[] bArr, boolean z6) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (int i10 = 0; i10 < length && (!z6 || i10 != length - 1 || (bArr[i10] & 255) != 0); i10++) {
            char[] cArr = zza;
            sb.append(cArr[(bArr[i10] & 240) >>> 4]);
            sb.append(cArr[bArr[i10] & c.SI]);
        }
        return sb.toString();
    }

    @NonNull
    @KeepForSdk
    public static byte[] stringToBytes(@NonNull String str) throws IllegalArgumentException {
        int length = str.length();
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 2;
                bArr[i10 / 2] = (byte) Integer.parseInt(str.substring(i10, i11), 16);
                i10 = i11;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Hex string has odd number of characters");
    }
}

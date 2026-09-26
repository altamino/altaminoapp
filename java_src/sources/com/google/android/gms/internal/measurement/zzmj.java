package com.google.android.gms.internal.measurement;

import com.google.common.base.c;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
final class zzmj {
    private static boolean zza(byte b7) {
        return b7 > -65;
    }

    static /* synthetic */ void zza(byte b7, byte b10, byte b11, byte b12, char[] cArr, int i10) throws zzji {
        if (zza(b10) || (((b7 << c.FS) + (b10 + 112)) >> 30) != 0 || zza(b11) || zza(b12)) {
            throw zzji.zzd();
        }
        int i11 = ((b7 & 7) << 18) | ((b10 & Utf8.REPLACEMENT_BYTE) << 12) | ((b11 & Utf8.REPLACEMENT_BYTE) << 6) | (b12 & Utf8.REPLACEMENT_BYTE);
        cArr[i10] = (char) ((i11 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i10 + 1] = (char) ((i11 & 1023) + Utf8.LOG_SURROGATE_HEADER);
    }

    static /* synthetic */ void zza(byte b7, char[] cArr, int i10) {
        cArr[i10] = (char) b7;
    }

    static /* synthetic */ void zza(byte b7, byte b10, byte b11, char[] cArr, int i10) throws zzji {
        if (!zza(b10) && ((b7 != -32 || b10 >= -96) && ((b7 != -19 || b10 < -96) && !zza(b11)))) {
            cArr[i10] = (char) (((b7 & c.SI) << 12) | ((b10 & Utf8.REPLACEMENT_BYTE) << 6) | (b11 & Utf8.REPLACEMENT_BYTE));
            return;
        }
        throw zzji.zzd();
    }

    static /* synthetic */ void zza(byte b7, byte b10, char[] cArr, int i10) throws zzji {
        if (b7 >= -62 && !zza(b10)) {
            cArr[i10] = (char) (((b7 & c.US) << 6) | (b10 & Utf8.REPLACEMENT_BYTE));
            return;
        }
        throw zzji.zzd();
    }
}

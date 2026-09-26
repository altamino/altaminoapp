package com.google.android.gms.internal.play_billing;

import com.google.common.base.c;
import okio.Utf8;

/* JADX INFO: loaded from: classes10.dex */
final class zzho {
    static /* bridge */ /* synthetic */ boolean zzd(byte b7) {
        return b7 >= 0;
    }

    private static boolean zze(byte b7) {
        return b7 > -65;
    }

    static /* bridge */ /* synthetic */ void zzc(byte b7, byte b10, char[] cArr, int i10) throws zzff {
        if (b7 < -62 || zze(b10)) {
            throw zzff.zzc();
        }
        cArr[i10] = (char) (((b7 & c.US) << 6) | (b10 & Utf8.REPLACEMENT_BYTE));
    }

    static /* bridge */ /* synthetic */ void zza(byte b7, byte b10, byte b11, byte b12, char[] cArr, int i10) throws zzff {
        if (!zze(b10) && (((b7 << c.FS) + (b10 + 112)) >> 30) == 0 && !zze(b11) && !zze(b12)) {
            int i11 = ((b7 & 7) << 18) | ((b10 & Utf8.REPLACEMENT_BYTE) << 12) | ((b11 & Utf8.REPLACEMENT_BYTE) << 6) | (b12 & Utf8.REPLACEMENT_BYTE);
            cArr[i10] = (char) ((i11 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
            cArr[i10 + 1] = (char) ((i11 & 1023) + Utf8.LOG_SURROGATE_HEADER);
            return;
        }
        throw zzff.zzc();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0013 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0015  */
    /* JADX WARN: Code duplicated, block: B:12:0x0016 A[PHI: r2
      0x0016: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0011, B:11:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x001c  */
    static /* bridge */ /* synthetic */ void zzb(byte b7, byte b10, byte b11, char[] cArr, int i10) throws zzff {
        if (!zze(b10)) {
            if (b7 == -32) {
                if (b10 >= -96) {
                    b7 = -32;
                    if (b7 != -19) {
                        if (b10 < -96) {
                            b7 = -19;
                            if (!zze(b11)) {
                                cArr[i10] = (char) (((b7 & c.SI) << 12) | ((b10 & Utf8.REPLACEMENT_BYTE) << 6) | (b11 & Utf8.REPLACEMENT_BYTE));
                                return;
                            }
                        }
                    } else if (!zze(b11)) {
                        cArr[i10] = (char) (((b7 & c.SI) << 12) | ((b10 & Utf8.REPLACEMENT_BYTE) << 6) | (b11 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                }
            } else if (b7 != -19) {
                if (b10 < -96) {
                    b7 = -19;
                    if (!zze(b11)) {
                        cArr[i10] = (char) (((b7 & c.SI) << 12) | ((b10 & Utf8.REPLACEMENT_BYTE) << 6) | (b11 & Utf8.REPLACEMENT_BYTE));
                        return;
                    }
                }
            } else if (!zze(b11)) {
                cArr[i10] = (char) (((b7 & c.SI) << 12) | ((b10 & Utf8.REPLACEMENT_BYTE) << 6) | (b11 & Utf8.REPLACEMENT_BYTE));
                return;
            }
        }
        throw zzff.zzc();
    }
}

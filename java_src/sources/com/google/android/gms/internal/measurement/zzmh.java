package com.google.android.gms.internal.measurement;

import com.google.common.base.c;

/* JADX INFO: loaded from: classes7.dex */
final class zzmh {
    private static final zzmi zza;

    static /* synthetic */ int zza(byte[] bArr, int i10, int i11) {
        byte b7 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 == 0) {
            if (b7 > -12) {
                return -1;
            }
            return b7;
        }
        if (i12 == 1) {
            byte b10 = bArr[i10];
            if (b7 > -12 || b10 > -65) {
                return -1;
            }
            return (b10 << 8) ^ b7;
        }
        if (i12 != 2) {
            throw new AssertionError();
        }
        byte b11 = bArr[i10];
        byte b12 = bArr[i10 + 1];
        if (b7 > -12 || b11 > -65 || b12 > -65) {
            return -1;
        }
        return (b12 << c.DLE) ^ ((b11 << 8) ^ b7);
    }

    static String zzb(byte[] bArr, int i10, int i11) throws zzji {
        return zza.zza(bArr, i10, i11);
    }

    static boolean zzc(byte[] bArr, int i10, int i11) {
        return zza.zzb(bArr, i10, i11);
    }

    static {
        if (zzmg.zzc()) {
            zzmg.zzd();
        }
        zza = new zzml();
    }

    static int zza(CharSequence charSequence, byte[] bArr, int i10, int i11) {
        return zza.zza(charSequence, bArr, i10, i11);
    }

    static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        int i11 = 0;
        while (i11 < length && charSequence.charAt(i11) < 128) {
            i11++;
        }
        int i12 = length;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt >= 2048) {
                int length2 = charSequence.length();
                while (i11 < length2) {
                    char cCharAt2 = charSequence.charAt(i11);
                    if (cCharAt2 < 2048) {
                        i10 += (127 - cCharAt2) >>> 31;
                    } else {
                        i10 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i11) < 65536) {
                                throw new zzmk(i11, length2);
                            }
                            i11++;
                        }
                    }
                    i11++;
                }
                i12 += i10;
                break;
            }
            i12 += (127 - cCharAt) >>> 31;
            i11++;
        }
        if (i12 >= length) {
            return i12;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i12) + 4294967296L));
    }

    static boolean zza(byte[] bArr) {
        return zza.zzb(bArr, 0, bArr.length);
    }
}

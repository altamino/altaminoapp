package com.google.android.gms.internal.auth;

import com.google.common.base.c;

/* JADX INFO: loaded from: classes9.dex */
final class zzhm {
    private static final zzhk zza;

    static String zzb(byte[] bArr, int i10, int i11) throws zzfa {
        int length = bArr.length;
        if ((i10 | i11 | ((length - i10) - i11)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        int i12 = i10 + i11;
        char[] cArr = new char[i11];
        int i13 = 0;
        while (i10 < i12) {
            byte b7 = bArr[i10];
            if (!zzhj.zzd(b7)) {
                break;
            }
            i10++;
            cArr[i13] = (char) b7;
            i13++;
        }
        while (i10 < i12) {
            int i14 = i10 + 1;
            byte b10 = bArr[i10];
            if (zzhj.zzd(b10)) {
                cArr[i13] = (char) b10;
                i13++;
                i10 = i14;
                while (i10 < i12) {
                    byte b11 = bArr[i10];
                    if (!zzhj.zzd(b11)) {
                        break;
                    }
                    i10++;
                    cArr[i13] = (char) b11;
                    i13++;
                }
            } else if (b10 < -32) {
                if (i14 >= i12) {
                    throw zzfa.zzb();
                }
                i10 += 2;
                zzhj.zzc(b10, bArr[i14], cArr, i13);
                i13++;
            } else if (b10 < -16) {
                if (i14 >= i12 - 1) {
                    throw zzfa.zzb();
                }
                int i15 = i10 + 2;
                i10 += 3;
                zzhj.zzb(b10, bArr[i14], bArr[i15], cArr, i13);
                i13++;
            } else {
                if (i14 >= i12 - 2) {
                    throw zzfa.zzb();
                }
                int i16 = i10 + 2;
                int i17 = i10 + 3;
                i10 += 4;
                zzhj.zza(b10, bArr[i14], bArr[i16], bArr[i17], cArr, i13);
                i13 += 2;
            }
        }
        return new String(cArr, 0, i13);
    }

    static /* bridge */ /* synthetic */ int zza(byte[] bArr, int i10, int i11) {
        byte b7 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 != 0) {
            if (i12 == 1) {
                byte b10 = bArr[i10];
                if (b7 <= -12 && b10 <= -65) {
                    return b7 ^ (b10 << 8);
                }
            } else {
                if (i12 != 2) {
                    throw new AssertionError();
                }
                byte b11 = bArr[i10];
                byte b12 = bArr[i10 + 1];
                if (b7 <= -12 && b11 <= -65 && b12 <= -65) {
                    return ((b11 << 8) ^ b7) ^ (b12 << c.DLE);
                }
            }
        } else if (b7 <= -12) {
            return b7;
        }
        return -1;
    }

    static boolean zzc(byte[] bArr) {
        return zza.zzb(bArr, 0, bArr.length);
    }

    static boolean zzd(byte[] bArr, int i10, int i11) {
        return zza.zzb(bArr, i10, i11);
    }

    static {
        if (zzhi.zzu() && zzhi.zzv()) {
            int i10 = zzdr.zza;
        }
        zza = new zzhl();
    }
}

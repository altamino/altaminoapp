package com.google.android.gms.internal.auth;

import com.google.common.base.c;

/* JADX INFO: loaded from: classes9.dex */
final class zzhl extends zzhk {
    zzhl() {
    }

    @Override // com.google.android.gms.internal.auth.zzhk
    final int zza(int i10, byte[] bArr, int i11, int i12) {
        while (i11 < i12 && bArr[i11] >= 0) {
            i11++;
        }
        if (i11 >= i12) {
            return 0;
        }
        while (i11 < i12) {
            int i13 = i11 + 1;
            byte b7 = bArr[i11];
            if (b7 < 0) {
                if (b7 < -32) {
                    if (i13 >= i12) {
                        return b7;
                    }
                    if (b7 >= -62) {
                        i11 += 2;
                        if (bArr[i13] > -65) {
                        }
                    }
                    return -1;
                }
                if (b7 >= -16) {
                    if (i13 >= i12 - 2) {
                        return zzhm.zza(bArr, i13, i12);
                    }
                    int i14 = i11 + 2;
                    byte b10 = bArr[i13];
                    if (b10 <= -65 && (((b7 << c.FS) + (b10 + 112)) >> 30) == 0) {
                        int i15 = i11 + 3;
                        if (bArr[i14] <= -65) {
                            i11 += 4;
                            if (bArr[i15] > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i13 >= i12 - 1) {
                    return zzhm.zza(bArr, i13, i12);
                }
                int i16 = i11 + 2;
                byte b11 = bArr[i13];
                if (b11 <= -65 && ((b7 != -32 || b11 >= -96) && (b7 != -19 || b11 < -96))) {
                    i11 += 3;
                    if (bArr[i16] > -65) {
                    }
                }
                return -1;
            }
            i11 = i13;
        }
        return 0;
    }
}

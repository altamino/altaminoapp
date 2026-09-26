package com.google.android.gms.internal.measurement;

import com.google.common.base.c;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
final class zzhi {
    static double zza(byte[] bArr, int i10) {
        return Double.longBitsToDouble(zzd(bArr, i10));
    }

    static float zzb(byte[] bArr, int i10) {
        return Float.intBitsToFloat(zzc(bArr, i10));
    }

    static int zzc(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int zzd(byte[] bArr, int i10, zzhl zzhlVar) {
        int i11 = i10 + 1;
        long j6 = bArr[i10];
        if (j6 >= 0) {
            zzhlVar.zzb = j6;
            return i11;
        }
        int i12 = i10 + 2;
        byte b7 = bArr[i11];
        long j10 = (j6 & 127) | (((long) (b7 & 127)) << 7);
        int i13 = 7;
        while (b7 < 0) {
            int i14 = i12 + 1;
            byte b10 = bArr[i12];
            i13 += 7;
            j10 |= ((long) (b10 & 127)) << i13;
            b7 = b10;
            i12 = i14;
        }
        zzhlVar.zzb = j10;
        return i12;
    }

    static int zza(byte[] bArr, int i10, zzhl zzhlVar) throws zzji {
        int iZzc = zzc(bArr, i10, zzhlVar);
        int i11 = zzhlVar.zza;
        if (i11 < 0) {
            throw zzji.zzf();
        }
        if (i11 > bArr.length - iZzc) {
            throw zzji.zzh();
        }
        if (i11 == 0) {
            zzhlVar.zzc = zzhm.zza;
            return iZzc;
        }
        zzhlVar.zzc = zzhm.zza(bArr, iZzc, i11);
        return iZzc + i11;
    }

    static int zzb(byte[] bArr, int i10, zzhl zzhlVar) throws zzji {
        int iZzc = zzc(bArr, i10, zzhlVar);
        int i11 = zzhlVar.zza;
        if (i11 < 0) {
            throw zzji.zzf();
        }
        if (i11 == 0) {
            zzhlVar.zzc = "";
            return iZzc;
        }
        zzhlVar.zzc = zzmh.zzb(bArr, iZzc, i11);
        return iZzc + i11;
    }

    static int zzc(byte[] bArr, int i10, zzhl zzhlVar) {
        int i11 = i10 + 1;
        byte b7 = bArr[i10];
        if (b7 < 0) {
            return zza(b7, bArr, i11, zzhlVar);
        }
        zzhlVar.zza = b7;
        return i11;
    }

    static long zzd(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    static int zza(zzlb zzlbVar, byte[] bArr, int i10, int i11, int i12, zzhl zzhlVar) throws IOException {
        Object objZza = zzlbVar.zza();
        int iZza = zza(objZza, zzlbVar, bArr, i10, i11, i12, zzhlVar);
        zzlbVar.zzc(objZza);
        zzhlVar.zzc = objZza;
        return iZza;
    }

    static int zza(zzlb zzlbVar, byte[] bArr, int i10, int i11, zzhl zzhlVar) throws IOException {
        Object objZza = zzlbVar.zza();
        int iZza = zza(objZza, zzlbVar, bArr, i10, i11, zzhlVar);
        zzlbVar.zzc(objZza);
        zzhlVar.zzc = objZza;
        return iZza;
    }

    static int zza(zzlb<?> zzlbVar, int i10, byte[] bArr, int i11, int i12, zzjf<?> zzjfVar, zzhl zzhlVar) throws IOException {
        int iZza = zza(zzlbVar, bArr, i11, i12, zzhlVar);
        zzjfVar.add(zzhlVar.zzc);
        while (iZza < i12) {
            int iZzc = zzc(bArr, iZza, zzhlVar);
            if (i10 != zzhlVar.zza) {
                break;
            }
            iZza = zza(zzlbVar, bArr, iZzc, i12, zzhlVar);
            zzjfVar.add(zzhlVar.zzc);
        }
        return iZza;
    }

    static int zza(byte[] bArr, int i10, zzjf<?> zzjfVar, zzhl zzhlVar) throws IOException {
        zzja zzjaVar = (zzja) zzjfVar;
        int iZzc = zzc(bArr, i10, zzhlVar);
        int i11 = zzhlVar.zza + iZzc;
        while (iZzc < i11) {
            iZzc = zzc(bArr, iZzc, zzhlVar);
            zzjaVar.zzd(zzhlVar.zza);
        }
        if (iZzc == i11) {
            return iZzc;
        }
        throw zzji.zzh();
    }

    static int zza(int i10, byte[] bArr, int i11, int i12, zzlz zzlzVar, zzhl zzhlVar) throws zzji {
        if ((i10 >>> 3) == 0) {
            throw zzji.zzc();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int iZzd = zzd(bArr, i11, zzhlVar);
            zzlzVar.zza(i10, Long.valueOf(zzhlVar.zzb));
            return iZzd;
        }
        if (i13 == 1) {
            zzlzVar.zza(i10, Long.valueOf(zzd(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int iZzc = zzc(bArr, i11, zzhlVar);
            int i14 = zzhlVar.zza;
            if (i14 >= 0) {
                if (i14 > bArr.length - iZzc) {
                    throw zzji.zzh();
                }
                if (i14 == 0) {
                    zzlzVar.zza(i10, zzhm.zza);
                } else {
                    zzlzVar.zza(i10, zzhm.zza(bArr, iZzc, i14));
                }
                return iZzc + i14;
            }
            throw zzji.zzf();
        }
        if (i13 != 3) {
            if (i13 == 5) {
                zzlzVar.zza(i10, Integer.valueOf(zzc(bArr, i11)));
                return i11 + 4;
            }
            throw zzji.zzc();
        }
        zzlz zzlzVarZzd = zzlz.zzd();
        int i15 = (i10 & (-8)) | 4;
        int i16 = 0;
        while (i11 < i12) {
            int iZzc2 = zzc(bArr, i11, zzhlVar);
            int i17 = zzhlVar.zza;
            i16 = i17;
            if (i17 == i15) {
                i11 = iZzc2;
                break;
            }
            int iZza = zza(i16, bArr, iZzc2, i12, zzlzVarZzd, zzhlVar);
            i16 = i17;
            i11 = iZza;
        }
        if (i11 <= i12 && i16 == i15) {
            zzlzVar.zza(i10, zzlzVarZzd);
            return i11;
        }
        throw zzji.zzg();
    }

    static int zza(int i10, byte[] bArr, int i11, zzhl zzhlVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b7 = bArr[i11];
        if (b7 >= 0) {
            zzhlVar.zza = i12 | (b7 << 7);
            return i13;
        }
        int i14 = i12 | ((b7 & 127) << 7);
        int i15 = i11 + 2;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            zzhlVar.zza = i14 | (b10 << c.SO);
            return i15;
        }
        int i16 = i14 | ((b10 & 127) << 14);
        int i17 = i11 + 3;
        byte b11 = bArr[i15];
        if (b11 >= 0) {
            zzhlVar.zza = i16 | (b11 << c.NAK);
            return i17;
        }
        int i18 = i16 | ((b11 & 127) << 21);
        int i19 = i11 + 4;
        byte b12 = bArr[i17];
        if (b12 >= 0) {
            zzhlVar.zza = i18 | (b12 << c.FS);
            return i19;
        }
        int i20 = i18 | ((b12 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzhlVar.zza = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int zza(int i10, byte[] bArr, int i11, int i12, zzjf<?> zzjfVar, zzhl zzhlVar) {
        zzja zzjaVar = (zzja) zzjfVar;
        int iZzc = zzc(bArr, i11, zzhlVar);
        zzjaVar.zzd(zzhlVar.zza);
        while (iZzc < i12) {
            int iZzc2 = zzc(bArr, iZzc, zzhlVar);
            if (i10 != zzhlVar.zza) {
                break;
            }
            iZzc = zzc(bArr, iZzc2, zzhlVar);
            zzjaVar.zzd(zzhlVar.zza);
        }
        return iZzc;
    }

    static int zza(Object obj, zzlb zzlbVar, byte[] bArr, int i10, int i11, int i12, zzhl zzhlVar) throws IOException {
        int iZza = ((zzkn) zzlbVar).zza(obj, bArr, i10, i11, i12, zzhlVar);
        zzhlVar.zzc = obj;
        return iZza;
    }

    static int zza(Object obj, zzlb zzlbVar, byte[] bArr, int i10, int i11, zzhl zzhlVar) throws IOException {
        int iZza = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iZza = zza(i12, bArr, iZza, zzhlVar);
            i12 = zzhlVar.zza;
        }
        int i13 = iZza;
        if (i12 >= 0 && i12 <= i11 - i13) {
            int i14 = i12 + i13;
            zzlbVar.zza(obj, bArr, i13, i14, zzhlVar);
            zzhlVar.zzc = obj;
            return i14;
        }
        throw zzji.zzh();
    }

    static int zza(int i10, byte[] bArr, int i11, int i12, zzhl zzhlVar) throws zzji {
        if ((i10 >>> 3) == 0) {
            throw zzji.zzc();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            return zzd(bArr, i11, zzhlVar);
        }
        if (i13 == 1) {
            return i11 + 8;
        }
        if (i13 == 2) {
            return zzc(bArr, i11, zzhlVar) + zzhlVar.zza;
        }
        if (i13 != 3) {
            if (i13 == 5) {
                return i11 + 4;
            }
            throw zzji.zzc();
        }
        int i14 = (i10 & (-8)) | 4;
        int i15 = 0;
        while (i11 < i12) {
            i11 = zzc(bArr, i11, zzhlVar);
            i15 = zzhlVar.zza;
            if (i15 == i14) {
                break;
            }
            i11 = zza(i15, bArr, i11, i12, zzhlVar);
        }
        if (i11 > i12 || i15 != i14) {
            throw zzji.zzg();
        }
        return i11;
    }
}

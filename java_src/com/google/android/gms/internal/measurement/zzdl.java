package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzdl {
    static int zza(byte[] bArr, int i, zzdm zzdmVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zza(b, bArr, i2, zzdmVar);
        }
        zzdmVar.zzabs = b;
        return i2;
    }

    static int zza(int i, byte[] bArr, int i2, zzdm zzdmVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzdmVar.zzabs = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & 127) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzdmVar.zzabs = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzdmVar.zzabs = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzdmVar.zzabs = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzdmVar.zzabs = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zzb(byte[] bArr, int i, zzdm zzdmVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzdmVar.zzabt = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & 127) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & 127) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        zzdmVar.zzabt = j2;
        return i3;
    }

    static int zza(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static long zzb(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    static double zzc(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzb(bArr, i));
    }

    static float zzd(byte[] bArr, int i) {
        return Float.intBitsToFloat(zza(bArr, i));
    }

    static int zzc(byte[] bArr, int i, zzdm zzdmVar) throws zzfh {
        int iZza = zza(bArr, i, zzdmVar);
        int i2 = zzdmVar.zzabs;
        if (i2 < 0) {
            throw zzfh.zzmv();
        }
        if (i2 == 0) {
            zzdmVar.zzabu = "";
            return iZza;
        }
        zzdmVar.zzabu = new String(bArr, iZza, i2, zzfb.UTF_8);
        return iZza + i2;
    }

    static int zzd(byte[] bArr, int i, zzdm zzdmVar) throws zzfh {
        int iZza = zza(bArr, i, zzdmVar);
        int i2 = zzdmVar.zzabs;
        if (i2 < 0) {
            throw zzfh.zzmv();
        }
        if (i2 == 0) {
            zzdmVar.zzabu = "";
            return iZza;
        }
        zzdmVar.zzabu = zzhy.zzh(bArr, iZza, i2);
        return iZza + i2;
    }

    static int zze(byte[] bArr, int i, zzdm zzdmVar) throws zzfh {
        int iZza = zza(bArr, i, zzdmVar);
        int i2 = zzdmVar.zzabs;
        if (i2 < 0) {
            throw zzfh.zzmv();
        }
        if (i2 > bArr.length - iZza) {
            throw zzfh.zzmu();
        }
        if (i2 == 0) {
            zzdmVar.zzabu = zzdp.zzaby;
            return iZza;
        }
        zzdmVar.zzabu = zzdp.zzb(bArr, iZza, i2);
        return iZza + i2;
    }

    static int zza(zzgy zzgyVar, byte[] bArr, int i, int i2, zzdm zzdmVar) throws IOException {
        int iZza = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZza = zza(i3, bArr, iZza, zzdmVar);
            i3 = zzdmVar.zzabs;
        }
        int i4 = iZza;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzfh.zzmu();
        }
        Object objNewInstance = zzgyVar.newInstance();
        int i5 = i3 + i4;
        zzgyVar.zza(objNewInstance, bArr, i4, i5, zzdmVar);
        zzgyVar.zzi(objNewInstance);
        zzdmVar.zzabu = objNewInstance;
        return i5;
    }

    static int zza(zzgy zzgyVar, byte[] bArr, int i, int i2, int i3, zzdm zzdmVar) throws IOException {
        zzgl zzglVar = (zzgl) zzgyVar;
        Object objNewInstance = zzglVar.newInstance();
        int iZza = zzglVar.zza((zzgl) objNewInstance, bArr, i, i2, i3, zzdmVar);
        zzglVar.zzi(objNewInstance);
        zzdmVar.zzabu = objNewInstance;
        return iZza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzfg<?> zzfgVar, zzdm zzdmVar) {
        zzfa zzfaVar = (zzfa) zzfgVar;
        int iZza = zza(bArr, i2, zzdmVar);
        zzfaVar.zzau(zzdmVar.zzabs);
        while (iZza < i3) {
            int iZza2 = zza(bArr, iZza, zzdmVar);
            if (i != zzdmVar.zzabs) {
                break;
            }
            iZza = zza(bArr, iZza2, zzdmVar);
            zzfaVar.zzau(zzdmVar.zzabs);
        }
        return iZza;
    }

    static int zza(byte[] bArr, int i, zzfg<?> zzfgVar, zzdm zzdmVar) throws IOException {
        zzfa zzfaVar = (zzfa) zzfgVar;
        int iZza = zza(bArr, i, zzdmVar);
        int i2 = zzdmVar.zzabs + iZza;
        while (iZza < i2) {
            iZza = zza(bArr, iZza, zzdmVar);
            zzfaVar.zzau(zzdmVar.zzabs);
        }
        if (iZza == i2) {
            return iZza;
        }
        throw zzfh.zzmu();
    }

    static int zza(zzgy<?> zzgyVar, int i, byte[] bArr, int i2, int i3, zzfg<?> zzfgVar, zzdm zzdmVar) throws IOException {
        int iZza = zza(zzgyVar, bArr, i2, i3, zzdmVar);
        zzfgVar.add(zzdmVar.zzabu);
        while (iZza < i3) {
            int iZza2 = zza(bArr, iZza, zzdmVar);
            if (i != zzdmVar.zzabs) {
                break;
            }
            iZza = zza(zzgyVar, bArr, iZza2, i3, zzdmVar);
            zzfgVar.add(zzdmVar.zzabu);
        }
        return iZza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzhr zzhrVar, zzdm zzdmVar) throws zzfh {
        if ((i >>> 3) == 0) {
            throw zzfh.zzmx();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzb = zzb(bArr, i2, zzdmVar);
            zzhrVar.zzb(i, Long.valueOf(zzdmVar.zzabt));
            return iZzb;
        }
        if (i4 == 1) {
            zzhrVar.zzb(i, Long.valueOf(zzb(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZza = zza(bArr, i2, zzdmVar);
            int i5 = zzdmVar.zzabs;
            if (i5 < 0) {
                throw zzfh.zzmv();
            }
            if (i5 > bArr.length - iZza) {
                throw zzfh.zzmu();
            }
            if (i5 == 0) {
                zzhrVar.zzb(i, zzdp.zzaby);
            } else {
                zzhrVar.zzb(i, zzdp.zzb(bArr, iZza, i5));
            }
            return iZza + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzhrVar.zzb(i, Integer.valueOf(zza(bArr, i2)));
                return i2 + 4;
            }
            throw zzfh.zzmx();
        }
        zzhr zzhrVarZzos = zzhr.zzos();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZza2 = zza(bArr, i2, zzdmVar);
            int i8 = zzdmVar.zzabs;
            i7 = i8;
            if (i8 == i6) {
                i2 = iZza2;
                break;
            }
            int iZza3 = zza(i7, bArr, iZza2, i3, zzhrVarZzos, zzdmVar);
            i7 = i8;
            i2 = iZza3;
        }
        if (i2 > i3 || i7 != i6) {
            throw zzfh.zznb();
        }
        zzhrVar.zzb(i, zzhrVarZzos);
        return i2;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzdm zzdmVar) throws zzfh {
        if ((i >>> 3) == 0) {
            throw zzfh.zzmx();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzb(bArr, i2, zzdmVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zza(bArr, i2, zzdmVar) + zzdmVar.zzabs;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzfh.zzmx();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zza(bArr, i2, zzdmVar);
            i6 = zzdmVar.zzabs;
            if (i6 == i5) {
                break;
            }
            i2 = zza(i6, bArr, i2, i3, zzdmVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzfh.zznb();
        }
        return i2;
    }
}

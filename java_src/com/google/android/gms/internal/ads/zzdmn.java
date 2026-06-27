package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzdmn {
    static int zza(byte[] bArr, int i, zzdmo zzdmoVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zza(b, bArr, i2, zzdmoVar);
        }
        zzdmoVar.zzhcl = b;
        return i2;
    }

    static int zza(int i, byte[] bArr, int i2, zzdmo zzdmoVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzdmoVar.zzhcl = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & 127) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzdmoVar.zzhcl = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzdmoVar.zzhcl = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzdmoVar.zzhcl = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzdmoVar.zzhcl = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zzb(byte[] bArr, int i, zzdmo zzdmoVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzdmoVar.zzhcm = j;
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
        zzdmoVar.zzhcm = j2;
        return i3;
    }

    static int zzf(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static long zzg(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    static double zzh(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzg(bArr, i));
    }

    static float zzi(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzf(bArr, i));
    }

    static int zzc(byte[] bArr, int i, zzdmo zzdmoVar) throws zzdok {
        int iZza = zza(bArr, i, zzdmoVar);
        int i2 = zzdmoVar.zzhcl;
        if (i2 < 0) {
            throw zzdok.zzaye();
        }
        if (i2 == 0) {
            zzdmoVar.zzhcn = "";
            return iZza;
        }
        zzdmoVar.zzhcn = new String(bArr, iZza, i2, zzdod.UTF_8);
        return iZza + i2;
    }

    static int zzd(byte[] bArr, int i, zzdmo zzdmoVar) throws zzdok {
        int iZza = zza(bArr, i, zzdmoVar);
        int i2 = zzdmoVar.zzhcl;
        if (i2 < 0) {
            throw zzdok.zzaye();
        }
        if (i2 == 0) {
            zzdmoVar.zzhcn = "";
            return iZza;
        }
        zzdmoVar.zzhcn = zzdrb.zzn(bArr, iZza, i2);
        return iZza + i2;
    }

    static int zze(byte[] bArr, int i, zzdmo zzdmoVar) throws zzdok {
        int iZza = zza(bArr, i, zzdmoVar);
        int i2 = zzdmoVar.zzhcl;
        if (i2 < 0) {
            throw zzdok.zzaye();
        }
        if (i2 > bArr.length - iZza) {
            throw zzdok.zzayd();
        }
        if (i2 == 0) {
            zzdmoVar.zzhcn = zzdmr.zzhcr;
            return iZza;
        }
        zzdmoVar.zzhcn = zzdmr.zzi(bArr, iZza, i2);
        return iZza + i2;
    }

    static int zza(zzdqb zzdqbVar, byte[] bArr, int i, int i2, zzdmo zzdmoVar) throws IOException {
        int iZza = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZza = zza(i3, bArr, iZza, zzdmoVar);
            i3 = zzdmoVar.zzhcl;
        }
        int i4 = iZza;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzdok.zzayd();
        }
        Object objNewInstance = zzdqbVar.newInstance();
        int i5 = i3 + i4;
        zzdqbVar.zza(objNewInstance, bArr, i4, i5, zzdmoVar);
        zzdqbVar.zzaa(objNewInstance);
        zzdmoVar.zzhcn = objNewInstance;
        return i5;
    }

    static int zza(zzdqb zzdqbVar, byte[] bArr, int i, int i2, int i3, zzdmo zzdmoVar) throws IOException {
        zzdpo zzdpoVar = (zzdpo) zzdqbVar;
        Object objNewInstance = zzdpoVar.newInstance();
        int iZza = zzdpoVar.zza((zzdpo) objNewInstance, bArr, i, i2, i3, zzdmoVar);
        zzdpoVar.zzaa(objNewInstance);
        zzdmoVar.zzhcn = objNewInstance;
        return iZza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzdoj<?> zzdojVar, zzdmo zzdmoVar) {
        zzdoc zzdocVar = (zzdoc) zzdojVar;
        int iZza = zza(bArr, i2, zzdmoVar);
        zzdocVar.zzgp(zzdmoVar.zzhcl);
        while (iZza < i3) {
            int iZza2 = zza(bArr, iZza, zzdmoVar);
            if (i != zzdmoVar.zzhcl) {
                break;
            }
            iZza = zza(bArr, iZza2, zzdmoVar);
            zzdocVar.zzgp(zzdmoVar.zzhcl);
        }
        return iZza;
    }

    static int zza(byte[] bArr, int i, zzdoj<?> zzdojVar, zzdmo zzdmoVar) throws IOException {
        zzdoc zzdocVar = (zzdoc) zzdojVar;
        int iZza = zza(bArr, i, zzdmoVar);
        int i2 = zzdmoVar.zzhcl + iZza;
        while (iZza < i2) {
            iZza = zza(bArr, iZza, zzdmoVar);
            zzdocVar.zzgp(zzdmoVar.zzhcl);
        }
        if (iZza == i2) {
            return iZza;
        }
        throw zzdok.zzayd();
    }

    static int zza(zzdqb<?> zzdqbVar, int i, byte[] bArr, int i2, int i3, zzdoj<?> zzdojVar, zzdmo zzdmoVar) throws IOException {
        int iZza = zza(zzdqbVar, bArr, i2, i3, zzdmoVar);
        zzdojVar.add(zzdmoVar.zzhcn);
        while (iZza < i3) {
            int iZza2 = zza(bArr, iZza, zzdmoVar);
            if (i != zzdmoVar.zzhcl) {
                break;
            }
            iZza = zza(zzdqbVar, bArr, iZza2, i3, zzdmoVar);
            zzdojVar.add(zzdmoVar.zzhcn);
        }
        return iZza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzdqu zzdquVar, zzdmo zzdmoVar) throws zzdok {
        if ((i >>> 3) == 0) {
            throw zzdok.zzayg();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzb = zzb(bArr, i2, zzdmoVar);
            zzdquVar.zzc(i, Long.valueOf(zzdmoVar.zzhcm));
            return iZzb;
        }
        if (i4 == 1) {
            zzdquVar.zzc(i, Long.valueOf(zzg(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZza = zza(bArr, i2, zzdmoVar);
            int i5 = zzdmoVar.zzhcl;
            if (i5 < 0) {
                throw zzdok.zzaye();
            }
            if (i5 > bArr.length - iZza) {
                throw zzdok.zzayd();
            }
            if (i5 == 0) {
                zzdquVar.zzc(i, zzdmr.zzhcr);
            } else {
                zzdquVar.zzc(i, zzdmr.zzi(bArr, iZza, i5));
            }
            return iZza + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzdquVar.zzc(i, Integer.valueOf(zzf(bArr, i2)));
                return i2 + 4;
            }
            throw zzdok.zzayg();
        }
        zzdqu zzdquVarZzbaa = zzdqu.zzbaa();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZza2 = zza(bArr, i2, zzdmoVar);
            int i8 = zzdmoVar.zzhcl;
            i7 = i8;
            if (i8 == i6) {
                i2 = iZza2;
                break;
            }
            int iZza3 = zza(i7, bArr, iZza2, i3, zzdquVarZzbaa, zzdmoVar);
            i7 = i8;
            i2 = iZza3;
        }
        if (i2 > i3 || i7 != i6) {
            throw zzdok.zzayj();
        }
        zzdquVar.zzc(i, zzdquVarZzbaa);
        return i2;
    }

    static int zza(int i, byte[] bArr, int i2, int i3, zzdmo zzdmoVar) throws zzdok {
        if ((i >>> 3) == 0) {
            throw zzdok.zzayg();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzb(bArr, i2, zzdmoVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zza(bArr, i2, zzdmoVar) + zzdmoVar.zzhcl;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzdok.zzayg();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zza(bArr, i2, zzdmoVar);
            i6 = zzdmoVar.zzhcl;
            if (i6 == i5) {
                break;
            }
            i2 = zza(i6, bArr, i2, i3, zzdmoVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzdok.zzayj();
        }
        return i2;
    }
}

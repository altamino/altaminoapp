package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public final class zzlz {
    private static final zzlz zza = new zzlz(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzlz() {
        this(0, new int[8], new Object[8], true);
    }

    public static zzlz zzc() {
        return zza;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzlz)) {
            return false;
        }
        zzlz zzlzVar = (zzlz) obj;
        int i10 = this.zzb;
        if (i10 == zzlzVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzlzVar.zzc;
            for (int i11 = 0; i11 < i10; i11++) {
                if (iArr[i11] == iArr2[i11]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzlzVar.zzd;
            int i12 = this.zzb;
            for (int i13 = 0; i13 < i12; i13++) {
                if (objArr[i13].equals(objArr2[i13])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int zza() {
        int iZzg;
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzb; i12++) {
            int i13 = this.zzc[i12];
            int i14 = i13 >>> 3;
            int i15 = i13 & 7;
            if (i15 == 0) {
                iZzg = zzig.zzg(i14, ((Long) this.zzd[i12]).longValue());
            } else if (i15 == 1) {
                iZzg = zzig.zzc(i14, ((Long) this.zzd[i12]).longValue());
            } else if (i15 == 2) {
                iZzg = zzig.zzc(i14, (zzhm) this.zzd[i12]);
            } else if (i15 == 3) {
                iZzg = (zzig.zzi(i14) << 1) + ((zzlz) this.zzd[i12]).zza();
            } else {
                if (i15 != 5) {
                    throw new IllegalStateException(zzji.zza());
                }
                iZzg = zzig.zzf(i14, ((Integer) this.zzd[i12]).intValue());
            }
            i11 += iZzg;
        }
        this.zze = i11;
        return i11;
    }

    public final int zzb() {
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int iZzd = 0;
        for (int i11 = 0; i11 < this.zzb; i11++) {
            iZzd += zzig.zzd(this.zzc[i11] >>> 3, (zzhm) this.zzd[i11]);
        }
        this.zze = iZzd;
        return iZzd;
    }

    public final void zze() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    private zzlz(int i10, int[] iArr, Object[] objArr, boolean z6) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z6;
    }

    static zzlz zzd() {
        return new zzlz();
    }

    private final void zzf() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final int hashCode() {
        int i10 = this.zzb;
        int i11 = (i10 + 527) * 31;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.zzd;
        int i15 = this.zzb;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public final void zzb(zzmw zzmwVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zzmwVar.zza() == zzmz.zza) {
            for (int i10 = 0; i10 < this.zzb; i10++) {
                zza(this.zzc[i10], this.zzd[i10], zzmwVar);
            }
            return;
        }
        for (int i11 = this.zzb - 1; i11 >= 0; i11--) {
            zza(this.zzc[i11], this.zzd[i11], zzmwVar);
        }
    }

    final zzlz zza(zzlz zzlzVar) {
        if (zzlzVar.equals(zza)) {
            return this;
        }
        zzf();
        int i10 = this.zzb + zzlzVar.zzb;
        zza(i10);
        System.arraycopy(zzlzVar.zzc, 0, this.zzc, this.zzb, zzlzVar.zzb);
        System.arraycopy(zzlzVar.zzd, 0, this.zzd, this.zzb, zzlzVar.zzb);
        this.zzb = i10;
        return this;
    }

    static zzlz zza(zzlz zzlzVar, zzlz zzlzVar2) {
        int i10 = zzlzVar.zzb + zzlzVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzlzVar.zzc, i10);
        System.arraycopy(zzlzVar2.zzc, 0, iArrCopyOf, zzlzVar.zzb, zzlzVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzlzVar.zzd, i10);
        System.arraycopy(zzlzVar2.zzd, 0, objArrCopyOf, zzlzVar.zzb, zzlzVar2.zzb);
        return new zzlz(i10, iArrCopyOf, objArrCopyOf, true);
    }

    private final void zza(int i10) {
        int[] iArr = this.zzc;
        if (i10 > iArr.length) {
            int i11 = this.zzb;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i10);
            this.zzd = Arrays.copyOf(this.zzd, i10);
        }
    }

    final void zza(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzko.zza(sb, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
        }
    }

    final void zza(int i10, Object obj) {
        zzf();
        zza(this.zzb + 1);
        int[] iArr = this.zzc;
        int i11 = this.zzb;
        iArr[i11] = i10;
        this.zzd[i11] = obj;
        this.zzb = i11 + 1;
    }

    final void zza(zzmw zzmwVar) throws IOException {
        if (zzmwVar.zza() == zzmz.zzb) {
            for (int i10 = this.zzb - 1; i10 >= 0; i10--) {
                zzmwVar.zza(this.zzc[i10] >>> 3, this.zzd[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzmwVar.zza(this.zzc[i11] >>> 3, this.zzd[i11]);
        }
    }

    private static void zza(int i10, Object obj, zzmw zzmwVar) throws IOException {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            zzmwVar.zzb(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 1) {
            zzmwVar.zza(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 2) {
            zzmwVar.zza(i11, (zzhm) obj);
            return;
        }
        if (i12 != 3) {
            if (i12 == 5) {
                zzmwVar.zzb(i11, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzji.zza());
        }
        if (zzmwVar.zza() == zzmz.zza) {
            zzmwVar.zzb(i11);
            ((zzlz) obj).zzb(zzmwVar);
            zzmwVar.zza(i11);
        } else {
            zzmwVar.zza(i11);
            ((zzlz) obj).zzb(zzmwVar);
            zzmwVar.zzb(i11);
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzdqu {
    private static final zzdqu zzhlf = new zzdqu(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzhci;
    private int zzhhe;
    private Object[] zzhjr;
    private int[] zzhlg;

    public static zzdqu zzazz() {
        return zzhlf;
    }

    static zzdqu zzbaa() {
        return new zzdqu();
    }

    static zzdqu zza(zzdqu zzdquVar, zzdqu zzdquVar2) {
        int i = zzdquVar.count + zzdquVar2.count;
        int[] iArrCopyOf = Arrays.copyOf(zzdquVar.zzhlg, i);
        System.arraycopy(zzdquVar2.zzhlg, 0, iArrCopyOf, zzdquVar.count, zzdquVar2.count);
        Object[] objArrCopyOf = Arrays.copyOf(zzdquVar.zzhjr, i);
        System.arraycopy(zzdquVar2.zzhjr, 0, objArrCopyOf, zzdquVar.count, zzdquVar2.count);
        return new zzdqu(i, iArrCopyOf, objArrCopyOf, true);
    }

    private zzdqu() {
        this(0, new int[8], new Object[8], true);
    }

    private zzdqu(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzhhe = -1;
        this.count = i;
        this.zzhlg = iArr;
        this.zzhjr = objArr;
        this.zzhci = z;
    }

    public final void zzavj() {
        this.zzhci = false;
    }

    final void zza(zzdro zzdroVar) throws IOException {
        if (zzdroVar.zzawy() == zzdob.zze.zzhhw) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzdroVar.zzb(this.zzhlg[i] >>> 3, this.zzhjr[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzdroVar.zzb(this.zzhlg[i2] >>> 3, this.zzhjr[i2]);
        }
    }

    public final void zzb(zzdro zzdroVar) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (zzdroVar.zzawy() == zzdob.zze.zzhhv) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzhlg[i], this.zzhjr[i], zzdroVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzhlg[i2], this.zzhjr[i2], zzdroVar);
        }
    }

    private static void zzb(int i, Object obj, zzdro zzdroVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzdroVar.zzp(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            zzdroVar.zzj(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            zzdroVar.zza(i2, (zzdmr) obj);
            return;
        }
        if (i3 != 3) {
            if (i3 == 5) {
                zzdroVar.zzaa(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzdok.zzayi());
        }
        if (zzdroVar.zzawy() == zzdob.zze.zzhhv) {
            zzdroVar.zzgm(i2);
            ((zzdqu) obj).zzb(zzdroVar);
            zzdroVar.zzgn(i2);
        } else {
            zzdroVar.zzgn(i2);
            ((zzdqu) obj).zzb(zzdroVar);
            zzdroVar.zzgm(i2);
        }
    }

    public final int zzbab() {
        int i = this.zzhhe;
        if (i != -1) {
            return i;
        }
        int iZzd = 0;
        for (int i2 = 0; i2 < this.count; i2++) {
            iZzd += zzdni.zzd(this.zzhlg[i2] >>> 3, (zzdmr) this.zzhjr[i2]);
        }
        this.zzhhe = iZzd;
        return iZzd;
    }

    public final int zzaxj() {
        int iZzl;
        int i = this.zzhhe;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            int i4 = this.zzhlg[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                iZzl = zzdni.zzl(i5, ((Long) this.zzhjr[i3]).longValue());
            } else if (i6 == 1) {
                iZzl = zzdni.zzn(i5, ((Long) this.zzhjr[i3]).longValue());
            } else if (i6 == 2) {
                iZzl = zzdni.zzc(i5, (zzdmr) this.zzhjr[i3]);
            } else if (i6 == 3) {
                iZzl = (zzdni.zzgd(i5) << 1) + ((zzdqu) this.zzhjr[i3]).zzaxj();
            } else if (i6 == 5) {
                iZzl = zzdni.zzae(i5, ((Integer) this.zzhjr[i3]).intValue());
            } else {
                throw new IllegalStateException(zzdok.zzayi());
            }
            i2 += iZzl;
        }
        this.zzhhe = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzdqu)) {
            return false;
        }
        zzdqu zzdquVar = (zzdqu) obj;
        int i = this.count;
        if (i == zzdquVar.count) {
            int[] iArr = this.zzhlg;
            int[] iArr2 = zzdquVar.zzhlg;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                }
                if (iArr[i2] != iArr2[i2]) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                Object[] objArr = this.zzhjr;
                Object[] objArr2 = zzdquVar.zzhjr;
                int i3 = this.count;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z2 = true;
                        break;
                    }
                    if (!objArr[i4].equals(objArr2[i4])) {
                        z2 = false;
                        break;
                    }
                    i4++;
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.count;
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzhlg;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i2 + i3) * 31;
        Object[] objArr = this.zzhjr;
        int i6 = this.count;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzdpn.zza(sb, i, String.valueOf(this.zzhlg[i2] >>> 3), this.zzhjr[i2]);
        }
    }

    final void zzc(int i, Object obj) {
        if (!this.zzhci) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.count;
        if (i2 == this.zzhlg.length) {
            int i3 = this.count + (i2 < 4 ? 8 : i2 >> 1);
            this.zzhlg = Arrays.copyOf(this.zzhlg, i3);
            this.zzhjr = Arrays.copyOf(this.zzhjr, i3);
        }
        int[] iArr = this.zzhlg;
        int i4 = this.count;
        iArr[i4] = i;
        this.zzhjr[i4] = obj;
        this.count = i4 + 1;
    }
}

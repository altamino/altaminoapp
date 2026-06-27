package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
final class zzgl<T> implements zzgy<T> {
    private static final int[] zzaiy = new int[0];
    private static final Unsafe zzaiz = zzhw.zzow();
    private final int[] zzaja;
    private final Object[] zzajb;
    private final int zzajc;
    private final int zzajd;
    private final zzgh zzaje;
    private final boolean zzajf;
    private final boolean zzajg;
    private final boolean zzajh;
    private final boolean zzaji;
    private final int[] zzajj;
    private final int zzajk;
    private final int zzajl;
    private final zzgp zzajm;
    private final zzfr zzajn;
    private final zzhq<?, ?> zzajo;
    private final zzen<?> zzajp;
    private final zzgc zzajq;

    private zzgl(int[] iArr, Object[] objArr, int i, int i2, zzgh zzghVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzgp zzgpVar, zzfr zzfrVar, zzhq<?, ?> zzhqVar, zzen<?> zzenVar, zzgc zzgcVar) {
        this.zzaja = iArr;
        this.zzajb = objArr;
        this.zzajc = i;
        this.zzajd = i2;
        this.zzajg = zzghVar instanceof zzez;
        this.zzajh = z;
        this.zzajf = zzenVar != null && zzenVar.zze(zzghVar);
        this.zzaji = false;
        this.zzajj = iArr2;
        this.zzajk = i3;
        this.zzajl = i4;
        this.zzajm = zzgpVar;
        this.zzajn = zzfrVar;
        this.zzajo = zzhqVar;
        this.zzajp = zzenVar;
        this.zzaje = zzghVar;
        this.zzajq = zzgcVar;
    }

    private static boolean zzbc(int i) {
        return (i & 536870912) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.android.gms.internal.measurement.zzgl<T> zza(java.lang.Class<T> r35, com.google.android.gms.internal.measurement.zzgf r36, com.google.android.gms.internal.measurement.zzgp r37, com.google.android.gms.internal.measurement.zzfr r38, com.google.android.gms.internal.measurement.zzhq<?, ?> r39, com.google.android.gms.internal.measurement.zzen<?> r40, com.google.android.gms.internal.measurement.zzgc r41) {
        /*
            Method dump skipped, instructions count: 1108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzgf, com.google.android.gms.internal.measurement.zzgp, com.google.android.gms.internal.measurement.zzfr, com.google.android.gms.internal.measurement.zzhq, com.google.android.gms.internal.measurement.zzen, com.google.android.gms.internal.measurement.zzgc):com.google.android.gms.internal.measurement.zzgl");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final T newInstance() {
        return (T) this.zzajm.newInstance(this.zzaje);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final int hashCode(T t) {
        int i;
        int iZzba;
        int length = this.zzaja.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzba2 = zzba(i3);
            int i4 = this.zzaja[i3];
            long j = 1048575 & iZzba2;
            int iHashCode = 37;
            switch ((iZzba2 & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    iZzba = zzfb.zzba(Double.doubleToLongBits(zzhw.zzo(t, j)));
                    i2 = i + iZzba;
                    break;
                case 1:
                    i = i2 * 53;
                    iZzba = Float.floatToIntBits(zzhw.zzn(t, j));
                    i2 = i + iZzba;
                    break;
                case 2:
                    i = i2 * 53;
                    iZzba = zzfb.zzba(zzhw.zzl(t, j));
                    i2 = i + iZzba;
                    break;
                case 3:
                    i = i2 * 53;
                    iZzba = zzfb.zzba(zzhw.zzl(t, j));
                    i2 = i + iZzba;
                    break;
                case 4:
                    i = i2 * 53;
                    iZzba = zzhw.zzk(t, j);
                    i2 = i + iZzba;
                    break;
                case 5:
                    i = i2 * 53;
                    iZzba = zzfb.zzba(zzhw.zzl(t, j));
                    i2 = i + iZzba;
                    break;
                case 6:
                    i = i2 * 53;
                    iZzba = zzhw.zzk(t, j);
                    i2 = i + iZzba;
                    break;
                case 7:
                    i = i2 * 53;
                    iZzba = zzfb.zzo(zzhw.zzm(t, j));
                    i2 = i + iZzba;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzba = ((String) zzhw.zzp(t, j)).hashCode();
                    i2 = i + iZzba;
                    break;
                case 9:
                    Object objZzp = zzhw.zzp(t, j);
                    if (objZzp != null) {
                        iHashCode = objZzp.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZzba = zzhw.zzp(t, j).hashCode();
                    i2 = i + iZzba;
                    break;
                case 11:
                    i = i2 * 53;
                    iZzba = zzhw.zzk(t, j);
                    i2 = i + iZzba;
                    break;
                case 12:
                    i = i2 * 53;
                    iZzba = zzhw.zzk(t, j);
                    i2 = i + iZzba;
                    break;
                case 13:
                    i = i2 * 53;
                    iZzba = zzhw.zzk(t, j);
                    i2 = i + iZzba;
                    break;
                case 14:
                    i = i2 * 53;
                    iZzba = zzfb.zzba(zzhw.zzl(t, j));
                    i2 = i + iZzba;
                    break;
                case 15:
                    i = i2 * 53;
                    iZzba = zzhw.zzk(t, j);
                    i2 = i + iZzba;
                    break;
                case 16:
                    i = i2 * 53;
                    iZzba = zzfb.zzba(zzhw.zzl(t, j));
                    i2 = i + iZzba;
                    break;
                case 17:
                    Object objZzp2 = zzhw.zzp(t, j);
                    if (objZzp2 != null) {
                        iHashCode = objZzp2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iZzba = zzhw.zzp(t, j).hashCode();
                    i2 = i + iZzba;
                    break;
                case 50:
                    i = i2 * 53;
                    iZzba = zzhw.zzp(t, j).hashCode();
                    i2 = i + iZzba;
                    break;
                case 51:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzfb.zzba(Double.doubleToLongBits(zzf(t, j)));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = Float.floatToIntBits(zzg(t, j));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzfb.zzba(zzi(t, j));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzfb.zzba(zzi(t, j));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzh(t, j);
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzfb.zzba(zzi(t, j));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzh(t, j);
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzfb.zzo(zzj(t, j));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = ((String) zzhw.zzp(t, j)).hashCode();
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzhw.zzp(t, j).hashCode();
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzhw.zzp(t, j).hashCode();
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzh(t, j);
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzh(t, j);
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzh(t, j);
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzfb.zzba(zzi(t, j));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzh(t, j);
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzfb.zzba(zzi(t, j));
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zza((zzgl<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzba = zzhw.zzp(t, j).hashCode();
                        i2 = i + iZzba;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzajo.zzw(t).hashCode();
        return this.zzajf ? (iHashCode2 * 53) + this.zzajp.zzg(t).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final void zzc(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzaja.length; i += 3) {
            int iZzba = zzba(i);
            long j = 1048575 & iZzba;
            int i2 = this.zzaja[i];
            switch ((iZzba & 267386880) >>> 20) {
                case 0:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza(t, j, zzhw.zzo(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza((Object) t, j, zzhw.zzn(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza((Object) t, j, zzhw.zzl(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza((Object) t, j, zzhw.zzl(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zzb(t, j, zzhw.zzk(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza((Object) t, j, zzhw.zzl(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zzb(t, j, zzhw.zzk(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza(t, j, zzhw.zzm(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza(t, j, zzhw.zzp(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza(t, j, zzhw.zzp(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zzb(t, j, zzhw.zzk(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zzb(t, j, zzhw.zzk(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zzb(t, j, zzhw.zzk(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza((Object) t, j, zzhw.zzl(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zzb(t, j, zzhw.zzk(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza((zzgl<T>) t2, i)) {
                        zzhw.zza((Object) t, j, zzhw.zzl(t2, j));
                        zzb((zzgl<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zza(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzajn.zza(t, t2, j);
                    break;
                case 50:
                    zzha.zza(this.zzajq, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zza((zzgl<T>) t2, i2, i)) {
                        zzhw.zza(t, j, zzhw.zzp(t2, j));
                        zzb((zzgl<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza((zzgl<T>) t2, i2, i)) {
                        zzhw.zza(t, j, zzhw.zzp(t2, j));
                        zzb((zzgl<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        if (this.zzajh) {
            return;
        }
        zzha.zza(this.zzajo, t, t2);
        if (this.zzajf) {
            zzha.zza(this.zzajp, t, t2);
        }
    }

    private final void zza(T t, T t2, int i) {
        long jZzba = zzba(i) & 1048575;
        if (zza((zzgl<T>) t2, i)) {
            Object objZzp = zzhw.zzp(t, jZzba);
            Object objZzp2 = zzhw.zzp(t2, jZzba);
            if (objZzp != null && objZzp2 != null) {
                zzhw.zza(t, jZzba, zzfb.zza(objZzp, objZzp2));
                zzb((zzgl<T>) t, i);
            } else if (objZzp2 != null) {
                zzhw.zza(t, jZzba, objZzp2);
                zzb((zzgl<T>) t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int iZzba = zzba(i);
        int i2 = this.zzaja[i];
        long j = iZzba & 1048575;
        if (zza((zzgl<T>) t2, i2, i)) {
            Object objZzp = zzhw.zzp(t, j);
            Object objZzp2 = zzhw.zzp(t2, j);
            if (objZzp != null && objZzp2 != null) {
                zzhw.zza(t, j, zzfb.zza(objZzp, objZzp2));
                zzb((zzgl<T>) t, i2, i);
            } else if (objZzp2 != null) {
                zzhw.zza(t, j, objZzp2);
                zzb((zzgl<T>) t, i2, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:421:0x090b A[PHI: r5
  0x090b: PHI (r5v4 int) = 
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v13 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v1 int)
  (r5v14 int)
  (r5v1 int)
 binds: [B:257:0x0548, B:461:0x09b9, B:458:0x09af, B:452:0x0993, B:449:0x0981, B:446:0x0972, B:443:0x0965, B:440:0x0958, B:436:0x094d, B:433:0x0942, B:430:0x0935, B:427:0x0928, B:424:0x0915, B:397:0x0821, B:391:0x0804, B:385:0x07e7, B:379:0x07ca, B:373:0x07ac, B:367:0x078e, B:361:0x0770, B:355:0x0752, B:349:0x0734, B:343:0x0716, B:337:0x06f8, B:331:0x06da, B:325:0x06bc, B:319:0x069e, B:314:0x066a, B:311:0x065d, B:308:0x064d, B:305:0x063d, B:302:0x062d, B:299:0x061f, B:296:0x0612, B:293:0x0606, B:287:0x05e8, B:284:0x05d4, B:281:0x05c2, B:278:0x05b2, B:275:0x05a2, B:438:0x0954, B:272:0x0595, B:269:0x0587, B:266:0x0577, B:263:0x0567, B:420:0x090a, B:260:0x0551] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzs(T r20) {
        /*
            Method dump skipped, instructions count: 2906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zzs(java.lang.Object):int");
    }

    private static <UT, UB> int zza(zzhq<UT, UB> zzhqVar, T t) {
        return zzhqVar.zzs(zzhqVar.zzw(t));
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zzhw.zzp(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x0546  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r14, com.google.android.gms.internal.measurement.zzil r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzil):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r19, com.google.android.gms.internal.measurement.zzil r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zzb(java.lang.Object, com.google.android.gms.internal.measurement.zzil):void");
    }

    private final <K, V> void zza(zzil zzilVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzilVar.zza(i, this.zzajq.zzr(zzay(i2)), this.zzajq.zzn(obj));
        }
    }

    private static <UT, UB> void zza(zzhq<UT, UB> zzhqVar, T t, zzil zzilVar) throws IOException {
        zzhqVar.zza((zzhq<UT, UB>) zzhqVar.zzw(t), zzilVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05cb A[LOOP:5: B:163:0x05c7->B:165:0x05cb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x05d8  */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r13, com.google.android.gms.internal.measurement.zzgx r14, com.google.android.gms.internal.measurement.zzem r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzgx, com.google.android.gms.internal.measurement.zzem):void");
    }

    private static zzhr zzt(Object obj) {
        zzez zzezVar = (zzez) obj;
        zzhr zzhrVar = zzezVar.zzagn;
        if (zzhrVar != zzhr.zzor()) {
            return zzhrVar;
        }
        zzhr zzhrVarZzos = zzhr.zzos();
        zzezVar.zzagn = zzhrVarZzos;
        return zzhrVarZzos;
    }

    private static int zza(byte[] bArr, int i, int i2, zzif zzifVar, Class<?> cls, zzdm zzdmVar) throws IOException {
        switch (zzgm.zzacu[zzifVar.ordinal()]) {
            case 1:
                int iZzb = zzdl.zzb(bArr, i, zzdmVar);
                zzdmVar.zzabu = Boolean.valueOf(zzdmVar.zzabt != 0);
                return iZzb;
            case 2:
                return zzdl.zze(bArr, i, zzdmVar);
            case 3:
                zzdmVar.zzabu = Double.valueOf(zzdl.zzc(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zzdmVar.zzabu = Integer.valueOf(zzdl.zza(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zzdmVar.zzabu = Long.valueOf(zzdl.zzb(bArr, i));
                return i + 8;
            case 8:
                zzdmVar.zzabu = Float.valueOf(zzdl.zzd(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iZza = zzdl.zza(bArr, i, zzdmVar);
                zzdmVar.zzabu = Integer.valueOf(zzdmVar.zzabs);
                return iZza;
            case 12:
            case 13:
                int iZzb2 = zzdl.zzb(bArr, i, zzdmVar);
                zzdmVar.zzabu = Long.valueOf(zzdmVar.zzabt);
                return iZzb2;
            case 14:
                return zzdl.zza(zzgu.zznz().zzf(cls), bArr, i, i2, zzdmVar);
            case 15:
                int iZza2 = zzdl.zza(bArr, i, zzdmVar);
                zzdmVar.zzabu = Integer.valueOf(zzeb.zzaa(zzdmVar.zzabs));
                return iZza2;
            case 16:
                int iZzb3 = zzdl.zzb(bArr, i, zzdmVar);
                zzdmVar.zzabu = Long.valueOf(zzeb.zzap(zzdmVar.zzabt));
                return iZzb3;
            case 17:
                return zzdl.zzd(bArr, i, zzdmVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzdm zzdmVar) throws IOException {
        int iZza;
        int iZza2 = i;
        zzfg zzfgVarZzq = (zzfg) zzaiz.getObject(t, j2);
        if (!zzfgVarZzq.zzjy()) {
            int size = zzfgVarZzq.size();
            zzfgVarZzq = zzfgVarZzq.zzq(size == 0 ? 10 : size << 1);
            zzaiz.putObject(t, j2, zzfgVarZzq);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzej zzejVar = (zzej) zzfgVarZzq;
                    int iZza3 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i8 = zzdmVar.zzabs + iZza3;
                    while (iZza3 < i8) {
                        zzejVar.zzf(zzdl.zzc(bArr, iZza3));
                        iZza3 += 8;
                    }
                    if (iZza3 == i8) {
                        return iZza3;
                    }
                    throw zzfh.zzmu();
                }
                if (i5 == 1) {
                    zzej zzejVar2 = (zzej) zzfgVarZzq;
                    zzejVar2.zzf(zzdl.zzc(bArr, i));
                    while (true) {
                        int i9 = iZza2 + 8;
                        if (i9 >= i2) {
                            return i9;
                        }
                        iZza2 = zzdl.zza(bArr, i9, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return i9;
                        }
                        zzejVar2.zzf(zzdl.zzc(bArr, iZza2));
                    }
                }
                return iZza2;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzew zzewVar = (zzew) zzfgVarZzq;
                    int iZza4 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i10 = zzdmVar.zzabs + iZza4;
                    while (iZza4 < i10) {
                        zzewVar.zzc(zzdl.zzd(bArr, iZza4));
                        iZza4 += 4;
                    }
                    if (iZza4 == i10) {
                        return iZza4;
                    }
                    throw zzfh.zzmu();
                }
                if (i5 == 5) {
                    zzew zzewVar2 = (zzew) zzfgVarZzq;
                    zzewVar2.zzc(zzdl.zzd(bArr, i));
                    while (true) {
                        int i11 = iZza2 + 4;
                        if (i11 >= i2) {
                            return i11;
                        }
                        iZza2 = zzdl.zza(bArr, i11, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return i11;
                        }
                        zzewVar2.zzc(zzdl.zzd(bArr, iZza2));
                    }
                }
                return iZza2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzfv zzfvVar = (zzfv) zzfgVarZzq;
                    int iZza5 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i12 = zzdmVar.zzabs + iZza5;
                    while (iZza5 < i12) {
                        iZza5 = zzdl.zzb(bArr, iZza5, zzdmVar);
                        zzfvVar.zzbb(zzdmVar.zzabt);
                    }
                    if (iZza5 == i12) {
                        return iZza5;
                    }
                    throw zzfh.zzmu();
                }
                if (i5 == 0) {
                    zzfv zzfvVar2 = (zzfv) zzfgVarZzq;
                    int iZzb = zzdl.zzb(bArr, iZza2, zzdmVar);
                    zzfvVar2.zzbb(zzdmVar.zzabt);
                    while (iZzb < i2) {
                        int iZza6 = zzdl.zza(bArr, iZzb, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return iZzb;
                        }
                        iZzb = zzdl.zzb(bArr, iZza6, zzdmVar);
                        zzfvVar2.zzbb(zzdmVar.zzabt);
                    }
                    return iZzb;
                }
                return iZza2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzdl.zza(bArr, iZza2, (zzfg<?>) zzfgVarZzq, zzdmVar);
                }
                if (i5 == 0) {
                    return zzdl.zza(i3, bArr, i, i2, (zzfg<?>) zzfgVarZzq, zzdmVar);
                }
                return iZza2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzfv zzfvVar3 = (zzfv) zzfgVarZzq;
                    int iZza7 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i13 = zzdmVar.zzabs + iZza7;
                    while (iZza7 < i13) {
                        zzfvVar3.zzbb(zzdl.zzb(bArr, iZza7));
                        iZza7 += 8;
                    }
                    if (iZza7 == i13) {
                        return iZza7;
                    }
                    throw zzfh.zzmu();
                }
                if (i5 == 1) {
                    zzfv zzfvVar4 = (zzfv) zzfgVarZzq;
                    zzfvVar4.zzbb(zzdl.zzb(bArr, i));
                    while (true) {
                        int i14 = iZza2 + 8;
                        if (i14 >= i2) {
                            return i14;
                        }
                        iZza2 = zzdl.zza(bArr, i14, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return i14;
                        }
                        zzfvVar4.zzbb(zzdl.zzb(bArr, iZza2));
                    }
                }
                return iZza2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzfa zzfaVar = (zzfa) zzfgVarZzq;
                    int iZza8 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i15 = zzdmVar.zzabs + iZza8;
                    while (iZza8 < i15) {
                        zzfaVar.zzau(zzdl.zza(bArr, iZza8));
                        iZza8 += 4;
                    }
                    if (iZza8 == i15) {
                        return iZza8;
                    }
                    throw zzfh.zzmu();
                }
                if (i5 == 5) {
                    zzfa zzfaVar2 = (zzfa) zzfgVarZzq;
                    zzfaVar2.zzau(zzdl.zza(bArr, i));
                    while (true) {
                        int i16 = iZza2 + 4;
                        if (i16 >= i2) {
                            return i16;
                        }
                        iZza2 = zzdl.zza(bArr, i16, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return i16;
                        }
                        zzfaVar2.zzau(zzdl.zza(bArr, iZza2));
                    }
                }
                return iZza2;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzdn zzdnVar = (zzdn) zzfgVarZzq;
                    iZza = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i17 = zzdmVar.zzabs + iZza;
                    while (iZza < i17) {
                        iZza = zzdl.zzb(bArr, iZza, zzdmVar);
                        zzdnVar.addBoolean(zzdmVar.zzabt != 0);
                    }
                    if (iZza != i17) {
                        throw zzfh.zzmu();
                    }
                    return iZza;
                }
                if (i5 == 0) {
                    zzdn zzdnVar2 = (zzdn) zzfgVarZzq;
                    iZza2 = zzdl.zzb(bArr, iZza2, zzdmVar);
                    zzdnVar2.addBoolean(zzdmVar.zzabt != 0);
                    while (iZza2 < i2) {
                        int iZza9 = zzdl.zza(bArr, iZza2, zzdmVar);
                        if (i3 == zzdmVar.zzabs) {
                            iZza2 = zzdl.zzb(bArr, iZza9, zzdmVar);
                            zzdnVar2.addBoolean(zzdmVar.zzabt != 0);
                        }
                    }
                }
                return iZza2;
            case 26:
                if (i5 == 2) {
                    if ((j & IjkMediaMeta.AV_CH_STEREO_LEFT) == 0) {
                        iZza2 = zzdl.zza(bArr, iZza2, zzdmVar);
                        int i18 = zzdmVar.zzabs;
                        if (i18 < 0) {
                            throw zzfh.zzmv();
                        }
                        if (i18 == 0) {
                            zzfgVarZzq.add("");
                        } else {
                            zzfgVarZzq.add(new String(bArr, iZza2, i18, zzfb.UTF_8));
                            iZza2 += i18;
                        }
                        while (iZza2 < i2) {
                            int iZza10 = zzdl.zza(bArr, iZza2, zzdmVar);
                            if (i3 == zzdmVar.zzabs) {
                                iZza2 = zzdl.zza(bArr, iZza10, zzdmVar);
                                int i19 = zzdmVar.zzabs;
                                if (i19 < 0) {
                                    throw zzfh.zzmv();
                                }
                                if (i19 == 0) {
                                    zzfgVarZzq.add("");
                                } else {
                                    zzfgVarZzq.add(new String(bArr, iZza2, i19, zzfb.UTF_8));
                                    iZza2 += i19;
                                }
                            }
                        }
                    } else {
                        iZza2 = zzdl.zza(bArr, iZza2, zzdmVar);
                        int i20 = zzdmVar.zzabs;
                        if (i20 < 0) {
                            throw zzfh.zzmv();
                        }
                        if (i20 == 0) {
                            zzfgVarZzq.add("");
                        } else {
                            int i21 = iZza2 + i20;
                            if (!zzhy.zzf(bArr, iZza2, i21)) {
                                throw zzfh.zznc();
                            }
                            zzfgVarZzq.add(new String(bArr, iZza2, i20, zzfb.UTF_8));
                            iZza2 = i21;
                        }
                        while (iZza2 < i2) {
                            int iZza11 = zzdl.zza(bArr, iZza2, zzdmVar);
                            if (i3 == zzdmVar.zzabs) {
                                iZza2 = zzdl.zza(bArr, iZza11, zzdmVar);
                                int i22 = zzdmVar.zzabs;
                                if (i22 < 0) {
                                    throw zzfh.zzmv();
                                }
                                if (i22 == 0) {
                                    zzfgVarZzq.add("");
                                } else {
                                    int i23 = iZza2 + i22;
                                    if (!zzhy.zzf(bArr, iZza2, i23)) {
                                        throw zzfh.zznc();
                                    }
                                    zzfgVarZzq.add(new String(bArr, iZza2, i22, zzfb.UTF_8));
                                    iZza2 = i23;
                                }
                            }
                        }
                    }
                }
                return iZza2;
            case 27:
                if (i5 == 2) {
                    return zzdl.zza(zzax(i6), i3, bArr, i, i2, zzfgVarZzq, zzdmVar);
                }
                return iZza2;
            case 28:
                if (i5 == 2) {
                    int iZza12 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i24 = zzdmVar.zzabs;
                    if (i24 < 0) {
                        throw zzfh.zzmv();
                    }
                    if (i24 > bArr.length - iZza12) {
                        throw zzfh.zzmu();
                    }
                    if (i24 == 0) {
                        zzfgVarZzq.add(zzdp.zzaby);
                    } else {
                        zzfgVarZzq.add(zzdp.zzb(bArr, iZza12, i24));
                        iZza12 += i24;
                    }
                    while (iZza12 < i2) {
                        int iZza13 = zzdl.zza(bArr, iZza12, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return iZza12;
                        }
                        iZza12 = zzdl.zza(bArr, iZza13, zzdmVar);
                        int i25 = zzdmVar.zzabs;
                        if (i25 < 0) {
                            throw zzfh.zzmv();
                        }
                        if (i25 > bArr.length - iZza12) {
                            throw zzfh.zzmu();
                        }
                        if (i25 == 0) {
                            zzfgVarZzq.add(zzdp.zzaby);
                        } else {
                            zzfgVarZzq.add(zzdp.zzb(bArr, iZza12, i25));
                            iZza12 += i25;
                        }
                    }
                    return iZza12;
                }
                return iZza2;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iZza = zzdl.zza(i3, bArr, i, i2, (zzfg<?>) zzfgVarZzq, zzdmVar);
                    }
                    return iZza2;
                }
                iZza = zzdl.zza(bArr, iZza2, (zzfg<?>) zzfgVarZzq, zzdmVar);
                zzez zzezVar = (zzez) t;
                zzhr zzhrVar = zzezVar.zzagn;
                if (zzhrVar == zzhr.zzor()) {
                    zzhrVar = null;
                }
                zzhr zzhrVar2 = (zzhr) zzha.zza(i4, zzfgVarZzq, zzaz(i6), zzhrVar, this.zzajo);
                if (zzhrVar2 != null) {
                    zzezVar.zzagn = zzhrVar2;
                }
                return iZza;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzfa zzfaVar3 = (zzfa) zzfgVarZzq;
                    int iZza14 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i26 = zzdmVar.zzabs + iZza14;
                    while (iZza14 < i26) {
                        iZza14 = zzdl.zza(bArr, iZza14, zzdmVar);
                        zzfaVar3.zzau(zzeb.zzaa(zzdmVar.zzabs));
                    }
                    if (iZza14 == i26) {
                        return iZza14;
                    }
                    throw zzfh.zzmu();
                }
                if (i5 == 0) {
                    zzfa zzfaVar4 = (zzfa) zzfgVarZzq;
                    int iZza15 = zzdl.zza(bArr, iZza2, zzdmVar);
                    zzfaVar4.zzau(zzeb.zzaa(zzdmVar.zzabs));
                    while (iZza15 < i2) {
                        int iZza16 = zzdl.zza(bArr, iZza15, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return iZza15;
                        }
                        iZza15 = zzdl.zza(bArr, iZza16, zzdmVar);
                        zzfaVar4.zzau(zzeb.zzaa(zzdmVar.zzabs));
                    }
                    return iZza15;
                }
                return iZza2;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzfv zzfvVar5 = (zzfv) zzfgVarZzq;
                    int iZza17 = zzdl.zza(bArr, iZza2, zzdmVar);
                    int i27 = zzdmVar.zzabs + iZza17;
                    while (iZza17 < i27) {
                        iZza17 = zzdl.zzb(bArr, iZza17, zzdmVar);
                        zzfvVar5.zzbb(zzeb.zzap(zzdmVar.zzabt));
                    }
                    if (iZza17 == i27) {
                        return iZza17;
                    }
                    throw zzfh.zzmu();
                }
                if (i5 == 0) {
                    zzfv zzfvVar6 = (zzfv) zzfgVarZzq;
                    int iZzb2 = zzdl.zzb(bArr, iZza2, zzdmVar);
                    zzfvVar6.zzbb(zzeb.zzap(zzdmVar.zzabt));
                    while (iZzb2 < i2) {
                        int iZza18 = zzdl.zza(bArr, iZzb2, zzdmVar);
                        if (i3 != zzdmVar.zzabs) {
                            return iZzb2;
                        }
                        iZzb2 = zzdl.zzb(bArr, iZza18, zzdmVar);
                        zzfvVar6.zzbb(zzeb.zzap(zzdmVar.zzabt));
                    }
                    return iZzb2;
                }
                return iZza2;
            case 49:
                if (i5 == 3) {
                    zzgy zzgyVarZzax = zzax(i6);
                    int i28 = (i3 & (-8)) | 4;
                    iZza2 = zzdl.zza(zzgyVarZzax, bArr, i, i2, i28, zzdmVar);
                    zzfgVarZzq.add(zzdmVar.zzabu);
                    while (iZza2 < i2) {
                        int iZza19 = zzdl.zza(bArr, iZza2, zzdmVar);
                        if (i3 == zzdmVar.zzabs) {
                            iZza2 = zzdl.zza(zzgyVarZzax, bArr, iZza19, i2, i28, zzdmVar);
                            zzfgVarZzq.add(zzdmVar.zzabu);
                        }
                    }
                }
                return iZza2;
            default:
                return iZza2;
        }
    }

    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzdm zzdmVar) throws IOException {
        Unsafe unsafe = zzaiz;
        Object objZzay = zzay(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzajq.zzo(object)) {
            Object objZzq = this.zzajq.zzq(objZzay);
            this.zzajq.zzb(objZzq, object);
            unsafe.putObject(t, j, objZzq);
            object = objZzq;
        }
        zzga<?, ?> zzgaVarZzr = this.zzajq.zzr(objZzay);
        Map<?, ?> mapZzm = this.zzajq.zzm(object);
        int iZza = zzdl.zza(bArr, i, zzdmVar);
        int i4 = zzdmVar.zzabs;
        if (i4 < 0 || i4 > i2 - iZza) {
            throw zzfh.zzmu();
        }
        int i5 = i4 + iZza;
        K k = zzgaVarZzr.zzait;
        V v = zzgaVarZzr.zzzw;
        while (iZza < i5) {
            int iZza2 = iZza + 1;
            int i6 = bArr[iZza];
            if (i6 < 0) {
                iZza2 = zzdl.zza(i6, bArr, iZza2, zzdmVar);
                i6 = zzdmVar.zzabs;
            }
            int i7 = iZza2;
            int i8 = i6 >>> 3;
            int i9 = i6 & 7;
            if (i8 == 1) {
                if (i9 == zzgaVarZzr.zzais.zzpc()) {
                    iZza = zza(bArr, i7, i2, zzgaVarZzr.zzais, (Class<?>) null, zzdmVar);
                    k = (K) zzdmVar.zzabu;
                } else {
                    iZza = zzdl.zza(i6, bArr, i7, i2, zzdmVar);
                }
            } else if (i8 == 2 && i9 == zzgaVarZzr.zzaiu.zzpc()) {
                iZza = zza(bArr, i7, i2, zzgaVarZzr.zzaiu, zzgaVarZzr.zzzw.getClass(), zzdmVar);
                v = zzdmVar.zzabu;
            } else {
                iZza = zzdl.zza(i6, bArr, i7, i2, zzdmVar);
            }
        }
        if (iZza != i5) {
            throw zzfh.zznb();
        }
        mapZzm.put(k, v);
        return i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzdm zzdmVar) throws IOException {
        int iZzb;
        Unsafe unsafe = zzaiz;
        long j2 = this.zzaja[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzdl.zzc(bArr, i)));
                    iZzb = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzdl.zzd(bArr, i)));
                    iZzb = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    iZzb = zzdl.zzb(bArr, i, zzdmVar);
                    unsafe.putObject(t, j, Long.valueOf(zzdmVar.zzabt));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    iZzb = zzdl.zza(bArr, i, zzdmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzdmVar.zzabs));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzdl.zzb(bArr, i)));
                    iZzb = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzdl.zza(bArr, i)));
                    iZzb = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    iZzb = zzdl.zzb(bArr, i, zzdmVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzdmVar.zzabt != 0));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int iZza = zzdl.zza(bArr, i, zzdmVar);
                    int i9 = zzdmVar.zzabs;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !zzhy.zzf(bArr, iZza, iZza + i9)) {
                            throw zzfh.zznc();
                        }
                        unsafe.putObject(t, j, new String(bArr, iZza, i9, zzfb.UTF_8));
                        iZza += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZza;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int iZza2 = zzdl.zza(zzax(i8), bArr, i, i2, zzdmVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzdmVar.zzabu);
                    } else {
                        unsafe.putObject(t, j, zzfb.zza(object, zzdmVar.zzabu));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZza2;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    iZzb = zzdl.zze(bArr, i, zzdmVar);
                    unsafe.putObject(t, j, zzdmVar.zzabu);
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int iZza3 = zzdl.zza(bArr, i, zzdmVar);
                    int i10 = zzdmVar.zzabs;
                    zzfe zzfeVarZzaz = zzaz(i8);
                    if (zzfeVarZzaz == null || zzfeVarZzaz.zzf(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        iZzb = iZza3;
                        unsafe.putInt(t, j2, i4);
                        return iZzb;
                    }
                    zzt(t).zzb(i3, Long.valueOf(i10));
                    return iZza3;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    iZzb = zzdl.zza(bArr, i, zzdmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzeb.zzaa(zzdmVar.zzabs)));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    iZzb = zzdl.zzb(bArr, i, zzdmVar);
                    unsafe.putObject(t, j, Long.valueOf(zzeb.zzap(zzdmVar.zzabt)));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    iZzb = zzdl.zza(zzax(i8), bArr, i, i2, (i3 & (-8)) | 4, zzdmVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzdmVar.zzabu);
                    } else {
                        unsafe.putObject(t, j, zzfb.zza(object2, zzdmVar.zzabu));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            default:
                return i;
        }
    }

    private final zzgy zzax(int i) {
        int i2 = (i / 3) << 1;
        zzgy zzgyVar = (zzgy) this.zzajb[i2];
        if (zzgyVar != null) {
            return zzgyVar;
        }
        zzgy<T> zzgyVarZzf = zzgu.zznz().zzf((Class) this.zzajb[i2 + 1]);
        this.zzajb[i2] = zzgyVarZzf;
        return zzgyVarZzf;
    }

    private final Object zzay(int i) {
        return this.zzajb[(i / 3) << 1];
    }

    private final zzfe zzaz(int i) {
        return (zzfe) this.zzajb[((i / 3) << 1) + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x048d, code lost:
    
        if (r0 == r4) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x048f, code lost:
    
        r26.putInt(r11, r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0495, code lost:
    
        r0 = null;
        r1 = r8.zzajk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x049a, code lost:
    
        if (r1 >= r8.zzajl) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x049c, code lost:
    
        r0 = (com.google.android.gms.internal.measurement.zzhr) r8.zza(r11, r8.zzajj[r1], (int) r0, (com.google.android.gms.internal.measurement.zzhq<UT, int>) r8.zzajo);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x04ab, code lost:
    
        if (r0 == null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x04ad, code lost:
    
        r8.zzajo.zzf(r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x04b2, code lost:
    
        if (r6 != 0) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04b6, code lost:
    
        if (r2 != r33) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x04bd, code lost:
    
        throw com.google.android.gms.internal.measurement.zzfh.zznb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x04c0, code lost:
    
        if (r2 > r33) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x04c2, code lost:
    
        if (r3 != r6) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x04c4, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04ca, code lost:
    
        throw com.google.android.gms.internal.measurement.zzfh.zznb();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zza(T r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.measurement.zzdm r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzdm):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x022e, code lost:
    
        if (r0 == r15) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0230, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01e2, code lost:
    
        if (r0 == r15) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x020f, code lost:
    
        if (r0 == r15) goto L104;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0061. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [int] */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.measurement.zzdm r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzdm):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final void zzi(T t) {
        int i;
        int i2 = this.zzajk;
        while (true) {
            i = this.zzajl;
            if (i2 >= i) {
                break;
            }
            long jZzba = zzba(this.zzajj[i2]) & 1048575;
            Object objZzp = zzhw.zzp(t, jZzba);
            if (objZzp != null) {
                zzhw.zza(t, jZzba, this.zzajq.zzp(objZzp));
            }
            i2++;
        }
        int length = this.zzajj.length;
        while (i < length) {
            this.zzajn.zzb(t, this.zzajj[i]);
            i++;
        }
        this.zzajo.zzi(t);
        if (this.zzajf) {
            this.zzajp.zzi(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzhq<UT, UB> zzhqVar) {
        zzfe zzfeVarZzaz;
        int i2 = this.zzaja[i];
        Object objZzp = zzhw.zzp(obj, zzba(i) & 1048575);
        return (objZzp == null || (zzfeVarZzaz = zzaz(i)) == null) ? ub : (UB) zza(i, i2, this.zzajq.zzm(objZzp), zzfeVarZzaz, (zzfe) ub, (zzhq<UT, zzfe>) zzhqVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzfe zzfeVar, UB ub, zzhq<UT, UB> zzhqVar) {
        zzga<?, ?> zzgaVarZzr = this.zzajq.zzr(zzay(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzfeVar.zzf(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzhqVar.zzoq();
                }
                zzdx zzdxVarZzt = zzdp.zzt(zzfz.zza(zzgaVarZzr, next.getKey(), next.getValue()));
                try {
                    zzfz.zza(zzdxVarZzt.zzki(), zzgaVarZzr, next.getKey(), next.getValue());
                    zzhqVar.zza((zzhq<UT, UB>) ub, i2, zzdxVarZzt.zzkh());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.measurement.zzgy] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.measurement.zzgy] */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzu(T r14) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgl.zzu(java.lang.Object):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzgy zzgyVar) {
        return zzgyVar.zzu(zzhw.zzp(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzil zzilVar) throws IOException {
        if (obj instanceof String) {
            zzilVar.zzb(i, (String) obj);
        } else {
            zzilVar.zza(i, (zzdp) obj);
        }
    }

    private final void zza(Object obj, int i, zzgx zzgxVar) throws IOException {
        if (zzbc(i)) {
            zzhw.zza(obj, i & 1048575, zzgxVar.zzkq());
        } else if (this.zzajg) {
            zzhw.zza(obj, i & 1048575, zzgxVar.readString());
        } else {
            zzhw.zza(obj, i & 1048575, zzgxVar.zzkr());
        }
    }

    private final int zzba(int i) {
        return this.zzaja[i + 1];
    }

    private final int zzbb(int i) {
        return this.zzaja[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzhw.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzhw.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzhw.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzhw.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzhw.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzgl<T>) t, i) == zza((zzgl<T>) t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzajh) {
            return zza((zzgl<T>) t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zza(T t, int i) {
        if (this.zzajh) {
            int iZzba = zzba(i);
            long j = iZzba & 1048575;
            switch ((iZzba & 267386880) >>> 20) {
                case 0:
                    return zzhw.zzo(t, j) != 0.0d;
                case 1:
                    return zzhw.zzn(t, j) != 0.0f;
                case 2:
                    return zzhw.zzl(t, j) != 0;
                case 3:
                    return zzhw.zzl(t, j) != 0;
                case 4:
                    return zzhw.zzk(t, j) != 0;
                case 5:
                    return zzhw.zzl(t, j) != 0;
                case 6:
                    return zzhw.zzk(t, j) != 0;
                case 7:
                    return zzhw.zzm(t, j);
                case 8:
                    Object objZzp = zzhw.zzp(t, j);
                    if (objZzp instanceof String) {
                        return !((String) objZzp).isEmpty();
                    }
                    if (objZzp instanceof zzdp) {
                        return !zzdp.zzaby.equals(objZzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzhw.zzp(t, j) != null;
                case 10:
                    return !zzdp.zzaby.equals(zzhw.zzp(t, j));
                case 11:
                    return zzhw.zzk(t, j) != 0;
                case 12:
                    return zzhw.zzk(t, j) != 0;
                case 13:
                    return zzhw.zzk(t, j) != 0;
                case 14:
                    return zzhw.zzl(t, j) != 0;
                case 15:
                    return zzhw.zzk(t, j) != 0;
                case 16:
                    return zzhw.zzl(t, j) != 0;
                case 17:
                    return zzhw.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int iZzbb = zzbb(i);
        return (zzhw.zzk(t, (long) (iZzbb & 1048575)) & (1 << (iZzbb >>> 20))) != 0;
    }

    private final void zzb(T t, int i) {
        if (this.zzajh) {
            return;
        }
        int iZzbb = zzbb(i);
        long j = iZzbb & 1048575;
        zzhw.zzb(t, j, zzhw.zzk(t, j) | (1 << (iZzbb >>> 20)));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzhw.zzk(t, (long) (zzbb(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzhw.zzb(t, zzbb(i2) & 1048575, i);
    }

    private final int zzbd(int i) {
        if (i < this.zzajc || i > this.zzajd) {
            return -1;
        }
        return zzq(i, 0);
    }

    private final int zzp(int i, int i2) {
        if (i < this.zzajc || i > this.zzajd) {
            return -1;
        }
        return zzq(i, i2);
    }

    private final int zzq(int i, int i2) {
        int length = (this.zzaja.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzaja[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}

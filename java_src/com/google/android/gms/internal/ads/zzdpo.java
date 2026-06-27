package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
final class zzdpo<T> implements zzdqb<T> {
    private static final int[] zzhjo = new int[0];
    private static final Unsafe zzhjp = zzdqz.zzbae();
    private final int[] zzhjq;
    private final Object[] zzhjr;
    private final int zzhjs;
    private final int zzhjt;
    private final zzdpk zzhju;
    private final boolean zzhjv;
    private final boolean zzhjw;
    private final boolean zzhjx;
    private final boolean zzhjy;
    private final int[] zzhjz;
    private final int zzhka;
    private final int zzhkb;
    private final zzdps zzhkc;
    private final zzdou zzhkd;
    private final zzdqt<?, ?> zzhke;
    private final zzdnp<?> zzhkf;
    private final zzdpf zzhkg;

    private zzdpo(int[] iArr, Object[] objArr, int i, int i2, zzdpk zzdpkVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzdps zzdpsVar, zzdou zzdouVar, zzdqt<?, ?> zzdqtVar, zzdnp<?> zzdnpVar, zzdpf zzdpfVar) {
        this.zzhjq = iArr;
        this.zzhjr = objArr;
        this.zzhjs = i;
        this.zzhjt = i2;
        this.zzhjw = zzdpkVar instanceof zzdob;
        this.zzhjx = z;
        this.zzhjv = zzdnpVar != null && zzdnpVar.zzm(zzdpkVar);
        this.zzhjy = false;
        this.zzhjz = iArr2;
        this.zzhka = i3;
        this.zzhkb = i4;
        this.zzhkc = zzdpsVar;
        this.zzhkd = zzdouVar;
        this.zzhke = zzdqtVar;
        this.zzhkf = zzdnpVar;
        this.zzhju = zzdpkVar;
        this.zzhkg = zzdpfVar;
    }

    private static boolean zzgw(int i) {
        return (i & 536870912) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.android.gms.internal.ads.zzdpo<T> zza(java.lang.Class<T> r35, com.google.android.gms.internal.ads.zzdpi r36, com.google.android.gms.internal.ads.zzdps r37, com.google.android.gms.internal.ads.zzdou r38, com.google.android.gms.internal.ads.zzdqt<?, ?> r39, com.google.android.gms.internal.ads.zzdnp<?> r40, com.google.android.gms.internal.ads.zzdpf r41) {
        /*
            Method dump skipped, instructions count: 1105
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zza(java.lang.Class, com.google.android.gms.internal.ads.zzdpi, com.google.android.gms.internal.ads.zzdps, com.google.android.gms.internal.ads.zzdou, com.google.android.gms.internal.ads.zzdqt, com.google.android.gms.internal.ads.zzdnp, com.google.android.gms.internal.ads.zzdpf):com.google.android.gms.internal.ads.zzdpo");
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

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final T newInstance() {
        return (T) this.zzhkc.newInstance(this.zzhju);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final int hashCode(T t) {
        int i;
        int iZzft;
        int length = this.zzhjq.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzgu = zzgu(i3);
            int i4 = this.zzhjq[i3];
            long j = 1048575 & iZzgu;
            int iHashCode = 37;
            switch ((iZzgu & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    iZzft = zzdod.zzft(Double.doubleToLongBits(zzdqz.zzo(t, j)));
                    i2 = i + iZzft;
                    break;
                case 1:
                    i = i2 * 53;
                    iZzft = Float.floatToIntBits(zzdqz.zzn(t, j));
                    i2 = i + iZzft;
                    break;
                case 2:
                    i = i2 * 53;
                    iZzft = zzdod.zzft(zzdqz.zzl(t, j));
                    i2 = i + iZzft;
                    break;
                case 3:
                    i = i2 * 53;
                    iZzft = zzdod.zzft(zzdqz.zzl(t, j));
                    i2 = i + iZzft;
                    break;
                case 4:
                    i = i2 * 53;
                    iZzft = zzdqz.zzk(t, j);
                    i2 = i + iZzft;
                    break;
                case 5:
                    i = i2 * 53;
                    iZzft = zzdod.zzft(zzdqz.zzl(t, j));
                    i2 = i + iZzft;
                    break;
                case 6:
                    i = i2 * 53;
                    iZzft = zzdqz.zzk(t, j);
                    i2 = i + iZzft;
                    break;
                case 7:
                    i = i2 * 53;
                    iZzft = zzdod.zzbh(zzdqz.zzm(t, j));
                    i2 = i + iZzft;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzft = ((String) zzdqz.zzp(t, j)).hashCode();
                    i2 = i + iZzft;
                    break;
                case 9:
                    Object objZzp = zzdqz.zzp(t, j);
                    if (objZzp != null) {
                        iHashCode = objZzp.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZzft = zzdqz.zzp(t, j).hashCode();
                    i2 = i + iZzft;
                    break;
                case 11:
                    i = i2 * 53;
                    iZzft = zzdqz.zzk(t, j);
                    i2 = i + iZzft;
                    break;
                case 12:
                    i = i2 * 53;
                    iZzft = zzdqz.zzk(t, j);
                    i2 = i + iZzft;
                    break;
                case 13:
                    i = i2 * 53;
                    iZzft = zzdqz.zzk(t, j);
                    i2 = i + iZzft;
                    break;
                case 14:
                    i = i2 * 53;
                    iZzft = zzdod.zzft(zzdqz.zzl(t, j));
                    i2 = i + iZzft;
                    break;
                case 15:
                    i = i2 * 53;
                    iZzft = zzdqz.zzk(t, j);
                    i2 = i + iZzft;
                    break;
                case 16:
                    i = i2 * 53;
                    iZzft = zzdod.zzft(zzdqz.zzl(t, j));
                    i2 = i + iZzft;
                    break;
                case 17:
                    Object objZzp2 = zzdqz.zzp(t, j);
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
                    iZzft = zzdqz.zzp(t, j).hashCode();
                    i2 = i + iZzft;
                    break;
                case 50:
                    i = i2 * 53;
                    iZzft = zzdqz.zzp(t, j).hashCode();
                    i2 = i + iZzft;
                    break;
                case 51:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdod.zzft(Double.doubleToLongBits(zzf(t, j)));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = Float.floatToIntBits(zzg(t, j));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdod.zzft(zzi(t, j));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdod.zzft(zzi(t, j));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzh(t, j);
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdod.zzft(zzi(t, j));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzh(t, j);
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdod.zzbh(zzj(t, j));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = ((String) zzdqz.zzp(t, j)).hashCode();
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdqz.zzp(t, j).hashCode();
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdqz.zzp(t, j).hashCode();
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzh(t, j);
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzh(t, j);
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzh(t, j);
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdod.zzft(zzi(t, j));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzh(t, j);
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdod.zzft(zzi(t, j));
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zza((zzdpo<T>) t, i4, i3)) {
                        i = i2 * 53;
                        iZzft = zzdqz.zzp(t, j).hashCode();
                        i2 = i + iZzft;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzhke.zzao(t).hashCode();
        return this.zzhjv ? (iHashCode2 * 53) + this.zzhkf.zzy(t).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final void zzd(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzhjq.length; i += 3) {
            int iZzgu = zzgu(i);
            long j = 1048575 & iZzgu;
            int i2 = this.zzhjq[i];
            switch ((iZzgu & 267386880) >>> 20) {
                case 0:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza(t, j, zzdqz.zzo(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza((Object) t, j, zzdqz.zzn(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza((Object) t, j, zzdqz.zzl(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza((Object) t, j, zzdqz.zzl(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zzb(t, j, zzdqz.zzk(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza((Object) t, j, zzdqz.zzl(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zzb(t, j, zzdqz.zzk(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza(t, j, zzdqz.zzm(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza(t, j, zzdqz.zzp(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza(t, j, zzdqz.zzp(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zzb(t, j, zzdqz.zzk(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zzb(t, j, zzdqz.zzk(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zzb(t, j, zzdqz.zzk(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza((Object) t, j, zzdqz.zzl(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zzb(t, j, zzdqz.zzk(t2, j));
                        zze((zzdpo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzd((zzdpo<T>) t2, i)) {
                        zzdqz.zza((Object) t, j, zzdqz.zzl(t2, j));
                        zze((zzdpo<T>) t, i);
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
                    this.zzhkd.zza(t, t2, j);
                    break;
                case 50:
                    zzdqd.zza(this.zzhkg, t, t2, j);
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
                    if (zza((zzdpo<T>) t2, i2, i)) {
                        zzdqz.zza(t, j, zzdqz.zzp(t2, j));
                        zzb((zzdpo<T>) t, i2, i);
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
                    if (zza((zzdpo<T>) t2, i2, i)) {
                        zzdqz.zza(t, j, zzdqz.zzp(t2, j));
                        zzb((zzdpo<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        if (this.zzhjx) {
            return;
        }
        zzdqd.zza(this.zzhke, t, t2);
        if (this.zzhjv) {
            zzdqd.zza(this.zzhkf, t, t2);
        }
    }

    private final void zza(T t, T t2, int i) {
        long jZzgu = zzgu(i) & 1048575;
        if (zzd((zzdpo<T>) t2, i)) {
            Object objZzp = zzdqz.zzp(t, jZzgu);
            Object objZzp2 = zzdqz.zzp(t2, jZzgu);
            if (objZzp != null && objZzp2 != null) {
                zzdqz.zza(t, jZzgu, zzdod.zzb(objZzp, objZzp2));
                zze((zzdpo<T>) t, i);
            } else if (objZzp2 != null) {
                zzdqz.zza(t, jZzgu, objZzp2);
                zze((zzdpo<T>) t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int iZzgu = zzgu(i);
        int i2 = this.zzhjq[i];
        long j = iZzgu & 1048575;
        if (zza((zzdpo<T>) t2, i2, i)) {
            Object objZzp = zzdqz.zzp(t, j);
            Object objZzp2 = zzdqz.zzp(t2, j);
            if (objZzp != null && objZzp2 != null) {
                zzdqz.zza(t, j, zzdod.zzb(objZzp, objZzp2));
                zzb((zzdpo<T>) t, i2, i);
            } else if (objZzp2 != null) {
                zzdqz.zza(t, j, objZzp2);
                zzb((zzdpo<T>) t, i2, i);
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
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzak(T r20) {
        /*
            Method dump skipped, instructions count: 2906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zzak(java.lang.Object):int");
    }

    private static <UT, UB> int zza(zzdqt<UT, UB> zzdqtVar, T t) {
        return zzdqtVar.zzak(zzdqtVar.zzao(t));
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zzdqz.zzp(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x0546  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r14, com.google.android.gms.internal.ads.zzdro r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zza(java.lang.Object, com.google.android.gms.internal.ads.zzdro):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r19, com.google.android.gms.internal.ads.zzdro r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zzb(java.lang.Object, com.google.android.gms.internal.ads.zzdro):void");
    }

    private final <K, V> void zza(zzdro zzdroVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzdroVar.zza(i, this.zzhkg.zzaj(zzgs(i2)), this.zzhkg.zzaf(obj));
        }
    }

    private static <UT, UB> void zza(zzdqt<UT, UB> zzdqtVar, T t, zzdro zzdroVar) throws IOException {
        zzdqtVar.zza((zzdqt<UT, UB>) zzdqtVar.zzao(t), zzdroVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05cb A[LOOP:5: B:163:0x05c7->B:165:0x05cb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x05d8  */
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r13, com.google.android.gms.internal.ads.zzdqa r14, com.google.android.gms.internal.ads.zzdno r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zza(java.lang.Object, com.google.android.gms.internal.ads.zzdqa, com.google.android.gms.internal.ads.zzdno):void");
    }

    private static zzdqu zzal(Object obj) {
        zzdob zzdobVar = (zzdob) obj;
        zzdqu zzdquVar = zzdobVar.zzhhd;
        if (zzdquVar != zzdqu.zzazz()) {
            return zzdquVar;
        }
        zzdqu zzdquVarZzbaa = zzdqu.zzbaa();
        zzdobVar.zzhhd = zzdquVarZzbaa;
        return zzdquVarZzbaa;
    }

    private static int zza(byte[] bArr, int i, int i2, zzdri zzdriVar, Class<?> cls, zzdmo zzdmoVar) throws IOException {
        switch (zzdpp.zzhdm[zzdriVar.ordinal()]) {
            case 1:
                int iZzb = zzdmn.zzb(bArr, i, zzdmoVar);
                zzdmoVar.zzhcn = Boolean.valueOf(zzdmoVar.zzhcm != 0);
                return iZzb;
            case 2:
                return zzdmn.zze(bArr, i, zzdmoVar);
            case 3:
                zzdmoVar.zzhcn = Double.valueOf(zzdmn.zzh(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zzdmoVar.zzhcn = Integer.valueOf(zzdmn.zzf(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zzdmoVar.zzhcn = Long.valueOf(zzdmn.zzg(bArr, i));
                return i + 8;
            case 8:
                zzdmoVar.zzhcn = Float.valueOf(zzdmn.zzi(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iZza = zzdmn.zza(bArr, i, zzdmoVar);
                zzdmoVar.zzhcn = Integer.valueOf(zzdmoVar.zzhcl);
                return iZza;
            case 12:
            case 13:
                int iZzb2 = zzdmn.zzb(bArr, i, zzdmoVar);
                zzdmoVar.zzhcn = Long.valueOf(zzdmoVar.zzhcm);
                return iZzb2;
            case 14:
                return zzdmn.zza(zzdpx.zzazg().zzg(cls), bArr, i, i2, zzdmoVar);
            case 15:
                int iZza2 = zzdmn.zza(bArr, i, zzdmoVar);
                zzdmoVar.zzhcn = Integer.valueOf(zzdnd.zzft(zzdmoVar.zzhcl));
                return iZza2;
            case 16:
                int iZzb3 = zzdmn.zzb(bArr, i, zzdmoVar);
                zzdmoVar.zzhcn = Long.valueOf(zzdnd.zzfi(zzdmoVar.zzhcm));
                return iZzb3;
            case 17:
                return zzdmn.zzd(bArr, i, zzdmoVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzdmo zzdmoVar) throws IOException {
        int iZza;
        int iZza2 = i;
        zzdoj zzdojVarZzfl = (zzdoj) zzhjp.getObject(t, j2);
        if (!zzdojVarZzfl.zzavi()) {
            int size = zzdojVarZzfl.size();
            zzdojVarZzfl = zzdojVarZzfl.zzfl(size == 0 ? 10 : size << 1);
            zzhjp.putObject(t, j2, zzdojVarZzfl);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzdnl zzdnlVar = (zzdnl) zzdojVarZzfl;
                    int iZza3 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i8 = zzdmoVar.zzhcl + iZza3;
                    while (iZza3 < i8) {
                        zzdnlVar.zzd(zzdmn.zzh(bArr, iZza3));
                        iZza3 += 8;
                    }
                    if (iZza3 == i8) {
                        return iZza3;
                    }
                    throw zzdok.zzayd();
                }
                if (i5 == 1) {
                    zzdnl zzdnlVar2 = (zzdnl) zzdojVarZzfl;
                    zzdnlVar2.zzd(zzdmn.zzh(bArr, i));
                    while (true) {
                        int i9 = iZza2 + 8;
                        if (i9 >= i2) {
                            return i9;
                        }
                        iZza2 = zzdmn.zza(bArr, i9, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return i9;
                        }
                        zzdnlVar2.zzd(zzdmn.zzh(bArr, iZza2));
                    }
                }
                return iZza2;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzdny zzdnyVar = (zzdny) zzdojVarZzfl;
                    int iZza4 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i10 = zzdmoVar.zzhcl + iZza4;
                    while (iZza4 < i10) {
                        zzdnyVar.zzi(zzdmn.zzi(bArr, iZza4));
                        iZza4 += 4;
                    }
                    if (iZza4 == i10) {
                        return iZza4;
                    }
                    throw zzdok.zzayd();
                }
                if (i5 == 5) {
                    zzdny zzdnyVar2 = (zzdny) zzdojVarZzfl;
                    zzdnyVar2.zzi(zzdmn.zzi(bArr, i));
                    while (true) {
                        int i11 = iZza2 + 4;
                        if (i11 >= i2) {
                            return i11;
                        }
                        iZza2 = zzdmn.zza(bArr, i11, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return i11;
                        }
                        zzdnyVar2.zzi(zzdmn.zzi(bArr, iZza2));
                    }
                }
                return iZza2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzdoy zzdoyVar = (zzdoy) zzdojVarZzfl;
                    int iZza5 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i12 = zzdmoVar.zzhcl + iZza5;
                    while (iZza5 < i12) {
                        iZza5 = zzdmn.zzb(bArr, iZza5, zzdmoVar);
                        zzdoyVar.zzfu(zzdmoVar.zzhcm);
                    }
                    if (iZza5 == i12) {
                        return iZza5;
                    }
                    throw zzdok.zzayd();
                }
                if (i5 == 0) {
                    zzdoy zzdoyVar2 = (zzdoy) zzdojVarZzfl;
                    int iZzb = zzdmn.zzb(bArr, iZza2, zzdmoVar);
                    zzdoyVar2.zzfu(zzdmoVar.zzhcm);
                    while (iZzb < i2) {
                        int iZza6 = zzdmn.zza(bArr, iZzb, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return iZzb;
                        }
                        iZzb = zzdmn.zzb(bArr, iZza6, zzdmoVar);
                        zzdoyVar2.zzfu(zzdmoVar.zzhcm);
                    }
                    return iZzb;
                }
                return iZza2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzdmn.zza(bArr, iZza2, (zzdoj<?>) zzdojVarZzfl, zzdmoVar);
                }
                if (i5 == 0) {
                    return zzdmn.zza(i3, bArr, i, i2, (zzdoj<?>) zzdojVarZzfl, zzdmoVar);
                }
                return iZza2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzdoy zzdoyVar3 = (zzdoy) zzdojVarZzfl;
                    int iZza7 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i13 = zzdmoVar.zzhcl + iZza7;
                    while (iZza7 < i13) {
                        zzdoyVar3.zzfu(zzdmn.zzg(bArr, iZza7));
                        iZza7 += 8;
                    }
                    if (iZza7 == i13) {
                        return iZza7;
                    }
                    throw zzdok.zzayd();
                }
                if (i5 == 1) {
                    zzdoy zzdoyVar4 = (zzdoy) zzdojVarZzfl;
                    zzdoyVar4.zzfu(zzdmn.zzg(bArr, i));
                    while (true) {
                        int i14 = iZza2 + 8;
                        if (i14 >= i2) {
                            return i14;
                        }
                        iZza2 = zzdmn.zza(bArr, i14, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return i14;
                        }
                        zzdoyVar4.zzfu(zzdmn.zzg(bArr, iZza2));
                    }
                }
                return iZza2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzdoc zzdocVar = (zzdoc) zzdojVarZzfl;
                    int iZza8 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i15 = zzdmoVar.zzhcl + iZza8;
                    while (iZza8 < i15) {
                        zzdocVar.zzgp(zzdmn.zzf(bArr, iZza8));
                        iZza8 += 4;
                    }
                    if (iZza8 == i15) {
                        return iZza8;
                    }
                    throw zzdok.zzayd();
                }
                if (i5 == 5) {
                    zzdoc zzdocVar2 = (zzdoc) zzdojVarZzfl;
                    zzdocVar2.zzgp(zzdmn.zzf(bArr, i));
                    while (true) {
                        int i16 = iZza2 + 4;
                        if (i16 >= i2) {
                            return i16;
                        }
                        iZza2 = zzdmn.zza(bArr, i16, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return i16;
                        }
                        zzdocVar2.zzgp(zzdmn.zzf(bArr, iZza2));
                    }
                }
                return iZza2;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzdmp zzdmpVar = (zzdmp) zzdojVarZzfl;
                    iZza = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i17 = zzdmoVar.zzhcl + iZza;
                    while (iZza < i17) {
                        iZza = zzdmn.zzb(bArr, iZza, zzdmoVar);
                        zzdmpVar.addBoolean(zzdmoVar.zzhcm != 0);
                    }
                    if (iZza != i17) {
                        throw zzdok.zzayd();
                    }
                    return iZza;
                }
                if (i5 == 0) {
                    zzdmp zzdmpVar2 = (zzdmp) zzdojVarZzfl;
                    iZza2 = zzdmn.zzb(bArr, iZza2, zzdmoVar);
                    zzdmpVar2.addBoolean(zzdmoVar.zzhcm != 0);
                    while (iZza2 < i2) {
                        int iZza9 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                        if (i3 == zzdmoVar.zzhcl) {
                            iZza2 = zzdmn.zzb(bArr, iZza9, zzdmoVar);
                            zzdmpVar2.addBoolean(zzdmoVar.zzhcm != 0);
                        }
                    }
                }
                return iZza2;
            case 26:
                if (i5 == 2) {
                    if ((j & IjkMediaMeta.AV_CH_STEREO_LEFT) == 0) {
                        iZza2 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                        int i18 = zzdmoVar.zzhcl;
                        if (i18 < 0) {
                            throw zzdok.zzaye();
                        }
                        if (i18 == 0) {
                            zzdojVarZzfl.add("");
                        } else {
                            zzdojVarZzfl.add(new String(bArr, iZza2, i18, zzdod.UTF_8));
                            iZza2 += i18;
                        }
                        while (iZza2 < i2) {
                            int iZza10 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                            if (i3 == zzdmoVar.zzhcl) {
                                iZza2 = zzdmn.zza(bArr, iZza10, zzdmoVar);
                                int i19 = zzdmoVar.zzhcl;
                                if (i19 < 0) {
                                    throw zzdok.zzaye();
                                }
                                if (i19 == 0) {
                                    zzdojVarZzfl.add("");
                                } else {
                                    zzdojVarZzfl.add(new String(bArr, iZza2, i19, zzdod.UTF_8));
                                    iZza2 += i19;
                                }
                            }
                        }
                    } else {
                        iZza2 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                        int i20 = zzdmoVar.zzhcl;
                        if (i20 < 0) {
                            throw zzdok.zzaye();
                        }
                        if (i20 == 0) {
                            zzdojVarZzfl.add("");
                        } else {
                            int i21 = iZza2 + i20;
                            if (!zzdrb.zzl(bArr, iZza2, i21)) {
                                throw zzdok.zzayk();
                            }
                            zzdojVarZzfl.add(new String(bArr, iZza2, i20, zzdod.UTF_8));
                            iZza2 = i21;
                        }
                        while (iZza2 < i2) {
                            int iZza11 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                            if (i3 == zzdmoVar.zzhcl) {
                                iZza2 = zzdmn.zza(bArr, iZza11, zzdmoVar);
                                int i22 = zzdmoVar.zzhcl;
                                if (i22 < 0) {
                                    throw zzdok.zzaye();
                                }
                                if (i22 == 0) {
                                    zzdojVarZzfl.add("");
                                } else {
                                    int i23 = iZza2 + i22;
                                    if (!zzdrb.zzl(bArr, iZza2, i23)) {
                                        throw zzdok.zzayk();
                                    }
                                    zzdojVarZzfl.add(new String(bArr, iZza2, i22, zzdod.UTF_8));
                                    iZza2 = i23;
                                }
                            }
                        }
                    }
                }
                return iZza2;
            case 27:
                if (i5 == 2) {
                    return zzdmn.zza(zzgr(i6), i3, bArr, i, i2, zzdojVarZzfl, zzdmoVar);
                }
                return iZza2;
            case 28:
                if (i5 == 2) {
                    int iZza12 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i24 = zzdmoVar.zzhcl;
                    if (i24 < 0) {
                        throw zzdok.zzaye();
                    }
                    if (i24 > bArr.length - iZza12) {
                        throw zzdok.zzayd();
                    }
                    if (i24 == 0) {
                        zzdojVarZzfl.add(zzdmr.zzhcr);
                    } else {
                        zzdojVarZzfl.add(zzdmr.zzi(bArr, iZza12, i24));
                        iZza12 += i24;
                    }
                    while (iZza12 < i2) {
                        int iZza13 = zzdmn.zza(bArr, iZza12, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return iZza12;
                        }
                        iZza12 = zzdmn.zza(bArr, iZza13, zzdmoVar);
                        int i25 = zzdmoVar.zzhcl;
                        if (i25 < 0) {
                            throw zzdok.zzaye();
                        }
                        if (i25 > bArr.length - iZza12) {
                            throw zzdok.zzayd();
                        }
                        if (i25 == 0) {
                            zzdojVarZzfl.add(zzdmr.zzhcr);
                        } else {
                            zzdojVarZzfl.add(zzdmr.zzi(bArr, iZza12, i25));
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
                        iZza = zzdmn.zza(i3, bArr, i, i2, (zzdoj<?>) zzdojVarZzfl, zzdmoVar);
                    }
                    return iZza2;
                }
                iZza = zzdmn.zza(bArr, iZza2, (zzdoj<?>) zzdojVarZzfl, zzdmoVar);
                zzdob zzdobVar = (zzdob) t;
                zzdqu zzdquVar = zzdobVar.zzhhd;
                if (zzdquVar == zzdqu.zzazz()) {
                    zzdquVar = null;
                }
                zzdqu zzdquVar2 = (zzdqu) zzdqd.zza(i4, zzdojVarZzfl, zzgt(i6), zzdquVar, this.zzhke);
                if (zzdquVar2 != null) {
                    zzdobVar.zzhhd = zzdquVar2;
                }
                return iZza;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzdoc zzdocVar3 = (zzdoc) zzdojVarZzfl;
                    int iZza14 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i26 = zzdmoVar.zzhcl + iZza14;
                    while (iZza14 < i26) {
                        iZza14 = zzdmn.zza(bArr, iZza14, zzdmoVar);
                        zzdocVar3.zzgp(zzdnd.zzft(zzdmoVar.zzhcl));
                    }
                    if (iZza14 == i26) {
                        return iZza14;
                    }
                    throw zzdok.zzayd();
                }
                if (i5 == 0) {
                    zzdoc zzdocVar4 = (zzdoc) zzdojVarZzfl;
                    int iZza15 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    zzdocVar4.zzgp(zzdnd.zzft(zzdmoVar.zzhcl));
                    while (iZza15 < i2) {
                        int iZza16 = zzdmn.zza(bArr, iZza15, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return iZza15;
                        }
                        iZza15 = zzdmn.zza(bArr, iZza16, zzdmoVar);
                        zzdocVar4.zzgp(zzdnd.zzft(zzdmoVar.zzhcl));
                    }
                    return iZza15;
                }
                return iZza2;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzdoy zzdoyVar5 = (zzdoy) zzdojVarZzfl;
                    int iZza17 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                    int i27 = zzdmoVar.zzhcl + iZza17;
                    while (iZza17 < i27) {
                        iZza17 = zzdmn.zzb(bArr, iZza17, zzdmoVar);
                        zzdoyVar5.zzfu(zzdnd.zzfi(zzdmoVar.zzhcm));
                    }
                    if (iZza17 == i27) {
                        return iZza17;
                    }
                    throw zzdok.zzayd();
                }
                if (i5 == 0) {
                    zzdoy zzdoyVar6 = (zzdoy) zzdojVarZzfl;
                    int iZzb2 = zzdmn.zzb(bArr, iZza2, zzdmoVar);
                    zzdoyVar6.zzfu(zzdnd.zzfi(zzdmoVar.zzhcm));
                    while (iZzb2 < i2) {
                        int iZza18 = zzdmn.zza(bArr, iZzb2, zzdmoVar);
                        if (i3 != zzdmoVar.zzhcl) {
                            return iZzb2;
                        }
                        iZzb2 = zzdmn.zzb(bArr, iZza18, zzdmoVar);
                        zzdoyVar6.zzfu(zzdnd.zzfi(zzdmoVar.zzhcm));
                    }
                    return iZzb2;
                }
                return iZza2;
            case 49:
                if (i5 == 3) {
                    zzdqb zzdqbVarZzgr = zzgr(i6);
                    int i28 = (i3 & (-8)) | 4;
                    iZza2 = zzdmn.zza(zzdqbVarZzgr, bArr, i, i2, i28, zzdmoVar);
                    zzdojVarZzfl.add(zzdmoVar.zzhcn);
                    while (iZza2 < i2) {
                        int iZza19 = zzdmn.zza(bArr, iZza2, zzdmoVar);
                        if (i3 == zzdmoVar.zzhcl) {
                            iZza2 = zzdmn.zza(zzdqbVarZzgr, bArr, iZza19, i2, i28, zzdmoVar);
                            zzdojVarZzfl.add(zzdmoVar.zzhcn);
                        }
                    }
                }
                return iZza2;
            default:
                return iZza2;
        }
    }

    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzdmo zzdmoVar) throws IOException {
        Unsafe unsafe = zzhjp;
        Object objZzgs = zzgs(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzhkg.zzag(object)) {
            Object objZzai = this.zzhkg.zzai(objZzgs);
            this.zzhkg.zzc(objZzai, object);
            unsafe.putObject(t, j, objZzai);
            object = objZzai;
        }
        zzdpd<?, ?> zzdpdVarZzaj = this.zzhkg.zzaj(objZzgs);
        Map<?, ?> mapZzae = this.zzhkg.zzae(object);
        int iZza = zzdmn.zza(bArr, i, zzdmoVar);
        int i4 = zzdmoVar.zzhcl;
        if (i4 < 0 || i4 > i2 - iZza) {
            throw zzdok.zzayd();
        }
        int i5 = i4 + iZza;
        K k = zzdpdVarZzaj.zzhjj;
        V v = zzdpdVarZzaj.zzckh;
        while (iZza < i5) {
            int iZza2 = iZza + 1;
            int i6 = bArr[iZza];
            if (i6 < 0) {
                iZza2 = zzdmn.zza(i6, bArr, iZza2, zzdmoVar);
                i6 = zzdmoVar.zzhcl;
            }
            int i7 = iZza2;
            int i8 = i6 >>> 3;
            int i9 = i6 & 7;
            if (i8 == 1) {
                if (i9 == zzdpdVarZzaj.zzhji.zzbak()) {
                    iZza = zza(bArr, i7, i2, zzdpdVarZzaj.zzhji, (Class<?>) null, zzdmoVar);
                    k = (K) zzdmoVar.zzhcn;
                } else {
                    iZza = zzdmn.zza(i6, bArr, i7, i2, zzdmoVar);
                }
            } else if (i8 == 2 && i9 == zzdpdVarZzaj.zzhjk.zzbak()) {
                iZza = zza(bArr, i7, i2, zzdpdVarZzaj.zzhjk, zzdpdVarZzaj.zzckh.getClass(), zzdmoVar);
                v = zzdmoVar.zzhcn;
            } else {
                iZza = zzdmn.zza(i6, bArr, i7, i2, zzdmoVar);
            }
        }
        if (iZza != i5) {
            throw zzdok.zzayj();
        }
        mapZzae.put(k, v);
        return i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzdmo zzdmoVar) throws IOException {
        int iZzb;
        Unsafe unsafe = zzhjp;
        long j2 = this.zzhjq[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzdmn.zzh(bArr, i)));
                    iZzb = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzdmn.zzi(bArr, i)));
                    iZzb = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    iZzb = zzdmn.zzb(bArr, i, zzdmoVar);
                    unsafe.putObject(t, j, Long.valueOf(zzdmoVar.zzhcm));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    iZzb = zzdmn.zza(bArr, i, zzdmoVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzdmoVar.zzhcl));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzdmn.zzg(bArr, i)));
                    iZzb = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzdmn.zzf(bArr, i)));
                    iZzb = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    iZzb = zzdmn.zzb(bArr, i, zzdmoVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzdmoVar.zzhcm != 0));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int iZza = zzdmn.zza(bArr, i, zzdmoVar);
                    int i9 = zzdmoVar.zzhcl;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !zzdrb.zzl(bArr, iZza, iZza + i9)) {
                            throw zzdok.zzayk();
                        }
                        unsafe.putObject(t, j, new String(bArr, iZza, i9, zzdod.UTF_8));
                        iZza += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZza;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int iZza2 = zzdmn.zza(zzgr(i8), bArr, i, i2, zzdmoVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzdmoVar.zzhcn);
                    } else {
                        unsafe.putObject(t, j, zzdod.zzb(object, zzdmoVar.zzhcn));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZza2;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    iZzb = zzdmn.zze(bArr, i, zzdmoVar);
                    unsafe.putObject(t, j, zzdmoVar.zzhcn);
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int iZza3 = zzdmn.zza(bArr, i, zzdmoVar);
                    int i10 = zzdmoVar.zzhcl;
                    zzdog zzdogVarZzgt = zzgt(i8);
                    if (zzdogVarZzgt == null || zzdogVarZzgt.zzf(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        iZzb = iZza3;
                        unsafe.putInt(t, j2, i4);
                        return iZzb;
                    }
                    zzal(t).zzc(i3, Long.valueOf(i10));
                    return iZza3;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    iZzb = zzdmn.zza(bArr, i, zzdmoVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzdnd.zzft(zzdmoVar.zzhcl)));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    iZzb = zzdmn.zzb(bArr, i, zzdmoVar);
                    unsafe.putObject(t, j, Long.valueOf(zzdnd.zzfi(zzdmoVar.zzhcm)));
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    iZzb = zzdmn.zza(zzgr(i8), bArr, i, i2, (i3 & (-8)) | 4, zzdmoVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzdmoVar.zzhcn);
                    } else {
                        unsafe.putObject(t, j, zzdod.zzb(object2, zzdmoVar.zzhcn));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                return i;
            default:
                return i;
        }
    }

    private final zzdqb zzgr(int i) {
        int i2 = (i / 3) << 1;
        zzdqb zzdqbVar = (zzdqb) this.zzhjr[i2];
        if (zzdqbVar != null) {
            return zzdqbVar;
        }
        zzdqb<T> zzdqbVarZzg = zzdpx.zzazg().zzg((Class) this.zzhjr[i2 + 1]);
        this.zzhjr[i2] = zzdqbVarZzg;
        return zzdqbVarZzg;
    }

    private final Object zzgs(int i) {
        return this.zzhjr[(i / 3) << 1];
    }

    private final zzdog zzgt(int i) {
        return (zzdog) this.zzhjr[((i / 3) << 1) + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:155:0x049d, code lost:
    
        if (r0 == r4) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x049f, code lost:
    
        r26.putInt(r11, r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x04a5, code lost:
    
        r0 = null;
        r1 = r8.zzhka;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x04aa, code lost:
    
        if (r1 >= r8.zzhkb) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x04ac, code lost:
    
        r0 = (com.google.android.gms.internal.ads.zzdqu) r8.zza(r11, r8.zzhjz[r1], (int) r0, (com.google.android.gms.internal.ads.zzdqt<UT, int>) r8.zzhke);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04bb, code lost:
    
        if (r0 == null) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04bd, code lost:
    
        r8.zzhke.zzg(r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x04c2, code lost:
    
        if (r6 != 0) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x04c6, code lost:
    
        if (r2 != r33) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x04cd, code lost:
    
        throw com.google.android.gms.internal.ads.zzdok.zzayj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04d0, code lost:
    
        if (r2 > r33) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04d2, code lost:
    
        if (r3 != r6) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04d4, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04da, code lost:
    
        throw com.google.android.gms.internal.ads.zzdok.zzayj();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zza(T r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.ads.zzdmo r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzdmo):int");
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
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.ads.zzdmo r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzdmo):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdqb
    public final void zzaa(T t) {
        int i;
        int i2 = this.zzhka;
        while (true) {
            i = this.zzhkb;
            if (i2 >= i) {
                break;
            }
            long jZzgu = zzgu(this.zzhjz[i2]) & 1048575;
            Object objZzp = zzdqz.zzp(t, jZzgu);
            if (objZzp != null) {
                zzdqz.zza(t, jZzgu, this.zzhkg.zzah(objZzp));
            }
            i2++;
        }
        int length = this.zzhjz.length;
        while (i < length) {
            this.zzhkd.zzb(t, this.zzhjz[i]);
            i++;
        }
        this.zzhke.zzaa(t);
        if (this.zzhjv) {
            this.zzhkf.zzaa(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzdqt<UT, UB> zzdqtVar) {
        zzdog zzdogVarZzgt;
        int i2 = this.zzhjq[i];
        Object objZzp = zzdqz.zzp(obj, zzgu(i) & 1048575);
        return (objZzp == null || (zzdogVarZzgt = zzgt(i)) == null) ? ub : (UB) zza(i, i2, this.zzhkg.zzae(objZzp), zzdogVarZzgt, (zzdog) ub, (zzdqt<UT, zzdog>) zzdqtVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzdog zzdogVar, UB ub, zzdqt<UT, UB> zzdqtVar) {
        zzdpd<?, ?> zzdpdVarZzaj = this.zzhkg.zzaj(zzgs(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzdogVar.zzf(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzdqtVar.zzazy();
                }
                zzdmz zzdmzVarZzfo = zzdmr.zzfo(zzdpc.zza(zzdpdVarZzaj, next.getKey(), next.getValue()));
                try {
                    zzdpc.zza(zzdmzVarZzfo.zzavt(), zzdpdVarZzaj, next.getKey(), next.getValue());
                    zzdqtVar.zza((zzdqt<UT, UB>) ub, i2, zzdmzVarZzfo.zzavs());
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
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.ads.zzdqb] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.ads.zzdqb] */
    @Override // com.google.android.gms.internal.ads.zzdqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzam(T r14) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpo.zzam(java.lang.Object):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzdqb zzdqbVar) {
        return zzdqbVar.zzam(zzdqz.zzp(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzdro zzdroVar) throws IOException {
        if (obj instanceof String) {
            zzdroVar.zzf(i, (String) obj);
        } else {
            zzdroVar.zza(i, (zzdmr) obj);
        }
    }

    private final void zza(Object obj, int i, zzdqa zzdqaVar) throws IOException {
        if (zzgw(i)) {
            zzdqz.zza(obj, i & 1048575, zzdqaVar.zzawb());
        } else if (this.zzhjw) {
            zzdqz.zza(obj, i & 1048575, zzdqaVar.readString());
        } else {
            zzdqz.zza(obj, i & 1048575, zzdqaVar.zzawc());
        }
    }

    private final int zzgu(int i) {
        return this.zzhjq[i + 1];
    }

    private final int zzgv(int i) {
        return this.zzhjq[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzdqz.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzdqz.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzdqz.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzdqz.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzdqz.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zzd((zzdpo<T>) t, i) == zzd((zzdpo<T>) t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzhjx) {
            return zzd((zzdpo<T>) t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zzd(T t, int i) {
        if (this.zzhjx) {
            int iZzgu = zzgu(i);
            long j = iZzgu & 1048575;
            switch ((iZzgu & 267386880) >>> 20) {
                case 0:
                    return zzdqz.zzo(t, j) != 0.0d;
                case 1:
                    return zzdqz.zzn(t, j) != 0.0f;
                case 2:
                    return zzdqz.zzl(t, j) != 0;
                case 3:
                    return zzdqz.zzl(t, j) != 0;
                case 4:
                    return zzdqz.zzk(t, j) != 0;
                case 5:
                    return zzdqz.zzl(t, j) != 0;
                case 6:
                    return zzdqz.zzk(t, j) != 0;
                case 7:
                    return zzdqz.zzm(t, j);
                case 8:
                    Object objZzp = zzdqz.zzp(t, j);
                    if (objZzp instanceof String) {
                        return !((String) objZzp).isEmpty();
                    }
                    if (objZzp instanceof zzdmr) {
                        return !zzdmr.zzhcr.equals(objZzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzdqz.zzp(t, j) != null;
                case 10:
                    return !zzdmr.zzhcr.equals(zzdqz.zzp(t, j));
                case 11:
                    return zzdqz.zzk(t, j) != 0;
                case 12:
                    return zzdqz.zzk(t, j) != 0;
                case 13:
                    return zzdqz.zzk(t, j) != 0;
                case 14:
                    return zzdqz.zzl(t, j) != 0;
                case 15:
                    return zzdqz.zzk(t, j) != 0;
                case 16:
                    return zzdqz.zzl(t, j) != 0;
                case 17:
                    return zzdqz.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int iZzgv = zzgv(i);
        return (zzdqz.zzk(t, (long) (iZzgv & 1048575)) & (1 << (iZzgv >>> 20))) != 0;
    }

    private final void zze(T t, int i) {
        if (this.zzhjx) {
            return;
        }
        int iZzgv = zzgv(i);
        long j = iZzgv & 1048575;
        zzdqz.zzb(t, j, zzdqz.zzk(t, j) | (1 << (iZzgv >>> 20)));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzdqz.zzk(t, (long) (zzgv(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzdqz.zzb(t, zzgv(i2) & 1048575, i);
    }

    private final int zzgx(int i) {
        if (i < this.zzhjs || i > this.zzhjt) {
            return -1;
        }
        return zzal(i, 0);
    }

    private final int zzak(int i, int i2) {
        if (i < this.zzhjs || i > this.zzhjt) {
            return -1;
        }
        return zzal(i, i2);
    }

    private final int zzal(int i, int i2) {
        int length = (this.zzhjq.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzhjq[i4];
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

package com.google.android.gms.internal.measurement;

import com.google.firebase.remoteconfig.a;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes6.dex */
final class zzkn<T> implements zzlb<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzmg.zzb();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzkj zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final zzky zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzkr zzo;
    private final zzjs zzp;
    private final zzma<?, ?> zzq;
    private final zzim<?> zzr;
    private final zzkg zzs;

    private static <T> double zza(T t5, long j6) {
        return ((Double) zzmg.zze(t5, j6)).doubleValue();
    }

    private static <T> float zzb(T t5, long j6) {
        return ((Float) zzmg.zze(t5, j6)).floatValue();
    }

    private static <T> int zzc(T t5, long j6) {
        return ((Integer) zzmg.zze(t5, j6)).intValue();
    }

    private static <T> long zzd(T t5, long j6) {
        return ((Long) zzmg.zze(t5, j6)).longValue();
    }

    private final zzlb zze(int i10) {
        int i11 = (i10 / 3) << 1;
        zzlb zzlbVar = (zzlb) this.zzd[i11];
        if (zzlbVar != null) {
            return zzlbVar;
        }
        zzlb<T> zzlbVarZza = zzkx.zza().zza((Class) this.zzd[i11 + 1]);
        this.zzd[i11] = zzlbVarZza;
        return zzlbVarZza;
    }

    private final Object zzf(int i10) {
        return this.zzd[(i10 / 3) << 1];
    }

    private static boolean zzg(int i10) {
        return (i10 & 536870912) != 0;
    }

    private static int zza(byte[] bArr, int i10, int i11, zzmn zzmnVar, Class<?> cls, zzhl zzhlVar) throws IOException {
        switch (zzkq.zza[zzmnVar.ordinal()]) {
            case 1:
                int iZzd = zzhi.zzd(bArr, i10, zzhlVar);
                zzhlVar.zzc = Boolean.valueOf(zzhlVar.zzb != 0);
                return iZzd;
            case 2:
                return zzhi.zza(bArr, i10, zzhlVar);
            case 3:
                zzhlVar.zzc = Double.valueOf(zzhi.zza(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                zzhlVar.zzc = Integer.valueOf(zzhi.zzc(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                zzhlVar.zzc = Long.valueOf(zzhi.zzd(bArr, i10));
                return i10 + 8;
            case 8:
                zzhlVar.zzc = Float.valueOf(zzhi.zzb(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int iZzc = zzhi.zzc(bArr, i10, zzhlVar);
                zzhlVar.zzc = Integer.valueOf(zzhlVar.zza);
                return iZzc;
            case 12:
            case 13:
                int iZzd2 = zzhi.zzd(bArr, i10, zzhlVar);
                zzhlVar.zzc = Long.valueOf(zzhlVar.zzb);
                return iZzd2;
            case 14:
                return zzhi.zza(zzkx.zza().zza((Class) cls), bArr, i10, i11, zzhlVar);
            case 15:
                int iZzc2 = zzhi.zzc(bArr, i10, zzhlVar);
                zzhlVar.zzc = Integer.valueOf(zzib.zze(zzhlVar.zza));
                return iZzc2;
            case 16:
                int iZzd3 = zzhi.zzd(bArr, i10, zzhlVar);
                zzhlVar.zzc = Long.valueOf(zzib.zza(zzhlVar.zzb));
                return iZzd3;
            case 17:
                return zzhi.zzb(bArr, i10, zzhlVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final int zzc(int i10) {
        return this.zzc[i10 + 1];
    }

    private final zzje zzd(int i10) {
        return (zzje) this.zzd[((i10 / 3) << 1) + 1];
    }

    private static void zzf(Object obj) {
        if (zzg(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + String.valueOf(obj));
    }

    private static boolean zzg(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzix) {
            return ((zzix) obj).zzcj();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final int zzb(T t5) {
        int i10;
        int iZza;
        int length = this.zzc.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iZzc = zzc(i12);
            int i13 = this.zzc[i12];
            long j6 = 1048575 & iZzc;
            int iHashCode = 37;
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    i10 = i11 * 53;
                    iZza = zziz.zza(Double.doubleToLongBits(zzmg.zza(t5, j6)));
                    i11 = i10 + iZza;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iZza = Float.floatToIntBits(zzmg.zzb(t5, j6));
                    i11 = i10 + iZza;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iZza = zziz.zza(zzmg.zzd(t5, j6));
                    i11 = i10 + iZza;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iZza = zziz.zza(zzmg.zzd(t5, j6));
                    i11 = i10 + iZza;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iZza = zzmg.zzc(t5, j6);
                    i11 = i10 + iZza;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iZza = zziz.zza(zzmg.zzd(t5, j6));
                    i11 = i10 + iZza;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iZza = zzmg.zzc(t5, j6);
                    i11 = i10 + iZza;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iZza = zziz.zza(zzmg.zzh(t5, j6));
                    i11 = i10 + iZza;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iZza = ((String) zzmg.zze(t5, j6)).hashCode();
                    i11 = i10 + iZza;
                    break;
                case 9:
                    Object objZze = zzmg.zze(t5, j6);
                    if (objZze != null) {
                        iHashCode = objZze.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iZza = zzmg.zze(t5, j6).hashCode();
                    i11 = i10 + iZza;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iZza = zzmg.zzc(t5, j6);
                    i11 = i10 + iZza;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iZza = zzmg.zzc(t5, j6);
                    i11 = i10 + iZza;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iZza = zzmg.zzc(t5, j6);
                    i11 = i10 + iZza;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iZza = zziz.zza(zzmg.zzd(t5, j6));
                    i11 = i10 + iZza;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iZza = zzmg.zzc(t5, j6);
                    i11 = i10 + iZza;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iZza = zziz.zza(zzmg.zzd(t5, j6));
                    i11 = i10 + iZza;
                    break;
                case 17:
                    Object objZze2 = zzmg.zze(t5, j6);
                    if (objZze2 != null) {
                        iHashCode = objZze2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
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
                    i10 = i11 * 53;
                    iZza = zzmg.zze(t5, j6).hashCode();
                    i11 = i10 + iZza;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iZza = zzmg.zze(t5, j6).hashCode();
                    i11 = i10 + iZza;
                    break;
                case 51:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zziz.zza(Double.doubleToLongBits(zza(t5, j6)));
                        i11 = i10 + iZza;
                    }
                    break;
                case 52:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = Float.floatToIntBits(zzb(t5, j6));
                        i11 = i10 + iZza;
                    }
                    break;
                case 53:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zziz.zza(zzd(t5, j6));
                        i11 = i10 + iZza;
                    }
                    break;
                case 54:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zziz.zza(zzd(t5, j6));
                        i11 = i10 + iZza;
                    }
                    break;
                case 55:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzc(t5, j6);
                        i11 = i10 + iZza;
                    }
                    break;
                case 56:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zziz.zza(zzd(t5, j6));
                        i11 = i10 + iZza;
                    }
                    break;
                case 57:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzc(t5, j6);
                        i11 = i10 + iZza;
                    }
                    break;
                case 58:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zziz.zza(zze(t5, j6));
                        i11 = i10 + iZza;
                    }
                    break;
                case 59:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = ((String) zzmg.zze(t5, j6)).hashCode();
                        i11 = i10 + iZza;
                    }
                    break;
                case 60:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzmg.zze(t5, j6).hashCode();
                        i11 = i10 + iZza;
                    }
                    break;
                case 61:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzmg.zze(t5, j6).hashCode();
                        i11 = i10 + iZza;
                    }
                    break;
                case 62:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzc(t5, j6);
                        i11 = i10 + iZza;
                    }
                    break;
                case 63:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzc(t5, j6);
                        i11 = i10 + iZza;
                    }
                    break;
                case 64:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzc(t5, j6);
                        i11 = i10 + iZza;
                    }
                    break;
                case 65:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zziz.zza(zzd(t5, j6));
                        i11 = i10 + iZza;
                    }
                    break;
                case 66:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzc(t5, j6);
                        i11 = i10 + iZza;
                    }
                    break;
                case 67:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zziz.zza(zzd(t5, j6));
                        i11 = i10 + iZza;
                    }
                    break;
                case 68:
                    if (zzc(t5, i13, i12)) {
                        i10 = i11 * 53;
                        iZza = zzmg.zze(t5, j6).hashCode();
                        i11 = i10 + iZza;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.zzq.zzd(t5).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzr.zza(t5).hashCode() : iHashCode2;
    }

    private zzkn(int[] iArr, Object[] objArr, int i10, int i11, zzkj zzkjVar, zzky zzkyVar, boolean z6, int[] iArr2, int i12, int i13, zzkr zzkrVar, zzjs zzjsVar, zzma<?, ?> zzmaVar, zzim<?> zzimVar, zzkg zzkgVar) {
        boolean z10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        this.zzi = zzkjVar instanceof zzix;
        this.zzj = zzkyVar;
        if (zzimVar != null && zzimVar.zza(zzkjVar)) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzh = z10;
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i12;
        this.zzn = i13;
        this.zzo = zzkrVar;
        this.zzp = zzjsVar;
        this.zzq = zzmaVar;
        this.zzr = zzimVar;
        this.zzg = zzkjVar;
        this.zzs = zzkgVar;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0073  */
    /* JADX WARN: Code duplicated, block: B:40:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zzc(T t5) {
        if (zzg(t5)) {
            if (t5 instanceof zzix) {
                zzix zzixVar = (zzix) t5;
                zzixVar.zzc(Integer.MAX_VALUE);
                zzixVar.zza = 0;
                zzixVar.zzch();
            }
            int length = this.zzc.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int iZzc = zzc(i10);
                long j6 = 1048575 & iZzc;
                int i11 = (iZzc & 267386880) >>> 20;
                if (i11 != 9) {
                    if (i11 == 60 || i11 == 68) {
                        if (zzc(t5, this.zzc[i10], i10)) {
                            zze(i10).zzc(zzb.getObject(t5, j6));
                        }
                    } else {
                        switch (i11) {
                            case 17:
                                if (zzc((Object) t5, i10)) {
                                    zze(i10).zzc(zzb.getObject(t5, j6));
                                }
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
                                this.zzp.zzb(t5, j6);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(t5, j6);
                                if (object != null) {
                                    unsafe.putObject(t5, j6, this.zzs.zzc(object));
                                }
                                break;
                        }
                    }
                } else if (zzc((Object) t5, i10)) {
                    zze(i10).zzc(zzb.getObject(t5, j6));
                }
            }
            this.zzq.zzf(t5);
            if (this.zzh) {
                this.zzr.zzc(t5);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f7 A[LOOP:2: B:52:0x00e6->B:57:0x00f7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.measurement.zzlb] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.measurement.zzlb] */
    @Override // com.google.android.gms.internal.measurement.zzlb
    public final boolean zzd(T t5) {
        int i10;
        int i11;
        List list;
        ?? Zze;
        int i12;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        while (i15 < this.zzm) {
            int i16 = this.zzl[i15];
            int i17 = this.zzc[i16];
            int iZzc = zzc(i16);
            int i18 = this.zzc[i16 + 2];
            int i19 = i18 & 1048575;
            int i20 = 1 << (i18 >>> 20);
            if (i19 != i13) {
                if (i19 != 1048575) {
                    i14 = zzb.getInt(t5, i19);
                }
                i11 = i14;
                i10 = i19;
            } else {
                i10 = i13;
                i11 = i14;
            }
            if ((268435456 & iZzc) != 0 && !zza(t5, i16, i10, i11, i20)) {
                return false;
            }
            int i21 = (267386880 & iZzc) >>> 20;
            if (i21 == 9 || i21 == 17) {
                if (zza(t5, i16, i10, i11, i20) && !zza((Object) t5, iZzc, zze(i16))) {
                    return false;
                }
            } else if (i21 == 27) {
                list = (List) zzmg.zze(t5, iZzc & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    Zze = zze(i16);
                    for (i12 = 0; i12 < list.size(); i12++) {
                        if (!Zze.zzd(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (i21 == 60 || i21 == 68) {
                if (zzc(t5, i17, i16) && !zza((Object) t5, iZzc, zze(i16))) {
                    return false;
                }
            } else if (i21 == 49) {
                list = (List) zzmg.zze(t5, iZzc & 1048575);
                if (list.isEmpty()) {
                    Zze = zze(i16);
                    while (i12 < list.size()) {
                        if (!Zze.zzd(list.get(i12))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (i21 != 50) {
                continue;
            } else {
                Map<?, ?> mapZzd = this.zzs.zzd(zzmg.zze(t5, iZzc & 1048575));
                if (mapZzd.isEmpty()) {
                    continue;
                } else if (this.zzs.zza(zzf(i16)).zzc.zzb() == zzmx.MESSAGE) {
                    ?? Zza = 0;
                    for (Object obj : mapZzd.values()) {
                        if (Zza == 0) {
                            Zza = Zza;
                            Zza = zzkx.zza().zza((Class) obj.getClass());
                        }
                        Zza = Zza;
                        if (!Zza.zzd(obj)) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            }
            i15++;
            i13 = i10;
            i14 = i11;
        }
        return !this.zzh || this.zzr.zza(t5).zzg();
    }

    private static zzlz zze(Object obj) {
        zzix zzixVar = (zzix) obj;
        zzlz zzlzVar = zzixVar.zzb;
        if (zzlzVar != zzlz.zzc()) {
            return zzlzVar;
        }
        zzlz zzlzVarZzd = zzlz.zzd();
        zzixVar.zzb = zzlzVarZzd;
        return zzlzVarZzd;
    }

    private static <T> boolean zze(T t5, long j6) {
        return ((Boolean) zzmg.zze(t5, j6)).booleanValue();
    }

    private final boolean zzc(T t5, T t10, int i10) {
        return zzc((Object) t5, i10) == zzc((Object) t10, i10);
    }

    private final boolean zzc(T t5, int i10) {
        int iZzb = zzb(i10);
        long j6 = iZzb & 1048575;
        if (j6 != 1048575) {
            return (zzmg.zzc(t5, j6) & (1 << (iZzb >>> 20))) != 0;
        }
        int iZzc = zzc(i10);
        long j10 = iZzc & 1048575;
        switch ((iZzc & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(zzmg.zza(t5, j10)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzmg.zzb(t5, j10)) != 0;
            case 2:
                return zzmg.zzd(t5, j10) != 0;
            case 3:
                return zzmg.zzd(t5, j10) != 0;
            case 4:
                return zzmg.zzc(t5, j10) != 0;
            case 5:
                return zzmg.zzd(t5, j10) != 0;
            case 6:
                return zzmg.zzc(t5, j10) != 0;
            case 7:
                return zzmg.zzh(t5, j10);
            case 8:
                Object objZze = zzmg.zze(t5, j10);
                if (objZze instanceof String) {
                    return !((String) objZze).isEmpty();
                }
                if (objZze instanceof zzhm) {
                    return !zzhm.zza.equals(objZze);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzmg.zze(t5, j10) != null;
            case 10:
                return !zzhm.zza.equals(zzmg.zze(t5, j10));
            case 11:
                return zzmg.zzc(t5, j10) != 0;
            case 12:
                return zzmg.zzc(t5, j10) != 0;
            case 13:
                return zzmg.zzc(t5, j10) != 0;
            case 14:
                return zzmg.zzd(t5, j10) != 0;
            case 15:
                return zzmg.zzc(t5, j10) != 0;
            case 16:
                return zzmg.zzd(t5, j10) != 0;
            case 17:
                return zzmg.zze(t5, j10) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x0071 A[PHI: r12
      0x0071: PHI (r12v4 int) = 
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v8 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v9 int)
      (r12v1 int)
     binds: [B:18:0x0058, B:180:0x04cf, B:177:0x04bb, B:171:0x0495, B:168:0x0478, B:165:0x045d, B:162:0x0444, B:159:0x042b, B:156:0x0415, B:153:0x0401, B:150:0x03e9, B:147:0x03d0, B:144:0x03b1, B:123:0x02bd, B:120:0x02a7, B:117:0x0291, B:114:0x027b, B:111:0x0265, B:108:0x024f, B:105:0x0239, B:102:0x0223, B:99:0x020e, B:96:0x01f9, B:93:0x01e4, B:90:0x01cf, B:87:0x01ba, B:83:0x01a2, B:78:0x016e, B:75:0x0162, B:72:0x0152, B:69:0x0142, B:66:0x0132, B:63:0x0126, B:60:0x011a, B:57:0x010e, B:51:0x00f0, B:48:0x00dd, B:45:0x00cc, B:42:0x00bd, B:39:0x00ae, B:37:0x00a8, B:35:0x00a1, B:32:0x0096, B:29:0x0087, B:26:0x0078, B:23:0x0070, B:21:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.measurement.zzlb
    public final int zza(T t5) {
        int i10;
        int i11;
        int i12;
        int iZza;
        int iZzb;
        int iZzh;
        boolean z6;
        int iZzc;
        int iZzd;
        int iZzi;
        int iZzj;
        Unsafe unsafe = zzb;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i16 < this.zzc.length) {
            int iZzc2 = zzc(i16);
            int i18 = (267386880 & iZzc2) >>> 20;
            int[] iArr = this.zzc;
            int i19 = iArr[i16];
            int i20 = iArr[i16 + 2];
            int i21 = i20 & i13;
            if (i18 <= 17) {
                if (i21 != i14) {
                    i15 = i21 == i13 ? 0 : unsafe.getInt(t5, i21);
                    i14 = i21;
                }
                i10 = i14;
                i11 = i15;
                i12 = 1 << (i20 >>> 20);
            } else {
                i10 = i14;
                i11 = i15;
                i12 = 0;
            }
            long j6 = iZzc2 & i13;
            if (i18 >= zzir.zza.zza()) {
                zzir.zzb.zza();
            }
            switch (i18) {
                case 0:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZza = zzig.zza(i19, a.DEFAULT_VALUE_FOR_DOUBLE);
                        i17 += iZza;
                    }
                    break;
                case 1:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZza = zzig.zza(i19, 0.0f);
                        i17 += iZza;
                    }
                    break;
                case 2:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZza = zzig.zzd(i19, unsafe.getLong(t5, j6));
                        i17 += iZza;
                    }
                    break;
                case 3:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZza = zzig.zzg(i19, unsafe.getLong(t5, j6));
                        i17 += iZza;
                    }
                    break;
                case 4:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZza = zzig.zzg(i19, unsafe.getInt(t5, j6));
                        i17 += iZza;
                    }
                    break;
                case 5:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZza = zzig.zzc(i19, 0L);
                        i17 += iZza;
                    }
                    break;
                case 6:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZza = zzig.zzf(i19, 0);
                        i17 += iZza;
                    }
                    break;
                case 7:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zzb(i19, true);
                        i17 += iZzb;
                    }
                    break;
                case 8:
                    if (zza(t5, i16, i10, i11, i12)) {
                        Object object = unsafe.getObject(t5, j6);
                        if (object instanceof zzhm) {
                            iZzb = zzig.zzc(i19, (zzhm) object);
                        } else {
                            iZzb = zzig.zzb(i19, (String) object);
                        }
                        i17 += iZzb;
                    }
                    break;
                case 9:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzld.zza(i19, unsafe.getObject(t5, j6), zze(i16));
                        i17 += iZzb;
                    }
                    break;
                case 10:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zzc(i19, (zzhm) unsafe.getObject(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 11:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zzj(i19, unsafe.getInt(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 12:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zze(i19, unsafe.getInt(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 13:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzh = zzig.zzh(i19, 0);
                        i17 += iZzh;
                    }
                    break;
                case 14:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zze(i19, 0L);
                        i17 += iZzb;
                    }
                    break;
                case 15:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zzi(i19, unsafe.getInt(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 16:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zzf(i19, unsafe.getLong(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 17:
                    if (zza(t5, i16, i10, i11, i12)) {
                        iZzb = zzig.zzb(i19, (zzkj) unsafe.getObject(t5, j6), zze(i16));
                        i17 += iZzb;
                    }
                    break;
                case 18:
                    iZzb = zzld.zzd(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzb;
                    break;
                case 19:
                    z6 = false;
                    iZzc = zzld.zzc(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 20:
                    z6 = false;
                    iZzc = zzld.zzf(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 21:
                    z6 = false;
                    iZzc = zzld.zzj(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 22:
                    z6 = false;
                    iZzc = zzld.zze(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 23:
                    z6 = false;
                    iZzc = zzld.zzd(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 24:
                    z6 = false;
                    iZzc = zzld.zzc(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 25:
                    z6 = false;
                    iZzc = zzld.zza(i19, (List<?>) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 26:
                    iZzb = zzld.zzb(i19, (List) unsafe.getObject(t5, j6));
                    i17 += iZzb;
                    break;
                case 27:
                    iZzb = zzld.zzb(i19, (List<?>) unsafe.getObject(t5, j6), zze(i16));
                    i17 += iZzb;
                    break;
                case 28:
                    iZzb = zzld.zza(i19, (List<zzhm>) unsafe.getObject(t5, j6));
                    i17 += iZzb;
                    break;
                case 29:
                    iZzb = zzld.zzi(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzb;
                    break;
                case 30:
                    z6 = false;
                    iZzc = zzld.zzb(i19, (List<Integer>) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 31:
                    z6 = false;
                    iZzc = zzld.zzc(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 32:
                    z6 = false;
                    iZzc = zzld.zzd(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 33:
                    z6 = false;
                    iZzc = zzld.zzg(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 34:
                    z6 = false;
                    iZzc = zzld.zzh(i19, (List) unsafe.getObject(t5, j6), false);
                    i17 += iZzc;
                    break;
                case 35:
                    iZzd = zzld.zzd((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 36:
                    iZzd = zzld.zzc((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 37:
                    iZzd = zzld.zzf((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 38:
                    iZzd = zzld.zzj((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 39:
                    iZzd = zzld.zze((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 40:
                    iZzd = zzld.zzd((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 41:
                    iZzd = zzld.zzc((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 42:
                    iZzd = zzld.zza((List<?>) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 43:
                    iZzd = zzld.zzi((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 44:
                    iZzd = zzld.zzb((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 45:
                    iZzd = zzld.zzc((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 46:
                    iZzd = zzld.zzd((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 47:
                    iZzd = zzld.zzg((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 48:
                    iZzd = zzld.zzh((List) unsafe.getObject(t5, j6));
                    if (iZzd > 0) {
                        iZzi = zzig.zzi(i19);
                        iZzj = zzig.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i17 += iZzh;
                    }
                    break;
                case 49:
                    iZzb = zzld.zza(i19, (List<zzkj>) unsafe.getObject(t5, j6), zze(i16));
                    i17 += iZzb;
                    break;
                case 50:
                    iZzb = this.zzs.zza(i19, unsafe.getObject(t5, j6), zzf(i16));
                    i17 += iZzb;
                    break;
                case 51:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zza(i19, a.DEFAULT_VALUE_FOR_DOUBLE);
                        i17 += iZzb;
                    }
                    break;
                case 52:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zza(i19, 0.0f);
                        i17 += iZzb;
                    }
                    break;
                case 53:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzd(i19, zzd(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 54:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzg(i19, zzd(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 55:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzg(i19, zzc(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 56:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzc(i19, 0L);
                        i17 += iZzb;
                    }
                    break;
                case 57:
                    if (zzc(t5, i19, i16)) {
                        iZzh = zzig.zzf(i19, 0);
                        i17 += iZzh;
                    }
                    break;
                case 58:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzb(i19, true);
                        i17 += iZzb;
                    }
                    break;
                case 59:
                    if (zzc(t5, i19, i16)) {
                        Object object2 = unsafe.getObject(t5, j6);
                        if (object2 instanceof zzhm) {
                            iZzb = zzig.zzc(i19, (zzhm) object2);
                        } else {
                            iZzb = zzig.zzb(i19, (String) object2);
                        }
                        i17 += iZzb;
                    }
                    break;
                case 60:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzld.zza(i19, unsafe.getObject(t5, j6), zze(i16));
                        i17 += iZzb;
                    }
                    break;
                case 61:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzc(i19, (zzhm) unsafe.getObject(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 62:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzj(i19, zzc(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 63:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zze(i19, zzc(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 64:
                    if (zzc(t5, i19, i16)) {
                        iZzh = zzig.zzh(i19, 0);
                        i17 += iZzh;
                    }
                    break;
                case 65:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zze(i19, 0L);
                        i17 += iZzb;
                    }
                    break;
                case 66:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzi(i19, zzc(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 67:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzf(i19, zzd(t5, j6));
                        i17 += iZzb;
                    }
                    break;
                case 68:
                    if (zzc(t5, i19, i16)) {
                        iZzb = zzig.zzb(i19, (zzkj) unsafe.getObject(t5, j6), zze(i16));
                        i17 += iZzb;
                    }
                    break;
                default:
                    break;
            }
            i16 += 3;
            i14 = i10;
            i15 = i11;
            i13 = 1048575;
        }
        int iZza2 = 0;
        zzma<?, ?> zzmaVar = this.zzq;
        int iZza3 = i17 + zzmaVar.zza(zzmaVar.zzd(t5));
        if (!this.zzh) {
            return iZza3;
        }
        zziq<T> zziqVarZza = this.zzr.zza(t5);
        for (int i22 = 0; i22 < zziqVarZza.zza.zzb(); i22++) {
            Map.Entry entryZzb = zziqVarZza.zza.zzb(i22);
            iZza2 += zziq.zza((zzis<?>) entryZzb.getKey(), entryZzb.getValue());
        }
        for (Map.Entry entry : zziqVarZza.zza.zzc()) {
            iZza2 += zziq.zza((zzis<?>) entry.getKey(), entry.getValue());
        }
        return iZza3 + iZza2;
    }

    private final boolean zzc(T t5, int i10, int i11) {
        return zzmg.zzc(t5, (long) (zzb(i11) & 1048575)) == i10;
    }

    private final int zzb(int i10) {
        return this.zzc[i10 + 2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzb(T t5, T t10, int i10) {
        int i11 = this.zzc[i10];
        if (zzc(t10, i11, i10)) {
            long jZzc = zzc(i10) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t10, jZzc);
            if (object != null) {
                zzlb zzlbVarZze = zze(i10);
                if (!zzc(t5, i11, i10)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t5, jZzc, object);
                    } else {
                        Object objZza = zzlbVarZze.zza();
                        zzlbVarZze.zza(objZza, object);
                        unsafe.putObject(t5, jZzc, objZza);
                    }
                    zzb(t5, i11, i10);
                    return;
                }
                Object object2 = unsafe.getObject(t5, jZzc);
                if (!zzg(object2)) {
                    Object objZza2 = zzlbVarZze.zza();
                    zzlbVarZze.zza(objZza2, object2);
                    unsafe.putObject(t5, jZzc, objZza2);
                    object2 = objZza2;
                }
                zzlbVarZze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + String.valueOf(t10));
        }
    }

    private final void zzb(T t5, int i10) {
        int iZzb = zzb(i10);
        long j6 = 1048575 & iZzb;
        if (j6 == 1048575) {
            return;
        }
        zzmg.zza((Object) t5, j6, (1 << (iZzb >>> 20)) | zzmg.zzc(t5, j6));
    }

    private final void zzb(T t5, int i10, int i11) {
        zzmg.zza((Object) t5, zzb(i11) & 1048575, i10);
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final boolean zzb(T t5, T t10) {
        boolean zZza;
        int length = this.zzc.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iZzc = zzc(i10);
            long j6 = iZzc & 1048575;
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    if (!zzc(t5, t10, i10) || Double.doubleToLongBits(zzmg.zza(t5, j6)) != Double.doubleToLongBits(zzmg.zza(t10, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzc(t5, t10, i10) || Float.floatToIntBits(zzmg.zzb(t5, j6)) != Float.floatToIntBits(zzmg.zzb(t10, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzc(t5, t10, i10) || zzmg.zzd(t5, j6) != zzmg.zzd(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzc(t5, t10, i10) || zzmg.zzd(t5, j6) != zzmg.zzd(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzc(t5, t10, i10) || zzmg.zzc(t5, j6) != zzmg.zzc(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzc(t5, t10, i10) || zzmg.zzd(t5, j6) != zzmg.zzd(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzc(t5, t10, i10) || zzmg.zzc(t5, j6) != zzmg.zzc(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzc(t5, t10, i10) || zzmg.zzh(t5, j6) != zzmg.zzh(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzc(t5, t10, i10) || !zzld.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzc(t5, t10, i10) || !zzld.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzc(t5, t10, i10) || !zzld.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzc(t5, t10, i10) || zzmg.zzc(t5, j6) != zzmg.zzc(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzc(t5, t10, i10) || zzmg.zzc(t5, j6) != zzmg.zzc(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzc(t5, t10, i10) || zzmg.zzc(t5, j6) != zzmg.zzc(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzc(t5, t10, i10) || zzmg.zzd(t5, j6) != zzmg.zzd(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzc(t5, t10, i10) || zzmg.zzc(t5, j6) != zzmg.zzc(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzc(t5, t10, i10) || zzmg.zzd(t5, j6) != zzmg.zzd(t10, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzc(t5, t10, i10) || !zzld.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6))) {
                        return false;
                    }
                    continue;
                    break;
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
                    zZza = zzld.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6));
                    break;
                case 50:
                    zZza = zzld.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6));
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
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzb = zzb(i10) & 1048575;
                    if (zzmg.zzc(t5, jZzb) != zzmg.zzc(t10, jZzb) || !zzld.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZza) {
                return false;
            }
        }
        if (!this.zzq.zzd(t5).equals(this.zzq.zzd(t10))) {
            return false;
        }
        if (this.zzh) {
            return this.zzr.zza(t5).equals(this.zzr.zza(t10));
        }
        return true;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 35441. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    final int zza(T r31, byte[] r32, int r33, int r34, int r35, com.google.android.gms.internal.measurement.zzhl r36) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzkn.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzhl):int");
    }

    private final int zza(int i10) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zza(i10, 0);
    }

    private final int zza(int i10, int i11) {
        int length = (this.zzc.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.zzc[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x025b  */
    /* JADX WARN: Code duplicated, block: B:127:0x0260  */
    /* JADX WARN: Code duplicated, block: B:130:0x0276  */
    /* JADX WARN: Code duplicated, block: B:131:0x0279  */
    static <T> zzkn<T> zza(Class<T> cls, zzkh zzkhVar, zzkr zzkrVar, zzjs zzjsVar, zzma<?, ?> zzmaVar, zzim<?> zzimVar, zzkg zzkgVar) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int i26;
        zzkz zzkzVar;
        boolean z6;
        int iObjectFieldOffset;
        int i27;
        int i28;
        int iObjectFieldOffset2;
        int i29;
        Field fieldZza;
        int i30;
        char cCharAt9;
        int i31;
        int i32;
        int i33;
        Object obj;
        Field fieldZza2;
        int i34;
        Object obj2;
        Field fieldZza3;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        if (zzkhVar instanceof zzkz) {
            zzkz zzkzVar2 = (zzkz) zzkhVar;
            String strZzd = zzkzVar2.zzd();
            int length = strZzd.length();
            char c7 = 55296;
            if (strZzd.charAt(0) >= 55296) {
                int i39 = 1;
                while (true) {
                    i10 = i39 + 1;
                    if (strZzd.charAt(i39) < 55296) {
                        break;
                    }
                    i39 = i10;
                }
            } else {
                i10 = 1;
            }
            int i40 = i10 + 1;
            int iCharAt3 = strZzd.charAt(i10);
            if (iCharAt3 >= 55296) {
                int i41 = iCharAt3 & 8191;
                int i42 = 13;
                while (true) {
                    i38 = i40 + 1;
                    cCharAt13 = strZzd.charAt(i40);
                    if (cCharAt13 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt13 & 8191) << i42;
                    i42 += 13;
                    i40 = i38;
                }
                iCharAt3 = i41 | (cCharAt13 << i42);
                i40 = i38;
            }
            if (iCharAt3 == 0) {
                iCharAt = 0;
                iCharAt2 = 0;
                i14 = 0;
                i15 = 0;
                i11 = 0;
                i13 = 0;
                iArr = zza;
                i12 = 0;
            } else {
                int i43 = i40 + 1;
                int iCharAt4 = strZzd.charAt(i40);
                if (iCharAt4 >= 55296) {
                    int i44 = iCharAt4 & 8191;
                    int i45 = 13;
                    while (true) {
                        i23 = i43 + 1;
                        cCharAt8 = strZzd.charAt(i43);
                        if (cCharAt8 < 55296) {
                            break;
                        }
                        i44 |= (cCharAt8 & 8191) << i45;
                        i45 += 13;
                        i43 = i23;
                    }
                    iCharAt4 = i44 | (cCharAt8 << i45);
                    i43 = i23;
                }
                int i46 = i43 + 1;
                int iCharAt5 = strZzd.charAt(i43);
                if (iCharAt5 >= 55296) {
                    int i47 = iCharAt5 & 8191;
                    int i48 = 13;
                    while (true) {
                        i22 = i46 + 1;
                        cCharAt7 = strZzd.charAt(i46);
                        if (cCharAt7 < 55296) {
                            break;
                        }
                        i47 |= (cCharAt7 & 8191) << i48;
                        i48 += 13;
                        i46 = i22;
                    }
                    iCharAt5 = i47 | (cCharAt7 << i48);
                    i46 = i22;
                }
                int i49 = i46 + 1;
                int iCharAt6 = strZzd.charAt(i46);
                if (iCharAt6 >= 55296) {
                    int i50 = iCharAt6 & 8191;
                    int i51 = 13;
                    while (true) {
                        i21 = i49 + 1;
                        cCharAt6 = strZzd.charAt(i49);
                        if (cCharAt6 < 55296) {
                            break;
                        }
                        i50 |= (cCharAt6 & 8191) << i51;
                        i51 += 13;
                        i49 = i21;
                    }
                    iCharAt6 = i50 | (cCharAt6 << i51);
                    i49 = i21;
                }
                int i52 = i49 + 1;
                int iCharAt7 = strZzd.charAt(i49);
                if (iCharAt7 >= 55296) {
                    int i53 = iCharAt7 & 8191;
                    int i54 = 13;
                    while (true) {
                        i20 = i52 + 1;
                        cCharAt5 = strZzd.charAt(i52);
                        if (cCharAt5 < 55296) {
                            break;
                        }
                        i53 |= (cCharAt5 & 8191) << i54;
                        i54 += 13;
                        i52 = i20;
                    }
                    iCharAt7 = i53 | (cCharAt5 << i54);
                    i52 = i20;
                }
                int i55 = i52 + 1;
                iCharAt = strZzd.charAt(i52);
                if (iCharAt >= 55296) {
                    int i56 = iCharAt & 8191;
                    int i57 = 13;
                    while (true) {
                        i19 = i55 + 1;
                        cCharAt4 = strZzd.charAt(i55);
                        if (cCharAt4 < 55296) {
                            break;
                        }
                        i56 |= (cCharAt4 & 8191) << i57;
                        i57 += 13;
                        i55 = i19;
                    }
                    iCharAt = i56 | (cCharAt4 << i57);
                    i55 = i19;
                }
                int i58 = i55 + 1;
                iCharAt2 = strZzd.charAt(i55);
                if (iCharAt2 >= 55296) {
                    int i59 = iCharAt2 & 8191;
                    int i60 = 13;
                    while (true) {
                        i18 = i58 + 1;
                        cCharAt3 = strZzd.charAt(i58);
                        if (cCharAt3 < 55296) {
                            break;
                        }
                        i59 |= (cCharAt3 & 8191) << i60;
                        i60 += 13;
                        i58 = i18;
                    }
                    iCharAt2 = i59 | (cCharAt3 << i60);
                    i58 = i18;
                }
                int i61 = i58 + 1;
                int iCharAt8 = strZzd.charAt(i58);
                if (iCharAt8 >= 55296) {
                    int i62 = iCharAt8 & 8191;
                    int i63 = 13;
                    while (true) {
                        i17 = i61 + 1;
                        cCharAt2 = strZzd.charAt(i61);
                        if (cCharAt2 < 55296) {
                            break;
                        }
                        i62 |= (cCharAt2 & 8191) << i63;
                        i63 += 13;
                        i61 = i17;
                    }
                    iCharAt8 = i62 | (cCharAt2 << i63);
                    i61 = i17;
                }
                int i64 = i61 + 1;
                int iCharAt9 = strZzd.charAt(i61);
                if (iCharAt9 >= 55296) {
                    int i65 = iCharAt9 & 8191;
                    int i66 = 13;
                    while (true) {
                        i16 = i64 + 1;
                        cCharAt = strZzd.charAt(i64);
                        if (cCharAt < 55296) {
                            break;
                        }
                        i65 |= (cCharAt & 8191) << i66;
                        i66 += 13;
                        i64 = i16;
                    }
                    iCharAt9 = i65 | (cCharAt << i66);
                    i64 = i16;
                }
                i11 = (iCharAt4 << 1) + iCharAt5;
                i12 = iCharAt4;
                iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
                i13 = iCharAt9;
                i40 = i64;
                i14 = iCharAt6;
                i15 = iCharAt7;
            }
            Unsafe unsafe = zzb;
            Object[] objArrZze = zzkzVar2.zze();
            Class<?> cls2 = zzkzVar2.zza().getClass();
            int[] iArr2 = new int[iCharAt * 3];
            Object[] objArr = new Object[iCharAt << 1];
            int i67 = i13 + iCharAt2;
            int i68 = i13;
            int i69 = i67;
            int i70 = 0;
            int i71 = 0;
            while (i40 < length) {
                int i72 = i40 + 1;
                int iCharAt10 = strZzd.charAt(i40);
                if (iCharAt10 >= c7) {
                    int i73 = iCharAt10 & 8191;
                    int i74 = i72;
                    int i75 = 13;
                    while (true) {
                        i37 = i74 + 1;
                        cCharAt12 = strZzd.charAt(i74);
                        if (cCharAt12 < c7) {
                            break;
                        }
                        i73 |= (cCharAt12 & 8191) << i75;
                        i75 += 13;
                        i74 = i37;
                    }
                    iCharAt10 = i73 | (cCharAt12 << i75);
                    i24 = i37;
                } else {
                    i24 = i72;
                }
                int i76 = i24 + 1;
                int iCharAt11 = strZzd.charAt(i24);
                if (iCharAt11 >= c7) {
                    int i77 = iCharAt11 & 8191;
                    int i78 = i76;
                    int i79 = 13;
                    while (true) {
                        i36 = i78 + 1;
                        cCharAt11 = strZzd.charAt(i78);
                        if (cCharAt11 < c7) {
                            break;
                        }
                        i77 |= (cCharAt11 & 8191) << i79;
                        i79 += 13;
                        i78 = i36;
                    }
                    iCharAt11 = i77 | (cCharAt11 << i79);
                    i25 = i36;
                } else {
                    i25 = i76;
                }
                int i80 = iCharAt11 & 255;
                int i81 = length;
                if ((iCharAt11 & 1024) != 0) {
                    iArr[i71] = i70;
                    i71++;
                }
                int i82 = i15;
                if (i80 >= 51) {
                    int i83 = i25 + 1;
                    int iCharAt12 = strZzd.charAt(i25);
                    char c10 = 55296;
                    if (iCharAt12 >= 55296) {
                        int i84 = iCharAt12 & 8191;
                        int i85 = 13;
                        while (true) {
                            i35 = i83 + 1;
                            cCharAt10 = strZzd.charAt(i83);
                            if (cCharAt10 < c10) {
                                break;
                            }
                            i84 |= (cCharAt10 & 8191) << i85;
                            i85 += 13;
                            i83 = i35;
                            c10 = 55296;
                        }
                        iCharAt12 = i84 | (cCharAt10 << i85);
                        i83 = i35;
                    }
                    int i86 = i80 - 51;
                    int i87 = i83;
                    if (i86 != 9 && i86 != 17) {
                        if (i86 == 12 && (zzkzVar2.zzb().equals(zzky.PROTO2) || (iCharAt11 & 2048) != 0)) {
                            i32 = i11 + 1;
                            objArr[((i70 / 3) << 1) + 1] = objArrZze[i11];
                        }
                        i33 = iCharAt12 << 1;
                        obj = objArrZze[i33];
                        if (obj instanceof Field) {
                            fieldZza2 = (Field) obj;
                        } else {
                            fieldZza2 = zza(cls2, (String) obj);
                            objArrZze[i33] = fieldZza2;
                        }
                        iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza2);
                        i34 = i33 + 1;
                        obj2 = objArrZze[i34];
                        if (obj2 instanceof Field) {
                            fieldZza3 = (Field) obj2;
                        } else {
                            fieldZza3 = zza(cls2, (String) obj2);
                            objArrZze[i34] = fieldZza3;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza3);
                        zzkzVar = zzkzVar2;
                        strZzd = strZzd;
                        i26 = i11;
                        i27 = i87;
                        i29 = 0;
                        z6 = true;
                    } else {
                        i32 = i11 + 1;
                        objArr[((i70 / 3) << 1) + 1] = objArrZze[i11];
                    }
                    i11 = i32;
                    i33 = iCharAt12 << 1;
                    obj = objArrZze[i33];
                    if (obj instanceof Field) {
                        fieldZza2 = (Field) obj;
                    } else {
                        fieldZza2 = zza(cls2, (String) obj);
                        objArrZze[i33] = fieldZza2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza2);
                    i34 = i33 + 1;
                    obj2 = objArrZze[i34];
                    if (obj2 instanceof Field) {
                        fieldZza3 = (Field) obj2;
                    } else {
                        fieldZza3 = zza(cls2, (String) obj2);
                        objArrZze[i34] = fieldZza3;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza3);
                    zzkzVar = zzkzVar2;
                    strZzd = strZzd;
                    i26 = i11;
                    i27 = i87;
                    i29 = 0;
                    z6 = true;
                } else {
                    i26 = i11 + 1;
                    Field fieldZza4 = zza(cls2, (String) objArrZze[i11]);
                    if (i80 == 9 || i80 == 17) {
                        zzkzVar = zzkzVar2;
                        objArr[((i70 / 3) << 1) + 1] = fieldZza4.getType();
                    } else {
                        if (i80 == 27 || i80 == 49) {
                            zzkzVar = zzkzVar2;
                            i31 = i11 + 2;
                            objArr[((i70 / 3) << 1) + 1] = objArrZze[i26];
                        } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                            zzkzVar = zzkzVar2;
                            if (zzkzVar2.zzb() == zzky.PROTO2 || (iCharAt11 & 2048) != 0) {
                                i31 = i11 + 2;
                                objArr[((i70 / 3) << 1) + 1] = objArrZze[i26];
                            }
                        } else if (i80 == 50) {
                            int i88 = i68 + 1;
                            iArr[i68] = i70;
                            int i89 = (i70 / 3) << 1;
                            int i90 = i11 + 2;
                            objArr[i89] = objArrZze[i26];
                            if ((iCharAt11 & 2048) != 0) {
                                i26 = i11 + 3;
                                objArr[i89 + 1] = objArrZze[i90];
                                zzkzVar = zzkzVar2;
                                i68 = i88;
                            } else {
                                i68 = i88;
                                i26 = i90;
                                zzkzVar = zzkzVar2;
                            }
                        } else {
                            zzkzVar = zzkzVar2;
                        }
                        i26 = i31;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZza4);
                    if ((iCharAt11 & 4096) == 0 || i80 > 17) {
                        z6 = true;
                        iObjectFieldOffset = 1048575;
                        i27 = i25;
                        i28 = 0;
                    } else {
                        i27 = i25 + 1;
                        int iCharAt13 = strZzd.charAt(i25);
                        if (iCharAt13 >= 55296) {
                            int i91 = iCharAt13 & 8191;
                            int i92 = 13;
                            while (true) {
                                i30 = i27 + 1;
                                cCharAt9 = strZzd.charAt(i27);
                                if (cCharAt9 < 55296) {
                                    break;
                                }
                                i91 |= (cCharAt9 & 8191) << i92;
                                i92 += 13;
                                i27 = i30;
                            }
                            iCharAt13 = i91 | (cCharAt9 << i92);
                            i27 = i30;
                        }
                        z6 = true;
                        int i93 = (i12 << 1) + (iCharAt13 / 32);
                        Object obj3 = objArrZze[i93];
                        if (obj3 instanceof Field) {
                            fieldZza = (Field) obj3;
                        } else {
                            fieldZza = zza(cls2, (String) obj3);
                            objArrZze[i93] = fieldZza;
                        }
                        i28 = iCharAt13 % 32;
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza);
                    }
                    if (i80 >= 18 && i80 <= 49) {
                        iArr[i69] = iObjectFieldOffset3;
                        i69++;
                    }
                    int i94 = i28;
                    iObjectFieldOffset2 = iObjectFieldOffset3;
                    i29 = i94;
                }
                int i95 = i70 + 1;
                iArr2[i70] = iCharAt10;
                int i96 = i70 + 2;
                int i97 = i12;
                iArr2[i95] = (i80 << 20) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | iObjectFieldOffset2;
                i70 += 3;
                iArr2[i96] = (i29 << 20) | iObjectFieldOffset;
                i40 = i27;
                i11 = i26;
                length = i81;
                zzkzVar2 = zzkzVar;
                strZzd = strZzd;
                i15 = i82;
                i12 = i97;
                i14 = i14;
                c7 = 55296;
            }
            zzkz zzkzVar3 = zzkzVar2;
            return new zzkn<>(iArr2, objArr, i14, i15, zzkzVar3.zza(), zzkzVar3.zzb(), false, iArr, i13, i67, zzkrVar, zzjsVar, zzmaVar, zzimVar, zzkgVar);
        }
        throw new NoSuchMethodError();
    }

    private final <UT, UB> UB zza(Object obj, int i10, UB ub, zzma<UT, UB> zzmaVar, Object obj2) {
        zzje zzjeVarZzd;
        int i11 = this.zzc[i10];
        Object objZze = zzmg.zze(obj, zzc(i10) & 1048575);
        return (objZze == null || (zzjeVarZzd = zzd(i10)) == null) ? ub : (UB) zza(i10, i11, this.zzs.zze(objZze), zzjeVarZzd, ub, zzmaVar, obj2);
    }

    private final <K, V, UT, UB> UB zza(int i10, int i11, Map<K, V> map, zzje zzjeVar, UB ub, zzma<UT, UB> zzmaVar, Object obj) {
        zzke<?, ?> zzkeVarZza = this.zzs.zza(zzf(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzjeVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzmaVar.zzc(obj);
                }
                zzhv zzhvVarZzc = zzhm.zzc(zzkb.zza(zzkeVarZza, next.getKey(), next.getValue()));
                try {
                    zzkb.zza(zzhvVarZzc.zzb(), zzkeVarZza, next.getKey(), next.getValue());
                    zzmaVar.zza(ub, i11, zzhvVarZzc.zza());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t5, int i10) {
        zzlb zzlbVarZze = zze(i10);
        long jZzc = zzc(i10) & 1048575;
        if (!zzc((Object) t5, i10)) {
            return zzlbVarZze.zza();
        }
        Object object = zzb.getObject(t5, jZzc);
        if (zzg(object)) {
            return object;
        }
        Object objZza = zzlbVarZze.zza();
        if (object != null) {
            zzlbVarZze.zza(objZza, object);
        }
        return objZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t5, int i10, int i11) {
        zzlb zzlbVarZze = zze(i11);
        if (!zzc(t5, i10, i11)) {
            return zzlbVarZze.zza();
        }
        Object object = zzb.getObject(t5, zzc(i11) & 1048575);
        if (zzg(object)) {
            return object;
        }
        Object objZza = zzlbVarZze.zza();
        if (object != null) {
            zzlbVarZze.zza(objZza, object);
        }
        return objZza;
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final T zza() {
        return (T) this.zzo.zza(this.zzg);
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
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, T t10) {
        zzf(t5);
        t10.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int iZzc = zzc(i10);
            long j6 = 1048575 & iZzc;
            int i11 = this.zzc[i10];
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza(t5, j6, zzmg.zza(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 1:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzb(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 2:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzd(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 3:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzd(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 4:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzc(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 5:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzd(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 6:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzc(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 7:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zzc(t5, j6, zzmg.zzh(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 8:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza(t5, j6, zzmg.zze(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 9:
                    zza(t5, t10, i10);
                    break;
                case 10:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza(t5, j6, zzmg.zze(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 11:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzc(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 12:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzc(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 13:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzc(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 14:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzd(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 15:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzc(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 16:
                    if (zzc((Object) t10, i10)) {
                        zzmg.zza((Object) t5, j6, zzmg.zzd(t10, j6));
                        zzb((Object) t5, i10);
                    }
                    break;
                case 17:
                    zza(t5, t10, i10);
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
                    this.zzp.zza(t5, t10, j6);
                    break;
                case 50:
                    zzld.zza(this.zzs, t5, t10, j6);
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
                    if (zzc(t10, i11, i10)) {
                        zzmg.zza(t5, j6, zzmg.zze(t10, j6));
                        zzb(t5, i11, i10);
                    }
                    break;
                case 60:
                    zzb(t5, t10, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzc(t10, i11, i10)) {
                        zzmg.zza(t5, j6, zzmg.zze(t10, j6));
                        zzb(t5, i11, i10);
                    }
                    break;
                case 68:
                    zzb(t5, t10, i10);
                    break;
            }
        }
        zzld.zza(this.zzq, t5, t10);
        if (this.zzh) {
            zzld.zza(this.zzr, t5, t10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:169:0x062e A[Catch: all -> 0x00ca, TryCatch #4 {all -> 0x00ca, blocks: (B:48:0x00c4, B:53:0x00d2, B:167:0x0629, B:169:0x062e, B:170:0x0633, B:65:0x00fe, B:67:0x0113, B:68:0x0124, B:69:0x0135, B:70:0x0146, B:71:0x0157, B:73:0x0161, B:76:0x0168, B:77:0x016d, B:78:0x017a, B:79:0x018b, B:80:0x0199, B:81:0x01ab, B:82:0x01b3, B:83:0x01c5, B:84:0x01d7, B:85:0x01e9, B:86:0x01fb, B:87:0x020d, B:88:0x021f, B:89:0x0231, B:90:0x0243, B:92:0x0253, B:96:0x0274, B:93:0x025d, B:95:0x0265, B:97:0x0285, B:98:0x0297, B:99:0x02a5, B:100:0x02b3, B:101:0x02c1), top: B:195:0x00c4 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x063f A[LOOP:1: B:173:0x063b->B:175:0x063f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x0653  */
    /* JADX WARN: Code duplicated, block: B:184:0x0662 A[LOOP:2: B:182:0x065e->B:184:0x0662, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:186:0x0676  */
    /* JADX WARN: Code duplicated, block: B:208:0x0639 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, zzlc zzlcVar, zzik zzikVar) throws Throwable {
        zzma zzmaVar;
        int i10;
        zzma zzmaVar2;
        T t10;
        Object obj;
        zzim<?> zzimVar;
        zzik zzikVar2;
        Object obj2;
        int i11;
        T t11 = t5;
        zzik zzikVar3 = zzikVar;
        zzikVar.getClass();
        zzf(t5);
        zzma zzmaVar3 = this.zzq;
        zzim<?> zzimVar2 = this.zzr;
        Object objZza = null;
        Object obj3 = null;
        while (true) {
            try {
                int iZzc = zzlcVar.zzc();
                int iZza = zza(iZzc);
                if (iZza < 0) {
                    if (iZzc == Integer.MAX_VALUE) {
                        for (int i12 = this.zzm; i12 < this.zzn; i12++) {
                            objZza = zza(t5, this.zzl[i12], objZza, (zzma<UT, Object>) zzmaVar3, t5);
                        }
                        if (objZza != null) {
                            zzmaVar3.zzb(t11, objZza);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objZza2 = !this.zzh ? null : zzimVar2.zza(zzikVar3, this.zzg, iZzc);
                        if (objZza2 != null) {
                            Object objZzb = obj3 == null ? zzimVar2.zzb(t11) : obj3;
                            zzmaVar2 = zzmaVar3;
                            t10 = t11;
                            try {
                                objZza = zzimVar2.zza(t5, zzlcVar, objZza2, zzikVar, objZzb, objZza, zzmaVar2);
                                obj3 = objZzb;
                            } catch (Throwable th) {
                                th = th;
                                t11 = t10;
                                zzmaVar = zzmaVar2;
                                while (i10 < this.zzn) {
                                    objZza = zza(t5, this.zzl[i10], objZza, (zzma<UT, Object>) zzmaVar, t5);
                                }
                                if (objZza != null) {
                                    zzmaVar.zzb(t11, objZza);
                                }
                                throw th;
                            }
                        } else {
                            zzmaVar2 = zzmaVar3;
                            t10 = t11;
                            zzmaVar2.zza(zzlcVar);
                            if (objZza == null) {
                                objZza = zzmaVar2.zzc(t10);
                            }
                            if (!zzmaVar2.zza(objZza, zzlcVar)) {
                                int i13 = this.zzm;
                                while (i13 < this.zzn) {
                                    zzma zzmaVar4 = zzmaVar2;
                                    objZza = zza(t5, this.zzl[i13], objZza, (zzma<UT, Object>) zzmaVar4, t5);
                                    i13++;
                                    t10 = t10;
                                    zzmaVar2 = zzmaVar4;
                                }
                                T t12 = t10;
                                zzma zzmaVar5 = zzmaVar2;
                                if (objZza != null) {
                                    zzmaVar5.zzb(t12, objZza);
                                    return;
                                }
                                return;
                            }
                        }
                        t11 = t10;
                        zzmaVar3 = zzmaVar2;
                    } catch (Throwable th2) {
                        th = th2;
                        zzmaVar = zzmaVar3;
                        t11 = t11;
                        while (i10 < this.zzn) {
                            objZza = zza(t5, this.zzl[i10], objZza, (zzma<UT, Object>) zzmaVar, t5);
                        }
                        if (objZza != null) {
                            zzmaVar.zzb(t11, objZza);
                        }
                        throw th;
                    }
                } else {
                    zzmaVar = zzmaVar3;
                    t11 = t11;
                    try {
                        int iZzc2 = zzc(iZza);
                        switch ((267386880 & iZzc2) >>> 20) {
                            case 0:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza(t11, iZzc2 & 1048575, zzlcVar.zza());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 1:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzb());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 2:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzl());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 3:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzo());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 4:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzg());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 5:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzk());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 6:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzf());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 7:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zzc(t11, iZzc2 & 1048575, zzlcVar.zzs());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 8:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zza((Object) t11, iZzc2, zzlcVar);
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 9:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzkj zzkjVar = (zzkj) zza((Object) t11, iZza);
                                zzlcVar.zzb(zzkjVar, (zzlb<zzkj>) zze(iZza), zzikVar2);
                                zza(t11, iZza, zzkjVar);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 10:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza(t11, iZzc2 & 1048575, zzlcVar.zzp());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 11:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzj());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 12:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                int iZze = zzlcVar.zze();
                                zzje zzjeVarZzd = zzd(iZza);
                                if (zzjeVarZzd != null && !zzjeVarZzd.zza(iZze)) {
                                    objZza = zzld.zza(t11, iZzc, iZze, obj, zzmaVar);
                                    zzimVar2 = zzimVar;
                                    zzikVar3 = zzikVar2;
                                    zzmaVar3 = zzmaVar;
                                }
                                zzmg.zza((Object) t11, iZzc2 & 1048575, iZze);
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 13:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzh());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 14:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzm());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 15:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzi());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 16:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzmg.zza((Object) t11, iZzc2 & 1048575, zzlcVar.zzn());
                                zzb((Object) t11, iZza);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 17:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzkj zzkjVar2 = (zzkj) zza((Object) t11, iZza);
                                zzlcVar.zza(zzkjVar2, (zzlb<zzkj>) zze(iZza), zzikVar2);
                                zza(t11, iZza, zzkjVar2);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 18:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzc(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 19:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzg(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 20:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzi(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 21:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzq(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 22:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzh(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 23:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzf(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 24:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zze(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 25:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zza(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 26:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                if (zzg(iZzc2)) {
                                    zzlcVar.zzo(this.zzp.zza(t11, iZzc2 & 1048575));
                                } else {
                                    zzlcVar.zzn(this.zzp.zza(t11, iZzc2 & 1048575));
                                }
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 27:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzb((List) this.zzp.zza(t11, iZzc2 & 1048575), (zzlb) zze(iZza), zzikVar2);
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 28:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzb(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 29:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzp(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 30:
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                List<Integer> listZza = this.zzp.zza(t11, iZzc2 & 1048575);
                                zzlcVar.zzd(listZza);
                                objZza = zzld.zza(t5, iZzc, listZza, zzd(iZza), objZza, zzmaVar);
                                zzimVar2 = zzimVar;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 31:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzj(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 32:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzk(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 33:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzl(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 34:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzm(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 35:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzc(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 36:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzg(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 37:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzi(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 38:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzq(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 39:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzh(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 40:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzf(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 41:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zze(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 42:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zza(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 43:
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzlcVar.zzp(this.zzp.zza(t11, iZzc2 & 1048575));
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 44:
                                List<Integer> listZza2 = this.zzp.zza(t11, iZzc2 & 1048575);
                                zzlcVar.zzd(listZza2);
                                obj2 = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                try {
                                    objZza = zzld.zza(t5, iZzc, listZza2, zzd(iZza), obj2, zzmaVar);
                                } catch (zzjh unused) {
                                    objZza = obj2;
                                    zzmaVar.zza(zzlcVar);
                                    if (objZza == null) {
                                        objZza = zzmaVar.zzc(t11);
                                    }
                                    if (!zzmaVar.zza(objZza, zzlcVar)) {
                                        for (i11 = this.zzm; i11 < this.zzn; i11++) {
                                            objZza = zza(t5, this.zzl[i11], objZza, (zzma<UT, Object>) zzmaVar, t5);
                                        }
                                        if (objZza != null) {
                                            zzmaVar.zzb(t11, objZza);
                                            return;
                                        }
                                        return;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    objZza = obj2;
                                    for (i10 = this.zzm; i10 < this.zzn; i10++) {
                                        objZza = zza(t5, this.zzl[i10], objZza, (zzma<UT, Object>) zzmaVar, t5);
                                    }
                                    if (objZza != null) {
                                        zzmaVar.zzb(t11, objZza);
                                    }
                                    throw th;
                                }
                                zzimVar2 = zzimVar;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 45:
                                zzlcVar.zzj(this.zzp.zza(t11, iZzc2 & 1048575));
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 46:
                                zzlcVar.zzk(this.zzp.zza(t11, iZzc2 & 1048575));
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 47:
                                zzlcVar.zzl(this.zzp.zza(t11, iZzc2 & 1048575));
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 48:
                                zzlcVar.zzm(this.zzp.zza(t11, iZzc2 & 1048575));
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 49:
                                zzlcVar.zza((List) this.zzp.zza(t11, iZzc2 & 1048575), (zzlb) zze(iZza), zzikVar3);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 50:
                                Object objZzf = zzf(iZza);
                                long jZzc = zzc(iZza) & 1048575;
                                Object objZze = zzmg.zze(t11, jZzc);
                                if (objZze == null) {
                                    objZze = this.zzs.zzb(objZzf);
                                    zzmg.zza(t11, jZzc, objZze);
                                } else if (this.zzs.zzf(objZze)) {
                                    Object objZzb2 = this.zzs.zzb(objZzf);
                                    this.zzs.zza(objZzb2, objZze);
                                    zzmg.zza(t11, jZzc, objZzb2);
                                    objZze = objZzb2;
                                }
                                zzlcVar.zza(this.zzs.zze(objZze), this.zzs.zza(objZzf), zzikVar3);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 51:
                                zzmg.zza(t11, iZzc2 & 1048575, Double.valueOf(zzlcVar.zza()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 52:
                                zzmg.zza(t11, iZzc2 & 1048575, Float.valueOf(zzlcVar.zzb()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 53:
                                zzmg.zza(t11, iZzc2 & 1048575, Long.valueOf(zzlcVar.zzl()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 54:
                                zzmg.zza(t11, iZzc2 & 1048575, Long.valueOf(zzlcVar.zzo()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 55:
                                zzmg.zza(t11, iZzc2 & 1048575, Integer.valueOf(zzlcVar.zzg()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 56:
                                zzmg.zza(t11, iZzc2 & 1048575, Long.valueOf(zzlcVar.zzk()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 57:
                                zzmg.zza(t11, iZzc2 & 1048575, Integer.valueOf(zzlcVar.zzf()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 58:
                                zzmg.zza(t11, iZzc2 & 1048575, Boolean.valueOf(zzlcVar.zzs()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 59:
                                zza((Object) t11, iZzc2, zzlcVar);
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 60:
                                zzkj zzkjVar3 = (zzkj) zza(t11, iZzc, iZza);
                                zzlcVar.zzb(zzkjVar3, (zzlb<zzkj>) zze(iZza), zzikVar3);
                                zza(t11, iZzc, iZza, zzkjVar3);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 61:
                                zzmg.zza(t11, iZzc2 & 1048575, zzlcVar.zzp());
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 62:
                                zzmg.zza(t11, iZzc2 & 1048575, Integer.valueOf(zzlcVar.zzj()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 63:
                                int iZze2 = zzlcVar.zze();
                                zzje zzjeVarZzd2 = zzd(iZza);
                                if (zzjeVarZzd2 != null && !zzjeVarZzd2.zza(iZze2)) {
                                    objZza = zzld.zza(t11, iZzc, iZze2, objZza, zzmaVar);
                                    t11 = t11;
                                    zzmaVar3 = zzmaVar;
                                }
                                zzmg.zza(t11, iZzc2 & 1048575, Integer.valueOf(iZze2));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 64:
                                zzmg.zza(t11, iZzc2 & 1048575, Integer.valueOf(zzlcVar.zzh()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 65:
                                zzmg.zza(t11, iZzc2 & 1048575, Long.valueOf(zzlcVar.zzm()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 66:
                                zzmg.zza(t11, iZzc2 & 1048575, Integer.valueOf(zzlcVar.zzi()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 67:
                                zzmg.zza(t11, iZzc2 & 1048575, Long.valueOf(zzlcVar.zzn()));
                                zzb(t11, iZzc, iZza);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            case 68:
                                zzkj zzkjVar4 = (zzkj) zza(t11, iZzc, iZza);
                                zzlcVar.zza(zzkjVar4, (zzlb<zzkj>) zze(iZza), zzikVar3);
                                zza(t11, iZzc, iZza, zzkjVar4);
                                obj = objZza;
                                zzimVar = zzimVar2;
                                zzikVar2 = zzikVar3;
                                zzimVar2 = zzimVar;
                                objZza = obj;
                                zzikVar3 = zzikVar2;
                                zzmaVar3 = zzmaVar;
                                break;
                            default:
                                if (objZza == null) {
                                    try {
                                        try {
                                            objZza = zzmaVar.zzc(t11);
                                        } catch (zzjh unused2) {
                                            obj2 = objZza;
                                            zzimVar = zzimVar2;
                                            zzikVar2 = zzikVar3;
                                            objZza = obj2;
                                            zzmaVar.zza(zzlcVar);
                                            if (objZza == null) {
                                                objZza = zzmaVar.zzc(t11);
                                            }
                                            if (!zzmaVar.zza(objZza, zzlcVar)) {
                                                while (i11 < this.zzn) {
                                                    objZza = zza(t5, this.zzl[i11], objZza, (zzma<UT, Object>) zzmaVar, t5);
                                                }
                                                if (objZza != null) {
                                                    zzmaVar.zzb(t11, objZza);
                                                    return;
                                                }
                                                return;
                                            }
                                            zzimVar2 = zzimVar;
                                            zzikVar3 = zzikVar2;
                                            zzmaVar3 = zzmaVar;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        while (i10 < this.zzn) {
                                            objZza = zza(t5, this.zzl[i10], objZza, (zzma<UT, Object>) zzmaVar, t5);
                                        }
                                        if (objZza != null) {
                                            zzmaVar.zzb(t11, objZza);
                                        }
                                        throw th;
                                    }
                                }
                                try {
                                    if (!zzmaVar.zza(objZza, zzlcVar)) {
                                        for (int i14 = this.zzm; i14 < this.zzn; i14++) {
                                            objZza = zza(t5, this.zzl[i14], objZza, (zzma<UT, Object>) zzmaVar, t5);
                                        }
                                        if (objZza != null) {
                                            zzmaVar.zzb(t11, objZza);
                                            return;
                                        }
                                        return;
                                    }
                                    t11 = t11;
                                } catch (zzjh unused3) {
                                    zzimVar = zzimVar2;
                                    zzikVar2 = zzikVar3;
                                    zzmaVar.zza(zzlcVar);
                                    if (objZza == null) {
                                        objZza = zzmaVar.zzc(t11);
                                    }
                                    if (!zzmaVar.zza(objZza, zzlcVar)) {
                                        while (i11 < this.zzn) {
                                            objZza = zza(t5, this.zzl[i11], objZza, (zzma<UT, Object>) zzmaVar, t5);
                                        }
                                        if (objZza != null) {
                                            zzmaVar.zzb(t11, objZza);
                                            return;
                                        }
                                        return;
                                    }
                                    zzimVar2 = zzimVar;
                                    zzikVar3 = zzikVar2;
                                }
                                zzmaVar3 = zzmaVar;
                                break;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, byte[] bArr, int i10, int i11, zzhl zzhlVar) throws IOException {
        zza(t5, bArr, i10, i11, 0, zzhlVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(T t5, T t10, int i10) {
        if (zzc((Object) t10, i10)) {
            long jZzc = zzc(i10) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t10, jZzc);
            if (object != null) {
                zzlb zzlbVarZze = zze(i10);
                if (!zzc((Object) t5, i10)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t5, jZzc, object);
                    } else {
                        Object objZza = zzlbVarZze.zza();
                        zzlbVarZze.zza(objZza, object);
                        unsafe.putObject(t5, jZzc, objZza);
                    }
                    zzb((Object) t5, i10);
                    return;
                }
                Object object2 = unsafe.getObject(t5, jZzc);
                if (!zzg(object2)) {
                    Object objZza2 = zzlbVarZze.zza();
                    zzlbVarZze.zza(objZza2, object2);
                    unsafe.putObject(t5, jZzc, objZza2);
                    object2 = objZza2;
                }
                zzlbVarZze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + String.valueOf(t10));
        }
    }

    private final void zza(Object obj, int i10, zzlc zzlcVar) throws IOException {
        if (zzg(i10)) {
            zzmg.zza(obj, i10 & 1048575, zzlcVar.zzr());
        } else if (this.zzi) {
            zzmg.zza(obj, i10 & 1048575, zzlcVar.zzq());
        } else {
            zzmg.zza(obj, i10 & 1048575, zzlcVar.zzp());
        }
    }

    private final void zza(T t5, int i10, Object obj) {
        zzb.putObject(t5, zzc(i10) & 1048575, obj);
        zzb((Object) t5, i10);
    }

    private final void zza(T t5, int i10, int i11, Object obj) {
        zzb.putObject(t5, zzc(i11) & 1048575, obj);
        zzb(t5, i10, i11);
    }

    private final <K, V> void zza(zzmw zzmwVar, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            zzmwVar.zza(i10, this.zzs.zza(zzf(i11)), this.zzs.zzd(obj));
        }
    }

    private static void zza(int i10, Object obj, zzmw zzmwVar) throws IOException {
        if (obj instanceof String) {
            zzmwVar.zza(i10, (String) obj);
        } else {
            zzmwVar.zza(i10, (zzhm) obj);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:176:0x054b  */
    /* JADX WARN: Code duplicated, block: B:9:0x0037  */
    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, zzmw zzmwVar) throws IOException {
        Map.Entry<?, ?> entry;
        Iterator it;
        int i10;
        int i11;
        int i12;
        boolean z6;
        int i13;
        Unsafe unsafe;
        boolean z10;
        Iterator itZzc;
        Map.Entry<?, ?> entry2;
        zzmw zzmwVar2 = zzmwVar;
        int i14 = 267386880;
        int i15 = 1048575;
        if (zzmwVar.zza() == zzmz.zzb) {
            zza(this.zzq, t5, zzmwVar2);
            if (this.zzh) {
                zziq<T> zziqVarZza = this.zzr.zza(t5);
                if (zziqVarZza.zza.isEmpty()) {
                    itZzc = null;
                    entry2 = null;
                } else {
                    itZzc = zziqVarZza.zzc();
                    entry2 = (Map.Entry) itZzc.next();
                }
            } else {
                itZzc = null;
                entry2 = null;
            }
            for (int length = this.zzc.length - 3; length >= 0; length -= 3) {
                int iZzc = zzc(length);
                int i16 = this.zzc[length];
                while (entry2 != null && this.zzr.zza(entry2) > i16) {
                    this.zzr.zza(zzmwVar2, entry2);
                    entry2 = itZzc.hasNext() ? (Map.Entry) itZzc.next() : null;
                }
                switch ((iZzc & 267386880) >>> 20) {
                    case 0:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zza(i16, zzmg.zza(t5, iZzc & 1048575));
                        }
                        break;
                    case 1:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zza(i16, zzmg.zzb(t5, iZzc & 1048575));
                        }
                        break;
                    case 2:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzb(i16, zzmg.zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 3:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zze(i16, zzmg.zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 4:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzc(i16, zzmg.zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 5:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zza(i16, zzmg.zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 6:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzb(i16, zzmg.zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 7:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zza(i16, zzmg.zzh(t5, iZzc & 1048575));
                        }
                        break;
                    case 8:
                        if (zzc((Object) t5, length)) {
                            zza(i16, zzmg.zze(t5, iZzc & 1048575), zzmwVar2);
                        }
                        break;
                    case 9:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzb(i16, zzmg.zze(t5, iZzc & 1048575), zze(length));
                        }
                        break;
                    case 10:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zza(i16, (zzhm) zzmg.zze(t5, iZzc & 1048575));
                        }
                        break;
                    case 11:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzf(i16, zzmg.zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 12:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zza(i16, zzmg.zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 13:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzd(i16, zzmg.zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 14:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzc(i16, zzmg.zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 15:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zze(i16, zzmg.zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 16:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zzd(i16, zzmg.zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 17:
                        if (zzc((Object) t5, length)) {
                            zzmwVar2.zza(i16, zzmg.zze(t5, iZzc & 1048575), zze(length));
                        }
                        break;
                    case 18:
                        zzld.zzb(this.zzc[length], (List<Double>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 19:
                        zzld.zzf(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 20:
                        zzld.zzh(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 21:
                        zzld.zzn(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 22:
                        zzld.zzg(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 23:
                        zzld.zze(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 24:
                        zzld.zzd(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 25:
                        zzld.zza(this.zzc[length], (List<Boolean>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 26:
                        zzld.zzb(this.zzc[length], (List<String>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2);
                        break;
                    case 27:
                        zzld.zzb(this.zzc[length], (List<?>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, zze(length));
                        break;
                    case 28:
                        zzld.zza(this.zzc[length], (List<zzhm>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2);
                        break;
                    case 29:
                        zzld.zzm(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 30:
                        zzld.zzc(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 31:
                        zzld.zzi(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 32:
                        zzld.zzj(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 33:
                        zzld.zzk(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 34:
                        zzld.zzl(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, false);
                        break;
                    case 35:
                        zzld.zzb(this.zzc[length], (List<Double>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 36:
                        zzld.zzf(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 37:
                        zzld.zzh(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 38:
                        zzld.zzn(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 39:
                        zzld.zzg(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 40:
                        zzld.zze(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 41:
                        zzld.zzd(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 42:
                        zzld.zza(this.zzc[length], (List<Boolean>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 43:
                        zzld.zzm(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 44:
                        zzld.zzc(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 45:
                        zzld.zzi(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 46:
                        zzld.zzj(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 47:
                        zzld.zzk(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 48:
                        zzld.zzl(this.zzc[length], (List) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, true);
                        break;
                    case 49:
                        zzld.zza(this.zzc[length], (List<?>) zzmg.zze(t5, iZzc & 1048575), zzmwVar2, zze(length));
                        break;
                    case 50:
                        zza(zzmwVar2, i16, zzmg.zze(t5, iZzc & 1048575), length);
                        break;
                    case 51:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zza(i16, zza(t5, iZzc & 1048575));
                        }
                        break;
                    case 52:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zza(i16, zzb(t5, iZzc & 1048575));
                        }
                        break;
                    case 53:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzb(i16, zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 54:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zze(i16, zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 55:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzc(i16, zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 56:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zza(i16, zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 57:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzb(i16, zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 58:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zza(i16, zze(t5, iZzc & 1048575));
                        }
                        break;
                    case 59:
                        if (zzc(t5, i16, length)) {
                            zza(i16, zzmg.zze(t5, iZzc & 1048575), zzmwVar2);
                        }
                        break;
                    case 60:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzb(i16, zzmg.zze(t5, iZzc & 1048575), zze(length));
                        }
                        break;
                    case 61:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zza(i16, (zzhm) zzmg.zze(t5, iZzc & 1048575));
                        }
                        break;
                    case 62:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzf(i16, zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 63:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zza(i16, zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 64:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzd(i16, zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 65:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzc(i16, zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 66:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zze(i16, zzc(t5, iZzc & 1048575));
                        }
                        break;
                    case 67:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zzd(i16, zzd(t5, iZzc & 1048575));
                        }
                        break;
                    case 68:
                        if (zzc(t5, i16, length)) {
                            zzmwVar2.zza(i16, zzmg.zze(t5, iZzc & 1048575), zze(length));
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzr.zza(zzmwVar2, entry2);
                entry2 = itZzc.hasNext() ? (Map.Entry) itZzc.next() : null;
            }
            return;
        }
        if (this.zzh) {
            zziq<T> zziqVarZza2 = this.zzr.zza(t5);
            if (zziqVarZza2.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzd = zziqVarZza2.zzd();
                entry = (Map.Entry) itZzd.next();
                it = itZzd;
            }
        } else {
            entry = null;
            it = null;
        }
        int length2 = this.zzc.length;
        Unsafe unsafe2 = zzb;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        while (i18 < length2) {
            int iZzc2 = zzc(i18);
            int[] iArr = this.zzc;
            int i20 = iArr[i18];
            int i21 = (iZzc2 & i14) >>> 20;
            if (i21 <= 17) {
                int i22 = iArr[i18 + 2];
                int i23 = i22 & i15;
                if (i23 != i19) {
                    i17 = i23 == i15 ? 0 : unsafe2.getInt(t5, i23);
                    i19 = i23;
                } else {
                    it = it;
                }
                i11 = i17;
                i12 = 1 << (i22 >>> 20);
                i10 = i19;
            } else {
                it = it;
                i10 = i19;
                i11 = i17;
                i12 = 0;
            }
            while (entry != null && this.zzr.zza(entry) <= i20) {
                this.zzr.zza(zzmwVar2, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j6 = iZzc2 & 1048575;
            switch (i21) {
                case 0:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zza(i20, zzmg.zza(t5, j6));
                    }
                    break;
                case 1:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zza(i20, zzmg.zzb(t5, j6));
                    }
                    break;
                case 2:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzb(i20, unsafe.getLong(t5, j6));
                    }
                    break;
                case 3:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zze(i20, unsafe.getLong(t5, j6));
                    }
                    break;
                case 4:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzc(i20, unsafe.getInt(t5, j6));
                    }
                    break;
                case 5:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zza(i20, unsafe.getLong(t5, j6));
                    }
                    break;
                case 6:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzb(i20, unsafe.getInt(t5, j6));
                    }
                    break;
                case 7:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zza(i20, zzmg.zzh(t5, j6));
                    }
                    break;
                case 8:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zza(i20, unsafe.getObject(t5, j6), zzmwVar2);
                    }
                    break;
                case 9:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzb(i20, unsafe.getObject(t5, j6), zze(i13));
                    }
                    break;
                case 10:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zza(i20, (zzhm) unsafe.getObject(t5, j6));
                    }
                    break;
                case 11:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzf(i20, unsafe.getInt(t5, j6));
                    }
                    break;
                case 12:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zza(i20, unsafe.getInt(t5, j6));
                    }
                    break;
                case 13:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzd(i20, unsafe.getInt(t5, j6));
                    }
                    break;
                case 14:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzc(i20, unsafe.getLong(t5, j6));
                    }
                    break;
                case 15:
                    i10 = i10;
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zze(i20, unsafe.getInt(t5, j6));
                    }
                    break;
                case 16:
                    entry = entry;
                    length2 = length2;
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    i10 = i10;
                    if (zza(t5, i13, i10, i11, i12)) {
                        zzmwVar2.zzd(i20, unsafe.getLong(t5, j6));
                    }
                    break;
                case 17:
                    z6 = false;
                    entry = entry;
                    i13 = i18;
                    length2 = length2;
                    unsafe = unsafe2;
                    if (zza(t5, i18, i10, i11, i12)) {
                        zzmwVar2 = zzmwVar;
                        zzmwVar2.zza(i20, unsafe.getObject(t5, j6), zze(i13));
                    } else {
                        zzmwVar2 = zzmwVar;
                    }
                    i10 = i10;
                    break;
                case 18:
                    z10 = false;
                    zzld.zzb(this.zzc[i18], (List<Double>) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 19:
                    z10 = false;
                    zzld.zzf(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 20:
                    z10 = false;
                    zzld.zzh(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 21:
                    z10 = false;
                    zzld.zzn(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 22:
                    z10 = false;
                    zzld.zzg(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 23:
                    z10 = false;
                    zzld.zze(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 24:
                    z10 = false;
                    zzld.zzd(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 25:
                    z10 = false;
                    zzld.zza(this.zzc[i18], (List<Boolean>) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 26:
                    zzld.zzb(this.zzc[i18], (List<String>) unsafe2.getObject(t5, j6), zzmwVar2);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 27:
                    zzld.zzb(this.zzc[i18], (List<?>) unsafe2.getObject(t5, j6), zzmwVar2, zze(i18));
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 28:
                    zzld.zza(this.zzc[i18], (List<zzhm>) unsafe2.getObject(t5, j6), zzmwVar2);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 29:
                    z10 = false;
                    zzld.zzm(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 30:
                    z10 = false;
                    zzld.zzc(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 31:
                    z10 = false;
                    zzld.zzi(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 32:
                    z10 = false;
                    zzld.zzj(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 33:
                    z10 = false;
                    zzld.zzk(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 34:
                    z10 = false;
                    zzld.zzl(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, false);
                    z6 = z10;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 35:
                    zzld.zzb(this.zzc[i18], (List<Double>) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 36:
                    zzld.zzf(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 37:
                    zzld.zzh(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 38:
                    zzld.zzn(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 39:
                    zzld.zzg(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 40:
                    zzld.zze(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 41:
                    zzld.zzd(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 42:
                    zzld.zza(this.zzc[i18], (List<Boolean>) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 43:
                    zzld.zzm(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 44:
                    zzld.zzc(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 45:
                    zzld.zzi(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 46:
                    zzld.zzj(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 47:
                    zzld.zzk(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 48:
                    zzld.zzl(this.zzc[i18], (List) unsafe2.getObject(t5, j6), zzmwVar2, true);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 49:
                    zzld.zza(this.zzc[i18], (List<?>) unsafe2.getObject(t5, j6), zzmwVar2, zze(i18));
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 50:
                    zza(zzmwVar2, i20, unsafe2.getObject(t5, j6), i18);
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 51:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zza(i20, zza(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 52:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zza(i20, zzb(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 53:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzb(i20, zzd(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 54:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zze(i20, zzd(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 55:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzc(i20, zzc(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 56:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zza(i20, zzd(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 57:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzb(i20, zzc(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 58:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zza(i20, zze(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 59:
                    if (zzc(t5, i20, i18)) {
                        zza(i20, unsafe2.getObject(t5, j6), zzmwVar2);
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 60:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzb(i20, unsafe2.getObject(t5, j6), zze(i18));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 61:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zza(i20, (zzhm) unsafe2.getObject(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 62:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzf(i20, zzc(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 63:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zza(i20, zzc(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 64:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzd(i20, zzc(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 65:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzc(i20, zzd(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 66:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zze(i20, zzc(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 67:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zzd(i20, zzd(t5, j6));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                case 68:
                    if (zzc(t5, i20, i18)) {
                        zzmwVar2.zza(i20, unsafe2.getObject(t5, j6), zze(i18));
                    }
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
                default:
                    z6 = false;
                    i13 = i18;
                    unsafe = unsafe2;
                    break;
            }
            i18 = i13 + 3;
            i17 = i11;
            unsafe2 = unsafe;
            i15 = 1048575;
            it = it;
            entry = entry;
            length2 = length2;
            i19 = i10;
            i14 = 267386880;
        }
        Iterator it2 = it;
        while (entry != null) {
            this.zzr.zza(zzmwVar2, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        zza(this.zzq, t5, zzmwVar2);
    }

    private static <UT, UB> void zza(zzma<UT, UB> zzmaVar, T t5, zzmw zzmwVar) throws IOException {
        zzmaVar.zzb(zzmaVar.zzd(t5), zzmwVar);
    }

    private final boolean zza(T t5, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzc((Object) t5, i10);
        }
        return (i12 & i13) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i10, zzlb zzlbVar) {
        return zzlbVar.zzd(zzmg.zze(obj, i10 & 1048575));
    }
}

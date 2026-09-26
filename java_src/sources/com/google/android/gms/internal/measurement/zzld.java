package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
final class zzld {
    private static final Class<?> zza = zzd();
    private static final zzma<?, ?> zzb = zzc();
    private static final zzma<?, ?> zzc = new zzmc();

    public static zzma<?, ?> zza() {
        return zzb;
    }

    public static zzma<?, ?> zzb() {
        return zzc;
    }

    static int zzc(int i10, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzig.zzf(i10, 0);
    }

    static int zzd(int i10, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzig.zzc(i10, 0L);
    }

    static int zze(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzig.zzi(i10));
    }

    static int zzf(int i10, List<Long> list, boolean z6) {
        if (list.size() == 0) {
            return 0;
        }
        return zzf(list) + (list.size() * zzig.zzi(i10));
    }

    static int zzg(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzig.zzi(i10));
    }

    static int zzh(int i10, List<Long> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzig.zzi(i10));
    }

    static int zzi(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzig.zzi(i10));
    }

    static int zzj(int i10, List<Long> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzig.zzi(i10));
    }

    static int zza(int i10, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzig.zzb(i10, true);
    }

    static int zzb(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzig.zzi(i10));
    }

    public static void zzk(int i10, List<Integer> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzk(i10, list, z6);
    }

    public static void zzl(int i10, List<Long> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzl(i10, list, z6);
    }

    public static void zzm(int i10, List<Integer> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzm(i10, list, z6);
    }

    public static void zzn(int i10, List<Long> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzn(i10, list, z6);
    }

    static int zzc(List<?> list) {
        return list.size() << 2;
    }

    static int zzd(List<?> list) {
        return list.size() << 3;
    }

    static int zza(List<?> list) {
        return list.size();
    }

    private static zzma<?, ?> zzc() {
        try {
            Class<?> clsZze = zze();
            if (clsZze == null) {
                return null;
            }
            return (zzma) clsZze.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzd() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    static int zze(List<Integer> list) {
        int iZzf;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzja) {
            zzja zzjaVar = (zzja) list;
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzig.zzf(zzjaVar.zzb(i10));
                i10++;
            }
        } else {
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzig.zzf(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzf;
    }

    static int zzf(List<Long> list) {
        int iZzd;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzig.zzd(zzjyVar.zzb(i10));
                i10++;
            }
        } else {
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzig.zzd(list.get(i10).longValue());
                i10++;
            }
        }
        return iZzd;
    }

    static int zzg(List<Integer> list) {
        int iZzh;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzja) {
            zzja zzjaVar = (zzja) list;
            iZzh = 0;
            while (i10 < size) {
                iZzh += zzig.zzh(zzjaVar.zzb(i10));
                i10++;
            }
        } else {
            iZzh = 0;
            while (i10 < size) {
                iZzh += zzig.zzh(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzh;
    }

    static int zzh(List<Long> list) {
        int iZzf;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzig.zzf(zzjyVar.zzb(i10));
                i10++;
            }
        } else {
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzig.zzf(list.get(i10).longValue());
                i10++;
            }
        }
        return iZzf;
    }

    static int zzi(List<Integer> list) {
        int iZzj;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzja) {
            zzja zzjaVar = (zzja) list;
            iZzj = 0;
            while (i10 < size) {
                iZzj += zzig.zzj(zzjaVar.zzb(i10));
                i10++;
            }
        } else {
            iZzj = 0;
            while (i10 < size) {
                iZzj += zzig.zzj(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzj;
    }

    static int zzj(List<Long> list) {
        int iZzg;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            iZzg = 0;
            while (i10 < size) {
                iZzg += zzig.zzg(zzjyVar.zzb(i10));
                i10++;
            }
        } else {
            iZzg = 0;
            while (i10 < size) {
                iZzg += zzig.zzg(list.get(i10).longValue());
                i10++;
            }
        }
        return iZzg;
    }

    static int zza(int i10, List<zzhm> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = size * zzig.zzi(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iZzi += zzig.zzb(list.get(i11));
        }
        return iZzi;
    }

    static int zzb(List<Integer> list) {
        int iZzd;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzja) {
            zzja zzjaVar = (zzja) list;
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzig.zzd(zzjaVar.zzb(i10));
                i10++;
            }
        } else {
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzig.zzd(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzd;
    }

    public static void zzd(int i10, List<Integer> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzd(i10, list, z6);
    }

    public static void zzc(int i10, List<Integer> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzc(i10, list, z6);
    }

    static int zza(int i10, List<zzkj> list, zzlb zzlbVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzb = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iZzb += zzig.zzb(i10, list.get(i11), zzlbVar);
        }
        return iZzb;
    }

    private static Class<?> zze() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zzf(int i10, List<Float> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzf(i10, list, z6);
    }

    public static void zzg(int i10, List<Integer> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzg(i10, list, z6);
    }

    public static void zzh(int i10, List<Long> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzh(i10, list, z6);
    }

    public static void zzi(int i10, List<Integer> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzi(i10, list, z6);
    }

    public static void zzj(int i10, List<Long> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzj(i10, list, z6);
    }

    static int zzb(int i10, List<?> list, zzlb zzlbVar) {
        int iZza;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = zzig.zzi(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof zzjn) {
                iZza = zzig.zza((zzjn) obj);
            } else {
                iZza = zzig.zza((zzkj) obj, zzlbVar);
            }
            iZzi += iZza;
        }
        return iZzi;
    }

    public static void zze(int i10, List<Long> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zze(i10, list, z6);
    }

    static int zza(int i10, Object obj, zzlb zzlbVar) {
        if (obj instanceof zzjn) {
            return zzig.zzb(i10, (zzjn) obj);
        }
        return zzig.zzc(i10, (zzkj) obj, zzlbVar);
    }

    static <UT, UB> UB zza(Object obj, int i10, List<Integer> list, zzje zzjeVar, UB ub, zzma<UT, UB> zzmaVar) {
        if (zzjeVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = list.get(i12).intValue();
                if (zzjeVar.zza(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    ub = (UB) zza(obj, i10, iIntValue, ub, zzmaVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!zzjeVar.zza(iIntValue2)) {
                    ub = (UB) zza(obj, i10, iIntValue2, ub, zzmaVar);
                    it.remove();
                }
            }
        }
        return ub;
    }

    static int zzb(int i10, List<?> list) {
        int iZzb;
        int iZzb2;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzi = zzig.zzi(i10) * size;
        if (list instanceof zzjp) {
            zzjp zzjpVar = (zzjp) list;
            while (i11 < size) {
                Object objZzb = zzjpVar.zzb(i11);
                if (objZzb instanceof zzhm) {
                    iZzb2 = zzig.zzb((zzhm) objZzb);
                } else {
                    iZzb2 = zzig.zzb((String) objZzb);
                }
                iZzi += iZzb2;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof zzhm) {
                    iZzb = zzig.zzb((zzhm) obj);
                } else {
                    iZzb = zzig.zzb((String) obj);
                }
                iZzi += iZzb;
                i11++;
            }
        }
        return iZzi;
    }

    static <UT, UB> UB zza(Object obj, int i10, int i11, UB ub, zzma<UT, UB> zzmaVar) {
        if (ub == null) {
            ub = zzmaVar.zzc(obj);
        }
        zzmaVar.zzb(ub, i10, i11);
        return ub;
    }

    static <T, FT extends zzis<FT>> void zza(zzim<FT> zzimVar, T t5, T t10) {
        zziq<T> zziqVarZza = zzimVar.zza(t10);
        if (zziqVarZza.zza.isEmpty()) {
            return;
        }
        zzimVar.zzb(t5).zza((zziq) zziqVarZza);
    }

    public static void zzb(int i10, List<Double> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzb(i10, list, z6);
    }

    public static void zzb(int i10, List<?> list, zzmw zzmwVar, zzlb zzlbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzb(i10, list, zzlbVar);
    }

    static <T> void zza(zzkg zzkgVar, T t5, T t10, long j6) {
        zzmg.zza(t5, j6, zzkgVar.zza(zzmg.zze(t5, j6), zzmg.zze(t10, j6)));
    }

    public static void zzb(int i10, List<String> list, zzmw zzmwVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zzb(i10, list);
    }

    static <T, UT, UB> void zza(zzma<UT, UB> zzmaVar, T t5, T t10) {
        zzmaVar.zzc(t5, zzmaVar.zza(zzmaVar.zzd(t5), zzmaVar.zzd(t10)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (!zzix.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i10, List<Boolean> list, zzmw zzmwVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zza(i10, list, z6);
    }

    public static void zza(int i10, List<zzhm> list, zzmw zzmwVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zza(i10, list);
    }

    public static void zza(int i10, List<?> list, zzmw zzmwVar, zzlb zzlbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmwVar.zza(i10, list, zzlbVar);
    }

    static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}

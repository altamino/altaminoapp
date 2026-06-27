package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzdqd {
    private static final Class<?> zzhkn = zzazn();
    private static final zzdqt<?, ?> zzhko = zzbi(false);
    private static final zzdqt<?, ?> zzhkp = zzbi(true);
    private static final zzdqt<?, ?> zzhkq = new zzdqv();

    public static void zzh(Class<?> cls) {
        Class<?> cls2;
        if (!zzdob.class.isAssignableFrom(cls) && (cls2 = zzhkn) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i, List<Double> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzg(i, list, z);
    }

    public static void zzb(int i, List<Float> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzf(i, list, z);
    }

    public static void zzc(int i, List<Long> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzc(i, list, z);
    }

    public static void zzd(int i, List<Long> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzn(i, list, z);
    }

    public static void zzf(int i, List<Long> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zze(i, list, z);
    }

    public static void zzg(int i, List<Long> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzl(i, list, z);
    }

    public static void zzh(int i, List<Integer> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zza(i, list, z);
    }

    public static void zzi(int i, List<Integer> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzj(i, list, z);
    }

    public static void zzj(int i, List<Integer> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzdro zzdroVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzi(i, list, z);
    }

    public static void zza(int i, List<String> list, zzdro zzdroVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zza(i, list);
    }

    public static void zzb(int i, List<zzdmr> list, zzdro zzdroVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzb(i, list);
    }

    public static void zza(int i, List<?> list, zzdro zzdroVar, zzdqb zzdqbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zza(i, list, zzdqbVar);
    }

    public static void zzb(int i, List<?> list, zzdro zzdroVar, zzdqb zzdqbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdroVar.zzb(i, list, zzdqbVar);
    }

    static int zzy(List<Long> list) {
        int iZzfm;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            iZzfm = 0;
            while (i < size) {
                iZzfm += zzdni.zzfm(zzdoyVar.getLong(i));
                i++;
            }
        } else {
            iZzfm = 0;
            while (i < size) {
                iZzfm += zzdni.zzfm(list.get(i).longValue());
                i++;
            }
        }
        return iZzfm;
    }

    static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzy(list) + (list.size() * zzdni.zzgd(i));
    }

    static int zzz(List<Long> list) {
        int iZzfn;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            iZzfn = 0;
            while (i < size) {
                iZzfn += zzdni.zzfn(zzdoyVar.getLong(i));
                i++;
            }
        } else {
            iZzfn = 0;
            while (i < size) {
                iZzfn += zzdni.zzfn(list.get(i).longValue());
                i++;
            }
        }
        return iZzfn;
    }

    static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzz(list) + (size * zzdni.zzgd(i));
    }

    static int zzaa(List<Long> list) {
        int iZzfo;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            iZzfo = 0;
            while (i < size) {
                iZzfo += zzdni.zzfo(zzdoyVar.getLong(i));
                i++;
            }
        } else {
            iZzfo = 0;
            while (i < size) {
                iZzfo += zzdni.zzfo(list.get(i).longValue());
                i++;
            }
        }
        return iZzfo;
    }

    static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzaa(list) + (size * zzdni.zzgd(i));
    }

    static int zzab(List<Integer> list) {
        int iZzgj;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            iZzgj = 0;
            while (i < size) {
                iZzgj += zzdni.zzgj(zzdocVar.getInt(i));
                i++;
            }
        } else {
            iZzgj = 0;
            while (i < size) {
                iZzgj += zzdni.zzgj(list.get(i).intValue());
                i++;
            }
        }
        return iZzgj;
    }

    static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzab(list) + (size * zzdni.zzgd(i));
    }

    static int zzac(List<Integer> list) {
        int iZzge;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            iZzge = 0;
            while (i < size) {
                iZzge += zzdni.zzge(zzdocVar.getInt(i));
                i++;
            }
        } else {
            iZzge = 0;
            while (i < size) {
                iZzge += zzdni.zzge(list.get(i).intValue());
                i++;
            }
        }
        return iZzge;
    }

    static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzac(list) + (size * zzdni.zzgd(i));
    }

    static int zzad(List<Integer> list) {
        int iZzgf;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            iZzgf = 0;
            while (i < size) {
                iZzgf += zzdni.zzgf(zzdocVar.getInt(i));
                i++;
            }
        } else {
            iZzgf = 0;
            while (i < size) {
                iZzgf += zzdni.zzgf(list.get(i).intValue());
                i++;
            }
        }
        return iZzgf;
    }

    static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzad(list) + (size * zzdni.zzgd(i));
    }

    static int zzae(List<Integer> list) {
        int iZzgg;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            iZzgg = 0;
            while (i < size) {
                iZzgg += zzdni.zzgg(zzdocVar.getInt(i));
                i++;
            }
        } else {
            iZzgg = 0;
            while (i < size) {
                iZzgg += zzdni.zzgg(list.get(i).intValue());
                i++;
            }
        }
        return iZzgg;
    }

    static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzae(list) + (size * zzdni.zzgd(i));
    }

    static int zzaf(List<?> list) {
        return list.size() << 2;
    }

    static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdni.zzae(i, 0);
    }

    static int zzag(List<?> list) {
        return list.size() << 3;
    }

    static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdni.zzn(i, 0L);
    }

    static int zzah(List<?> list) {
        return list.size();
    }

    static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdni.zzj(i, true);
    }

    static int zzc(int i, List<?> list) {
        int iZzgx;
        int iZzgx2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzgd = zzdni.zzgd(i) * size;
        if (list instanceof zzdot) {
            zzdot zzdotVar = (zzdot) list;
            while (i2 < size) {
                Object objZzgq = zzdotVar.zzgq(i2);
                if (objZzgq instanceof zzdmr) {
                    iZzgx2 = zzdni.zzda((zzdmr) objZzgq);
                } else {
                    iZzgx2 = zzdni.zzgx((String) objZzgq);
                }
                iZzgd += iZzgx2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzdmr) {
                    iZzgx = zzdni.zzda((zzdmr) obj);
                } else {
                    iZzgx = zzdni.zzgx((String) obj);
                }
                iZzgd += iZzgx;
                i2++;
            }
        }
        return iZzgd;
    }

    static int zzc(int i, Object obj, zzdqb zzdqbVar) {
        if (obj instanceof zzdor) {
            return zzdni.zza(i, (zzdor) obj);
        }
        return zzdni.zzb(i, (zzdpk) obj, zzdqbVar);
    }

    static int zzc(int i, List<?> list, zzdqb zzdqbVar) {
        int iZzb;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzgd = zzdni.zzgd(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzdor) {
                iZzb = zzdni.zza((zzdor) obj);
            } else {
                iZzb = zzdni.zzb((zzdpk) obj, zzdqbVar);
            }
            iZzgd += iZzb;
        }
        return iZzgd;
    }

    static int zzd(int i, List<zzdmr> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzgd = size * zzdni.zzgd(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzgd += zzdni.zzda(list.get(i2));
        }
        return iZzgd;
    }

    static int zzd(int i, List<zzdpk> list, zzdqb zzdqbVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzc = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzc += zzdni.zzc(i, list.get(i2), zzdqbVar);
        }
        return iZzc;
    }

    public static zzdqt<?, ?> zzazk() {
        return zzhko;
    }

    public static zzdqt<?, ?> zzazl() {
        return zzhkp;
    }

    public static zzdqt<?, ?> zzazm() {
        return zzhkq;
    }

    private static zzdqt<?, ?> zzbi(boolean z) {
        try {
            Class<?> clsZzazo = zzazo();
            if (clsZzazo == null) {
                return null;
            }
            return (zzdqt) clsZzazo.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzazn() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzazo() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean zze(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static <T> void zza(zzdpf zzdpfVar, T t, T t2, long j) {
        zzdqz.zza(t, j, zzdpfVar.zzc(zzdqz.zzp(t, j), zzdqz.zzp(t2, j)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T, FT extends zzdnu<FT>> void zza(zzdnp<FT> zzdnpVar, T t, T t2) {
        zzdns<T> zzdnsVarZzy = zzdnpVar.zzy(t2);
        if (zzdnsVarZzy.isEmpty()) {
            return;
        }
        zzdnpVar.zzz(t).zza(zzdnsVarZzy);
    }

    static <T, UT, UB> void zza(zzdqt<UT, UB> zzdqtVar, T t, T t2) {
        zzdqtVar.zzf(t, zzdqtVar.zzh(zzdqtVar.zzao(t), zzdqtVar.zzao(t2)));
    }

    static <UT, UB> UB zza(int i, List<Integer> list, zzdog zzdogVar, UB ub, zzdqt<UT, UB> zzdqtVar) {
        UB ub2;
        int iIntValue;
        if (zzdogVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue2 = list.get(i3).intValue();
                if (zzdogVar.zzf(iIntValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue2));
                    }
                    i2++;
                } else {
                    ub2 = (UB) zza(i, iIntValue2, ub2, zzdqtVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            loop1: while (true) {
                ub2 = ub;
                while (it.hasNext()) {
                    iIntValue = it.next().intValue();
                    if (!zzdogVar.zzf(iIntValue)) {
                        break;
                    }
                }
                ub = (UB) zza(i, iIntValue, ub2, zzdqtVar);
                it.remove();
            }
        }
        return ub2;
    }

    static <UT, UB> UB zza(int i, int i2, UB ub, zzdqt<UT, UB> zzdqtVar) {
        if (ub == null) {
            ub = zzdqtVar.zzazy();
        }
        zzdqtVar.zza((zzdqt<UT, UB>) ub, i, i2);
        return ub;
    }
}

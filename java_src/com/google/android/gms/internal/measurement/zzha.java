package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzha {
    private static final Class<?> zzajx = zzog();
    private static final zzhq<?, ?> zzajy = zzp(false);
    private static final zzhq<?, ?> zzajz = zzp(true);
    private static final zzhq<?, ?> zzaka = new zzhs();

    public static void zzg(Class<?> cls) {
        Class<?> cls2;
        if (!zzez.class.isAssignableFrom(cls) && (cls2 = zzajx) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i, List<Double> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzg(i, list, z);
    }

    public static void zzb(int i, List<Float> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzf(i, list, z);
    }

    public static void zzc(int i, List<Long> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzc(i, list, z);
    }

    public static void zzd(int i, List<Long> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzn(i, list, z);
    }

    public static void zzf(int i, List<Long> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zze(i, list, z);
    }

    public static void zzg(int i, List<Long> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzl(i, list, z);
    }

    public static void zzh(int i, List<Integer> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zza(i, list, z);
    }

    public static void zzi(int i, List<Integer> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzj(i, list, z);
    }

    public static void zzj(int i, List<Integer> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzil zzilVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzi(i, list, z);
    }

    public static void zza(int i, List<String> list, zzil zzilVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zza(i, list);
    }

    public static void zzb(int i, List<zzdp> list, zzil zzilVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzb(i, list);
    }

    public static void zza(int i, List<?> list, zzil zzilVar, zzgy zzgyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zza(i, list, zzgyVar);
    }

    public static void zzb(int i, List<?> list, zzil zzilVar, zzgy zzgyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzilVar.zzb(i, list, zzgyVar);
    }

    static int zzt(List<Long> list) {
        int iZzat;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            iZzat = 0;
            while (i < size) {
                iZzat += zzeg.zzat(zzfvVar.getLong(i));
                i++;
            }
        } else {
            iZzat = 0;
            while (i < size) {
                iZzat += zzeg.zzat(list.get(i).longValue());
                i++;
            }
        }
        return iZzat;
    }

    static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzt(list) + (list.size() * zzeg.zzaj(i));
    }

    static int zzu(List<Long> list) {
        int iZzau;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            iZzau = 0;
            while (i < size) {
                iZzau += zzeg.zzau(zzfvVar.getLong(i));
                i++;
            }
        } else {
            iZzau = 0;
            while (i < size) {
                iZzau += zzeg.zzau(list.get(i).longValue());
                i++;
            }
        }
        return iZzau;
    }

    static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzu(list) + (size * zzeg.zzaj(i));
    }

    static int zzv(List<Long> list) {
        int iZzav;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            iZzav = 0;
            while (i < size) {
                iZzav += zzeg.zzav(zzfvVar.getLong(i));
                i++;
            }
        } else {
            iZzav = 0;
            while (i < size) {
                iZzav += zzeg.zzav(list.get(i).longValue());
                i++;
            }
        }
        return iZzav;
    }

    static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzv(list) + (size * zzeg.zzaj(i));
    }

    static int zzw(List<Integer> list) {
        int iZzap;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            iZzap = 0;
            while (i < size) {
                iZzap += zzeg.zzap(zzfaVar.getInt(i));
                i++;
            }
        } else {
            iZzap = 0;
            while (i < size) {
                iZzap += zzeg.zzap(list.get(i).intValue());
                i++;
            }
        }
        return iZzap;
    }

    static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzeg.zzaj(i));
    }

    static int zzx(List<Integer> list) {
        int iZzak;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            iZzak = 0;
            while (i < size) {
                iZzak += zzeg.zzak(zzfaVar.getInt(i));
                i++;
            }
        } else {
            iZzak = 0;
            while (i < size) {
                iZzak += zzeg.zzak(list.get(i).intValue());
                i++;
            }
        }
        return iZzak;
    }

    static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzx(list) + (size * zzeg.zzaj(i));
    }

    static int zzy(List<Integer> list) {
        int iZzal;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            iZzal = 0;
            while (i < size) {
                iZzal += zzeg.zzal(zzfaVar.getInt(i));
                i++;
            }
        } else {
            iZzal = 0;
            while (i < size) {
                iZzal += zzeg.zzal(list.get(i).intValue());
                i++;
            }
        }
        return iZzal;
    }

    static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzeg.zzaj(i));
    }

    static int zzz(List<Integer> list) {
        int iZzam;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            iZzam = 0;
            while (i < size) {
                iZzam += zzeg.zzam(zzfaVar.getInt(i));
                i++;
            }
        } else {
            iZzam = 0;
            while (i < size) {
                iZzam += zzeg.zzam(list.get(i).intValue());
                i++;
            }
        }
        return iZzam;
    }

    static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzz(list) + (size * zzeg.zzaj(i));
    }

    static int zzaa(List<?> list) {
        return list.size() << 2;
    }

    static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzeg.zzj(i, 0);
    }

    static int zzab(List<?> list) {
        return list.size() << 3;
    }

    static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzeg.zzg(i, 0L);
    }

    static int zzac(List<?> list) {
        return list.size();
    }

    static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzeg.zzc(i, true);
    }

    static int zzc(int i, List<?> list) {
        int iZzcp;
        int iZzcp2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzaj = zzeg.zzaj(i) * size;
        if (list instanceof zzfq) {
            zzfq zzfqVar = (zzfq) list;
            while (i2 < size) {
                Object objZzaw = zzfqVar.zzaw(i2);
                if (objZzaw instanceof zzdp) {
                    iZzcp2 = zzeg.zzb((zzdp) objZzaw);
                } else {
                    iZzcp2 = zzeg.zzcp((String) objZzaw);
                }
                iZzaj += iZzcp2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzdp) {
                    iZzcp = zzeg.zzb((zzdp) obj);
                } else {
                    iZzcp = zzeg.zzcp((String) obj);
                }
                iZzaj += iZzcp;
                i2++;
            }
        }
        return iZzaj;
    }

    static int zzc(int i, Object obj, zzgy zzgyVar) {
        if (obj instanceof zzfo) {
            return zzeg.zza(i, (zzfo) obj);
        }
        return zzeg.zzb(i, (zzgh) obj, zzgyVar);
    }

    static int zzc(int i, List<?> list, zzgy zzgyVar) {
        int iZzb;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzaj = zzeg.zzaj(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzfo) {
                iZzb = zzeg.zza((zzfo) obj);
            } else {
                iZzb = zzeg.zzb((zzgh) obj, zzgyVar);
            }
            iZzaj += iZzb;
        }
        return iZzaj;
    }

    static int zzd(int i, List<zzdp> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzaj = size * zzeg.zzaj(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzaj += zzeg.zzb(list.get(i2));
        }
        return iZzaj;
    }

    static int zzd(int i, List<zzgh> list, zzgy zzgyVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzc = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzc += zzeg.zzc(i, list.get(i2), zzgyVar);
        }
        return iZzc;
    }

    public static zzhq<?, ?> zzod() {
        return zzajy;
    }

    public static zzhq<?, ?> zzoe() {
        return zzajz;
    }

    public static zzhq<?, ?> zzof() {
        return zzaka;
    }

    private static zzhq<?, ?> zzp(boolean z) {
        try {
            Class<?> clsZzoh = zzoh();
            if (clsZzoh == null) {
                return null;
            }
            return (zzhq) clsZzoh.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzog() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzoh() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean zzd(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static <T> void zza(zzgc zzgcVar, T t, T t2, long j) {
        zzhw.zza(t, j, zzgcVar.zzb(zzhw.zzp(t, j), zzhw.zzp(t2, j)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T, FT extends zzes<FT>> void zza(zzen<FT> zzenVar, T t, T t2) {
        zzeq<T> zzeqVarZzg = zzenVar.zzg(t2);
        if (zzeqVarZzg.isEmpty()) {
            return;
        }
        zzenVar.zzh(t).zza(zzeqVarZzg);
    }

    static <T, UT, UB> void zza(zzhq<UT, UB> zzhqVar, T t, T t2) {
        zzhqVar.zze(t, zzhqVar.zzg(zzhqVar.zzw(t), zzhqVar.zzw(t2)));
    }

    static <UT, UB> UB zza(int i, List<Integer> list, zzfe zzfeVar, UB ub, zzhq<UT, UB> zzhqVar) {
        UB ub2;
        int iIntValue;
        if (zzfeVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue2 = list.get(i3).intValue();
                if (zzfeVar.zzf(iIntValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue2));
                    }
                    i2++;
                } else {
                    ub2 = (UB) zza(i, iIntValue2, ub2, zzhqVar);
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
                    if (!zzfeVar.zzf(iIntValue)) {
                        break;
                    }
                }
                ub = (UB) zza(i, iIntValue, ub2, zzhqVar);
                it.remove();
            }
        }
        return ub2;
    }

    static <UT, UB> UB zza(int i, int i2, UB ub, zzhq<UT, UB> zzhqVar) {
        if (ub == null) {
            ub = zzhqVar.zzoq();
        }
        zzhqVar.zza((zzhq<UT, UB>) ub, i, i2);
        return ub;
    }
}

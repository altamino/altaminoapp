package com.google.android.gms.measurement.internal;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbl;
import com.google.android.gms.internal.measurement.zzbt;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes2.dex */
final class zzo extends zzfs {
    zzo(zzft zzftVar) {
        super(zzftVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfs
    protected final boolean zzak() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x056b A[PHI: r3 r16
  0x056b: PHI (r3v31 java.util.BitSet) = (r3v30 java.util.BitSet), (r3v52 java.util.BitSet) binds: [B:151:0x0515, B:153:0x0546] A[DONT_GENERATE, DONT_INLINE]
  0x056b: PHI (r16v16 java.util.BitSet) = (r16v15 java.util.BitSet), (r16v18 java.util.BitSet) binds: [B:151:0x0515, B:153:0x0546] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0c64  */
    /* JADX WARN: Type inference failed for: r1v135, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v27, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.android.gms.internal.measurement.zzbt.zza[] zza(java.lang.String r67, com.google.android.gms.internal.measurement.zzcf[] r68, com.google.android.gms.internal.measurement.zzbt.zzh[] r69) throws java.lang.IllegalStateException, android.database.SQLException {
        /*
            Method dump skipped, instructions count: 3579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzo.zza(java.lang.String, com.google.android.gms.internal.measurement.zzcf[], com.google.android.gms.internal.measurement.zzbt$zzh[]):com.google.android.gms.internal.measurement.zzbt$zza[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Boolean zza(com.google.android.gms.internal.measurement.zzby zzbyVar, String str, List<zzbt.zzd> list, long j) throws IllegalStateException {
        Boolean boolZza;
        com.google.android.gms.internal.measurement.zzca zzcaVar = zzbyVar.zzwe;
        if (zzcaVar != null) {
            Boolean boolZza2 = zza(j, zzcaVar);
            if (boolZza2 == null) {
                return null;
            }
            if (!boolZza2.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (com.google.android.gms.internal.measurement.zzbz zzbzVar : zzbyVar.zzwc) {
            if (TextUtils.isEmpty(zzbzVar.zzwj)) {
                zzad().zzdd().zza("null or empty param name in filter. event", zzaa().zzal(str));
                return null;
            }
            hashSet.add(zzbzVar.zzwj);
        }
        ArrayMap arrayMap = new ArrayMap();
        for (zzbt.zzd zzdVar : list) {
            if (hashSet.contains(zzdVar.getName())) {
                if (zzdVar.zzhn()) {
                    arrayMap.put(zzdVar.getName(), zzdVar.zzhn() ? Long.valueOf(zzdVar.zzho()) : null);
                } else if (zzdVar.zzhq()) {
                    arrayMap.put(zzdVar.getName(), zzdVar.zzhq() ? Double.valueOf(zzdVar.zzhr()) : null);
                } else if (zzdVar.zzhk()) {
                    arrayMap.put(zzdVar.getName(), zzdVar.zzhl());
                } else {
                    zzad().zzdd().zza("Unknown value for param. event, param", zzaa().zzal(str), zzaa().zzam(zzdVar.getName()));
                    return null;
                }
            }
        }
        for (com.google.android.gms.internal.measurement.zzbz zzbzVar2 : zzbyVar.zzwc) {
            boolean zEquals = Boolean.TRUE.equals(zzbzVar2.zzwi);
            String str2 = zzbzVar2.zzwj;
            if (TextUtils.isEmpty(str2)) {
                zzad().zzdd().zza("Event has empty param name. event", zzaa().zzal(str));
                return null;
            }
            V v = arrayMap.get(str2);
            if (v instanceof Long) {
                if (zzbzVar2.zzwh == null) {
                    zzad().zzdd().zza("No number filter for long param. event, param", zzaa().zzal(str), zzaa().zzam(str2));
                    return null;
                }
                Boolean boolZza3 = zza(((Long) v).longValue(), zzbzVar2.zzwh);
                if (boolZza3 == null) {
                    return null;
                }
                if ((true ^ boolZza3.booleanValue()) ^ zEquals) {
                    return false;
                }
            } else if (v instanceof Double) {
                if (zzbzVar2.zzwh == null) {
                    zzad().zzdd().zza("No number filter for double param. event, param", zzaa().zzal(str), zzaa().zzam(str2));
                    return null;
                }
                Boolean boolZza4 = zza(((Double) v).doubleValue(), zzbzVar2.zzwh);
                if (boolZza4 == null) {
                    return null;
                }
                if ((true ^ boolZza4.booleanValue()) ^ zEquals) {
                    return false;
                }
            } else {
                if (!(v instanceof String)) {
                    if (v == 0) {
                        zzad().zzdi().zza("Missing param for filter. event, param", zzaa().zzal(str), zzaa().zzam(str2));
                        return false;
                    }
                    zzad().zzdd().zza("Unknown param type. event, param", zzaa().zzal(str), zzaa().zzam(str2));
                    return null;
                }
                com.google.android.gms.internal.measurement.zzcc zzccVar = zzbzVar2.zzwg;
                if (zzccVar != null) {
                    boolZza = zza((String) v, zzccVar);
                } else if (zzbzVar2.zzwh != null) {
                    String str3 = (String) v;
                    if (zzfz.zzbl(str3)) {
                        boolZza = zza(str3, zzbzVar2.zzwh);
                    } else {
                        zzad().zzdd().zza("Invalid param value for number filter. event, param", zzaa().zzal(str), zzaa().zzam(str2));
                        return null;
                    }
                } else {
                    zzad().zzdd().zza("No filter for String param. event, param", zzaa().zzal(str), zzaa().zzam(str2));
                    return null;
                }
                if (boolZza == null) {
                    return null;
                }
                if ((true ^ boolZza.booleanValue()) ^ zEquals) {
                    return false;
                }
            }
        }
        return true;
    }

    private final Boolean zza(com.google.android.gms.internal.measurement.zzcb zzcbVar, zzbt.zzh zzhVar) throws IllegalStateException {
        com.google.android.gms.internal.measurement.zzbz zzbzVar = zzcbVar.zzwr;
        if (zzbzVar == null) {
            zzad().zzdd().zza("Missing property filter. property", zzaa().zzan(zzhVar.getName()));
            return null;
        }
        boolean zEquals = Boolean.TRUE.equals(zzbzVar.zzwi);
        if (zzhVar.zzhn()) {
            if (zzbzVar.zzwh == null) {
                zzad().zzdd().zza("No number filter for long property. property", zzaa().zzan(zzhVar.getName()));
                return null;
            }
            return zza(zza(zzhVar.zzho(), zzbzVar.zzwh), zEquals);
        }
        if (zzhVar.zzhq()) {
            if (zzbzVar.zzwh == null) {
                zzad().zzdd().zza("No number filter for double property. property", zzaa().zzan(zzhVar.getName()));
                return null;
            }
            return zza(zza(zzhVar.zzhr(), zzbzVar.zzwh), zEquals);
        }
        if (zzhVar.zzhk()) {
            if (zzbzVar.zzwg == null) {
                if (zzbzVar.zzwh == null) {
                    zzad().zzdd().zza("No string or number filter defined. property", zzaa().zzan(zzhVar.getName()));
                } else {
                    if (zzfz.zzbl(zzhVar.zzhl())) {
                        return zza(zza(zzhVar.zzhl(), zzbzVar.zzwh), zEquals);
                    }
                    zzad().zzdd().zza("Invalid user property value for Numeric number filter. property, value", zzaa().zzan(zzhVar.getName()), zzhVar.zzhl());
                }
                return null;
            }
            return zza(zza(zzhVar.zzhl(), zzbzVar.zzwg), zEquals);
        }
        zzad().zzdd().zza("User property has no value, property", zzaa().zzan(zzhVar.getName()));
        return null;
    }

    @VisibleForTesting
    private static Boolean zza(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    @VisibleForTesting
    private final Boolean zza(String str, com.google.android.gms.internal.measurement.zzcc zzccVar) {
        zzbl.zzb.EnumC0021zzb enumC0021zzb;
        String upperCase;
        List<String> listAsList;
        Preconditions.checkNotNull(zzccVar);
        if (str == null || (enumC0021zzb = zzccVar.zzws) == null || enumC0021zzb == zzbl.zzb.EnumC0021zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (enumC0021zzb == zzbl.zzb.EnumC0021zzb.IN_LIST) {
            String[] strArr = zzccVar.zzwv;
            if (strArr == null || strArr.length == 0) {
                return null;
            }
        } else if (zzccVar.zzwt == null) {
            return null;
        }
        zzbl.zzb.EnumC0021zzb enumC0021zzb2 = zzccVar.zzws;
        Boolean bool = zzccVar.zzwu;
        boolean z = bool != null && bool.booleanValue();
        if (z || enumC0021zzb2 == zzbl.zzb.EnumC0021zzb.REGEXP || enumC0021zzb2 == zzbl.zzb.EnumC0021zzb.IN_LIST) {
            upperCase = zzccVar.zzwt;
        } else {
            upperCase = zzccVar.zzwt.toUpperCase(Locale.ENGLISH);
        }
        String str2 = upperCase;
        String[] strArr2 = zzccVar.zzwv;
        if (strArr2 == null) {
            listAsList = null;
        } else if (z) {
            listAsList = Arrays.asList(strArr2);
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str3 : strArr2) {
                arrayList.add(str3.toUpperCase(Locale.ENGLISH));
            }
            listAsList = arrayList;
        }
        return zza(str, enumC0021zzb2, z, str2, listAsList, enumC0021zzb2 == zzbl.zzb.EnumC0021zzb.REGEXP ? str2 : null);
    }

    private final Boolean zza(String str, zzbl.zzb.EnumC0021zzb enumC0021zzb, boolean z, String str2, List<String> list, String str3) throws IllegalStateException {
        if (str == null) {
            return null;
        }
        if (enumC0021zzb == zzbl.zzb.EnumC0021zzb.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && enumC0021zzb != zzbl.zzb.EnumC0021zzb.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (zzp.zzds[enumC0021zzb.ordinal()]) {
            case 1:
                try {
                    break;
                } catch (PatternSyntaxException unused) {
                    zzad().zzdd().zza("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
        }
        return null;
    }

    private final Boolean zza(long j, com.google.android.gms.internal.measurement.zzca zzcaVar) {
        try {
            return zza(new BigDecimal(j), zzcaVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean zza(double d, com.google.android.gms.internal.measurement.zzca zzcaVar) {
        try {
            return zza(new BigDecimal(d), zzcaVar, Math.ulp(d));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean zza(String str, com.google.android.gms.internal.measurement.zzca zzcaVar) {
        if (!zzfz.zzbl(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzcaVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @VisibleForTesting
    private static Boolean zza(BigDecimal bigDecimal, com.google.android.gms.internal.measurement.zzca zzcaVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzcaVar);
        zzbl.zza.zzb zzbVar = zzcaVar.zzwk;
        if (zzbVar != null && zzbVar != zzbl.zza.zzb.UNKNOWN_COMPARISON_TYPE) {
            if (zzbVar == zzbl.zza.zzb.BETWEEN) {
                if (zzcaVar.zzwn == null || zzcaVar.zzwo == null) {
                    return null;
                }
            } else if (zzcaVar.zzwm == null) {
                return null;
            }
            zzbl.zza.zzb zzbVar2 = zzcaVar.zzwk;
            if (zzbVar2 == zzbl.zza.zzb.BETWEEN) {
                if (zzfz.zzbl(zzcaVar.zzwn) && zzfz.zzbl(zzcaVar.zzwo)) {
                    try {
                        BigDecimal bigDecimal5 = new BigDecimal(zzcaVar.zzwn);
                        bigDecimal4 = new BigDecimal(zzcaVar.zzwo);
                        bigDecimal3 = bigDecimal5;
                        bigDecimal2 = null;
                    } catch (NumberFormatException unused) {
                    }
                }
                return null;
            }
            if (!zzfz.zzbl(zzcaVar.zzwm)) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(zzcaVar.zzwm);
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException unused2) {
            }
            if (zzbVar2 == zzbl.zza.zzb.BETWEEN) {
                if (bigDecimal3 == null) {
                    return null;
                }
            } else if (bigDecimal2 != null) {
            }
            int i = zzp.zzdt[zzbVar2.ordinal()];
            if (i == 1) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == -1);
            }
            if (i == 2) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 1);
            }
            if (i == 3) {
                if (d == 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                }
                if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
            if (i == 4) {
                if (bigDecimal.compareTo(bigDecimal3) != -1 && bigDecimal.compareTo(bigDecimal4) != 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }
        return null;
    }

    private static List<zzbt.zzb> zza(Map<Integer, Long> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Integer> it = map.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            arrayList.add((zzbt.zzb) zzbt.zzb.zzhg().zzj(iIntValue).zzag(map.get(Integer.valueOf(iIntValue)).longValue()).zzmr());
        }
        return arrayList;
    }

    private static boolean zza(com.google.android.gms.internal.measurement.zzcb zzcbVar) {
        Boolean bool;
        return (zzcbVar == null || (bool = zzcbVar.zzvx) == null || !bool.booleanValue()) ? false : true;
    }

    private static void zza(Map<Integer, Long> map, int i, long j) {
        Long l = map.get(Integer.valueOf(i));
        long j2 = j / 1000;
        if (l == null || j2 > l.longValue()) {
            map.put(Integer.valueOf(i), Long.valueOf(j2));
        }
    }

    private static void zzb(Map<Integer, List<Long>> map, int i, long j) {
        List<Long> arrayList = map.get(Integer.valueOf(i));
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(Integer.valueOf(i), arrayList);
        }
        arrayList.add(Long.valueOf(j / 1000));
    }
}

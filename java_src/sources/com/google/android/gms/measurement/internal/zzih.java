package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public final class zzih {
    public static final zzih zza = new zzih(null, null, 100);
    private final EnumMap<zza, Boolean> zzb;
    private final int zzc;

    private zzih(EnumMap<zza, Boolean> enumMap, int i10) {
        EnumMap<zza, Boolean> enumMap2 = new EnumMap<>(zza.class);
        this.zzb = enumMap2;
        enumMap2.putAll(enumMap);
        this.zzc = i10;
    }

    private static int zzb(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    public final int zza() {
        return this.zzc;
    }

    public final Boolean zzc() {
        return this.zzb.get(zza.AD_STORAGE);
    }

    public enum zza {
        AD_STORAGE("ad_storage"),
        ANALYTICS_STORAGE("analytics_storage"),
        AD_USER_DATA("ad_user_data"),
        AD_PERSONALIZATION("ad_personalization");

        public final String zze;

        zza(String str) {
            this.zze = str;
        }
    }

    static Boolean zza(char c7) {
        if (c7 == '0') {
            return Boolean.FALSE;
        }
        if (c7 != '1') {
            return null;
        }
        return Boolean.TRUE;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzih)) {
            return false;
        }
        zzih zzihVar = (zzih) obj;
        for (zza zzaVar : zzig.STORAGE.zzd) {
            if (zzb(this.zzb.get(zzaVar)) != zzb(zzihVar.zzb.get(zzaVar))) {
                return false;
            }
        }
        return this.zzc == zzihVar.zzc;
    }

    public final int hashCode() {
        int iZzb = this.zzc * 17;
        Iterator<Boolean> it = this.zzb.values().iterator();
        while (it.hasNext()) {
            iZzb = (iZzb * 31) + zzb(it.next());
        }
        return iZzb;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(zza(this.zzc));
        for (zza zzaVar : zzig.STORAGE.zzd) {
            sb.append(",");
            sb.append(zzaVar.zze);
            sb.append("=");
            Boolean bool = this.zzb.get(zzaVar);
            if (bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(bool.booleanValue() ? "granted" : "denied");
            }
        }
        return sb.toString();
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        Iterator it = this.zzb.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Boolean bool = (Boolean) entry.getValue();
            if (bool != null) {
                bundle.putString(((zza) entry.getKey()).zze, zza(bool.booleanValue()));
            }
        }
        return bundle;
    }

    public final boolean zzc(zzih zzihVar) {
        return zzb(zzihVar, (zza[]) this.zzb.keySet().toArray(new zza[0]));
    }

    public final Boolean zzd() {
        return this.zzb.get(zza.ANALYTICS_STORAGE);
    }

    public final String zze() {
        StringBuilder sb = new StringBuilder("G1");
        for (zza zzaVar : zzig.STORAGE.zza()) {
            sb.append(zza(this.zzb.get(zzaVar)));
        }
        return sb.toString();
    }

    public final String zzf() {
        StringBuilder sb = new StringBuilder("G2");
        for (zza zzaVar : zzig.STORAGE.zza()) {
            Boolean bool = this.zzb.get(zzaVar);
            sb.append(bool == null ? 'g' : bool.booleanValue() ? 'G' : 'D');
        }
        return sb.toString();
    }

    public final boolean zzg() {
        return zza(zza.AD_STORAGE);
    }

    public final boolean zzh() {
        return zza(zza.ANALYTICS_STORAGE);
    }

    public final boolean zzi() {
        Iterator<Boolean> it = this.zzb.values().iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                return true;
            }
        }
        return false;
    }

    static String zza(int i10) {
        if (i10 == -20) {
            return "API";
        }
        if (i10 == -10) {
            return "MANIFEST";
        }
        if (i10 == 0) {
            return "1P_API";
        }
        if (i10 == 30) {
            return "1P_INIT";
        }
        if (i10 != 90) {
            return i10 != 100 ? "OTHER" : "UNKNOWN";
        }
        return "REMOTE_CONFIG";
    }

    public zzih(Boolean bool, Boolean bool2, int i10) {
        EnumMap<zza, Boolean> enumMap = new EnumMap<>(zza.class);
        this.zzb = enumMap;
        enumMap.put(zza.AD_STORAGE, bool);
        enumMap.put(zza.ANALYTICS_STORAGE, bool2);
        this.zzc = i10;
    }

    static String zza(boolean z6) {
        return z6 ? "granted" : "denied";
    }

    public static boolean zza(int i10, int i11) {
        return i10 <= i11;
    }

    static char zza(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    public final zzih zzb(zzih zzihVar) {
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzig.STORAGE.zzd) {
            Boolean bool = this.zzb.get(zzaVar);
            if (bool == null) {
                bool = zzihVar.zzb.get(zzaVar);
            }
            enumMap.put(zzaVar, bool);
        }
        return new zzih(enumMap, this.zzc);
    }

    public static zzih zza(Bundle bundle, int i10) {
        if (bundle == null) {
            return new zzih(null, null, i10);
        }
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzig.STORAGE.zzd) {
            enumMap.put(zzaVar, zzb(bundle.getString(zzaVar.zze)));
        }
        return new zzih(enumMap, i10);
    }

    static Boolean zzb(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final boolean zzb(zzih zzihVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            Boolean bool = this.zzb.get(zzaVar);
            Boolean bool2 = zzihVar.zzb.get(zzaVar);
            Boolean bool3 = Boolean.FALSE;
            if (bool == bool3 && bool2 != bool3) {
                return true;
            }
        }
        return false;
    }

    public static zzih zza(String str) {
        return zza(str, 100);
    }

    public static zzih zza(String str, int i10) {
        EnumMap enumMap = new EnumMap(zza.class);
        if (str != null) {
            zza[] zzaVarArrZza = zzig.STORAGE.zza();
            for (int i11 = 0; i11 < zzaVarArrZza.length; i11++) {
                zza zzaVar = zzaVarArrZza[i11];
                int i12 = i11 + 2;
                if (i12 < str.length()) {
                    enumMap.put(zzaVar, zza(str.charAt(i12)));
                }
            }
        }
        return new zzih(enumMap, i10);
    }

    public final zzih zza(zzih zzihVar) {
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzig.STORAGE.zzd) {
            Boolean boolValueOf = this.zzb.get(zzaVar);
            Boolean bool = zzihVar.zzb.get(zzaVar);
            if (boolValueOf == null) {
                boolValueOf = bool;
            } else if (bool != null) {
                boolValueOf = Boolean.valueOf(boolValueOf.booleanValue() && bool.booleanValue());
            }
            enumMap.put(zzaVar, boolValueOf);
        }
        return new zzih(enumMap, 100);
    }

    public static String zza(Bundle bundle) {
        String string;
        for (zza zzaVar : zzig.STORAGE.zzd) {
            if (bundle.containsKey(zzaVar.zze) && (string = bundle.getString(zzaVar.zze)) != null && zzb(string) == null) {
                return string;
            }
        }
        return null;
    }

    public final boolean zza(zzih zzihVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            if (!zzihVar.zza(zzaVar) && zza(zzaVar)) {
                return true;
            }
        }
        return false;
    }

    public final boolean zza(zza zzaVar) {
        Boolean bool = this.zzb.get(zzaVar);
        return bool == null || bool.booleanValue();
    }
}

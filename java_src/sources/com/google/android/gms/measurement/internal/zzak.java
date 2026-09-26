package com.google.android.gms.measurement.internal;

import java.util.EnumMap;

/* JADX INFO: loaded from: classes10.dex */
final class zzak {
    private final EnumMap<zzih.zza, zzaj> zza;

    zzak() {
        this.zza = new EnumMap<>(zzih.zza.class);
    }

    public final zzaj zza(zzih.zza zzaVar) {
        zzaj zzajVar = this.zza.get(zzaVar);
        return zzajVar == null ? zzaj.UNSET : zzajVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("1");
        for (zzih.zza zzaVar : zzih.zza.values()) {
            zzaj zzajVar = this.zza.get(zzaVar);
            if (zzajVar == null) {
                zzajVar = zzaj.UNSET;
            }
            sb.append(zzajVar.zzj);
        }
        return sb.toString();
    }

    private zzak(EnumMap<zzih.zza, zzaj> enumMap) {
        EnumMap<zzih.zza, zzaj> enumMap2 = new EnumMap<>(zzih.zza.class);
        this.zza = enumMap2;
        enumMap2.putAll(enumMap);
    }

    public static zzak zza(String str) {
        EnumMap enumMap = new EnumMap(zzih.zza.class);
        if (str.length() >= zzih.zza.values().length) {
            int i10 = 0;
            if (str.charAt(0) == '1') {
                zzih.zza[] zzaVarArrValues = zzih.zza.values();
                int length = zzaVarArrValues.length;
                int i11 = 1;
                while (i10 < length) {
                    enumMap.put(zzaVarArrValues[i10], zzaj.zza(str.charAt(i11)));
                    i10++;
                    i11++;
                }
                return new zzak(enumMap);
            }
        }
        return new zzak();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0017  */
    public final void zza(zzih.zza zzaVar, int i10) {
        zzaj zzajVar = zzaj.UNSET;
        if (i10 == -20) {
            zzajVar = zzaj.API;
        } else if (i10 == -10) {
            zzajVar = zzaj.MANIFEST;
        } else if (i10 == 0) {
            zzajVar = zzaj.API;
        } else if (i10 == 30) {
            zzajVar = zzaj.INITIALIZATION;
        }
        this.zza.put(zzaVar, zzajVar);
    }

    public final void zza(zzih.zza zzaVar, zzaj zzajVar) {
        this.zza.put(zzaVar, zzajVar);
    }
}

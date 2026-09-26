package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes9.dex */
public enum zzs {
    DEBUG(3),
    ERROR(6),
    INFO(4),
    VERBOSE(2),
    WARN(5);

    private final int zzg;

    public static zzs zza(int i10) {
        if (i10 == 2) {
            return VERBOSE;
        }
        if (i10 == 3) {
            return DEBUG;
        }
        if (i10 != 5) {
            return i10 != 6 ? INFO : ERROR;
        }
        return WARN;
    }

    zzs(int i10) {
        this.zzg = i10;
    }
}

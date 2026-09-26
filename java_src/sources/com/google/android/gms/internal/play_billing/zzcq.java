package com.google.android.gms.internal.play_billing;

import java.util.Comparator;

/* JADX INFO: loaded from: classes10.dex */
final class zzcq implements Comparator {
    zzcq() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzcx zzcxVarZza = zzcx.zza(obj);
        zzcx zzcxVarZza2 = zzcx.zza(obj2);
        if (zzcxVarZza == zzcxVarZza2) {
            int iOrdinal = zzcxVarZza.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        if (iOrdinal == 3) {
                            return ((Double) obj).compareTo((Double) obj2);
                        }
                        throw null;
                    }
                    return ((Long) obj).compareTo((Long) obj2);
                }
                return ((String) obj).compareTo((String) obj2);
            }
            return ((Boolean) obj).compareTo((Boolean) obj2);
        }
        return zzcxVarZza.compareTo(zzcxVarZza2);
    }
}

package com.google.android.gms.internal.play_billing;

import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
public final class zzar {
    static int zza(Set set) {
        int iHashCode;
        int i10 = 0;
        for (Object obj : set) {
            if (obj != null) {
                iHashCode = obj.hashCode();
            } else {
                iHashCode = 0;
            }
            i10 += iHashCode;
        }
        return i10;
    }
}

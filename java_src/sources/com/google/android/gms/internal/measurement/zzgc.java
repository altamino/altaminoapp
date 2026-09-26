package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes7.dex */
public final class zzgc implements zzgh {
    private final SimpleArrayMap<String, SimpleArrayMap<String, String>> zza;

    /* JADX WARN: Code duplicated, block: B:10:0x0017 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    /* JADX WARN: Code duplicated, block: B:9:0x0016 A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:11:0x0019, please report this as an issue */
    @Override // com.google.android.gms.internal.measurement.zzgh
    public final String zza(Uri uri, String str, String str2, String str3) {
        SimpleArrayMap<String, String> simpleArrayMap;
        if (uri == null) {
            if (str == null) {
                simpleArrayMap = null;
            }
            if (simpleArrayMap == null) {
                return null;
            }
            if (str2 != null) {
                str3 = str2 + str3;
            }
            return simpleArrayMap.get(str3);
        }
        str = uri.toString();
        simpleArrayMap = this.zza.get(str);
        if (simpleArrayMap == null) {
            return null;
        }
        if (str2 != null) {
            str3 = str2 + str3;
        }
        return simpleArrayMap.get(str3);
    }

    zzgc(SimpleArrayMap<String, SimpleArrayMap<String, String>> simpleArrayMap) {
        this.zza = simpleArrayMap;
    }
}

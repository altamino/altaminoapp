package com.google.android.gms.internal.measurement;

import android.util.Log;

/* loaded from: classes2.dex */
final class zzcy extends zzcw<Integer> {
    zzcy(zzdc zzdcVar, String str, Integer num) {
        super(zzdcVar, str, num, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzcw
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final Integer zzc(Object obj) {
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Long) {
            return Integer.valueOf(((Long) obj).intValue());
        }
        if (obj instanceof String) {
            try {
                return Integer.valueOf(Integer.parseInt((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String strZzjq = super.zzjq();
        String strValueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(strZzjq).length() + 24 + String.valueOf(strValueOf).length());
        sb.append("Invalid int value for ");
        sb.append(strZzjq);
        sb.append(": ");
        sb.append(strValueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}

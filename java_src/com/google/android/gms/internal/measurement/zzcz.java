package com.google.android.gms.internal.measurement;

import android.util.Log;

/* loaded from: classes2.dex */
final class zzcz extends zzcw<Boolean> {
    zzcz(zzdc zzdcVar, String str, Boolean bool) {
        super(zzdcVar, str, bool, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcw
    final /* synthetic */ Boolean zzc(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzci.zzyv.matcher(str).matches()) {
                return true;
            }
            if (zzci.zzyw.matcher(str).matches()) {
                return false;
            }
        }
        String strZzjq = super.zzjq();
        String strValueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(strZzjq).length() + 28 + String.valueOf(strValueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(strZzjq);
        sb.append(": ");
        sb.append(strValueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}

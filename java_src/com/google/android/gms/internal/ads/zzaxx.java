package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;

@TargetApi(26)
/* loaded from: classes2.dex */
public class zzaxx extends zzaxw {
    @Override // com.google.android.gms.internal.ads.zzaxo
    public final zzwx zza(Context context, TelephonyManager telephonyManager) {
        com.google.android.gms.ads.internal.zzk.zzlg();
        return zzaxi.zzp(context, "android.permission.ACCESS_NETWORK_STATE") ? telephonyManager.isDataEnabled() ? zzwx.ENUM_TRUE : zzwx.ENUM_FALSE : zzwx.ENUM_FALSE;
    }
}

package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;

@TargetApi(24)
/* loaded from: classes2.dex */
public class zzaxw extends zzaxv {
    @Override // com.google.android.gms.internal.ads.zzaxo
    public final boolean zza(Activity activity, Configuration configuration) {
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcuh)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcuj)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzyt.zzpa();
        int iZza = zzazt.zza(activity, configuration.screenHeightDp);
        int iZza2 = zzazt.zza(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzk.zzlg();
        DisplayMetrics displayMetricsZza = zzaxi.zza(windowManager);
        int i = displayMetricsZza.heightPixels;
        int i2 = displayMetricsZza.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        double d = activity.getResources().getDisplayMetrics().density;
        Double.isNaN(d);
        int iRound = ((int) Math.round(d + 0.5d)) * ((Integer) zzyt.zzpe().zzd(zzacu.zzcug)).intValue();
        return !(zze(i, iZza + dimensionPixelSize, iRound) && zze(i2, iZza2, iRound));
    }

    private static boolean zze(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }
}

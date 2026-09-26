package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.SideEffectFree;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.narvii.master.home.profile.GlobalProfileFragment;

/* JADX INFO: loaded from: classes10.dex */
@KeepForSdk
public final class DeviceProperties {

    @Nullable
    private static Boolean zza;

    @Nullable
    private static Boolean zzb;

    @Nullable
    private static Boolean zzc;

    @Nullable
    private static Boolean zzd;

    @Nullable
    private static Boolean zze;

    @Nullable
    private static Boolean zzf;

    @Nullable
    private static Boolean zzg;

    @Nullable
    private static Boolean zzh;

    @Nullable
    private static Boolean zzi;

    @Nullable
    private static Boolean zzj;

    @Nullable
    private static Boolean zzk;

    @Nullable
    private static Boolean zzl;

    @Nullable
    private static Boolean zzm;

    @Nullable
    private static Boolean zzn;

    private DeviceProperties() {
    }

    @KeepForSdk
    public static boolean isTablet(@NonNull Context context) {
        return isTablet(context.getResources());
    }

    public static boolean zzc(@NonNull Resources resources) {
        boolean z6 = false;
        if (resources == null) {
            return false;
        }
        if (zzd == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z6 = true;
            }
            zzd = Boolean.valueOf(z6);
        }
        return zzd.booleanValue();
    }

    @KeepForSdk
    public static boolean isBstar(@NonNull Context context) {
        if (zzm == null) {
            boolean z6 = false;
            if (PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z6 = true;
            }
            zzm = Boolean.valueOf(z6);
        }
        return zzm.booleanValue();
    }

    @KeepForSdk
    public static boolean isFoldable(@NonNull Context context) {
        if (zzc == null) {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            boolean z6 = false;
            if (PlatformVersion.isAtLeastR() && sensorManager != null && sensorManager.getDefaultSensor(36) != null) {
                z6 = true;
            }
            zzc = Boolean.valueOf(z6);
        }
        return zzc.booleanValue();
    }

    @KeepForSdk
    public static boolean isLatchsky(@NonNull Context context) {
        if (zzg == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z6 = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z6 = true;
            }
            zzg = Boolean.valueOf(z6);
        }
        return zzg.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006f  */
    @KeepForSdk
    public static boolean isPhone(@NonNull Context context) {
        if (zza == null) {
            boolean z6 = true;
            if (!isFoldable(context)) {
                if (isTablet(context) || isWearable(context) || zzb(context)) {
                    z6 = false;
                } else {
                    if (zzi == null) {
                        zzi = Boolean.valueOf(context.getPackageManager().hasSystemFeature("org.chromium.arc"));
                    }
                    if (zzi.booleanValue() || isAuto(context) || isTv(context)) {
                        z6 = false;
                    } else {
                        if (zzl == null) {
                            zzl = Boolean.valueOf(context.getPackageManager().hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE"));
                        }
                        if (zzl.booleanValue() || isBstar(context) || isXr(context)) {
                            z6 = false;
                        }
                    }
                }
            }
            zza = Boolean.valueOf(z6);
        }
        return zza.booleanValue();
    }

    @KeepForSdk
    public static boolean isTablet(@NonNull Resources resources) {
        if (resources == null) {
            return false;
        }
        if (zzb == null) {
            zzb = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || zzc(resources));
        }
        return zzb.booleanValue();
    }

    @KeepForSdk
    public static boolean isUserBuild() {
        int i10 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return GlobalProfileFragment.KEY_USER.equals(Build.TYPE);
    }

    @TargetApi(21)
    public static boolean zza(@NonNull Context context) {
        if (zzf == null) {
            boolean z6 = false;
            if (PlatformVersion.isAtLeastLollipop() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z6 = true;
            }
            zzf = Boolean.valueOf(z6);
        }
        return zzf.booleanValue();
    }

    public static boolean zzb(@NonNull Context context) {
        if (zzh == null) {
            boolean z6 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z6 = false;
            }
            zzh = Boolean.valueOf(z6);
        }
        return zzh.booleanValue();
    }

    @SideEffectFree
    @TargetApi(20)
    public static boolean zzd(@NonNull PackageManager packageManager) {
        if (zze == null) {
            boolean z6 = false;
            if (PlatformVersion.isAtLeastKitKatWatch() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z6 = true;
            }
            zze = Boolean.valueOf(z6);
        }
        return zze.booleanValue();
    }

    @KeepForSdk
    public static boolean isAuto(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzj == null) {
            boolean z6 = false;
            if (PlatformVersion.isAtLeastO() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z6 = true;
            }
            zzj = Boolean.valueOf(z6);
        }
        return zzj.booleanValue();
    }

    @KeepForSdk
    public static boolean isSevenInchTablet(@NonNull Context context) {
        return zzc(context.getResources());
    }

    @KeepForSdk
    @TargetApi(21)
    public static boolean isSidewinder(@NonNull Context context) {
        return zza(context);
    }

    @KeepForSdk
    public static boolean isTv(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzk == null) {
            boolean z6 = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv") && !packageManager.hasSystemFeature("android.hardware.type.television") && !packageManager.hasSystemFeature("android.software.leanback")) {
                z6 = false;
            }
            zzk = Boolean.valueOf(z6);
        }
        return zzk.booleanValue();
    }

    @SideEffectFree
    @KeepForSdk
    @TargetApi(20)
    public static boolean isWearable(@NonNull Context context) {
        return zzd(context.getPackageManager());
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean isWearableWithoutPlayStore(@NonNull Context context) {
        if (!isWearable(context) || PlatformVersion.isAtLeastN()) {
            if (zza(context)) {
                if (!PlatformVersion.isAtLeastO() || PlatformVersion.isAtLeastR()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @KeepForSdk
    public static boolean isXr(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzn == null) {
            zzn = Boolean.valueOf(packageManager.hasSystemFeature("android.software.xr.immersive"));
        }
        return zzn.booleanValue();
    }
}

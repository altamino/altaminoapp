package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public class zzfw {

    @GuardedBy
    private static UserManager zza;
    private static volatile boolean zzb = !zza();

    @GuardedBy
    private static boolean zzc = false;

    private zzfw() {
    }

    @ChecksSdkIntAtLeast
    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @RequiresApi
    @TargetApi(24)
    @GuardedBy
    private static boolean zzd(Context context) {
        boolean z6;
        boolean z10 = true;
        int i10 = 1;
        while (true) {
            z6 = false;
            if (i10 > 2) {
                break;
            }
            if (zza == null) {
                zza = (UserManager) context.getSystemService(UserManager.class);
            }
            UserManager userManager = zza;
            if (userManager == null) {
                return true;
            }
            try {
                if (!userManager.isUserUnlocked() && userManager.isUserRunning(Process.myUserHandle())) {
                    z10 = false;
                }
                z6 = z10;
                break;
            } catch (NullPointerException e) {
                Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                zza = null;
                i10++;
            }
        }
        if (z6) {
            zza = null;
        }
        return z6;
    }

    public static boolean zza(Context context) {
        return zza() && !zzc(context);
    }

    @RequiresApi
    @TargetApi(24)
    private static boolean zzc(Context context) {
        if (zzb) {
            return true;
        }
        synchronized (zzfw.class) {
            try {
                if (zzb) {
                    return true;
                }
                boolean zZzd = zzd(context);
                if (zZzd) {
                    zzb = zZzd;
                }
                return zZzd;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean zzb(Context context) {
        if (zza() && !zzc(context)) {
            return false;
        }
        return true;
    }
}

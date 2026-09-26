package androidx.core.telephony;

import android.annotation.SuppressLint;
import android.telephony.TelephonyManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public class TelephonyManagerCompat {
    private static Method sGetDeviceIdMethod;
    private static Method sGetSubIdMethod;

    @RequiresApi
    private static class Api23Impl {
        private Api23Impl() {
        }

        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission
        @DoNotInline
        static String a(TelephonyManager telephonyManager, int i10) {
            return telephonyManager.getDeviceId(i10);
        }
    }

    @RequiresApi
    private static class Api26Impl {
        private Api26Impl() {
        }

        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission
        @DoNotInline
        static String a(TelephonyManager telephonyManager) {
            return telephonyManager.getImei();
        }
    }

    @RequiresApi
    private static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static int a(TelephonyManager telephonyManager) {
            return telephonyManager.getSubscriptionId();
        }
    }

    private TelephonyManagerCompat() {
    }
}

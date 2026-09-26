package androidx.core.net;

import android.net.ConnectivityManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public final class ConnectivityManagerCompat {
    public static final int RESTRICT_BACKGROUND_STATUS_DISABLED = 1;
    public static final int RESTRICT_BACKGROUND_STATUS_ENABLED = 3;
    public static final int RESTRICT_BACKGROUND_STATUS_WHITELISTED = 2;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface RestrictBackgroundStatus {
    }

    @RequiresApi
    static class Api16Impl {
        private Api16Impl() {
        }

        @RequiresPermission
        @DoNotInline
        static boolean a(ConnectivityManager connectivityManager) {
            return connectivityManager.isActiveNetworkMetered();
        }
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static int a(ConnectivityManager connectivityManager) {
            return connectivityManager.getRestrictBackgroundStatus();
        }
    }

    private ConnectivityManagerCompat() {
    }

    @RequiresPermission
    public static boolean a(@NonNull ConnectivityManager connectivityManager) {
        return Api16Impl.a(connectivityManager);
    }
}

package androidx.core.content;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public final class PackageManagerCompat {

    @SuppressLint({"ActionValue"})
    public static final String ACTION_PERMISSION_REVOCATION_SETTINGS = "android.intent.action.AUTO_REVOKE_PERMISSIONS";

    @RestrictTo
    public static final String LOG_TAG = "PackageManagerCompat";

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface UnusedAppRestrictionsStatus {
    }

    @RequiresApi
    private static class Api30Impl {
        private Api30Impl() {
        }
    }

    private PackageManagerCompat() {
    }
}

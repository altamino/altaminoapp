package androidx.core.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public final class BundleCompat {

    @RequiresApi
    static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static IBinder a(Bundle bundle, String str) {
            return bundle.getBinder(str);
        }

        @DoNotInline
        static void b(Bundle bundle, String str, IBinder iBinder) {
            bundle.putBinder(str, iBinder);
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    static class BeforeApi18Impl {
        private static final String TAG = "BundleCompatBaseImpl";
        private static Method sGetIBinderMethod;
        private static boolean sGetIBinderMethodFetched;
        private static Method sPutIBinderMethod;
        private static boolean sPutIBinderMethodFetched;

        private BeforeApi18Impl() {
        }
    }

    private BundleCompat() {
    }

    @Nullable
    public static IBinder a(@NonNull Bundle bundle, @Nullable String str) {
        return Api18Impl.a(bundle, str);
    }

    public static void b(@NonNull Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        Api18Impl.b(bundle, str, iBinder);
    }
}

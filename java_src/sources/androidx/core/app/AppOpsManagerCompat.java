package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public final class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;

    @RequiresApi
    static class Api29Impl {
        @DoNotInline
        static int a(@Nullable AppOpsManager appOpsManager, @NonNull String str, int i10, @NonNull String str2) {
            if (appOpsManager == null) {
                return 1;
            }
            return appOpsManager.checkOpNoThrow(str, i10, str2);
        }

        @Nullable
        @DoNotInline
        static AppOpsManager c(@NonNull Context context) {
            return (AppOpsManager) context.getSystemService(AppOpsManager.class);
        }

        private Api29Impl() {
        }

        @NonNull
        @DoNotInline
        static String b(@NonNull Context context) {
            return context.getOpPackageName();
        }
    }

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static int a(AppOpsManager appOpsManager, String str, int i10, String str2) {
            return appOpsManager.noteOp(str, i10, str2);
        }

        @DoNotInline
        static int b(AppOpsManager appOpsManager, String str, int i10, String str2) {
            return appOpsManager.noteOpNoThrow(str, i10, str2);
        }
    }

    @RequiresApi
    static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static <T> T a(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        @DoNotInline
        static int b(AppOpsManager appOpsManager, String str, String str2) {
            return appOpsManager.noteProxyOp(str, str2);
        }

        @DoNotInline
        static int c(AppOpsManager appOpsManager, String str, String str2) {
            return appOpsManager.noteProxyOpNoThrow(str, str2);
        }

        @DoNotInline
        static String d(String str) {
            return AppOpsManager.permissionToOp(str);
        }
    }

    public static int a(@NonNull Context context, int i10, @NonNull String str, @NonNull String str2) {
        if (Build.VERSION.SDK_INT < 29) {
            return c(context, str, str2);
        }
        AppOpsManager appOpsManagerC = Api29Impl.c(context);
        int iA = Api29Impl.a(appOpsManagerC, str, Binder.getCallingUid(), str2);
        return iA != 0 ? iA : Api29Impl.a(appOpsManagerC, str, i10, Api29Impl.b(context));
    }

    public static int b(@NonNull Context context, @NonNull String str, int i10, @NonNull String str2) {
        return Api19Impl.a((AppOpsManager) context.getSystemService("appops"), str, i10, str2);
    }

    public static int c(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return Api23Impl.c((AppOpsManager) Api23Impl.a(context, AppOpsManager.class), str, str2);
    }

    private AppOpsManagerCompat() {
    }

    @Nullable
    public static String d(@NonNull String str) {
        return Api23Impl.d(str);
    }
}

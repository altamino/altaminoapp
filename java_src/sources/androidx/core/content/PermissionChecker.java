package androidx.core.content;

import android.content.Context;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.AppOpsManagerCompat;
import androidx.core.util.ObjectsCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
public final class PermissionChecker {
    public static final int PERMISSION_DENIED = -1;
    public static final int PERMISSION_DENIED_APP_OP = -2;
    public static final int PERMISSION_GRANTED = 0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface PermissionResult {
    }

    private PermissionChecker() {
    }

    public static int a(@NonNull Context context, @NonNull String str) {
        String packageName;
        if (Binder.getCallingPid() == Process.myPid()) {
            packageName = context.getPackageName();
        } else {
            packageName = null;
        }
        return b(context, str, Binder.getCallingPid(), Binder.getCallingUid(), packageName);
    }

    public static int b(@NonNull Context context, @NonNull String str, int i10, int i11, @Nullable String str2) {
        int iC;
        if (context.checkPermission(str, i10, i11) == -1) {
            return -1;
        }
        String strD = AppOpsManagerCompat.d(str);
        if (strD == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i11);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        int iMyUid = Process.myUid();
        String packageName = context.getPackageName();
        if (iMyUid == i11 && ObjectsCompat.a(packageName, str2)) {
            iC = AppOpsManagerCompat.a(context, i11, strD, str2);
        } else {
            iC = AppOpsManagerCompat.c(context, strD, str2);
        }
        if (iC == 0) {
            return 0;
        }
        return -2;
    }

    public static int c(@NonNull Context context, @NonNull String str) {
        return b(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}

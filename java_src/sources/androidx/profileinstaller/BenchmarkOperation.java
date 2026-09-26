package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
class BenchmarkOperation {

    @RequiresApi
    private static class Api21ContextHelper {
        private Api21ContextHelper() {
        }

        static File a(Context context) {
            return context.getCodeCacheDir();
        }
    }

    @RequiresApi
    private static class Api24ContextHelper {
        private Api24ContextHelper() {
        }

        static File a(Context context) {
            return context.createDeviceProtectedStorageContext().getCodeCacheDir();
        }
    }

    static void b(@NonNull Context context, @NonNull ProfileInstallReceiver.ResultDiagnostics resultDiagnostics) {
        if (a(Build.VERSION.SDK_INT >= 24 ? Api24ContextHelper.a(context) : Api21ContextHelper.a(context))) {
            resultDiagnostics.a(14, null);
        } else {
            resultDiagnostics.a(15, null);
        }
    }

    private BenchmarkOperation() {
    }

    static boolean a(File file) {
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return false;
            }
            boolean z6 = true;
            for (File file2 : fileArrListFiles) {
                if (a(file2) && z6) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            }
            return z6;
        }
        file.delete();
        return true;
    }
}

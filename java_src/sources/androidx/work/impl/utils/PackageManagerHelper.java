package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.Logger;
import com.narvii.modulization.ConfigApiRequestHelper;

/* JADX INFO: loaded from: classes2.dex */
public class PackageManagerHelper {
    private static final String TAG = Logger.i("PackageManagerHelper");

    public static void a(@NonNull Context context, @NonNull Class<?> klazz, boolean enabled) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, klazz.getName()), enabled ? 1 : 2, 1);
            Logger loggerE = Logger.e();
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(klazz.getName());
            sb.append(" ");
            sb.append(enabled ? ConfigApiRequestHelper.ENABLED : "disabled");
            loggerE.a(str, sb.toString());
        } catch (Exception e) {
            Logger loggerE2 = Logger.e();
            String str2 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(klazz.getName());
            sb2.append("could not be ");
            sb2.append(enabled ? ConfigApiRequestHelper.ENABLED : "disabled");
            loggerE2.b(str2, sb2.toString(), e);
        }
    }

    private PackageManagerHelper() {
    }
}

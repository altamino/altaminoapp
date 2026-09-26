package androidx.webkit.internal;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
public class ApiHelperForTiramisu {
    private ApiHelperForTiramisu() {
    }

    @DoNotInline
    static ServiceInfo a(PackageManager packageManager, ComponentName componentName, PackageManager.ComponentInfoFlags componentInfoFlags) throws PackageManager.NameNotFoundException {
        return packageManager.getServiceInfo(componentName, componentInfoFlags);
    }

    @DoNotInline
    static PackageManager.ComponentInfoFlags b(long j6) {
        return PackageManager.ComponentInfoFlags.of(j6);
    }
}

package s4;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import l4.c;

/* JADX INFO: loaded from: classes11.dex */
public class a {

    @VisibleForTesting
    public static final String DATA_COLLECTION_DEFAULT_ENABLED = "firebase_data_collection_default_enabled";
    private static final String FIREBASE_APP_PREFS = "com.google.firebase.common.prefs:";
    private boolean dataCollectionDefaultEnabled;
    private final Context deviceProtectedContext;
    private final c publisher;
    private final SharedPreferences sharedPreferences;

    public synchronized boolean b() {
        return this.dataCollectionDefaultEnabled;
    }

    private static Context a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : ContextCompat.createDeviceProtectedStorageContext(context);
    }

    private boolean c() {
        return this.sharedPreferences.contains(DATA_COLLECTION_DEFAULT_ENABLED) ? this.sharedPreferences.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED, true) : d();
    }

    private boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.deviceProtectedContext.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.deviceProtectedContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(DATA_COLLECTION_DEFAULT_ENABLED)) {
                return true;
            }
            return applicationInfo.metaData.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED);
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public a(Context context, String str, c cVar) {
        Context contextA = a(context);
        this.deviceProtectedContext = contextA;
        this.sharedPreferences = contextA.getSharedPreferences(FIREBASE_APP_PREFS + str, 0);
        this.publisher = cVar;
        this.dataCollectionDefaultEnabled = c();
    }
}

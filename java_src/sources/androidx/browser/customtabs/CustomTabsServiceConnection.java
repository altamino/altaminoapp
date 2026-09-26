package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CustomTabsServiceConnection implements ServiceConnection {

    @Nullable
    private Context mApplicationContext;

    @Nullable
    @RestrictTo
    Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public abstract void onCustomTabsServiceConnected(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient);

    @RestrictTo
    void setApplicationContext(@NonNull Context context) {
        this.mApplicationContext = context;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        if (this.mApplicationContext == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        onCustomTabsServiceConnected(componentName, new CustomTabsClient(android.support.customtabs.b.a.x1(iBinder), componentName, this.mApplicationContext) { // from class: androidx.browser.customtabs.CustomTabsServiceConnection.1
        });
    }
}

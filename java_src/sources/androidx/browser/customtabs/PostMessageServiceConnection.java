package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PostMessageServiceConnection implements PostMessageBackend, ServiceConnection {
    private static final String TAG = "PostMessageServConn";
    private final Object mLock = new Object();
    private boolean mMessageChannelCreated;

    @Nullable
    private String mPackageName;

    @Nullable
    private android.support.customtabs.d mService;
    private final android.support.customtabs.a mSessionBinder;

    public void n() {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
        this.mService = null;
        n();
    }

    private boolean d(@Nullable Bundle bundle) {
        if (this.mService == null) {
            return false;
        }
        synchronized (this.mLock) {
            try {
                try {
                    this.mService.u(this.mSessionBinder, bundle);
                } catch (RemoteException unused) {
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public void m() {
        if (this.mMessageChannelCreated) {
            d(null);
        }
    }

    public PostMessageServiceConnection(@NonNull CustomTabsSessionToken customTabsSessionToken) {
        IBinder iBinderA = customTabsSessionToken.a();
        if (iBinderA != null) {
            this.mSessionBinder = android.support.customtabs.a.AbstractBinderC0005a.x1(iBinderA);
            return;
        }
        throw new IllegalArgumentException("Provided session must have binder.");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        this.mService = android.support.customtabs.d.a.x1(iBinder);
        m();
    }
}

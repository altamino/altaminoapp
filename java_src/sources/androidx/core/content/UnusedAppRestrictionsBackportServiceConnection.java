package androidx.core.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;

/* JADX INFO: loaded from: classes4.dex */
class UnusedAppRestrictionsBackportServiceConnection implements ServiceConnection {
    private final Context mContext;
    private boolean mHasBoundService;

    @NonNull
    ResolvableFuture<Integer> mResultFuture;

    @Nullable
    @VisibleForTesting
    IUnusedAppRestrictionsBackportService mUnusedAppRestrictionsService;

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.mUnusedAppRestrictionsService = null;
    }

    private IUnusedAppRestrictionsBackportCallback m() {
        return new IUnusedAppRestrictionsBackportCallback.Stub() { // from class: androidx.core.content.UnusedAppRestrictionsBackportServiceConnection.1
            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
            public void I0(boolean z6, boolean z10) throws RemoteException {
                if (!z6) {
                    UnusedAppRestrictionsBackportServiceConnection.this.mResultFuture.q(0);
                    Log.e(PackageManagerCompat.LOG_TAG, "Unable to retrieve the permission revocation setting from the backport");
                } else if (z10) {
                    UnusedAppRestrictionsBackportServiceConnection.this.mResultFuture.q(3);
                } else {
                    UnusedAppRestrictionsBackportServiceConnection.this.mResultFuture.q(2);
                }
            }
        };
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IUnusedAppRestrictionsBackportService iUnusedAppRestrictionsBackportServiceX1 = IUnusedAppRestrictionsBackportService.Stub.x1(iBinder);
        this.mUnusedAppRestrictionsService = iUnusedAppRestrictionsBackportServiceX1;
        try {
            iUnusedAppRestrictionsBackportServiceX1.W0(m());
        } catch (RemoteException unused) {
            this.mResultFuture.q(0);
        }
    }
}

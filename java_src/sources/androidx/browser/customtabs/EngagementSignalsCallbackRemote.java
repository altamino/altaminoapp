package androidx.browser.customtabs;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
final class EngagementSignalsCallbackRemote implements EngagementSignalsCallback {
    private static final String TAG = "EngagementSigsCallbkRmt";
    private final android.support.customtabs.c mCallbackBinder;

    @Override // androidx.browser.customtabs.EngagementSignalsCallback
    public void b(boolean z6, @NonNull Bundle bundle) {
        try {
            this.mCallbackBinder.b(z6, bundle);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException during IEngagementSignalsCallback transaction");
        }
    }

    @Override // androidx.browser.customtabs.EngagementSignalsCallback
    public void c(boolean z6, @NonNull Bundle bundle) {
        try {
            this.mCallbackBinder.c(z6, bundle);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException during IEngagementSignalsCallback transaction");
        }
    }

    @Override // androidx.browser.customtabs.EngagementSignalsCallback
    public void d(@IntRange int i10, @NonNull Bundle bundle) {
        try {
            this.mCallbackBinder.d(i10, bundle);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException during IEngagementSignalsCallback transaction");
        }
    }

    private EngagementSignalsCallbackRemote(@NonNull android.support.customtabs.c cVar) {
        this.mCallbackBinder = cVar;
    }

    @NonNull
    static EngagementSignalsCallbackRemote a(@NonNull IBinder iBinder) {
        return new EngagementSignalsCallbackRemote(android.support.customtabs.c.a.x1(iBinder));
    }
}

package androidx.browser.trusted;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
class ConnectionHolder implements ServiceConnection {
    private static final int STATE_AWAITING_CONNECTION = 0;
    private static final int STATE_CANCELLED = 3;
    private static final int STATE_CONNECTED = 1;
    private static final int STATE_DISCONNECTED = 2;

    @Nullable
    private Exception mCancellationException;

    @NonNull
    private final Runnable mCloseRunnable;

    @NonNull
    private List<CallbackToFutureAdapter.Completer<TrustedWebActivityServiceConnection>> mCompleters;

    @Nullable
    private TrustedWebActivityServiceConnection mService;
    private int mState;

    @NonNull
    private final WrapperFactory mWrapperFactory;

    static class WrapperFactory {
        @NonNull
        TrustedWebActivityServiceConnection a(ComponentName componentName, IBinder iBinder) {
            return new TrustedWebActivityServiceConnection(android.support.customtabs.trusted.b.a.x1(iBinder), componentName);
        }

        WrapperFactory() {
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public void onServiceDisconnected(ComponentName componentName) {
        this.mService = null;
        this.mCloseRunnable.run();
        this.mState = 2;
    }

    @MainThread
    public void d(@NonNull Exception exc) {
        Iterator<CallbackToFutureAdapter.Completer<TrustedWebActivityServiceConnection>> it = this.mCompleters.iterator();
        while (it.hasNext()) {
            it.next().e(exc);
        }
        this.mCompleters.clear();
        this.mCloseRunnable.run();
        this.mState = 3;
        this.mCancellationException = exc;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.mService = this.mWrapperFactory.a(componentName, iBinder);
        Iterator<CallbackToFutureAdapter.Completer<TrustedWebActivityServiceConnection>> it = this.mCompleters.iterator();
        while (it.hasNext()) {
            it.next().b(this.mService);
        }
        this.mCompleters.clear();
        this.mState = 1;
    }
}

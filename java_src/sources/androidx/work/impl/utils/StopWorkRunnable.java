package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkManagerImpl;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class StopWorkRunnable implements Runnable {
    private static final String TAG = Logger.i("StopWorkRunnable");
    private final boolean mStopInForeground;
    private final StartStopToken mToken;
    private final WorkManagerImpl mWorkManagerImpl;

    @Override // java.lang.Runnable
    public void run() {
        boolean zT = this.mStopInForeground ? this.mWorkManagerImpl.m().t(this.mToken) : this.mWorkManagerImpl.m().u(this.mToken);
        Logger.e().a(TAG, "StopWorkRunnable for " + this.mToken.a().b() + "; Processor.stopWork = " + zT);
    }

    public StopWorkRunnable(@NonNull WorkManagerImpl workManagerImpl, @NonNull StartStopToken startStopToken, boolean stopInForeground) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mToken = startStopToken;
        this.mStopInForeground = stopInForeground;
    }
}

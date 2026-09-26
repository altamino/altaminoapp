package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.work.WorkerParameters;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkManagerImpl;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class StartWorkRunnable implements Runnable {
    private WorkerParameters.RuntimeExtras mRuntimeExtras;
    private WorkManagerImpl mWorkManagerImpl;
    private StartStopToken mWorkSpecId;

    @Override // java.lang.Runnable
    public void run() {
        this.mWorkManagerImpl.m().q(this.mWorkSpecId, this.mRuntimeExtras);
    }

    public StartWorkRunnable(@NonNull WorkManagerImpl workManagerImpl, @NonNull StartStopToken workSpecId, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mWorkSpecId = workSpecId;
        this.mRuntimeExtras = runtimeExtras;
    }
}

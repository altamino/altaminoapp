package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Operation;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.WorkManagerImpl;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class PruneWorkRunnable implements Runnable {
    private final OperationImpl mOperation = new OperationImpl();
    private final WorkManagerImpl mWorkManagerImpl;

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.mWorkManagerImpl.p().M().b();
            this.mOperation.b(Operation.SUCCESS);
        } catch (Throwable th) {
            this.mOperation.b(new Operation.State.FAILURE(th));
        }
    }

    public PruneWorkRunnable(@NonNull WorkManagerImpl workManagerImpl) {
        this.mWorkManagerImpl = workManagerImpl;
    }
}

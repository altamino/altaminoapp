package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class WorkTimer {
    private static final String TAG = Logger.i("WorkTimer");
    final RunnableScheduler mRunnableScheduler;
    final Map<WorkGenerationalId, WorkTimerRunnable> mTimerMap = new HashMap();
    final Map<WorkGenerationalId, TimeLimitExceededListener> mListeners = new HashMap();
    final Object mLock = new Object();

    @RestrictTo
    public interface TimeLimitExceededListener {
        void b(@NonNull WorkGenerationalId id);
    }

    @RestrictTo
    public static class WorkTimerRunnable implements Runnable {
        static final String TAG = "WrkTimerRunnable";
        private final WorkGenerationalId mWorkGenerationalId;
        private final WorkTimer mWorkTimer;

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.mWorkTimer.mLock) {
                try {
                    if (this.mWorkTimer.mTimerMap.remove(this.mWorkGenerationalId) != null) {
                        TimeLimitExceededListener timeLimitExceededListenerRemove = this.mWorkTimer.mListeners.remove(this.mWorkGenerationalId);
                        if (timeLimitExceededListenerRemove != null) {
                            timeLimitExceededListenerRemove.b(this.mWorkGenerationalId);
                        }
                    } else {
                        Logger.e().a(TAG, String.format("Timer with %s is already marked as complete.", this.mWorkGenerationalId));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        WorkTimerRunnable(@NonNull WorkTimer workTimer, @NonNull WorkGenerationalId id) {
            this.mWorkTimer = workTimer;
            this.mWorkGenerationalId = id;
        }
    }

    public void a(@NonNull final WorkGenerationalId id, long processingTimeMillis, @NonNull TimeLimitExceededListener listener) {
        synchronized (this.mLock) {
            Logger.e().a(TAG, "Starting timer for " + id);
            b(id);
            WorkTimerRunnable workTimerRunnable = new WorkTimerRunnable(this, id);
            this.mTimerMap.put(id, workTimerRunnable);
            this.mListeners.put(id, listener);
            this.mRunnableScheduler.b(processingTimeMillis, workTimerRunnable);
        }
    }

    public void b(@NonNull final WorkGenerationalId id) {
        synchronized (this.mLock) {
            try {
                if (this.mTimerMap.remove(id) != null) {
                    Logger.e().a(TAG, "Stopping timer for " + id);
                    this.mListeners.remove(id);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public WorkTimer(@NonNull RunnableScheduler scheduler) {
        this.mRunnableScheduler = scheduler;
    }
}

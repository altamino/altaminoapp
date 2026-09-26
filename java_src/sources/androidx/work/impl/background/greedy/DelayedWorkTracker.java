package androidx.work.impl.background.greedy;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.model.WorkSpec;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class DelayedWorkTracker {
    static final String TAG = Logger.i("DelayedWorkTracker");
    final GreedyScheduler mGreedyScheduler;
    private final RunnableScheduler mRunnableScheduler;
    private final Map<String, Runnable> mRunnables = new HashMap();

    public void a(@NonNull final WorkSpec workSpec) {
        Runnable runnableRemove = this.mRunnables.remove(workSpec.id);
        if (runnableRemove != null) {
            this.mRunnableScheduler.a(runnableRemove);
        }
        Runnable runnable = new Runnable() { // from class: androidx.work.impl.background.greedy.DelayedWorkTracker.1
            @Override // java.lang.Runnable
            public void run() {
                Logger.e().a(DelayedWorkTracker.TAG, "Scheduling work " + workSpec.id);
                DelayedWorkTracker.this.mGreedyScheduler.d(workSpec);
            }
        };
        this.mRunnables.put(workSpec.id, runnable);
        this.mRunnableScheduler.b(workSpec.c() - System.currentTimeMillis(), runnable);
    }

    public void b(@NonNull String workSpecId) {
        Runnable runnableRemove = this.mRunnables.remove(workSpecId);
        if (runnableRemove != null) {
            this.mRunnableScheduler.a(runnableRemove);
        }
    }

    public DelayedWorkTracker(@NonNull GreedyScheduler scheduler, @NonNull RunnableScheduler runnableScheduler) {
        this.mGreedyScheduler = scheduler;
        this.mRunnableScheduler = runnableScheduler;
    }
}

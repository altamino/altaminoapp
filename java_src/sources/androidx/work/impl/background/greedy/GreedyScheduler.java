package androidx.work.impl.background.greedy;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Scheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.ProcessUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class GreedyScheduler implements Scheduler, WorkConstraintsCallback, ExecutionListener {
    private static final String TAG = Logger.i("GreedyScheduler");
    private final Context mContext;
    private DelayedWorkTracker mDelayedWorkTracker;
    Boolean mInDefaultProcess;
    private boolean mRegisteredExecutionListener;
    private final WorkConstraintsTracker mWorkConstraintsTracker;
    private final WorkManagerImpl mWorkManagerImpl;
    private final Set<WorkSpec> mConstrainedWorkSpecs = new HashSet();
    private final StartStopTokens mStartStopTokens = new StartStopTokens();
    private final Object mLock = new Object();

    public GreedyScheduler(@NonNull Context context, @NonNull Configuration configuration, @NonNull Trackers trackers, @NonNull WorkManagerImpl workManagerImpl) {
        this.mContext = context;
        this.mWorkManagerImpl = workManagerImpl;
        this.mWorkConstraintsTracker = new WorkConstraintsTrackerImpl(trackers, this);
        this.mDelayedWorkTracker = new DelayedWorkTracker(this, configuration.k());
    }

    @Override // androidx.work.impl.Scheduler
    public boolean b() {
        return false;
    }

    private void g() {
        this.mInDefaultProcess = Boolean.valueOf(ProcessUtils.b(this.mContext, this.mWorkManagerImpl.i()));
    }

    private void h() {
        if (this.mRegisteredExecutionListener) {
            return;
        }
        this.mWorkManagerImpl.m().g(this);
        this.mRegisteredExecutionListener = true;
    }

    private void i(@NonNull WorkGenerationalId id) {
        synchronized (this.mLock) {
            try {
                for (WorkSpec workSpec : this.mConstrainedWorkSpecs) {
                    if (WorkSpecKt.a(workSpec).equals(id)) {
                        Logger.e().a(TAG, "Stopping tracking for " + id);
                        this.mConstrainedWorkSpecs.remove(workSpec);
                        this.mWorkConstraintsTracker.a(this.mConstrainedWorkSpecs);
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.Scheduler
    public void c(@NonNull String workSpecId) {
        if (this.mInDefaultProcess == null) {
            g();
        }
        if (!this.mInDefaultProcess.booleanValue()) {
            Logger.e().f(TAG, "Ignoring schedule request in non-main process");
            return;
        }
        h();
        Logger.e().a(TAG, "Cancelling work ID " + workSpecId);
        DelayedWorkTracker delayedWorkTracker = this.mDelayedWorkTracker;
        if (delayedWorkTracker != null) {
            delayedWorkTracker.b(workSpecId);
        }
        Iterator<StartStopToken> it = this.mStartStopTokens.c(workSpecId).iterator();
        while (it.hasNext()) {
            this.mWorkManagerImpl.y(it.next());
        }
    }

    @Override // androidx.work.impl.Scheduler
    public void d(@NonNull WorkSpec... workSpecs) {
        if (this.mInDefaultProcess == null) {
            g();
        }
        if (!this.mInDefaultProcess.booleanValue()) {
            Logger.e().f(TAG, "Ignoring schedule request in a secondary process");
            return;
        }
        h();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (WorkSpec workSpec : workSpecs) {
            if (!this.mStartStopTokens.a(WorkSpecKt.a(workSpec))) {
                long jC = workSpec.c();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (workSpec.state == WorkInfo.State.ENQUEUED) {
                    if (jCurrentTimeMillis < jC) {
                        DelayedWorkTracker delayedWorkTracker = this.mDelayedWorkTracker;
                        if (delayedWorkTracker != null) {
                            delayedWorkTracker.a(workSpec);
                        }
                    } else if (workSpec.h()) {
                        int i10 = Build.VERSION.SDK_INT;
                        if (workSpec.constraints.h()) {
                            Logger.e().a(TAG, "Ignoring " + workSpec + ". Requires device idle.");
                        } else if (i10 < 24 || !workSpec.constraints.e()) {
                            hashSet.add(workSpec);
                            hashSet2.add(workSpec.id);
                        } else {
                            Logger.e().a(TAG, "Ignoring " + workSpec + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.mStartStopTokens.a(WorkSpecKt.a(workSpec))) {
                        Logger.e().a(TAG, "Starting work for " + workSpec.id);
                        this.mWorkManagerImpl.v(this.mStartStopTokens.e(workSpec));
                    }
                }
            }
        }
        synchronized (this.mLock) {
            try {
                if (!hashSet.isEmpty()) {
                    Logger.e().a(TAG, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    this.mConstrainedWorkSpecs.addAll(hashSet);
                    this.mWorkConstraintsTracker.a(this.mConstrainedWorkSpecs);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    /* JADX INFO: renamed from: e */
    public void l(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        this.mStartStopTokens.b(id);
        i(id);
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void a(@NonNull List<WorkSpec> workSpecs) {
        Iterator<WorkSpec> it = workSpecs.iterator();
        while (it.hasNext()) {
            WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(it.next());
            Logger.e().a(TAG, "Constraints not met: Cancelling work ID " + workGenerationalIdA);
            StartStopToken startStopTokenB = this.mStartStopTokens.b(workGenerationalIdA);
            if (startStopTokenB != null) {
                this.mWorkManagerImpl.y(startStopTokenB);
            }
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void f(@NonNull List<WorkSpec> workSpecs) {
        Iterator<WorkSpec> it = workSpecs.iterator();
        while (it.hasNext()) {
            WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(it.next());
            if (!this.mStartStopTokens.a(workGenerationalIdA)) {
                Logger.e().a(TAG, "Constraints met: Scheduling work ID " + workGenerationalIdA);
                this.mWorkManagerImpl.v(this.mStartStopTokens.d(workGenerationalIdA));
            }
        }
    }

    @VisibleForTesting
    public GreedyScheduler(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl, @NonNull WorkConstraintsTracker workConstraintsTracker) {
        this.mContext = context;
        this.mWorkManagerImpl = workManagerImpl;
        this.mWorkConstraintsTracker = workConstraintsTracker;
    }
}

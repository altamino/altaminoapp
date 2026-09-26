package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Logger;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class DelayMetCommandHandler implements WorkConstraintsCallback, WorkTimer.TimeLimitExceededListener {
    private static final int STATE_INITIAL = 0;
    private static final int STATE_START_REQUESTED = 1;
    private static final int STATE_STOP_REQUESTED = 2;
    private static final String TAG = Logger.i("DelayMetCommandHandler");
    private final Context mContext;
    private int mCurrentState;
    private final SystemAlarmDispatcher mDispatcher;
    private boolean mHasConstraints;
    private final Object mLock;
    private final Executor mMainThreadExecutor;
    private final Executor mSerialExecutor;
    private final int mStartId;
    private final StartStopToken mToken;

    @Nullable
    private PowerManager.WakeLock mWakeLock;
    private final WorkConstraintsTrackerImpl mWorkConstraintsTracker;
    private final WorkGenerationalId mWorkGenerationalId;

    private void e() {
        synchronized (this.mLock) {
            try {
                this.mWorkConstraintsTracker.reset();
                this.mDispatcher.h().b(this.mWorkGenerationalId);
                PowerManager.WakeLock wakeLock = this.mWakeLock;
                if (wakeLock != null && wakeLock.isHeld()) {
                    Logger.e().a(TAG, "Releasing wakelock " + this.mWakeLock + "for WorkSpec " + this.mWorkGenerationalId);
                    this.mWakeLock.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.mCurrentState != 0) {
            Logger.e().a(TAG, "Already started work for " + this.mWorkGenerationalId);
            return;
        }
        this.mCurrentState = 1;
        Logger.e().a(TAG, "onAllConstraintsMet for " + this.mWorkGenerationalId);
        if (this.mDispatcher.d().p(this.mToken)) {
            this.mDispatcher.h().a(this.mWorkGenerationalId, 600000L, this);
        } else {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        String strB = this.mWorkGenerationalId.b();
        if (this.mCurrentState >= 2) {
            Logger.e().a(TAG, "Already stopped work for " + strB);
            return;
        }
        this.mCurrentState = 2;
        Logger loggerE = Logger.e();
        String str = TAG;
        loggerE.a(str, "Stopping work for WorkSpec " + strB);
        this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.f(this.mContext, this.mWorkGenerationalId), this.mStartId));
        if (!this.mDispatcher.d().k(this.mWorkGenerationalId.b())) {
            Logger.e().a(str, "Processor does not have WorkSpec " + strB + ". No need to reschedule");
            return;
        }
        Logger.e().a(str, "WorkSpec " + strB + " needs to be rescheduled");
        this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.d(this.mContext, this.mWorkGenerationalId), this.mStartId));
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void a(@NonNull List<WorkSpec> workSpecs) {
        this.mSerialExecutor.execute(new a(this));
    }

    @WorkerThread
    void g() {
        String strB = this.mWorkGenerationalId.b();
        this.mWakeLock = WakeLocks.b(this.mContext, strB + " (" + this.mStartId + ")");
        Logger loggerE = Logger.e();
        String str = TAG;
        loggerE.a(str, "Acquiring wakelock " + this.mWakeLock + "for WorkSpec " + strB);
        this.mWakeLock.acquire();
        WorkSpec workSpecS = this.mDispatcher.g().p().M().s(strB);
        if (workSpecS == null) {
            this.mSerialExecutor.execute(new a(this));
            return;
        }
        boolean zH = workSpecS.h();
        this.mHasConstraints = zH;
        if (zH) {
            this.mWorkConstraintsTracker.a(Collections.singletonList(workSpecS));
            return;
        }
        Logger.e().a(str, "No constraints for " + strB);
        f(Collections.singletonList(workSpecS));
    }

    DelayMetCommandHandler(@NonNull Context context, int startId, @NonNull SystemAlarmDispatcher dispatcher, @NonNull StartStopToken startStopToken) {
        this.mContext = context;
        this.mStartId = startId;
        this.mDispatcher = dispatcher;
        this.mWorkGenerationalId = startStopToken.a();
        this.mToken = startStopToken;
        Trackers trackersO = dispatcher.g().o();
        this.mSerialExecutor = dispatcher.f().c();
        this.mMainThreadExecutor = dispatcher.f().b();
        this.mWorkConstraintsTracker = new WorkConstraintsTrackerImpl(trackersO, this);
        this.mHasConstraints = false;
        this.mCurrentState = 0;
        this.mLock = new Object();
    }

    @Override // androidx.work.impl.utils.WorkTimer.TimeLimitExceededListener
    public void b(@NonNull WorkGenerationalId id) {
        Logger.e().a(TAG, "Exceeded time limits on execution for " + id);
        this.mSerialExecutor.execute(new a(this));
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void f(@NonNull List<WorkSpec> workSpecs) {
        Iterator<WorkSpec> it = workSpecs.iterator();
        while (it.hasNext()) {
            if (WorkSpecKt.a(it.next()).equals(this.mWorkGenerationalId)) {
                this.mSerialExecutor.execute(new Runnable() { // from class: androidx.work.impl.background.systemalarm.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f872a.i();
                    }
                });
                return;
            }
        }
    }

    void h(boolean needsReschedule) {
        Logger.e().a(TAG, "onExecuted " + this.mWorkGenerationalId + ", " + needsReschedule);
        e();
        if (needsReschedule) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.d(this.mContext, this.mWorkGenerationalId), this.mStartId));
        }
        if (this.mHasConstraints) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.a(this.mContext), this.mStartId));
        }
    }
}

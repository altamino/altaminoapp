package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class Processor implements ExecutionListener, ForegroundProcessor {
    private static final String FOREGROUND_WAKELOCK_TAG = "ProcessorForegroundLck";
    private static final String TAG = Logger.i("Processor");
    private Context mAppContext;
    private Configuration mConfiguration;
    private List<Scheduler> mSchedulers;
    private WorkDatabase mWorkDatabase;
    private TaskExecutor mWorkTaskExecutor;
    private Map<String, WorkerWrapper> mEnqueuedWorkMap = new HashMap();
    private Map<String, WorkerWrapper> mForegroundWorkMap = new HashMap();
    private Set<String> mCancelledIds = new HashSet();
    private final List<ExecutionListener> mOuterListeners = new ArrayList();

    @Nullable
    private PowerManager.WakeLock mForegroundLock = null;
    private final Object mLock = new Object();
    private Map<String, Set<StartStopToken>> mWorkRuns = new HashMap();

    private static class FutureListener implements Runnable {

        @NonNull
        private ExecutionListener mExecutionListener;

        @NonNull
        private k<Boolean> mFuture;

        @NonNull
        private final WorkGenerationalId mWorkGenerationalId;

        @Override // java.lang.Runnable
        public void run() {
            boolean zBooleanValue;
            try {
                zBooleanValue = this.mFuture.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                zBooleanValue = true;
            }
            this.mExecutionListener.l(this.mWorkGenerationalId, zBooleanValue);
        }

        FutureListener(@NonNull ExecutionListener executionListener, @NonNull WorkGenerationalId workGenerationalId, @NonNull k<Boolean> future) {
            this.mExecutionListener = executionListener;
            this.mWorkGenerationalId = workGenerationalId;
            this.mFuture = future;
        }
    }

    public boolean p(@NonNull StartStopToken id) {
        return q(id, null);
    }

    private static boolean i(@NonNull String id, @Nullable WorkerWrapper wrapper) {
        if (wrapper == null) {
            Logger.e().a(TAG, "WorkerWrapper could not be found for " + id);
            return false;
        }
        wrapper.g();
        Logger.e().a(TAG, "WorkerWrapper interrupted for " + id);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WorkSpec m(ArrayList arrayList, String str) throws Exception {
        arrayList.addAll(this.mWorkDatabase.N().b(str));
        return this.mWorkDatabase.M().s(str);
    }

    private void o(@NonNull final WorkGenerationalId id, final boolean needsReschedule) {
        this.mWorkTaskExecutor.b().execute(new Runnable() { // from class: androidx.work.impl.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f868a.l(id, needsReschedule);
            }
        });
    }

    private void s() {
        synchronized (this.mLock) {
            try {
                if (!(!this.mForegroundWorkMap.isEmpty())) {
                    try {
                        this.mAppContext.startService(SystemForegroundDispatcher.g(this.mAppContext));
                    } catch (Throwable th) {
                        Logger.e().d(TAG, "Unable to stop foreground service", th);
                    }
                    PowerManager.WakeLock wakeLock = this.mForegroundLock;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.mForegroundLock = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void a(@NonNull String workSpecId) {
        synchronized (this.mLock) {
            this.mForegroundWorkMap.remove(workSpecId);
            s();
        }
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public boolean b(@NonNull String workSpecId) {
        boolean zContainsKey;
        synchronized (this.mLock) {
            zContainsKey = this.mForegroundWorkMap.containsKey(workSpecId);
        }
        return zContainsKey;
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void c(@NonNull String workSpecId, @NonNull ForegroundInfo foregroundInfo) {
        synchronized (this.mLock) {
            try {
                Logger.e().f(TAG, "Moving WorkSpec (" + workSpecId + ") to the foreground");
                WorkerWrapper workerWrapperRemove = this.mEnqueuedWorkMap.remove(workSpecId);
                if (workerWrapperRemove != null) {
                    if (this.mForegroundLock == null) {
                        PowerManager.WakeLock wakeLockB = WakeLocks.b(this.mAppContext, FOREGROUND_WAKELOCK_TAG);
                        this.mForegroundLock = wakeLockB;
                        wakeLockB.acquire();
                    }
                    this.mForegroundWorkMap.put(workSpecId, workerWrapperRemove);
                    ContextCompat.startForegroundService(this.mAppContext, SystemForegroundDispatcher.d(this.mAppContext, workerWrapperRemove.d(), foregroundInfo));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void l(@NonNull final WorkGenerationalId id, boolean needsReschedule) {
        synchronized (this.mLock) {
            try {
                WorkerWrapper workerWrapper = this.mEnqueuedWorkMap.get(id.b());
                if (workerWrapper != null && id.equals(workerWrapper.d())) {
                    this.mEnqueuedWorkMap.remove(id.b());
                }
                Logger.e().a(TAG, getClass().getSimpleName() + " " + id.b() + " executed; reschedule = " + needsReschedule);
                Iterator<ExecutionListener> it = this.mOuterListeners.iterator();
                while (it.hasNext()) {
                    it.next().l(id, needsReschedule);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void g(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    @Nullable
    public WorkSpec h(@NonNull String workSpecId) {
        synchronized (this.mLock) {
            try {
                WorkerWrapper workerWrapper = this.mForegroundWorkMap.get(workSpecId);
                if (workerWrapper == null) {
                    workerWrapper = this.mEnqueuedWorkMap.get(workSpecId);
                }
                if (workerWrapper == null) {
                    return null;
                }
                return workerWrapper.e();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean j(@NonNull String id) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = this.mCancelledIds.contains(id);
        }
        return zContains;
    }

    public boolean k(@NonNull String workSpecId) {
        boolean z6;
        synchronized (this.mLock) {
            try {
                z6 = this.mEnqueuedWorkMap.containsKey(workSpecId) || this.mForegroundWorkMap.containsKey(workSpecId);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    public void n(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    public boolean r(@NonNull String id) {
        WorkerWrapper workerWrapperRemove;
        boolean z6;
        synchronized (this.mLock) {
            try {
                Logger.e().a(TAG, "Processor cancelling " + id);
                this.mCancelledIds.add(id);
                workerWrapperRemove = this.mForegroundWorkMap.remove(id);
                z6 = workerWrapperRemove != null;
                if (workerWrapperRemove == null) {
                    workerWrapperRemove = this.mEnqueuedWorkMap.remove(id);
                }
                if (workerWrapperRemove != null) {
                    this.mWorkRuns.remove(id);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean zI = i(id, workerWrapperRemove);
        if (z6) {
            s();
        }
        return zI;
    }

    public Processor(@NonNull Context appContext, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> schedulers) {
        this.mAppContext = appContext;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = workTaskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mSchedulers = schedulers;
    }

    public boolean q(@NonNull StartStopToken startStopToken, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        WorkGenerationalId workGenerationalIdA = startStopToken.a();
        final String strB = workGenerationalIdA.b();
        final ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) this.mWorkDatabase.C(new Callable() { // from class: androidx.work.impl.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f865a.m(arrayList, strB);
            }
        });
        if (workSpec == null) {
            Logger.e().k(TAG, "Didn't find WorkSpec for id " + workGenerationalIdA);
            o(workGenerationalIdA, false);
            return false;
        }
        synchronized (this.mLock) {
            try {
                if (k(strB)) {
                    Set<StartStopToken> set = this.mWorkRuns.get(strB);
                    if (set.iterator().next().a().a() == workGenerationalIdA.a()) {
                        set.add(startStopToken);
                        Logger.e().a(TAG, "Work " + workGenerationalIdA + " is already enqueued for processing");
                    } else {
                        o(workGenerationalIdA, false);
                    }
                    return false;
                }
                if (workSpec.f() != workGenerationalIdA.a()) {
                    o(workGenerationalIdA, false);
                    return false;
                }
                WorkerWrapper workerWrapperB = new WorkerWrapper.Builder(this.mAppContext, this.mConfiguration, this.mWorkTaskExecutor, this, this.mWorkDatabase, workSpec, arrayList).d(this.mSchedulers).c(runtimeExtras).b();
                k<Boolean> kVarC = workerWrapperB.c();
                kVarC.addListener(new FutureListener(this, startStopToken.a(), kVarC), this.mWorkTaskExecutor.b());
                this.mEnqueuedWorkMap.put(strB, workerWrapperB);
                HashSet hashSet = new HashSet();
                hashSet.add(startStopToken);
                this.mWorkRuns.put(strB, hashSet);
                this.mWorkTaskExecutor.c().execute(workerWrapperB);
                Logger.e().a(TAG, getClass().getSimpleName() + ": processing " + workGenerationalIdA);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean t(@NonNull StartStopToken token) {
        WorkerWrapper workerWrapperRemove;
        String strB = token.a().b();
        synchronized (this.mLock) {
            try {
                Logger.e().a(TAG, "Processor stopping foreground work " + strB);
                workerWrapperRemove = this.mForegroundWorkMap.remove(strB);
                if (workerWrapperRemove != null) {
                    this.mWorkRuns.remove(strB);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i(strB, workerWrapperRemove);
    }

    public boolean u(@NonNull StartStopToken runId) {
        String strB = runId.a().b();
        synchronized (this.mLock) {
            try {
                WorkerWrapper workerWrapperRemove = this.mEnqueuedWorkMap.remove(strB);
                if (workerWrapperRemove == null) {
                    Logger.e().a(TAG, "WorkerWrapper could not be found for " + strB);
                    return false;
                }
                Set<StartStopToken> set = this.mWorkRuns.get(strB);
                if (set != null && set.contains(runId)) {
                    Logger.e().a(TAG, "Processor stopping background work " + strB);
                    this.mWorkRuns.remove(strB);
                    return i(strB, workerWrapperRemove);
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

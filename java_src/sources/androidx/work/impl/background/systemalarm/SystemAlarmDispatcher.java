package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class SystemAlarmDispatcher implements ExecutionListener {
    private static final int DEFAULT_START_ID = 0;
    private static final String KEY_START_ID = "KEY_START_ID";
    private static final String PROCESS_COMMAND_TAG = "ProcessCommand";
    static final String TAG = Logger.i("SystemAlarmDispatcher");
    final CommandHandler mCommandHandler;

    @Nullable
    private CommandsCompletedListener mCompletedListener;
    final Context mContext;
    Intent mCurrentIntent;
    final List<Intent> mIntents;
    private final Processor mProcessor;
    private StartStopTokens mStartStopTokens;
    final TaskExecutor mTaskExecutor;
    private final WorkManagerImpl mWorkManager;
    private final WorkTimer mWorkTimer;

    static class AddRunnable implements Runnable {
        private final SystemAlarmDispatcher mDispatcher;
        private final Intent mIntent;
        private final int mStartId;

        @Override // java.lang.Runnable
        public void run() {
            this.mDispatcher.a(this.mIntent, this.mStartId);
        }

        AddRunnable(@NonNull SystemAlarmDispatcher dispatcher, @NonNull Intent intent, int startId) {
            this.mDispatcher = dispatcher;
            this.mIntent = intent;
            this.mStartId = startId;
        }
    }

    interface CommandsCompletedListener {
        void b();
    }

    static class DequeueAndCheckForCompletion implements Runnable {
        private final SystemAlarmDispatcher mDispatcher;

        @Override // java.lang.Runnable
        public void run() {
            this.mDispatcher.c();
        }

        DequeueAndCheckForCompletion(@NonNull SystemAlarmDispatcher dispatcher) {
            this.mDispatcher = dispatcher;
        }
    }

    SystemAlarmDispatcher(@NonNull Context context) {
        this(context, null, null);
    }

    Processor d() {
        return this.mProcessor;
    }

    TaskExecutor f() {
        return this.mTaskExecutor;
    }

    WorkManagerImpl g() {
        return this.mWorkManager;
    }

    WorkTimer h() {
        return this.mWorkTimer;
    }

    @VisibleForTesting
    SystemAlarmDispatcher(@NonNull Context context, @Nullable Processor processor, @Nullable WorkManagerImpl workManager) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mStartStopTokens = new StartStopTokens();
        this.mCommandHandler = new CommandHandler(applicationContext, this.mStartStopTokens);
        workManager = workManager == null ? WorkManagerImpl.k(context) : workManager;
        this.mWorkManager = workManager;
        this.mWorkTimer = new WorkTimer(workManager.i().k());
        processor = processor == null ? workManager.m() : processor;
        this.mProcessor = processor;
        this.mTaskExecutor = workManager.q();
        processor.g(this);
        this.mIntents = new ArrayList();
        this.mCurrentIntent = null;
    }

    @Override // androidx.work.impl.ExecutionListener
    /* JADX INFO: renamed from: e */
    public void l(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        this.mTaskExecutor.b().execute(new AddRunnable(this, CommandHandler.c(this.mContext, id, needsReschedule), 0));
    }

    void l(@NonNull CommandsCompletedListener listener) {
        if (this.mCompletedListener != null) {
            Logger.e().c(TAG, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            this.mCompletedListener = listener;
        }
    }

    private void b() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
        } else {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    @MainThread
    private boolean i(@NonNull String action) {
        b();
        synchronized (this.mIntents) {
            try {
                Iterator<Intent> it = this.mIntents.iterator();
                while (it.hasNext()) {
                    if (action.equals(it.next().getAction())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @MainThread
    private void k() {
        b();
        PowerManager.WakeLock wakeLockB = WakeLocks.b(this.mContext, PROCESS_COMMAND_TAG);
        try {
            wakeLockB.acquire();
            this.mWorkManager.q().a(new Runnable() { // from class: androidx.work.impl.background.systemalarm.SystemAlarmDispatcher.1
                @Override // java.lang.Runnable
                public void run() {
                    Executor executorB;
                    DequeueAndCheckForCompletion dequeueAndCheckForCompletion;
                    synchronized (SystemAlarmDispatcher.this.mIntents) {
                        SystemAlarmDispatcher systemAlarmDispatcher = SystemAlarmDispatcher.this;
                        systemAlarmDispatcher.mCurrentIntent = systemAlarmDispatcher.mIntents.get(0);
                    }
                    Intent intent = SystemAlarmDispatcher.this.mCurrentIntent;
                    if (intent != null) {
                        String action = intent.getAction();
                        int intExtra = SystemAlarmDispatcher.this.mCurrentIntent.getIntExtra(SystemAlarmDispatcher.KEY_START_ID, 0);
                        Logger loggerE = Logger.e();
                        String str = SystemAlarmDispatcher.TAG;
                        loggerE.a(str, "Processing command " + SystemAlarmDispatcher.this.mCurrentIntent + ", " + intExtra);
                        PowerManager.WakeLock wakeLockB2 = WakeLocks.b(SystemAlarmDispatcher.this.mContext, action + " (" + intExtra + ")");
                        try {
                            Logger.e().a(str, "Acquiring operation wake lock (" + action + ") " + wakeLockB2);
                            wakeLockB2.acquire();
                            SystemAlarmDispatcher systemAlarmDispatcher2 = SystemAlarmDispatcher.this;
                            systemAlarmDispatcher2.mCommandHandler.p(systemAlarmDispatcher2.mCurrentIntent, intExtra, systemAlarmDispatcher2);
                            Logger.e().a(str, "Releasing operation wake lock (" + action + ") " + wakeLockB2);
                            wakeLockB2.release();
                            executorB = SystemAlarmDispatcher.this.mTaskExecutor.b();
                            dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this);
                        } catch (Throwable th) {
                            try {
                                Logger loggerE2 = Logger.e();
                                String str2 = SystemAlarmDispatcher.TAG;
                                loggerE2.d(str2, "Unexpected error in onHandleIntent", th);
                                Logger.e().a(str2, "Releasing operation wake lock (" + action + ") " + wakeLockB2);
                                wakeLockB2.release();
                                executorB = SystemAlarmDispatcher.this.mTaskExecutor.b();
                                dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this);
                            } catch (Throwable th2) {
                                Logger.e().a(SystemAlarmDispatcher.TAG, "Releasing operation wake lock (" + action + ") " + wakeLockB2);
                                wakeLockB2.release();
                                SystemAlarmDispatcher.this.mTaskExecutor.b().execute(new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this));
                                throw th2;
                            }
                        }
                        executorB.execute(dequeueAndCheckForCompletion);
                    }
                }
            });
        } finally {
            wakeLockB.release();
        }
    }

    @MainThread
    public boolean a(@NonNull final Intent intent, final int startId) {
        Logger loggerE = Logger.e();
        String str = TAG;
        loggerE.a(str, "Adding command " + intent + " (" + startId + ")");
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            Logger.e().k(str, "Unknown command. Ignoring");
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && i("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        }
        intent.putExtra(KEY_START_ID, startId);
        synchronized (this.mIntents) {
            try {
                boolean z6 = !this.mIntents.isEmpty();
                this.mIntents.add(intent);
                if (!z6) {
                    k();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    @MainThread
    void c() {
        Logger loggerE = Logger.e();
        String str = TAG;
        loggerE.a(str, "Checking if commands are complete.");
        b();
        synchronized (this.mIntents) {
            try {
                if (this.mCurrentIntent != null) {
                    Logger.e().a(str, "Removing command " + this.mCurrentIntent);
                    if (this.mIntents.remove(0).equals(this.mCurrentIntent)) {
                        this.mCurrentIntent = null;
                    } else {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                }
                SerialExecutor serialExecutorC = this.mTaskExecutor.c();
                if (!this.mCommandHandler.o() && this.mIntents.isEmpty() && !serialExecutorC.q()) {
                    Logger.e().a(str, "No more commands & intents.");
                    CommandsCompletedListener commandsCompletedListener = this.mCompletedListener;
                    if (commandsCompletedListener != null) {
                        commandsCompletedListener.b();
                    }
                } else if (!this.mIntents.isEmpty()) {
                    k();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void j() {
        Logger.e().a(TAG, "Destroying SystemAlarmDispatcher");
        this.mProcessor.n(this);
        this.mCompletedListener = null;
    }
}

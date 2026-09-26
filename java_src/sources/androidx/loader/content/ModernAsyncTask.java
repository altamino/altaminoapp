package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
abstract class ModernAsyncTask<Params, Progress, Result> {
    private static final int CORE_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = 128;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static volatile Executor sDefaultExecutor;
    private static InternalHandler sHandler;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private final FutureTask<Result> mFuture;
    private final WorkerRunnable<Params, Result> mWorker;
    private volatile Status mStatus = Status.PENDING;
    final AtomicBoolean mCancelled = new AtomicBoolean();
    final AtomicBoolean mTaskInvoked = new AtomicBoolean();

    private static class InternalHandler extends Handler {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            int i10 = message.what;
            if (i10 == 1) {
                asyncTaskResult.mTask.d(asyncTaskResult.mData[0]);
            } else {
                if (i10 != 2) {
                    return;
                }
                asyncTaskResult.mTask.k(asyncTaskResult.mData);
            }
        }

        InternalHandler() {
            super(Looper.getMainLooper());
        }
    }

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result b(Params... paramsArr);

    protected void g() {
    }

    protected void i(Result result) {
    }

    protected void j() {
    }

    protected void k(Progress... progressArr) {
    }

    /* JADX INFO: renamed from: androidx.loader.content.ModernAsyncTask$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$androidx$loader$content$ModernAsyncTask$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$androidx$loader$content$ModernAsyncTask$Status = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$loader$content$ModernAsyncTask$Status[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static class AsyncTaskResult<Data> {
        final Data[] mData;
        final ModernAsyncTask mTask;

        AsyncTaskResult(ModernAsyncTask modernAsyncTask, Data... dataArr) {
            this.mTask = modernAsyncTask;
            this.mData = dataArr;
        }
    }

    private static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        Params[] mParams;

        WorkerRunnable() {
        }
    }

    static {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: androidx.loader.content.ModernAsyncTask.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "ModernAsyncTask #" + this.mCount.getAndIncrement());
            }
        };
        sThreadFactory = threadFactory;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        sPoolWorkQueue = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactory);
        THREAD_POOL_EXECUTOR = threadPoolExecutor;
        sDefaultExecutor = threadPoolExecutor;
    }

    private static Handler e() {
        InternalHandler internalHandler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new InternalHandler();
                }
                internalHandler = sHandler;
            } catch (Throwable th) {
                throw th;
            }
        }
        return internalHandler;
    }

    public final boolean a(boolean z6) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z6);
    }

    public final ModernAsyncTask<Params, Progress, Result> c(Executor executor, Params... paramsArr) {
        if (this.mStatus == Status.PENDING) {
            this.mStatus = Status.RUNNING;
            j();
            this.mWorker.mParams = paramsArr;
            executor.execute(this.mFuture);
            return this;
        }
        int i10 = AnonymousClass4.$SwitchMap$androidx$loader$content$ModernAsyncTask$Status[this.mStatus.ordinal()];
        if (i10 == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (i10 != 2) {
            throw new IllegalStateException("We should never reach this state");
        }
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    public final boolean f() {
        return this.mCancelled.get();
    }

    void m(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        l(result);
    }

    ModernAsyncTask() {
        WorkerRunnable<Params, Result> workerRunnable = new WorkerRunnable<Params, Result>() { // from class: androidx.loader.content.ModernAsyncTask.2
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // java.util.concurrent.Callable
            public Result call() throws Exception {
                ModernAsyncTask.this.mTaskInvoked.set(true);
                Result result = null;
                try {
                    Process.setThreadPriority(10);
                    result = (Result) ModernAsyncTask.this.b(this.mParams);
                    Binder.flushPendingCommands();
                    ModernAsyncTask.this.l(result);
                    return result;
                } catch (Throwable th) {
                    try {
                        ModernAsyncTask.this.mCancelled.set(true);
                        throw th;
                    } catch (Throwable th2) {
                        ModernAsyncTask.this.l(result);
                        throw th2;
                    }
                }
            }
        };
        this.mWorker = workerRunnable;
        this.mFuture = new FutureTask<Result>(workerRunnable) { // from class: androidx.loader.content.ModernAsyncTask.3
            @Override // java.util.concurrent.FutureTask
            protected void done() {
                try {
                    ModernAsyncTask.this.m(get());
                } catch (InterruptedException e) {
                    Log.w(ModernAsyncTask.LOG_TAG, e);
                } catch (CancellationException unused) {
                    ModernAsyncTask.this.m(null);
                } catch (ExecutionException e2) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
                } catch (Throwable th) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", th);
                }
            }
        };
    }

    void d(Result result) {
        if (f()) {
            h(result);
        } else {
            i(result);
        }
        this.mStatus = Status.FINISHED;
    }

    protected void h(Result result) {
        g();
    }

    Result l(Result result) {
        e().obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }
}

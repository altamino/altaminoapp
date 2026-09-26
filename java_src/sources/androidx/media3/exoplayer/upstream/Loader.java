package androidx.media3.exoplayer.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class Loader implements LoaderErrorThrower {
    private static final int ACTION_TYPE_DONT_RETRY = 2;
    private static final int ACTION_TYPE_DONT_RETRY_FATAL = 3;
    private static final int ACTION_TYPE_RETRY = 0;
    private static final int ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT = 1;
    public static final LoadErrorAction DONT_RETRY;
    public static final LoadErrorAction DONT_RETRY_FATAL;
    public static final LoadErrorAction RETRY = g(false, -9223372036854775807L);
    public static final LoadErrorAction RETRY_RESET_ERROR_COUNT = g(true, -9223372036854775807L);
    private static final String THREAD_NAME_PREFIX = "ExoPlayer:Loader:";

    @Nullable
    private LoadTask<? extends Loadable> currentTask;
    private final ExecutorService downloadExecutorService;

    @Nullable
    private IOException fatalError;

    public interface Callback<T extends Loadable> {
        void H(T t5, long j6, long j10, boolean z6);

        void Y(T t5, long j6, long j10);

        LoadErrorAction w(T t5, long j6, long j10, IOException iOException, int i10);
    }

    public static final class LoadErrorAction {
        private final long retryDelayMillis;
        private final int type;

        public boolean c() {
            int i10 = this.type;
            return i10 == 0 || i10 == 1;
        }

        private LoadErrorAction(int i10, long j6) {
            this.type = i10;
            this.retryDelayMillis = j6;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private final class LoadTask<T extends Loadable> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 3;
        private static final int MSG_FINISH = 1;
        private static final int MSG_IO_EXCEPTION = 2;
        private static final int MSG_START = 0;
        private static final String TAG = "LoadTask";

        @Nullable
        private Callback<T> callback;
        private boolean canceled;

        @Nullable
        private IOException currentError;
        public final int defaultMinRetryCount;
        private int errorCount;

        @Nullable
        private Thread executorThread;
        private final T loadable;
        private volatile boolean released;
        private final long startTimeMs;

        private void b() {
            this.currentError = null;
            Loader.this.downloadExecutorService.execute((Runnable) Assertions.e(Loader.this.currentTask));
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z6;
            try {
                synchronized (this) {
                    z6 = !this.canceled;
                    this.executorThread = Thread.currentThread();
                }
                if (z6) {
                    TraceUtil.a("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        TraceUtil.c();
                    } catch (Throwable th) {
                        TraceUtil.c();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.executorThread = null;
                    Thread.interrupted();
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e) {
                if (this.released) {
                    return;
                }
                obtainMessage(2, e).sendToTarget();
            } catch (Error e2) {
                if (!this.released) {
                    Log.d(TAG, "Unexpected error loading stream", e2);
                    obtainMessage(3, e2).sendToTarget();
                }
                throw e2;
            } catch (Exception e6) {
                if (this.released) {
                    return;
                }
                Log.d(TAG, "Unexpected exception loading stream", e6);
                obtainMessage(2, new UnexpectedLoaderException(e6)).sendToTarget();
            } catch (OutOfMemoryError e7) {
                if (this.released) {
                    return;
                }
                Log.d(TAG, "OutOfMemory error loading stream", e7);
                obtainMessage(2, new UnexpectedLoaderException(e7)).sendToTarget();
            }
        }

        public LoadTask(Looper looper, T t5, Callback<T> callback, int i10, long j6) {
            super(looper);
            this.loadable = t5;
            this.callback = callback;
            this.defaultMinRetryCount = i10;
            this.startTimeMs = j6;
        }

        private void c() {
            Loader.this.currentTask = null;
        }

        private long d() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void a(boolean z6) {
            this.released = z6;
            this.currentError = null;
            if (hasMessages(0)) {
                this.canceled = true;
                removeMessages(0);
                if (!z6) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    try {
                        this.canceled = true;
                        this.loadable.cancelLoad();
                        Thread thread = this.executorThread;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z6) {
                c();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ((Callback) Assertions.e(this.callback)).H(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        public void e(int i10) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i10) {
                throw iOException;
            }
        }

        public void f(long j6) {
            Assertions.g(Loader.this.currentTask == null);
            Loader.this.currentTask = this;
            if (j6 > 0) {
                sendEmptyMessageDelayed(0, j6);
            } else {
                b();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i10 = message.what;
            if (i10 == 0) {
                b();
                return;
            }
            if (i10 == 3) {
                throw ((Error) message.obj);
            }
            c();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j6 = jElapsedRealtime - this.startTimeMs;
            Callback callback = (Callback) Assertions.e(this.callback);
            if (this.canceled) {
                callback.H(this.loadable, jElapsedRealtime, j6, false);
                return;
            }
            int i11 = message.what;
            if (i11 == 1) {
                try {
                    callback.Y(this.loadable, jElapsedRealtime, j6);
                    return;
                } catch (RuntimeException e) {
                    Log.d(TAG, "Unexpected exception handling load completed", e);
                    Loader.this.fatalError = new UnexpectedLoaderException(e);
                    return;
                }
            }
            if (i11 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i12 = this.errorCount + 1;
            this.errorCount = i12;
            LoadErrorAction loadErrorActionW = callback.w(this.loadable, jElapsedRealtime, j6, iOException, i12);
            if (loadErrorActionW.type == 3) {
                Loader.this.fatalError = this.currentError;
            } else if (loadErrorActionW.type != 2) {
                if (loadErrorActionW.type == 1) {
                    this.errorCount = 1;
                }
                f(loadErrorActionW.retryDelayMillis != -9223372036854775807L ? loadErrorActionW.retryDelayMillis : d());
            }
        }
    }

    public interface Loadable {
        void cancelLoad();

        void load() throws IOException;
    }

    public interface ReleaseCallback {
        void onLoaderReleased();
    }

    private static final class ReleaseTask implements Runnable {
        private final ReleaseCallback callback;

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }

        public ReleaseTask(ReleaseCallback releaseCallback) {
            this.callback = releaseCallback;
        }
    }

    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    static {
        long j6 = -9223372036854775807L;
        DONT_RETRY = new LoadErrorAction(2, j6);
        DONT_RETRY_FATAL = new LoadErrorAction(3, j6);
    }

    public void f() {
        this.fatalError = null;
    }

    public boolean h() {
        return this.fatalError != null;
    }

    public boolean i() {
        return this.currentTask != null;
    }

    public void k() {
        l(null);
    }

    public static LoadErrorAction g(boolean z6, long j6) {
        return new LoadErrorAction(z6 ? 1 : 0, j6);
    }

    public void e() {
        ((LoadTask) Assertions.i(this.currentTask)).a(false);
    }

    public void j(int i10) throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask<? extends Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            if (i10 == Integer.MIN_VALUE) {
                i10 = loadTask.defaultMinRetryCount;
            }
            loadTask.e(i10);
        }
    }

    public void l(@Nullable ReleaseCallback releaseCallback) {
        LoadTask<? extends Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            loadTask.a(true);
        }
        if (releaseCallback != null) {
            this.downloadExecutorService.execute(new ReleaseTask(releaseCallback));
        }
        this.downloadExecutorService.shutdown();
    }

    @Override // androidx.media3.exoplayer.upstream.LoaderErrorThrower
    public void maybeThrowError() throws IOException {
        j(Integer.MIN_VALUE);
    }

    public Loader(String str) {
        this.downloadExecutorService = Util.L0(THREAD_NAME_PREFIX + str);
    }

    public <T extends Loadable> long m(T t5, Callback<T> callback, int i10) {
        Looper looper = (Looper) Assertions.i(Looper.myLooper());
        this.fatalError = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, t5, callback, i10, jElapsedRealtime).f(0L);
        return jElapsedRealtime;
    }
}

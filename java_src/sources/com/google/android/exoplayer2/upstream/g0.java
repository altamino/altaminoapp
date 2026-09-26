package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {
    private static final int ACTION_TYPE_DONT_RETRY = 2;
    private static final int ACTION_TYPE_DONT_RETRY_FATAL = 3;
    private static final int ACTION_TYPE_RETRY = 0;
    private static final int ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT = 1;
    public static final c DONT_RETRY;
    public static final c DONT_RETRY_FATAL;
    public static final c RETRY = g(false, -9223372036854775807L);
    public static final c RETRY_RESET_ERROR_COUNT = g(true, -9223372036854775807L);
    private static final String THREAD_NAME_PREFIX = "ExoPlayer:Loader:";

    @Nullable
    private d<? extends e> currentTask;
    private final ExecutorService downloadExecutorService;

    @Nullable
    private IOException fatalError;

    public interface b<T extends e> {
        void c(T t5, long j6, long j10, boolean z6);

        void d(T t5, long j6, long j10);

        c g(T t5, long j6, long j10, IOException iOException, int i10);
    }

    public static final class c {
        private final long retryDelayMillis;
        private final int type;

        public boolean c() {
            int i10 = this.type;
            return i10 == 0 || i10 == 1;
        }

        private c(int i10, long j6) {
            this.type = i10;
            this.retryDelayMillis = j6;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private final class d<T extends e> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 3;
        private static final int MSG_FINISH = 1;
        private static final int MSG_IO_EXCEPTION = 2;
        private static final int MSG_START = 0;
        private static final String TAG = "LoadTask";

        @Nullable
        private b<T> callback;
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
            g0.this.downloadExecutorService.execute((Runnable) com.google.android.exoplayer2.util.a.e(g0.this.currentTask));
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
                    com.google.android.exoplayer2.util.m0.a("load:" + this.loadable.getClass().getSimpleName());
                    try {
                        this.loadable.load();
                        com.google.android.exoplayer2.util.m0.c();
                    } catch (Throwable th) {
                        com.google.android.exoplayer2.util.m0.c();
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
                    com.google.android.exoplayer2.util.t.d(TAG, "Unexpected error loading stream", e2);
                    obtainMessage(3, e2).sendToTarget();
                }
                throw e2;
            } catch (Exception e6) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.t.d(TAG, "Unexpected exception loading stream", e6);
                obtainMessage(2, new h(e6)).sendToTarget();
            } catch (OutOfMemoryError e7) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.t.d(TAG, "OutOfMemory error loading stream", e7);
                obtainMessage(2, new h(e7)).sendToTarget();
            }
        }

        public d(Looper looper, T t5, b<T> bVar, int i10, long j6) {
            super(looper);
            this.loadable = t5;
            this.callback = bVar;
            this.defaultMinRetryCount = i10;
            this.startTimeMs = j6;
        }

        private void c() {
            g0.this.currentTask = null;
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
                ((b) com.google.android.exoplayer2.util.a.e(this.callback)).c(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
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
            com.google.android.exoplayer2.util.a.g(g0.this.currentTask == null);
            g0.this.currentTask = this;
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
            b bVar = (b) com.google.android.exoplayer2.util.a.e(this.callback);
            if (this.canceled) {
                bVar.c(this.loadable, jElapsedRealtime, j6, false);
                return;
            }
            int i11 = message.what;
            if (i11 == 1) {
                try {
                    bVar.d(this.loadable, jElapsedRealtime, j6);
                    return;
                } catch (RuntimeException e) {
                    com.google.android.exoplayer2.util.t.d(TAG, "Unexpected exception handling load completed", e);
                    g0.this.fatalError = new h(e);
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
            c cVarG = bVar.g(this.loadable, jElapsedRealtime, j6, iOException, i12);
            if (cVarG.type == 3) {
                g0.this.fatalError = this.currentError;
            } else if (cVarG.type != 2) {
                if (cVarG.type == 1) {
                    this.errorCount = 1;
                }
                f(cVarG.retryDelayMillis != -9223372036854775807L ? cVarG.retryDelayMillis : d());
            }
        }
    }

    public interface e {
        void cancelLoad();

        void load() throws IOException;
    }

    public interface f {
        void onLoaderReleased();
    }

    private static final class g implements Runnable {
        private final f callback;

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }

        public g(f fVar) {
            this.callback = fVar;
        }
    }

    public static final class h extends IOException {
        public h(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    static {
        long j6 = -9223372036854775807L;
        DONT_RETRY = new c(2, j6);
        DONT_RETRY_FATAL = new c(3, j6);
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

    public void l() {
        m(null);
    }

    public static c g(boolean z6, long j6) {
        return new c(z6 ? 1 : 0, j6);
    }

    public void e() {
        ((d) com.google.android.exoplayer2.util.a.i(this.currentTask)).a(false);
    }

    public void j() throws IOException {
        k(Integer.MIN_VALUE);
    }

    public void k(int i10) throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        d<? extends e> dVar = this.currentTask;
        if (dVar != null) {
            if (i10 == Integer.MIN_VALUE) {
                i10 = dVar.defaultMinRetryCount;
            }
            dVar.e(i10);
        }
    }

    public void m(@Nullable f fVar) {
        d<? extends e> dVar = this.currentTask;
        if (dVar != null) {
            dVar.a(true);
        }
        if (fVar != null) {
            this.downloadExecutorService.execute(new g(fVar));
        }
        this.downloadExecutorService.shutdown();
    }

    public g0(String str) {
        this.downloadExecutorService = o0.x0(THREAD_NAME_PREFIX + str);
    }

    public <T extends e> long n(T t5, b<T> bVar, int i10) {
        Looper looper = (Looper) com.google.android.exoplayer2.util.a.i(Looper.myLooper());
        this.fatalError = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new d(looper, t5, bVar, i10, jElapsedRealtime).f(0L);
        return jElapsedRealtime;
    }
}

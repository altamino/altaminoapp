package u4;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public class b {
    private static final u4.a DEFAULT_INSTANCE;
    private static volatile u4.a instance;

    /* JADX INFO: renamed from: u4.b$b, reason: collision with other inner class name */
    private static class C0500b implements u4.a {
        private static final long CORE_THREAD_TIMEOUT_SECS = 60;

        private C0500b() {
        }

        @Override // u4.a
        @NonNull
        public ExecutorService a(ThreadFactory threadFactory, c cVar) {
            return b(1, threadFactory, cVar);
        }

        @NonNull
        @SuppressLint({"ThreadPoolCreation"})
        public ExecutorService b(int i10, ThreadFactory threadFactory, c cVar) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return Executors.unconfigurableExecutorService(threadPoolExecutor);
        }
    }

    public static u4.a a() {
        return instance;
    }

    static {
        C0500b c0500b = new C0500b();
        DEFAULT_INSTANCE = c0500b;
        instance = c0500b;
    }
}

package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class O4 implements Executor {
    private static int A03;
    private static byte[] A04;
    public static final Executor A05;
    public static final Executor A06;
    public static final Executor A07;
    private static final Executor A08;
    private static final ExecutorService A09;
    private static final ExecutorService A0A;
    private static final ExecutorService A0B;
    private static final AtomicBoolean A0C;
    private static final AtomicBoolean A0D;

    @Nullable
    private Executor A00;
    private ThreadPoolExecutor A01;
    private final int A02;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A04 = new byte[]{14, 52, 39, 56, 125, 96, 125, 100, 111, 126, 125, 101, 120, 97, 75, 77, 41, 43, 32, 43, 60, 39, 45, 40, 58, 48, 39, 42, 33, 20, 6, 30, 6, 85, 4, 0, 16, 0, 16, 85, 1, 26, 26, 85, 25, 26, 27, 18, 91};
    }

    static {
        A04();
        A07 = new O4(A00(7, 7, 59), 0);
        A05 = new O4(A00(23, 5, 120), 0);
        A06 = new O4(A00(14, 2, 30), 0);
        A03 = 32;
        A0B = Executors.newSingleThreadExecutor();
        A0A = Executors.newFixedThreadPool(5);
        A0C = new AtomicBoolean();
        A0D = new AtomicBoolean();
        A09 = Executors.newCachedThreadPool(new O0());
        A08 = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    @VisibleForTesting
    private O4(String str, int i) {
        this.A02 = i;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int KEEP_ALIVE_SECONDS = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        this.A01 = new ThreadPoolExecutor(KEEP_ALIVE_SECONDS, (iAvailableProcessors * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new O3(this, str));
        this.A01.allowCoreThreadTimeOut(true);
    }

    public static Executor A01() {
        Object obj = null;
        char c = A0D.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    obj = A09;
                    c = 3;
                    break;
                case 3:
                    return (Executor) obj;
                case 4:
                    obj = A08;
                    c = 3;
                    break;
            }
        }
    }

    public static ExecutorService A02() {
        ExecutorService executorService = null;
        char c = A0C.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    executorService = A09;
                    c = 3;
                    break;
                case 3:
                    return executorService;
                case 4:
                    executorService = A0A;
                    c = 3;
                    break;
            }
        }
    }

    public static ExecutorService A03() {
        ExecutorService executorService = null;
        char c = A0C.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    executorService = A09;
                    c = 3;
                    break;
                case 3:
                    return executorService;
                case 4:
                    executorService = A0B;
                    c = 3;
                    break;
            }
        }
    }

    public static void A05(Context context) {
        A0C.set(K1.A1t(context));
        A0D.set(K1.A1s(context));
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (this.A00 == null && Looper.myLooper() == Looper.getMainLooper()) {
            this.A00 = AsyncTask.THREAD_POOL_EXECUTOR;
        }
        if ((this.A00 instanceof ThreadPoolExecutor) && ((ThreadPoolExecutor) this.A00).getQueue().size() < this.A02) {
            this.A00.execute(runnable);
            return;
        }
        int size = this.A01.getQueue().size();
        synchronized (O4.class) {
            int i = A03;
            int reservedExecutorQueueSize = A03;
            if (size == reservedExecutorQueueSize) {
                int reservedExecutorQueueSize2 = A03;
                A03 = reservedExecutorQueueSize2 * 2;
                Context contextA00 = IF.A00();
                if (contextA00 != null) {
                    P7.A07(contextA00, A00(16, 7, 95), P8.A1B, new PA(A00(28, 21, 100), A00(0, 7, 76) + i));
                }
            }
        }
        this.A01.execute(runnable);
    }
}

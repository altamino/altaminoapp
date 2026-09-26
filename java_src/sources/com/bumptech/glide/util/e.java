package com.bumptech.glide.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes8.dex */
public final class e {
    private static final Executor MAIN_THREAD_EXECUTOR = new a();
    private static final Executor DIRECT_EXECUTOR = new b();

    class a implements Executor {
        private final Handler handler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.handler.post(runnable);
        }

        a() {
        }
    }

    public static Executor a() {
        return DIRECT_EXECUTOR;
    }

    public static Executor b() {
        return MAIN_THREAD_EXECUTOR;
    }

    class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }
}

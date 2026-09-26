package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
class n implements Executor {
    private final Executor delegate;

    static class a implements Runnable {
        private final Runnable delegate;

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.delegate.run();
            } catch (Exception e) {
                i2.a.d("Executor", "Background execution failure.", e);
            }
        }

        a(Runnable runnable) {
            this.delegate = runnable;
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.delegate.execute(new a(runnable));
    }

    n(Executor executor) {
        this.delegate = executor;
    }
}

package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
class c {
    private static final int LONG_DURATION_MS = 2750;
    static final int MSG_TIMEOUT = 0;
    private static final int SHORT_DURATION_MS = 1500;
    private static c snackbarManager;

    @Nullable
    private C0209c currentSnackbar;

    @Nullable
    private C0209c nextSnackbar;

    @NonNull
    private final Object lock = new Object();

    @NonNull
    private final Handler handler = new Handler(Looper.getMainLooper(), new a());

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            c.this.d((C0209c) message.obj);
            return true;
        }
    }

    interface b {
        void a(int i10);

        void show();
    }

    /* JADX INFO: renamed from: com.google.android.material.snackbar.c$c, reason: collision with other inner class name */
    private static class C0209c {

        @NonNull
        final WeakReference<b> callback;
        int duration;
        boolean paused;

        boolean a(@Nullable b bVar) {
            return bVar != null && this.callback.get() == bVar;
        }

        C0209c(int i10, b bVar) {
            this.callback = new WeakReference<>(bVar);
            this.duration = i10;
        }
    }

    private boolean a(@NonNull C0209c c0209c, int i10) {
        b bVar = c0209c.callback.get();
        if (bVar == null) {
            return false;
        }
        this.handler.removeCallbacksAndMessages(c0209c);
        bVar.a(i10);
        return true;
    }

    static c c() {
        if (snackbarManager == null) {
            snackbarManager = new c();
        }
        return snackbarManager;
    }

    private boolean f(b bVar) {
        C0209c c0209c = this.currentSnackbar;
        return c0209c != null && c0209c.a(bVar);
    }

    private boolean g(b bVar) {
        C0209c c0209c = this.nextSnackbar;
        return c0209c != null && c0209c.a(bVar);
    }

    private void l(@NonNull C0209c c0209c) {
        int i10 = c0209c.duration;
        if (i10 == -2) {
            return;
        }
        if (i10 <= 0) {
            i10 = i10 == -1 ? 1500 : LONG_DURATION_MS;
        }
        this.handler.removeCallbacksAndMessages(c0209c);
        Handler handler = this.handler;
        handler.sendMessageDelayed(Message.obtain(handler, 0, c0209c), i10);
    }

    private void n() {
        C0209c c0209c = this.nextSnackbar;
        if (c0209c != null) {
            this.currentSnackbar = c0209c;
            this.nextSnackbar = null;
            b bVar = c0209c.callback.get();
            if (bVar != null) {
                bVar.show();
            } else {
                this.currentSnackbar = null;
            }
        }
    }

    public void b(b bVar, int i10) {
        synchronized (this.lock) {
            try {
                if (f(bVar)) {
                    a(this.currentSnackbar, i10);
                } else if (g(bVar)) {
                    a(this.nextSnackbar, i10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void d(@NonNull C0209c c0209c) {
        synchronized (this.lock) {
            try {
                if (this.currentSnackbar == c0209c || this.nextSnackbar == c0209c) {
                    a(c0209c, 2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean e(b bVar) {
        boolean z6;
        synchronized (this.lock) {
            try {
                z6 = f(bVar) || g(bVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    public void h(b bVar) {
        synchronized (this.lock) {
            try {
                if (f(bVar)) {
                    this.currentSnackbar = null;
                    if (this.nextSnackbar != null) {
                        n();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void i(b bVar) {
        synchronized (this.lock) {
            try {
                if (f(bVar)) {
                    l(this.currentSnackbar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void j(b bVar) {
        synchronized (this.lock) {
            try {
                if (f(bVar)) {
                    C0209c c0209c = this.currentSnackbar;
                    if (!c0209c.paused) {
                        c0209c.paused = true;
                        this.handler.removeCallbacksAndMessages(c0209c);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void k(b bVar) {
        synchronized (this.lock) {
            try {
                if (f(bVar)) {
                    C0209c c0209c = this.currentSnackbar;
                    if (c0209c.paused) {
                        c0209c.paused = false;
                        l(c0209c);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void m(int i10, b bVar) {
        synchronized (this.lock) {
            try {
                if (f(bVar)) {
                    C0209c c0209c = this.currentSnackbar;
                    c0209c.duration = i10;
                    this.handler.removeCallbacksAndMessages(c0209c);
                    l(this.currentSnackbar);
                    return;
                }
                if (g(bVar)) {
                    this.nextSnackbar.duration = i10;
                } else {
                    this.nextSnackbar = new C0209c(i10, bVar);
                }
                C0209c c0209c2 = this.currentSnackbar;
                if (c0209c2 == null || !a(c0209c2, 4)) {
                    this.currentSnackbar = null;
                    n();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private c() {
    }
}

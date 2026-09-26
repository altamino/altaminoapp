package a1;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public abstract class c {
    private static final boolean DEBUG = false;

    private static class b extends c {
        private volatile boolean isReleased;

        b() {
            super();
        }

        @Override // a1.c
        public void b(boolean z6) {
            this.isReleased = z6;
        }

        @Override // a1.c
        public void c() {
            if (this.isReleased) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    abstract void b(boolean z6);

    public abstract void c();

    private c() {
    }

    @NonNull
    public static c a() {
        return new b();
    }
}

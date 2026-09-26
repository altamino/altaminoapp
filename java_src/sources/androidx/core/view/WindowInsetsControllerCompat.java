package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes7.dex */
public final class WindowInsetsControllerCompat {
    public static final int BEHAVIOR_SHOW_BARS_BY_SWIPE = 1;
    public static final int BEHAVIOR_SHOW_BARS_BY_TOUCH = 0;
    public static final int BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE = 2;
    private final Impl mImpl;

    @RequiresApi
    private static class Impl20 extends Impl {

        @NonNull
        private final View mView;

        @NonNull
        protected final Window mWindow;

        private void e(int i10) {
            if (i10 == 1) {
                f(4);
            } else if (i10 == 2) {
                f(2);
            } else {
                if (i10 != 8) {
                    return;
                }
                ((InputMethodManager) this.mWindow.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mWindow.getDecorView().getWindowToken(), 0);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void a(int i10) {
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    e(i11);
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void d(int i10) {
            if (i10 == 0) {
                h(6144);
                return;
            }
            if (i10 == 1) {
                h(4096);
                f(2048);
            } else {
                if (i10 != 2) {
                    return;
                }
                h(2048);
                f(4096);
            }
        }

        protected void f(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        protected void g(int i10) {
            this.mWindow.addFlags(i10);
        }

        protected void h(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        protected void i(int i10) {
            this.mWindow.clearFlags(i10);
        }

        Impl20(@NonNull Window window, @NonNull View view) {
            this.mWindow = window;
            this.mView = view;
        }
    }

    @RequiresApi
    private static class Impl23 extends Impl20 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void c(boolean z6) {
            if (!z6) {
                h(8192);
                return;
            }
            i(67108864);
            g(Integer.MIN_VALUE);
            f(8192);
        }

        Impl23(@NonNull Window window, @Nullable View view) {
            super(window, view);
        }
    }

    @RequiresApi
    private static class Impl26 extends Impl23 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void b(boolean z6) {
            if (!z6) {
                h(16);
                return;
            }
            i(134217728);
            g(Integer.MIN_VALUE);
            f(16);
        }

        Impl26(@NonNull Window window, @Nullable View view) {
            super(window, view);
        }
    }

    @RequiresApi
    private static class Impl30 extends Impl {
        final WindowInsetsControllerCompat mCompatController;
        final WindowInsetsController mInsetsController;
        private final SimpleArrayMap<OnControllableInsetsChangedListener, WindowInsetsController.OnControllableInsetsChangedListener> mListeners;
        protected Window mWindow;

        /* JADX INFO: renamed from: androidx.core.view.WindowInsetsControllerCompat$Impl30$1, reason: invalid class name */
        class AnonymousClass1 implements WindowInsetsAnimationControlListener {
            private WindowInsetsAnimationControllerCompat mCompatAnimController;
            final /* synthetic */ Impl30 this$0;
            final /* synthetic */ WindowInsetsAnimationControlListenerCompat val$listener;

            public void onCancelled(@Nullable WindowInsetsAnimationController windowInsetsAnimationController) {
                this.val$listener.a(windowInsetsAnimationController == null ? null : this.mCompatAnimController);
            }

            public void onFinished(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
                this.val$listener.c(this.mCompatAnimController);
            }

            public void onReady(@NonNull WindowInsetsAnimationController windowInsetsAnimationController, int i10) {
                WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
                this.mCompatAnimController = windowInsetsAnimationControllerCompat;
                this.val$listener.b(windowInsetsAnimationControllerCompat, i10);
            }
        }

        Impl30(@NonNull Window window, @NonNull WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this(window.getInsetsController(), windowInsetsControllerCompat);
            this.mWindow = window;
        }

        Impl30(@NonNull WindowInsetsController windowInsetsController, @NonNull WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this.mListeners = new SimpleArrayMap<>();
            this.mInsetsController = windowInsetsController;
            this.mCompatController = windowInsetsControllerCompat;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void a(int i10) {
            this.mInsetsController.hide(i10);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void b(boolean z6) {
            if (z6) {
                if (this.mWindow != null) {
                    e(16);
                }
                this.mInsetsController.setSystemBarsAppearance(16, 16);
            } else {
                if (this.mWindow != null) {
                    f(16);
                }
                this.mInsetsController.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void c(boolean z6) {
            if (z6) {
                if (this.mWindow != null) {
                    e(8192);
                }
                this.mInsetsController.setSystemBarsAppearance(8, 8);
            } else {
                if (this.mWindow != null) {
                    f(8192);
                }
                this.mInsetsController.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        void d(int i10) {
            this.mInsetsController.setSystemBarsBehavior(i10);
        }

        protected void e(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        protected void f(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }
    }

    public interface OnControllableInsetsChangedListener {
    }

    private static class Impl {
        void a(int i10) {
        }

        public void b(boolean z6) {
        }

        public void c(boolean z6) {
        }

        void d(int i10) {
        }

        Impl() {
        }
    }

    public void a(int i10) {
        this.mImpl.a(i10);
    }

    public void b(boolean z6) {
        this.mImpl.b(z6);
    }

    public void c(boolean z6) {
        this.mImpl.c(z6);
    }

    public void d(int i10) {
        this.mImpl.d(i10);
    }

    public WindowInsetsControllerCompat(@NonNull Window window, @NonNull View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            this.mImpl = new Impl30(window, this);
        } else if (i10 >= 26) {
            this.mImpl = new Impl26(window, view);
        } else {
            this.mImpl = new Impl23(window, view);
        }
    }
}

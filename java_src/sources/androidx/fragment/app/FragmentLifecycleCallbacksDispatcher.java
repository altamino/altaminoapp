package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
class FragmentLifecycleCallbacksDispatcher {

    @NonNull
    private final FragmentManager mFragmentManager;

    @NonNull
    private final CopyOnWriteArrayList<FragmentLifecycleCallbacksHolder> mLifecycleCallbacks = new CopyOnWriteArrayList<>();

    private static final class FragmentLifecycleCallbacksHolder {

        @NonNull
        final FragmentManager.FragmentLifecycleCallbacks mCallback;
        final boolean mRecursive;

        FragmentLifecycleCallbacksHolder(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z6) {
            this.mCallback = fragmentLifecycleCallbacks;
            this.mRecursive = z6;
        }
    }

    void a(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().a(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentActivityCreated(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    void b(@NonNull Fragment fragment, boolean z6) {
        Context contextF = this.mFragmentManager.C0().f();
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().b(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentAttached(this.mFragmentManager, fragment, contextF);
            }
        }
    }

    void c(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().c(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentCreated(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    void d(@NonNull Fragment fragment, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().d(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentDestroyed(this.mFragmentManager, fragment);
            }
        }
    }

    void e(@NonNull Fragment fragment, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().e(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentDetached(this.mFragmentManager, fragment);
            }
        }
    }

    void f(@NonNull Fragment fragment, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().f(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentPaused(this.mFragmentManager, fragment);
            }
        }
    }

    void g(@NonNull Fragment fragment, boolean z6) {
        Context contextF = this.mFragmentManager.C0().f();
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().g(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentPreAttached(this.mFragmentManager, fragment, contextF);
            }
        }
    }

    void h(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().h(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentPreCreated(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    void i(@NonNull Fragment fragment, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().i(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentResumed(this.mFragmentManager, fragment);
            }
        }
    }

    void j(@NonNull Fragment fragment, @NonNull Bundle bundle, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().j(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentSaveInstanceState(this.mFragmentManager, fragment, bundle);
            }
        }
    }

    void k(@NonNull Fragment fragment, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().k(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentStarted(this.mFragmentManager, fragment);
            }
        }
    }

    void l(@NonNull Fragment fragment, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().l(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentStopped(this.mFragmentManager, fragment);
            }
        }
    }

    void m(@NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().m(fragment, view, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentViewCreated(this.mFragmentManager, fragment, view, bundle);
            }
        }
    }

    void n(@NonNull Fragment fragment, boolean z6) {
        Fragment fragmentF0 = this.mFragmentManager.F0();
        if (fragmentF0 != null) {
            fragmentF0.getParentFragmentManager().E0().n(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.mLifecycleCallbacks) {
            if (!z6 || fragmentLifecycleCallbacksHolder.mRecursive) {
                fragmentLifecycleCallbacksHolder.mCallback.onFragmentViewDestroyed(this.mFragmentManager, fragment);
            }
        }
    }

    public void o(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z6) {
        this.mLifecycleCallbacks.add(new FragmentLifecycleCallbacksHolder(fragmentLifecycleCallbacks, z6));
    }

    public void p(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        synchronized (this.mLifecycleCallbacks) {
            try {
                int size = this.mLifecycleCallbacks.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (this.mLifecycleCallbacks.get(i10).mCallback == fragmentLifecycleCallbacks) {
                        this.mLifecycleCallbacks.remove(i10);
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    FragmentLifecycleCallbacksDispatcher(@NonNull FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }
}

package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.DoNotInline;
import androidx.annotation.MainThread;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class OnBackPressedDispatcher {
    private boolean backInvokedCallbackRegistered;

    @Nullable
    private e8.a<l0> enabledChangedCallback;

    @Nullable
    private final Runnable fallbackOnBackPressed;

    @Nullable
    private OnBackInvokedDispatcher invokedDispatcher;

    @Nullable
    private OnBackInvokedCallback onBackInvokedCallback;

    @NotNull
    private final kotlin.collections.k<OnBackPressedCallback> onBackPressedCallbacks;

    /* JADX INFO: renamed from: androidx.activity.OnBackPressedDispatcher$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<l0> {
        AnonymousClass1() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            OnBackPressedDispatcher.this.g();
        }
    }

    /* JADX INFO: renamed from: androidx.activity.OnBackPressedDispatcher$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.a<l0> {
        AnonymousClass2() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            OnBackPressedDispatcher.this.e();
        }
    }

    @RequiresApi
    public static final class Api33Impl {

        @NotNull
        public static final Api33Impl INSTANCE = new Api33Impl();

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(e8.a onBackInvoked) {
            t.j(onBackInvoked, "$onBackInvoked");
            onBackInvoked.invoke();
        }

        @DoNotInline
        @NotNull
        public final OnBackInvokedCallback b(@NotNull final e8.a<l0> onBackInvoked) {
            t.j(onBackInvoked, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: androidx.activity.i
                public final void onBackInvoked() {
                    OnBackPressedDispatcher.Api33Impl.c(onBackInvoked);
                }
            };
        }

        @DoNotInline
        public final void d(@NotNull Object dispatcher, int i10, @NotNull Object callback) {
            t.j(dispatcher, "dispatcher");
            t.j(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(i10, (OnBackInvokedCallback) callback);
        }

        @DoNotInline
        public final void e(@NotNull Object dispatcher, @NotNull Object callback) {
            t.j(dispatcher, "dispatcher");
            t.j(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
        }

        private Api33Impl() {
        }
    }

    private final class LifecycleOnBackPressedCancellable implements LifecycleEventObserver, Cancellable {

        @Nullable
        private Cancellable currentCancellable;

        @NotNull
        private final Lifecycle lifecycle;

        @NotNull
        private final OnBackPressedCallback onBackPressedCallback;
        final /* synthetic */ OnBackPressedDispatcher this$0;

        public LifecycleOnBackPressedCancellable(@NotNull OnBackPressedDispatcher onBackPressedDispatcher, @NotNull Lifecycle lifecycle, OnBackPressedCallback onBackPressedCallback) {
            t.j(lifecycle, "lifecycle");
            t.j(onBackPressedCallback, "onBackPressedCallback");
            this.this$0 = onBackPressedDispatcher;
            this.lifecycle = lifecycle;
            this.onBackPressedCallback = onBackPressedCallback;
            lifecycle.a(this);
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            this.lifecycle.d(this);
            this.onBackPressedCallback.h(this);
            Cancellable cancellable = this.currentCancellable;
            if (cancellable != null) {
                cancellable.cancel();
            }
            this.currentCancellable = null;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
            t.j(source, "source");
            t.j(event, "event");
            if (event == Lifecycle.Event.ON_START) {
                this.currentCancellable = this.this$0.c(this.onBackPressedCallback);
                return;
            }
            if (event != Lifecycle.Event.ON_STOP) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    cancel();
                }
            } else {
                Cancellable cancellable = this.currentCancellable;
                if (cancellable != null) {
                    cancellable.cancel();
                }
            }
        }
    }

    private final class OnBackPressedCancellable implements Cancellable {

        @NotNull
        private final OnBackPressedCallback onBackPressedCallback;
        final /* synthetic */ OnBackPressedDispatcher this$0;

        public OnBackPressedCancellable(@NotNull OnBackPressedDispatcher onBackPressedDispatcher, OnBackPressedCallback onBackPressedCallback) {
            t.j(onBackPressedCallback, "onBackPressedCallback");
            this.this$0 = onBackPressedDispatcher;
            this.onBackPressedCallback = onBackPressedCallback;
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            this.this$0.onBackPressedCallbacks.remove(this.onBackPressedCallback);
            this.onBackPressedCallback.h(this);
            if (Build.VERSION.SDK_INT >= 33) {
                this.onBackPressedCallback.j(null);
                this.this$0.g();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OnBackPressedDispatcher() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public OnBackPressedDispatcher(@Nullable Runnable runnable) {
        this.fallbackOnBackPressed = runnable;
        this.onBackPressedCallbacks = new kotlin.collections.k<>();
        if (Build.VERSION.SDK_INT >= 33) {
            this.enabledChangedCallback = new AnonymousClass1();
            this.onBackInvokedCallback = Api33Impl.INSTANCE.b(new AnonymousClass2());
        }
    }

    @MainThread
    public final void b(@NotNull LifecycleOwner owner, @NotNull OnBackPressedCallback onBackPressedCallback) {
        t.j(owner, "owner");
        t.j(onBackPressedCallback, "onBackPressedCallback");
        Lifecycle lifecycle = owner.getLifecycle();
        if (lifecycle.b() == Lifecycle.State.DESTROYED) {
            return;
        }
        onBackPressedCallback.d(new LifecycleOnBackPressedCancellable(this, lifecycle, onBackPressedCallback));
        if (Build.VERSION.SDK_INT >= 33) {
            g();
            onBackPressedCallback.j(this.enabledChangedCallback);
        }
    }

    @MainThread
    @NotNull
    public final Cancellable c(@NotNull OnBackPressedCallback onBackPressedCallback) {
        t.j(onBackPressedCallback, "onBackPressedCallback");
        this.onBackPressedCallbacks.add(onBackPressedCallback);
        OnBackPressedCancellable onBackPressedCancellable = new OnBackPressedCancellable(this, onBackPressedCallback);
        onBackPressedCallback.d(onBackPressedCancellable);
        if (Build.VERSION.SDK_INT >= 33) {
            g();
            onBackPressedCallback.j(this.enabledChangedCallback);
        }
        return onBackPressedCancellable;
    }

    @MainThread
    public final boolean d() {
        kotlin.collections.k<OnBackPressedCallback> kVar = this.onBackPressedCallbacks;
        if ((kVar instanceof Collection) && kVar.isEmpty()) {
            return false;
        }
        Iterator<OnBackPressedCallback> it = kVar.iterator();
        while (it.hasNext()) {
            if (it.next().f()) {
                return true;
            }
        }
        return false;
    }

    @MainThread
    public final void e() {
        OnBackPressedCallback onBackPressedCallbackPrevious;
        kotlin.collections.k<OnBackPressedCallback> kVar = this.onBackPressedCallbacks;
        ListIterator<OnBackPressedCallback> listIterator = kVar.listIterator(kVar.size());
        do {
            if (!listIterator.hasPrevious()) {
                onBackPressedCallbackPrevious = null;
                break;
            }
            onBackPressedCallbackPrevious = listIterator.previous();
        } while (!onBackPressedCallbackPrevious.f());
        OnBackPressedCallback onBackPressedCallback = onBackPressedCallbackPrevious;
        if (onBackPressedCallback != null) {
            onBackPressedCallback.e();
            return;
        }
        Runnable runnable = this.fallbackOnBackPressed;
        if (runnable != null) {
            runnable.run();
        }
    }

    @RequiresApi
    public final void f(@NotNull OnBackInvokedDispatcher invoker) {
        t.j(invoker, "invoker");
        this.invokedDispatcher = invoker;
        g();
    }

    @RequiresApi
    public final void g() {
        boolean zD = d();
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.invokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback = this.onBackInvokedCallback;
        if (onBackInvokedDispatcher != null && onBackInvokedCallback != null) {
            if (zD && !this.backInvokedCallbackRegistered) {
                Api33Impl.INSTANCE.d(onBackInvokedDispatcher, 0, onBackInvokedCallback);
                this.backInvokedCallbackRegistered = true;
            } else if (!zD && this.backInvokedCallbackRegistered) {
                Api33Impl.INSTANCE.e(onBackInvokedDispatcher, onBackInvokedCallback);
                this.backInvokedCallbackRegistered = false;
            }
        }
    }

    public /* synthetic */ OnBackPressedDispatcher(Runnable runnable, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? null : runnable);
    }
}

package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class ProcessLifecycleOwner implements LifecycleOwner {
    public static final long TIMEOUT_MS = 700;

    @Nullable
    private Handler handler;
    private int resumedCounter;
    private int startedCounter;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ProcessLifecycleOwner newInstance = new ProcessLifecycleOwner();
    private boolean pauseSent = true;
    private boolean stopSent = true;

    @NotNull
    private final LifecycleRegistry registry = new LifecycleRegistry(this);

    @NotNull
    private final Runnable delayedPauseRunnable = new Runnable() { // from class: androidx.lifecycle.g
        @Override // java.lang.Runnable
        public final void run() {
            ProcessLifecycleOwner.i(this.f220a);
        }
    };

    @NotNull
    private final ReportFragment.ActivityInitializationListener initializationListener = new ReportFragment.ActivityInitializationListener() { // from class: androidx.lifecycle.ProcessLifecycleOwner$initializationListener$1
        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onCreate() {
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onResume() {
            this.this$0.e();
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        public void onStart() {
            this.this$0.f();
        }
    };

    @RequiresApi
    public static final class Api29Impl {

        @NotNull
        public static final Api29Impl INSTANCE = new Api29Impl();

        @DoNotInline
        public static final void a(@NotNull Activity activity, @NotNull Application.ActivityLifecycleCallbacks callback) {
            t.j(activity, "activity");
            t.j(callback, "callback");
            activity.registerActivityLifecycleCallbacks(callback);
        }

        private Api29Impl() {
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final void b(@NotNull Context context) {
            t.j(context, "context");
            ProcessLifecycleOwner.newInstance.h(context);
        }

        @NotNull
        public final LifecycleOwner a() {
            return ProcessLifecycleOwner.newInstance;
        }
    }

    @NotNull
    public static final LifecycleOwner l() {
        return Companion.a();
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public Lifecycle getLifecycle() {
        return this.registry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ProcessLifecycleOwner this$0) {
        t.j(this$0, "this$0");
        this$0.j();
        this$0.k();
    }

    public final void d() {
        int i10 = this.resumedCounter - 1;
        this.resumedCounter = i10;
        if (i10 == 0) {
            Handler handler = this.handler;
            t.g(handler);
            handler.postDelayed(this.delayedPauseRunnable, 700L);
        }
    }

    public final void e() {
        int i10 = this.resumedCounter + 1;
        this.resumedCounter = i10;
        if (i10 == 1) {
            if (this.pauseSent) {
                this.registry.i(Lifecycle.Event.ON_RESUME);
                this.pauseSent = false;
            } else {
                Handler handler = this.handler;
                t.g(handler);
                handler.removeCallbacks(this.delayedPauseRunnable);
            }
        }
    }

    public final void f() {
        int i10 = this.startedCounter + 1;
        this.startedCounter = i10;
        if (i10 == 1 && this.stopSent) {
            this.registry.i(Lifecycle.Event.ON_START);
            this.stopSent = false;
        }
    }

    public final void g() {
        this.startedCounter--;
        k();
    }

    public final void h(@NotNull Context context) {
        t.j(context, "context");
        this.handler = new Handler();
        this.registry.i(Lifecycle.Event.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        t.h(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
                t.j(activity, "activity");
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.Companion.b(activity).f(this.this$0.initializationListener);
                }
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(@NotNull Activity activity) {
                t.j(activity, "activity");
                this.this$0.d();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            @RequiresApi
            public void onActivityPreCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
                t.j(activity, "activity");
                final ProcessLifecycleOwner processLifecycleOwner = this.this$0;
                ProcessLifecycleOwner.Api29Impl.a(activity, new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(@NotNull Activity activity2) {
                        t.j(activity2, "activity");
                        processLifecycleOwner.e();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(@NotNull Activity activity2) {
                        t.j(activity2, "activity");
                        processLifecycleOwner.f();
                    }
                });
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(@NotNull Activity activity) {
                t.j(activity, "activity");
                this.this$0.g();
            }
        });
    }

    public final void j() {
        if (this.resumedCounter == 0) {
            this.pauseSent = true;
            this.registry.i(Lifecycle.Event.ON_PAUSE);
        }
    }

    public final void k() {
        if (this.startedCounter == 0 && this.pauseSent) {
            this.registry.i(Lifecycle.Event.ON_STOP);
            this.stopSent = true;
        }
    }

    private ProcessLifecycleOwner() {
    }
}

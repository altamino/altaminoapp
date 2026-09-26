package com.google.firebase.sessions;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class j0 implements Application.ActivityLifecycleCallbacks {

    @NotNull
    public static final j0 INSTANCE = new j0();
    private static boolean hasPendingForeground;

    @Nullable
    private static f0 lifecycleClient;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        kotlin.jvm.internal.t.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        kotlin.jvm.internal.t.j(activity, "activity");
        kotlin.jvm.internal.t.j(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        kotlin.jvm.internal.t.j(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        kotlin.jvm.internal.t.j(activity, "activity");
    }

    public final void a(@Nullable f0 f0Var) {
        lifecycleClient = f0Var;
        if (f0Var == null || !hasPendingForeground) {
            return;
        }
        hasPendingForeground = false;
        f0Var.k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        kotlin.jvm.internal.t.j(activity, "activity");
        f0 f0Var = lifecycleClient;
        if (f0Var != null) {
            f0Var.h();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        w7.l0 l0Var;
        kotlin.jvm.internal.t.j(activity, "activity");
        f0 f0Var = lifecycleClient;
        if (f0Var != null) {
            f0Var.k();
            l0Var = w7.l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            hasPendingForeground = true;
        }
    }

    private j0() {
    }
}

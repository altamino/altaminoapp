package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.g0;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ThreadPoolCreation"})
public class ExecutorsRegistrar implements ComponentRegistrar {
    static final com.google.firebase.components.y<ScheduledExecutorService> BG_EXECUTOR = new com.google.firebase.components.y<>(new o4.b() { // from class: com.google.firebase.concurrent.r
        @Override // o4.b
        public final Object get() {
            return ExecutorsRegistrar.p();
        }
    });
    static final com.google.firebase.components.y<ScheduledExecutorService> LITE_EXECUTOR = new com.google.firebase.components.y<>(new o4.b() { // from class: com.google.firebase.concurrent.s
        @Override // o4.b
        public final Object get() {
            return ExecutorsRegistrar.q();
        }
    });
    static final com.google.firebase.components.y<ScheduledExecutorService> BLOCKING_EXECUTOR = new com.google.firebase.components.y<>(new o4.b() { // from class: com.google.firebase.concurrent.t
        @Override // o4.b
        public final Object get() {
            return ExecutorsRegistrar.r();
        }
    });
    static final com.google.firebase.components.y<ScheduledExecutorService> SCHEDULER = new com.google.firebase.components.y<>(new o4.b() { // from class: com.google.firebase.concurrent.u
        @Override // o4.b
        public final Object get() {
            return ExecutorsRegistrar.s();
        }
    });

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<com.google.firebase.components.c<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.c.d(g0.a(w3.a.class, ScheduledExecutorService.class), g0.a(w3.a.class, ExecutorService.class), g0.a(w3.a.class, Executor.class)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.concurrent.v
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return ExecutorsRegistrar.l(eVar);
            }
        }).d(), com.google.firebase.components.c.d(g0.a(w3.b.class, ScheduledExecutorService.class), g0.a(w3.b.class, ExecutorService.class), g0.a(w3.b.class, Executor.class)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.concurrent.w
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return ExecutorsRegistrar.m(eVar);
            }
        }).d(), com.google.firebase.components.c.d(g0.a(w3.c.class, ScheduledExecutorService.class), g0.a(w3.c.class, ExecutorService.class), g0.a(w3.c.class, Executor.class)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.concurrent.x
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return ExecutorsRegistrar.n(eVar);
            }
        }).d(), com.google.firebase.components.c.c(g0.a(w3.d.class, Executor.class)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.concurrent.y
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return ExecutorsRegistrar.o(eVar);
            }
        }).d());
    }

    private static StrictMode.ThreadPolicy i() {
        StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        int i10 = Build.VERSION.SDK_INT;
        builderDetectNetwork.detectResourceMismatches();
        if (i10 >= 26) {
            builderDetectNetwork.detectUnbufferedIo();
        }
        return builderDetectNetwork.penaltyLog().build();
    }

    private static ThreadFactory j(String str, int i10) {
        return new b(str, i10, null);
    }

    private static ThreadFactory k(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        return new b(str, i10, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService l(com.google.firebase.components.e eVar) {
        return BG_EXECUTOR.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService m(com.google.firebase.components.e eVar) {
        return BLOCKING_EXECUTOR.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService n(com.google.firebase.components.e eVar) {
        return LITE_EXECUTOR.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Executor o(com.google.firebase.components.e eVar) {
        return b0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService p() {
        return u(Executors.newFixedThreadPool(4, k("Firebase Background", 10, i())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService r() {
        return u(Executors.newCachedThreadPool(j("Firebase Blocking", 11)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService s() {
        return Executors.newSingleThreadScheduledExecutor(j("Firebase Scheduler", 0));
    }

    private static StrictMode.ThreadPolicy t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    private static ScheduledExecutorService u(ExecutorService executorService) {
        return new o(executorService, SCHEDULER.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService q() {
        return u(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), k("Firebase Lite", 0, t())));
    }
}

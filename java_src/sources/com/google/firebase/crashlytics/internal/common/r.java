package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes7.dex */
public class r {
    static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    static final String CRASH_MARKER_FILE_NAME = "crash_marker";
    static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 3;
    private static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    static final int MAX_STACK_SIZE = 1024;
    private static final String MISSING_BUILD_ID_MSG = "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin";
    static final int NUM_STACK_REPETITIONS_ALLOWED = 10;
    private static final String ON_DEMAND_DROPPED_KEY = "com.crashlytics.on-demand.dropped-exceptions";
    private static final String ON_DEMAND_RECORDED_KEY = "com.crashlytics.on-demand.recorded-exceptions";
    private final com.google.firebase.crashlytics.internal.analytics.a analyticsEventLogger;
    private final com.google.firebase.f app;
    private final n backgroundWorker;

    @VisibleForTesting
    public final b4.b breadcrumbSource;
    private final Context context;
    private p controller;
    private final ExecutorService crashHandlerExecutor;
    private s crashMarker;
    private final x dataCollectionArbiter;
    private boolean didCrashOnPreviousExecution;
    private final e4.f fileStore;
    private final b0 idManager;
    private s initializationMarker;
    private final com.google.firebase.crashlytics.internal.a nativeComponent;
    private final com.google.firebase.crashlytics.internal.l remoteConfigDeferredProxy;
    private final m sessionsSubscriber;
    private final long startTime = System.currentTimeMillis();
    private final g0 onDemandCounter = new g0();

    class a implements Callable<Task<Void>> {
        final /* synthetic */ com.google.firebase.crashlytics.internal.settings.i val$settingsProvider;

        a(com.google.firebase.crashlytics.internal.settings.i iVar) {
            this.val$settingsProvider = iVar;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> call() throws Exception {
            return r.this.f(this.val$settingsProvider);
        }
    }

    class b implements Runnable {
        final /* synthetic */ com.google.firebase.crashlytics.internal.settings.i val$settingsProvider;

        b(com.google.firebase.crashlytics.internal.settings.i iVar) {
            this.val$settingsProvider = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.f(this.val$settingsProvider);
        }
    }

    class c implements Callable<Boolean> {
        c() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            try {
                boolean zD = r.this.initializationMarker.d();
                if (!zD) {
                    com.google.firebase.crashlytics.internal.g.f().k("Initialization marker file was not properly removed.");
                }
                return Boolean.valueOf(zD);
            } catch (Exception e) {
                com.google.firebase.crashlytics.internal.g.f().e("Problem encountered deleting Crashlytics initialization marker.", e);
                return Boolean.FALSE;
            }
        }
    }

    class d implements Callable<Boolean> {
        d() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(r.this.controller.s());
        }
    }

    public static String i() {
        return "18.6.0";
    }

    static boolean j(String str, boolean z6) {
        if (!z6) {
            com.google.firebase.crashlytics.internal.g.f().i("Configured not to require a build ID.");
            return true;
        }
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     |  | ");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     |  |");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     |  |");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".   \\ |  | /");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".    \\    /");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     \\  /");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".      \\/");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, MISSING_BUILD_ID_MSG);
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".      /\\");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     /  \\");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".    /    \\");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".   / |  | \\");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     |  |");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     |  |");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".     |  |");
        Log.e(com.google.firebase.crashlytics.internal.g.TAG, ".");
        return false;
    }

    private void d() {
        try {
            this.didCrashOnPreviousExecution = Boolean.TRUE.equals((Boolean) x0.f(this.backgroundWorker.h(new d())));
        } catch (Exception unused) {
            this.didCrashOnPreviousExecution = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> f(com.google.firebase.crashlytics.internal.settings.i iVar) {
        n();
        try {
            this.breadcrumbSource.a(new b4.a() { // from class: com.google.firebase.crashlytics.internal.common.q
                @Override // b4.a
                public final void a(String str) {
                    this.f1537a.k(str);
                }
            });
            this.controller.S();
            if (!iVar.a().featureFlagData.collectReports) {
                com.google.firebase.crashlytics.internal.g.f().b("Collection of crash reports disabled in Crashlytics settings.");
                return Tasks.forException(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.controller.z(iVar)) {
                com.google.firebase.crashlytics.internal.g.f().k("Previous sessions could not be finalized.");
            }
            return this.controller.V(iVar.b());
        } catch (Exception e) {
            com.google.firebase.crashlytics.internal.g.f().e("Crashlytics encountered a problem during asynchronous initialization.", e);
            return Tasks.forException(e);
        } finally {
            m();
        }
    }

    private void h(com.google.firebase.crashlytics.internal.settings.i iVar) {
        Future<?> futureSubmit = this.crashHandlerExecutor.submit(new b(iVar));
        com.google.firebase.crashlytics.internal.g.f().b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            com.google.firebase.crashlytics.internal.g.f().e("Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            com.google.firebase.crashlytics.internal.g.f().e("Crashlytics encountered a problem during initialization.", e2);
        } catch (TimeoutException e6) {
            com.google.firebase.crashlytics.internal.g.f().e("Crashlytics timed out during initialization.", e6);
        }
    }

    boolean e() {
        return this.initializationMarker.c();
    }

    public Task<Void> g(com.google.firebase.crashlytics.internal.settings.i iVar) {
        return x0.h(this.crashHandlerExecutor, new a(iVar));
    }

    public void l(@NonNull Throwable th) {
        this.controller.Y(Thread.currentThread(), th);
    }

    void m() {
        this.backgroundWorker.h(new c());
    }

    void n() {
        this.backgroundWorker.b();
        this.initializationMarker.a();
        com.google.firebase.crashlytics.internal.g.f().i("Initialization marker file was created.");
    }

    public boolean o(com.google.firebase.crashlytics.internal.common.a aVar, com.google.firebase.crashlytics.internal.settings.i iVar) {
        if (!j(aVar.buildId, i.i(this.context, CRASHLYTICS_REQUIRE_BUILD_ID, true))) {
            throw new IllegalStateException(MISSING_BUILD_ID_MSG);
        }
        String string = new h(this.idManager).toString();
        try {
            this.crashMarker = new s(CRASH_MARKER_FILE_NAME, this.fileStore);
            this.initializationMarker = new s(INITIALIZATION_MARKER_FILE_NAME, this.fileStore);
            com.google.firebase.crashlytics.internal.metadata.n nVar = new com.google.firebase.crashlytics.internal.metadata.n(string, this.fileStore, this.backgroundWorker);
            com.google.firebase.crashlytics.internal.metadata.e eVar = new com.google.firebase.crashlytics.internal.metadata.e(this.fileStore);
            f4.a aVar2 = new f4.a(1024, new f4.c(10));
            this.remoteConfigDeferredProxy.c(nVar);
            this.controller = new p(this.context, this.backgroundWorker, this.idManager, this.dataCollectionArbiter, this.fileStore, this.crashMarker, aVar, nVar, eVar, q0.h(this.context, this.idManager, this.fileStore, aVar, eVar, nVar, aVar2, iVar, this.onDemandCounter, this.sessionsSubscriber), this.nativeComponent, this.analyticsEventLogger, this.sessionsSubscriber);
            boolean zE = e();
            d();
            this.controller.x(string, Thread.getDefaultUncaughtExceptionHandler(), iVar);
            if (!zE || !i.d(this.context)) {
                com.google.firebase.crashlytics.internal.g.f().b("Successfully configured exception handler.");
                return true;
            }
            com.google.firebase.crashlytics.internal.g.f().b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
            h(iVar);
            return false;
        } catch (Exception e) {
            com.google.firebase.crashlytics.internal.g.f().e("Crashlytics was not started due to an exception during initialization", e);
            this.controller = null;
            return false;
        }
    }

    public void p(String str) {
        this.controller.U(str);
    }

    public r(com.google.firebase.f fVar, b0 b0Var, com.google.firebase.crashlytics.internal.a aVar, x xVar, b4.b bVar, com.google.firebase.crashlytics.internal.analytics.a aVar2, e4.f fVar2, ExecutorService executorService, m mVar, com.google.firebase.crashlytics.internal.l lVar) {
        this.app = fVar;
        this.dataCollectionArbiter = xVar;
        this.context = fVar.k();
        this.idManager = b0Var;
        this.nativeComponent = aVar;
        this.breadcrumbSource = bVar;
        this.analyticsEventLogger = aVar2;
        this.crashHandlerExecutor = executorService;
        this.fileStore = fVar2;
        this.backgroundWorker = new n(executorService);
        this.sessionsSubscriber = mVar;
        this.remoteConfigDeferredProxy = lVar;
    }

    public void k(String str) {
        this.controller.Z(System.currentTimeMillis() - this.startTime, str);
    }
}

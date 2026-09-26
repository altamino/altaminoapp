package com.google.firebase.perf.transport;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.v1.m;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes10.dex */
public class k implements com.google.firebase.perf.application.a.b {
    private static final int CORE_POOL_SIZE = 0;
    private static final String KEY_AVAILABLE_GAUGES_FOR_CACHING = "KEY_AVAILABLE_GAUGES_FOR_CACHING";
    private static final String KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING = "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING";
    private static final String KEY_AVAILABLE_TRACES_FOR_CACHING = "KEY_AVAILABLE_TRACES_FOR_CACHING";
    private static final int MAX_GAUGE_METRICS_CACHE_SIZE = 50;
    private static final int MAX_NETWORK_REQUEST_METRICS_CACHE_SIZE = 50;
    private static final int MAX_POOL_SIZE = 1;
    private static final int MAX_TRACE_METRICS_CACHE_SIZE = 50;
    private Context appContext;
    private com.google.firebase.perf.application.a appStateMonitor;
    private com.google.firebase.perf.v1.c.b applicationInfoBuilder;
    private final Map<String, Integer> cacheMap;
    private com.google.firebase.perf.config.a configResolver;
    private com.google.firebase.f firebaseApp;
    private com.google.firebase.installations.h firebaseInstallationsApi;

    @Nullable
    private v4.e firebasePerformance;
    private b flgTransport;
    private o4.b<f2.g> flgTransportFactoryProvider;
    private String packageName;
    private String projectId;
    private d rateLimiter;
    private static final y4.a logger = y4.a.e();
    private static final k instance = new k();
    private final ConcurrentLinkedQueue<c> pendingEventsQueue = new ConcurrentLinkedQueue<>();
    private final AtomicBoolean isTransportInitialized = new AtomicBoolean(false);
    private boolean isForegroundState = false;
    private ExecutorService executorService = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public static k k() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void E() {
        Context contextK = this.firebaseApp.k();
        this.appContext = contextK;
        this.packageName = contextK.getPackageName();
        this.configResolver = com.google.firebase.perf.config.a.g();
        this.rateLimiter = new d(this.appContext, new com.google.firebase.perf.util.i(100L, 1L, TimeUnit.MINUTES), 500L);
        this.appStateMonitor = com.google.firebase.perf.application.a.b();
        this.flgTransport = new b(this.flgTransportFactoryProvider, this.configResolver.a());
        h();
    }

    @WorkerThread
    private void G() {
        String str;
        if (this.configResolver.K()) {
            if (!this.applicationInfoBuilder.j() || this.isForegroundState) {
                try {
                    str = (String) Tasks.await(this.firebaseInstallationsApi.getId(), 60000L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    logger.d("Task to retrieve Installation Id is interrupted: %s", e.getMessage());
                    str = null;
                } catch (ExecutionException e2) {
                    logger.d("Unable to retrieve Installation Id: %s", e2.getMessage());
                    str = null;
                } catch (TimeoutException e6) {
                    logger.d("Task to retrieve Installation Id is timed out: %s", e6.getMessage());
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    logger.j("Firebase Installation Id is empty, contact Firebase Support for debugging.");
                } else {
                    this.applicationInfoBuilder.m(str);
                }
            }
        }
    }

    private void H() {
        if (this.firebasePerformance == null && u()) {
            this.firebasePerformance = v4.e.c();
        }
    }

    private void h() {
        this.appStateMonitor.k(new WeakReference<>(instance));
        com.google.firebase.perf.v1.c.b bVarU = com.google.firebase.perf.v1.c.u();
        this.applicationInfoBuilder = bVarU;
        bVarU.o(this.firebaseApp.n().c()).l(com.google.firebase.perf.v1.a.n().d(this.packageName).h(v4.a.FIREPERF_VERSION_NAME).j(p(this.appContext)));
        this.isTransportInitialized.set(true);
        while (!this.pendingEventsQueue.isEmpty()) {
            final c cVarPoll = this.pendingEventsQueue.poll();
            if (cVarPoll != null) {
                this.executorService.execute(new Runnable() { // from class: com.google.firebase.perf.transport.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1640a.v(cVarPoll);
                    }
                });
            }
        }
    }

    private static String l(com.google.firebase.perf.v1.g gVar) {
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(gVar.t()), Integer.valueOf(gVar.q()), Integer.valueOf(gVar.p()));
    }

    private static String p(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return str == null ? "" : str;
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    @WorkerThread
    private boolean s(com.google.firebase.perf.v1.j jVar) {
        int iIntValue = this.cacheMap.get(KEY_AVAILABLE_TRACES_FOR_CACHING).intValue();
        int iIntValue2 = this.cacheMap.get(KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING).intValue();
        int iIntValue3 = this.cacheMap.get(KEY_AVAILABLE_GAUGES_FOR_CACHING).intValue();
        if (jVar.g() && iIntValue > 0) {
            this.cacheMap.put(KEY_AVAILABLE_TRACES_FOR_CACHING, Integer.valueOf(iIntValue - 1));
            return true;
        }
        if (jVar.f() && iIntValue2 > 0) {
            this.cacheMap.put(KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING, Integer.valueOf(iIntValue2 - 1));
            return true;
        }
        if (!jVar.e() || iIntValue3 <= 0) {
            logger.b("%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d).", n(jVar), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2), Integer.valueOf(iIntValue3));
            return false;
        }
        this.cacheMap.put(KEY_AVAILABLE_GAUGES_FOR_CACHING, Integer.valueOf(iIntValue3 - 1));
        return true;
    }

    @WorkerThread
    private boolean t(com.google.firebase.perf.v1.i iVar) {
        if (!this.configResolver.K()) {
            logger.g("Performance collection is not enabled, dropping %s", n(iVar));
            return false;
        }
        if (!iVar.l().q()) {
            logger.k("App Instance ID is null or empty, dropping %s", n(iVar));
            return false;
        }
        if (!z4.e.b(iVar, this.appContext)) {
            logger.k("Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values.", n(iVar));
            return false;
        }
        if (!this.rateLimiter.h(iVar)) {
            q(iVar);
            logger.g("Event dropped due to device sampling - %s", n(iVar));
            return false;
        }
        if (!this.rateLimiter.g(iVar)) {
            return true;
        }
        q(iVar);
        logger.g("Rate limited (per device) - %s", n(iVar));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(c cVar) {
        F(cVar.perfMetricBuilder, cVar.appState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        this.rateLimiter.a(this.isForegroundState);
    }

    public void A(final com.google.firebase.perf.v1.g gVar, final com.google.firebase.perf.v1.d dVar) {
        this.executorService.execute(new Runnable() { // from class: com.google.firebase.perf.transport.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f1637a.y(gVar, dVar);
            }
        });
    }

    public void B(final com.google.firebase.perf.v1.h hVar, final com.google.firebase.perf.v1.d dVar) {
        this.executorService.execute(new Runnable() { // from class: com.google.firebase.perf.transport.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f1633a.x(hVar, dVar);
            }
        });
    }

    public void C(final m mVar, final com.google.firebase.perf.v1.d dVar) {
        this.executorService.execute(new Runnable() { // from class: com.google.firebase.perf.transport.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f1629a.w(mVar, dVar);
            }
        });
    }

    @Override // com.google.firebase.perf.application.a.b
    public void onUpdateAppState(com.google.firebase.perf.v1.d dVar) {
        this.isForegroundState = dVar == com.google.firebase.perf.v1.d.FOREGROUND;
        if (u()) {
            this.executorService.execute(new Runnable() { // from class: com.google.firebase.perf.transport.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1636a.z();
                }
            });
        }
    }

    public void r(@NonNull com.google.firebase.f fVar, @NonNull com.google.firebase.installations.h hVar, @NonNull o4.b<f2.g> bVar) {
        this.firebaseApp = fVar;
        this.projectId = fVar.n().e();
        this.firebaseInstallationsApi = hVar;
        this.flgTransportFactoryProvider = bVar;
        this.executorService.execute(new Runnable() { // from class: com.google.firebase.perf.transport.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f1632a.E();
            }
        });
    }

    public boolean u() {
        return this.isTransportInitialized.get();
    }

    @SuppressLint({"ThreadPoolCreation"})
    private k() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.cacheMap = concurrentHashMap;
        concurrentHashMap.put(KEY_AVAILABLE_TRACES_FOR_CACHING, 50);
        concurrentHashMap.put(KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING, 50);
        concurrentHashMap.put(KEY_AVAILABLE_GAUGES_FOR_CACHING, 50);
    }

    private com.google.firebase.perf.v1.i D(com.google.firebase.perf.v1.i.b bVar, com.google.firebase.perf.v1.d dVar) {
        G();
        com.google.firebase.perf.v1.c.b bVarN = this.applicationInfoBuilder.n(dVar);
        if (bVar.g() || bVar.f()) {
            bVarN = bVarN.mo14clone().k(j());
        }
        return bVar.d(bVarN).build();
    }

    @WorkerThread
    private void F(com.google.firebase.perf.v1.i.b bVar, com.google.firebase.perf.v1.d dVar) {
        if (!u()) {
            if (s(bVar)) {
                logger.b("Transport is not initialized yet, %s will be queued for to be dispatched later", n(bVar));
                this.pendingEventsQueue.add(new c(bVar, dVar));
                return;
            }
            return;
        }
        com.google.firebase.perf.v1.i iVarD = D(bVar, dVar);
        if (t(iVarD)) {
            g(iVarD);
            SessionManager.getInstance().stopGaugeCollectionIfSessionRunningTooLong();
        }
    }

    @WorkerThread
    private void g(com.google.firebase.perf.v1.i iVar) {
        if (iVar.g()) {
            logger.g("Logging %s. In a minute, visit the Firebase console to view your data: %s", n(iVar), i(iVar.i()));
        } else {
            logger.g("Logging %s", n(iVar));
        }
        this.flgTransport.b(iVar);
    }

    private String i(m mVar) {
        String name = mVar.getName();
        if (name.startsWith("_st_")) {
            return y4.b.c(this.projectId, this.packageName, name);
        }
        return y4.b.a(this.projectId, this.packageName, name);
    }

    private Map<String, String> j() {
        H();
        v4.e eVar = this.firebasePerformance;
        if (eVar != null) {
            return eVar.b();
        }
        return Collections.emptyMap();
    }

    private static String m(com.google.firebase.perf.v1.h hVar) {
        long jG;
        String strValueOf;
        if (hVar.P()) {
            jG = hVar.G();
        } else {
            jG = 0;
        }
        if (hVar.L()) {
            strValueOf = String.valueOf(hVar.A());
        } else {
            strValueOf = "UNKNOWN";
        }
        return String.format(Locale.ENGLISH, "network request trace: %s (responseCode: %s, responseTime: %sms)", hVar.I(), strValueOf, new DecimalFormat("#.####").format(jG / 1000.0d));
    }

    private static String n(com.google.firebase.perf.v1.j jVar) {
        if (jVar.g()) {
            return o(jVar.i());
        }
        if (jVar.f()) {
            return m(jVar.b());
        }
        if (jVar.e()) {
            return l(jVar.c());
        }
        return "log";
    }

    private static String o(m mVar) {
        return String.format(Locale.ENGLISH, "trace metric: %s (duration: %sms)", mVar.getName(), new DecimalFormat("#.####").format(mVar.B() / 1000.0d));
    }

    private void q(com.google.firebase.perf.v1.i iVar) {
        if (iVar.g()) {
            this.appStateMonitor.d(com.google.firebase.perf.util.b.TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        } else if (iVar.f()) {
            this.appStateMonitor.d(com.google.firebase.perf.util.b.NETWORK_TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(m mVar, com.google.firebase.perf.v1.d dVar) {
        F(com.google.firebase.perf.v1.i.n().k(mVar), dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(com.google.firebase.perf.v1.h hVar, com.google.firebase.perf.v1.d dVar) {
        F(com.google.firebase.perf.v1.i.n().j(hVar), dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(com.google.firebase.perf.v1.g gVar, com.google.firebase.perf.v1.d dVar) {
        F(com.google.firebase.perf.v1.i.n().h(gVar), dVar);
    }
}

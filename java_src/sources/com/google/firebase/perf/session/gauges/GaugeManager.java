package com.google.firebase.perf.session.gauges;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.components.y;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.util.Timer;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class GaugeManager {
    private static final long APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC = 20;
    private static final long INVALID_GAUGE_COLLECTION_FREQUENCY = -1;
    private static final long TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS = 20;
    private com.google.firebase.perf.v1.d applicationProcessState;
    private final com.google.firebase.perf.config.a configResolver;
    private final y<c> cpuGaugeCollector;

    @Nullable
    private ScheduledFuture gaugeManagerDataCollectionJob;
    private final y<ScheduledExecutorService> gaugeManagerExecutor;

    @Nullable
    private i gaugeMetadataManager;
    private final y<l> memoryGaugeCollector;

    @Nullable
    private String sessionId;
    private final com.google.firebase.perf.transport.k transportManager;
    private static final y4.a logger = y4.a.e();
    private static final GaugeManager instance = new GaugeManager();

    @SuppressLint({"ThreadPoolCreation"})
    private GaugeManager() {
        this(new y(new o4.b() { // from class: com.google.firebase.perf.session.gauges.f
            @Override // o4.b
            public final Object get() {
                return Executors.newSingleThreadScheduledExecutor();
            }
        }), com.google.firebase.perf.transport.k.k(), com.google.firebase.perf.config.a.g(), null, new y(new o4.b() { // from class: com.google.firebase.perf.session.gauges.g
            @Override // o4.b
            public final Object get() {
                return GaugeManager.lambda$new$0();
            }
        }), new y(new o4.b() { // from class: com.google.firebase.perf.session.gauges.h
            @Override // o4.b
            public final Object get() {
                return GaugeManager.lambda$new$1();
            }
        }));
    }

    public void collectGaugeMetricOnce(Timer timer) {
        collectGaugeMetricOnce(this.cpuGaugeCollector.get(), this.memoryGaugeCollector.get(), timer);
    }

    public void startCollectingGauges(PerfSession perfSession, final com.google.firebase.perf.v1.d dVar) {
        if (this.sessionId != null) {
            stopCollectingGauges();
        }
        long jStartCollectingGauges = startCollectingGauges(dVar, perfSession.h());
        if (jStartCollectingGauges == -1) {
            logger.j("Invalid gauge collection frequency. Unable to start collecting Gauges.");
            return;
        }
        final String strM = perfSession.m();
        this.sessionId = strM;
        this.applicationProcessState = dVar;
        try {
            long j6 = jStartCollectingGauges * 20;
            this.gaugeManagerDataCollectionJob = this.gaugeManagerExecutor.get().scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.perf.session.gauges.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1622a.lambda$startCollectingGauges$2(strM, dVar);
                }
            }, j6, j6, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            logger.j("Unable to start collecting Gauges: " + e.getMessage());
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$perf$v1$ApplicationProcessState;

        static {
            int[] iArr = new int[com.google.firebase.perf.v1.d.values().length];
            $SwitchMap$com$google$firebase$perf$v1$ApplicationProcessState = iArr;
            try {
                iArr[com.google.firebase.perf.v1.d.BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$perf$v1$ApplicationProcessState[com.google.firebase.perf.v1.d.FOREGROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static void collectGaugeMetricOnce(c cVar, l lVar, Timer timer) {
        cVar.c(timer);
        lVar.c(timer);
    }

    private long getCpuGaugeCollectionFrequencyMs(com.google.firebase.perf.v1.d dVar) {
        long jY;
        int i10 = a.$SwitchMap$com$google$firebase$perf$v1$ApplicationProcessState[dVar.ordinal()];
        if (i10 != 1) {
            jY = i10 != 2 ? -1L : this.configResolver.z();
        } else {
            jY = this.configResolver.y();
        }
        if (c.f(jY)) {
            return -1L;
        }
        return jY;
    }

    public static synchronized GaugeManager getInstance() {
        return instance;
    }

    private long getMemoryGaugeCollectionFrequencyMs(com.google.firebase.perf.v1.d dVar) {
        long jB;
        int i10 = a.$SwitchMap$com$google$firebase$perf$v1$ApplicationProcessState[dVar.ordinal()];
        if (i10 != 1) {
            jB = i10 != 2 ? -1L : this.configResolver.C();
        } else {
            jB = this.configResolver.B();
        }
        if (l.e(jB)) {
            return -1L;
        }
        return jB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c lambda$new$0() {
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l lambda$new$1() {
        return new l();
    }

    private boolean startCollectingCpuMetrics(long j6, Timer timer) {
        if (j6 == -1) {
            logger.a("Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics.");
            return false;
        }
        this.cpuGaugeCollector.get().k(j6, timer);
        return true;
    }

    private boolean startCollectingMemoryMetrics(long j6, Timer timer) {
        if (j6 == -1) {
            logger.a("Invalid Memory Metrics collection frequency. Did not collect Memory Metrics.");
            return false;
        }
        this.memoryGaugeCollector.get().j(j6, timer);
        return true;
    }

    public void initializeGaugeMetadataManager(Context context) {
        this.gaugeMetadataManager = new i(context);
    }

    public boolean logGaugeMetadata(String str, com.google.firebase.perf.v1.d dVar) {
        if (this.gaugeMetadataManager == null) {
            return false;
        }
        this.transportManager.A(com.google.firebase.perf.v1.g.u().k(str).j(getGaugeMetadata()).build(), dVar);
        return true;
    }

    public void stopCollectingGauges() {
        final String str = this.sessionId;
        if (str == null) {
            return;
        }
        final com.google.firebase.perf.v1.d dVar = this.applicationProcessState;
        this.cpuGaugeCollector.get().l();
        this.memoryGaugeCollector.get().k();
        ScheduledFuture scheduledFuture = this.gaugeManagerDataCollectionJob;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.gaugeManagerExecutor.get().schedule(new Runnable() { // from class: com.google.firebase.perf.session.gauges.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f1619a.lambda$stopCollectingGauges$3(str, dVar);
            }
        }, 20L, TimeUnit.MILLISECONDS);
        this.sessionId = null;
        this.applicationProcessState = com.google.firebase.perf.v1.d.APPLICATION_PROCESS_STATE_UNKNOWN;
    }

    private com.google.firebase.perf.v1.f getGaugeMetadata() {
        return com.google.firebase.perf.v1.f.m().d(this.gaugeMetadataManager.a()).h(this.gaugeMetadataManager.b()).j(this.gaugeMetadataManager.c()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: syncFlush, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$stopCollectingGauges$3(String str, com.google.firebase.perf.v1.d dVar) {
        com.google.firebase.perf.v1.g.b bVarU = com.google.firebase.perf.v1.g.u();
        while (!this.cpuGaugeCollector.get().cpuMetricReadings.isEmpty()) {
            bVarU.h(this.cpuGaugeCollector.get().cpuMetricReadings.poll());
        }
        while (!this.memoryGaugeCollector.get().memoryMetricReadings.isEmpty()) {
            bVarU.d(this.memoryGaugeCollector.get().memoryMetricReadings.poll());
        }
        bVarU.k(str);
        this.transportManager.A(bVarU.build(), dVar);
    }

    @VisibleForTesting
    GaugeManager(y<ScheduledExecutorService> yVar, com.google.firebase.perf.transport.k kVar, com.google.firebase.perf.config.a aVar, i iVar, y<c> yVar2, y<l> yVar3) {
        this.gaugeManagerDataCollectionJob = null;
        this.sessionId = null;
        this.applicationProcessState = com.google.firebase.perf.v1.d.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.gaugeManagerExecutor = yVar;
        this.transportManager = kVar;
        this.configResolver = aVar;
        this.gaugeMetadataManager = iVar;
        this.cpuGaugeCollector = yVar2;
        this.memoryGaugeCollector = yVar3;
    }

    private long startCollectingGauges(com.google.firebase.perf.v1.d dVar, Timer timer) {
        long cpuGaugeCollectionFrequencyMs = getCpuGaugeCollectionFrequencyMs(dVar);
        if (!startCollectingCpuMetrics(cpuGaugeCollectionFrequencyMs, timer)) {
            cpuGaugeCollectionFrequencyMs = -1;
        }
        long memoryGaugeCollectionFrequencyMs = getMemoryGaugeCollectionFrequencyMs(dVar);
        if (startCollectingMemoryMetrics(memoryGaugeCollectionFrequencyMs, timer)) {
            return cpuGaugeCollectionFrequencyMs == -1 ? memoryGaugeCollectionFrequencyMs : Math.min(cpuGaugeCollectionFrequencyMs, memoryGaugeCollectionFrequencyMs);
        }
        return cpuGaugeCollectionFrequencyMs;
    }
}

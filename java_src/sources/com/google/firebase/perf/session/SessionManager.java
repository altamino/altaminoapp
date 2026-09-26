package com.google.firebase.perf.session;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.application.a;
import com.google.firebase.perf.application.b;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.v1.d;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes11.dex */
@Keep
public class SessionManager extends b {

    @SuppressLint({"StaticFieldLeak"})
    private static final SessionManager instance = new SessionManager();
    private final a appStateMonitor;
    private final Set<WeakReference<a5.a>> clients;
    private final GaugeManager gaugeManager;
    private PerfSession perfSession;
    private Future syncInitFuture;

    private SessionManager() {
        this(GaugeManager.getInstance(), PerfSession.g(UUID.randomUUID().toString()), a.b());
    }

    public static SessionManager getInstance() {
        return instance;
    }

    @VisibleForTesting
    public Future getSyncInitFuture() {
        return this.syncInitFuture;
    }

    public final PerfSession perfSession() {
        return this.perfSession;
    }

    @VisibleForTesting
    public void setPerfSession(PerfSession perfSession) {
        this.perfSession = perfSession;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setApplicationContext$0(Context context, PerfSession perfSession) {
        this.gaugeManager.initializeGaugeMetadataManager(context);
        if (perfSession.i()) {
            this.gaugeManager.logGaugeMetadata(perfSession.m(), d.FOREGROUND);
        }
    }

    private void logGaugeMetadataIfCollectionEnabled(d dVar) {
        if (this.perfSession.i()) {
            this.gaugeManager.logGaugeMetadata(this.perfSession.m(), dVar);
        }
    }

    private void startOrStopCollectingGauges(d dVar) {
        if (this.perfSession.i()) {
            this.gaugeManager.startCollectingGauges(this.perfSession, dVar);
        } else {
            this.gaugeManager.stopCollectingGauges();
        }
    }

    public void initializeGaugeCollection() {
        d dVar = d.FOREGROUND;
        logGaugeMetadataIfCollectionEnabled(dVar);
        startOrStopCollectingGauges(dVar);
    }

    public void registerForSessionUpdates(WeakReference<a5.a> weakReference) {
        synchronized (this.clients) {
            this.clients.add(weakReference);
        }
    }

    public void setApplicationContext(final Context context) {
        final PerfSession perfSession = this.perfSession;
        this.syncInitFuture = Executors.newSingleThreadExecutor().submit(new Runnable() { // from class: a5.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f38a.lambda$setApplicationContext$0(context, perfSession);
            }
        });
    }

    public void stopGaugeCollectionIfSessionRunningTooLong() {
        if (this.perfSession.k()) {
            this.gaugeManager.stopCollectingGauges();
        }
    }

    public void unregisterForSessionUpdates(WeakReference<a5.a> weakReference) {
        synchronized (this.clients) {
            this.clients.remove(weakReference);
        }
    }

    @Override // com.google.firebase.perf.application.b, com.google.firebase.perf.application.a.b
    public void onUpdateAppState(d dVar) {
        super.onUpdateAppState(dVar);
        if (this.appStateMonitor.f()) {
            return;
        }
        if (dVar == d.FOREGROUND) {
            updatePerfSession(PerfSession.g(UUID.randomUUID().toString()));
        } else if (this.perfSession.k()) {
            updatePerfSession(PerfSession.g(UUID.randomUUID().toString()));
        } else {
            startOrStopCollectingGauges(dVar);
        }
    }

    public void updatePerfSession(PerfSession perfSession) {
        if (perfSession.m() == this.perfSession.m()) {
            return;
        }
        this.perfSession = perfSession;
        synchronized (this.clients) {
            try {
                Iterator<WeakReference<a5.a>> it = this.clients.iterator();
                while (it.hasNext()) {
                    a5.a aVar = it.next().get();
                    if (aVar != null) {
                        aVar.a(perfSession);
                    } else {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        logGaugeMetadataIfCollectionEnabled(this.appStateMonitor.a());
        startOrStopCollectingGauges(this.appStateMonitor.a());
    }

    @VisibleForTesting
    public SessionManager(GaugeManager gaugeManager, PerfSession perfSession, a aVar) {
        this.clients = new HashSet();
        this.gaugeManager = gaugeManager;
        this.perfSession = perfSession;
        this.appStateMonitor = aVar;
        registerForAppState();
    }
}

package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import androidx.annotation.GuardedBy;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes11.dex */
public class q {
    private final f activatedCacheClient;
    private final m configFetchHandler;

    @GuardedBy
    private final t configRealtimeHttpClient;
    private final Context context;
    private final com.google.firebase.f firebaseApp;
    private final com.google.firebase.installations.h firebaseInstallations;

    @GuardedBy
    private final Set<c5.c> listeners;
    private final p metadataClient;
    private final String namespace;
    private final ScheduledExecutorService scheduledExecutorService;

    public q(com.google.firebase.f fVar, com.google.firebase.installations.h hVar, m mVar, f fVar2, Context context, String str, p pVar, ScheduledExecutorService scheduledExecutorService) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.listeners = linkedHashSet;
        this.configRealtimeHttpClient = new t(fVar, hVar, mVar, fVar2, context, str, linkedHashSet, pVar, scheduledExecutorService);
        this.firebaseApp = fVar;
        this.configFetchHandler = mVar;
        this.firebaseInstallations = hVar;
        this.activatedCacheClient = fVar2;
        this.context = context;
        this.namespace = str;
        this.metadataClient = pVar;
        this.scheduledExecutorService = scheduledExecutorService;
    }

    private synchronized void a() {
        if (!this.listeners.isEmpty()) {
            this.configRealtimeHttpClient.C();
        }
    }

    public synchronized void b(boolean z6) {
        this.configRealtimeHttpClient.z(z6);
        if (!z6) {
            a();
        }
    }
}

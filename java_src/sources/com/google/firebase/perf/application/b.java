package com.google.firebase.perf.application;

import androidx.annotation.NonNull;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes10.dex */
public abstract class b implements a.b {
    private final WeakReference<a.b> appStateCallback;
    private final a appStateMonitor;
    private com.google.firebase.perf.v1.d currentAppState;
    private boolean isRegisteredForAppState;

    protected b() {
        this(a.b());
    }

    public com.google.firebase.perf.v1.d getAppState() {
        return this.currentAppState;
    }

    @VisibleForTesting
    public WeakReference<a.b> getAppStateCallback() {
        return this.appStateCallback;
    }

    protected b(@NonNull a aVar) {
        this.isRegisteredForAppState = false;
        this.currentAppState = com.google.firebase.perf.v1.d.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.appStateMonitor = aVar;
        this.appStateCallback = new WeakReference<>(this);
    }

    protected void incrementTsnsCount(int i10) {
        this.appStateMonitor.e(i10);
    }

    @Override // com.google.firebase.perf.application.a.b
    public void onUpdateAppState(com.google.firebase.perf.v1.d dVar) {
        com.google.firebase.perf.v1.d dVar2 = this.currentAppState;
        com.google.firebase.perf.v1.d dVar3 = com.google.firebase.perf.v1.d.APPLICATION_PROCESS_STATE_UNKNOWN;
        if (dVar2 == dVar3) {
            this.currentAppState = dVar;
        } else {
            if (dVar2 == dVar || dVar == dVar3) {
                return;
            }
            this.currentAppState = com.google.firebase.perf.v1.d.FOREGROUND_BACKGROUND;
        }
    }

    protected void registerForAppState() {
        if (this.isRegisteredForAppState) {
            return;
        }
        this.currentAppState = this.appStateMonitor.a();
        this.appStateMonitor.k(this.appStateCallback);
        this.isRegisteredForAppState = true;
    }

    protected void unregisterForAppState() {
        if (this.isRegisteredForAppState) {
            this.appStateMonitor.p(this.appStateCallback);
            this.isRegisteredForAppState = false;
        }
    }
}

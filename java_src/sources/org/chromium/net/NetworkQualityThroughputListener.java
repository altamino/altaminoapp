package org.chromium.net;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes11.dex */
public abstract class NetworkQualityThroughputListener {
    private final Executor mExecutor;

    public Executor getExecutor() {
        return this.mExecutor;
    }

    public abstract void onThroughputObservation(int i10, long j6, int i11);

    public NetworkQualityThroughputListener(Executor executor) {
        if (executor != null) {
            this.mExecutor = executor;
            return;
        }
        throw new IllegalStateException("Executor must not be null");
    }
}

package org.chromium.net;

import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ICronetEngineBuilder {
    public abstract ICronetEngineBuilder addPublicKeyPins(String str, Set<byte[]> set, boolean z6, Date date);

    public abstract ICronetEngineBuilder addQuicHint(String str, int i10, int i11);

    public abstract ExperimentalCronetEngine build();

    public ICronetEngineBuilder enableBrotli(boolean z6) {
        return this;
    }

    public abstract ICronetEngineBuilder enableHttp2(boolean z6);

    public abstract ICronetEngineBuilder enableHttpCache(int i10, long j6);

    public ICronetEngineBuilder enableNetworkQualityEstimator(boolean z6) {
        return this;
    }

    public abstract ICronetEngineBuilder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z6);

    public abstract ICronetEngineBuilder enableQuic(boolean z6);

    public abstract ICronetEngineBuilder enableSdch(boolean z6);

    public abstract String getDefaultUserAgent();

    public abstract ICronetEngineBuilder setExperimentalOptions(String str);

    public abstract ICronetEngineBuilder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader);

    public abstract ICronetEngineBuilder setStoragePath(String str);

    public ICronetEngineBuilder setThreadPriority(int i10) {
        return this;
    }

    public abstract ICronetEngineBuilder setUserAgent(String str);
}

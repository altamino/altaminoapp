package org.chromium.net;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ExperimentalCronetEngine extends CronetEngine {
    public static final int CONNECTION_METRIC_UNKNOWN = -1;
    public static final int EFFECTIVE_CONNECTION_TYPE_2G = 3;
    public static final int EFFECTIVE_CONNECTION_TYPE_3G = 4;
    public static final int EFFECTIVE_CONNECTION_TYPE_4G = 5;
    public static final int EFFECTIVE_CONNECTION_TYPE_OFFLINE = 1;
    public static final int EFFECTIVE_CONNECTION_TYPE_SLOW_2G = 2;
    public static final int EFFECTIVE_CONNECTION_TYPE_UNKNOWN = 0;

    public static class Builder extends CronetEngine.Builder {
        public Builder(Context context) {
            super(context);
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public /* bridge */ /* synthetic */ CronetEngine.Builder addPublicKeyPins(String str, Set set, boolean z6, Date date) {
            return addPublicKeyPins(str, (Set<byte[]>) set, z6, date);
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder enableSdch(boolean z6) {
            return this;
        }

        @VisibleForTesting
        public ICronetEngineBuilder getBuilderDelegate() {
            return this.mBuilderDelegate;
        }

        public Builder(ICronetEngineBuilder iCronetEngineBuilder) {
            super(iCronetEngineBuilder);
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder addPublicKeyPins(String str, Set<byte[]> set, boolean z6, Date date) {
            super.addPublicKeyPins(str, set, z6, date);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder addQuicHint(String str, int i10, int i11) {
            super.addQuicHint(str, i10, i11);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public ExperimentalCronetEngine build() {
            return this.mBuilderDelegate.build();
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder enableHttp2(boolean z6) {
            super.enableHttp2(z6);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder enableHttpCache(int i10, long j6) {
            super.enableHttpCache(i10, j6);
            return this;
        }

        public Builder enableNetworkQualityEstimator(boolean z6) {
            this.mBuilderDelegate.enableNetworkQualityEstimator(z6);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z6) {
            super.enablePublicKeyPinningBypassForLocalTrustAnchors(z6);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder enableQuic(boolean z6) {
            super.enableQuic(z6);
            return this;
        }

        public Builder setExperimentalOptions(String str) {
            this.mBuilderDelegate.setExperimentalOptions(str);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader) {
            super.setLibraryLoader(libraryLoader);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder setStoragePath(String str) {
            super.setStoragePath(str);
            return this;
        }

        public Builder setThreadPriority(int i10) {
            this.mBuilderDelegate.setThreadPriority(i10);
            return this;
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public Builder setUserAgent(String str) {
            super.setUserAgent(str);
            return this;
        }
    }

    public void addRequestFinishedListener(RequestFinishedInfo.Listener listener) {
    }

    public void addRttListener(NetworkQualityRttListener networkQualityRttListener) {
    }

    public void addThroughputListener(NetworkQualityThroughputListener networkQualityThroughputListener) {
    }

    public void configureNetworkQualityEstimatorForTesting(boolean z6, boolean z10, boolean z11) {
    }

    public int getDownstreamThroughputKbps() {
        return -1;
    }

    public int getEffectiveConnectionType() {
        return 0;
    }

    public int getHttpRttMs() {
        return -1;
    }

    public int getTransportRttMs() {
        return -1;
    }

    public abstract ExperimentalBidirectionalStream.Builder newBidirectionalStreamBuilder(String str, BidirectionalStream.Callback callback, Executor executor);

    @Override // org.chromium.net.CronetEngine
    public abstract ExperimentalUrlRequest.Builder newUrlRequestBuilder(String str, UrlRequest.Callback callback, Executor executor);

    public void removeRequestFinishedListener(RequestFinishedInfo.Listener listener) {
    }

    public void removeRttListener(NetworkQualityRttListener networkQualityRttListener) {
    }

    public void removeThroughputListener(NetworkQualityThroughputListener networkQualityThroughputListener) {
    }

    public void startNetLogToDisk(String str, boolean z6, int i10) {
    }

    public URLConnection openConnection(URL url, Proxy proxy) throws IOException {
        return (URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection(proxy));
    }
}

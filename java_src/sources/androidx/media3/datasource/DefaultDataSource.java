package androidx.media3.datasource;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultDataSource implements DataSource {
    private static final String SCHEME_ANDROID_RESOURCE = "android.resource";
    private static final String SCHEME_ASSET = "asset";
    private static final String SCHEME_CONTENT = "content";
    private static final String SCHEME_DATA = "data";
    private static final String SCHEME_RAW = "rawresource";
    private static final String SCHEME_RTMP = "rtmp";
    private static final String SCHEME_UDP = "udp";
    private static final String TAG = "DefaultDataSource";

    @Nullable
    private DataSource assetDataSource;
    private final DataSource baseDataSource;

    @Nullable
    private DataSource contentDataSource;
    private final Context context;

    @Nullable
    private DataSource dataSchemeDataSource;

    @Nullable
    private DataSource dataSource;

    @Nullable
    private DataSource fileDataSource;

    @Nullable
    private DataSource rawResourceDataSource;

    @Nullable
    private DataSource rtmpDataSource;
    private final List<TransferListener> transferListeners;

    @Nullable
    private DataSource udpDataSource;

    public static final class Factory implements DataSource.Factory {
        private final DataSource.Factory baseDataSourceFactory;
        private final Context context;

        @Nullable
        private TransferListener transferListener;

        public Factory(Context context) {
            this(context, new DefaultHttpDataSource.Factory());
        }

        public Factory(Context context, DataSource.Factory factory) {
            this.context = context.getApplicationContext();
            this.baseDataSourceFactory = factory;
        }

        @Override // androidx.media3.datasource.DataSource.Factory
        @UnstableApi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DefaultDataSource createDataSource() {
            DefaultDataSource defaultDataSource = new DefaultDataSource(this.context, this.baseDataSourceFactory.createDataSource());
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultDataSource.c(transferListener);
            }
            return defaultDataSource;
        }
    }

    @UnstableApi
    public DefaultDataSource(Context context, boolean z6) {
        this(context, null, 8000, 8000, z6);
    }

    private void d(DataSource dataSource) {
        for (int i10 = 0; i10 < this.transferListeners.size(); i10++) {
            dataSource.c(this.transferListeners.get(i10));
        }
    }

    @UnstableApi
    public DefaultDataSource(Context context, @Nullable String str, boolean z6) {
        this(context, str, 8000, 8000, z6);
    }

    private DataSource e() {
        if (this.assetDataSource == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.context);
            this.assetDataSource = assetDataSource;
            d(assetDataSource);
        }
        return this.assetDataSource;
    }

    private DataSource f() {
        if (this.contentDataSource == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.context);
            this.contentDataSource = contentDataSource;
            d(contentDataSource);
        }
        return this.contentDataSource;
    }

    private DataSource g() {
        if (this.dataSchemeDataSource == null) {
            DataSchemeDataSource dataSchemeDataSource = new DataSchemeDataSource();
            this.dataSchemeDataSource = dataSchemeDataSource;
            d(dataSchemeDataSource);
        }
        return this.dataSchemeDataSource;
    }

    private DataSource h() {
        if (this.fileDataSource == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.fileDataSource = fileDataSource;
            d(fileDataSource);
        }
        return this.fileDataSource;
    }

    private DataSource i() {
        if (this.rawResourceDataSource == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.context);
            this.rawResourceDataSource = rawResourceDataSource;
            d(rawResourceDataSource);
        }
        return this.rawResourceDataSource;
    }

    private DataSource j() {
        if (this.rtmpDataSource == null) {
            try {
                DataSource dataSource = (DataSource) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.rtmpDataSource = dataSource;
                d(dataSource);
            } catch (ClassNotFoundException unused) {
                Log.i(TAG, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating RTMP extension", e);
            }
            if (this.rtmpDataSource == null) {
                this.rtmpDataSource = this.baseDataSource;
            }
        }
        return this.rtmpDataSource;
    }

    private DataSource k() {
        if (this.udpDataSource == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.udpDataSource = udpDataSource;
            d(udpDataSource);
        }
        return this.udpDataSource;
    }

    private void l(@Nullable DataSource dataSource, TransferListener transferListener) {
        if (dataSource != null) {
            dataSource.c(transferListener);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public long b(DataSpec dataSpec) throws IOException {
        Assertions.g(this.dataSource == null);
        String scheme = dataSpec.uri.getScheme();
        if (Util.E0(dataSpec.uri)) {
            String path = dataSpec.uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.dataSource = h();
            } else {
                this.dataSource = e();
            }
        } else if (SCHEME_ASSET.equals(scheme)) {
            this.dataSource = e();
        } else if (SCHEME_CONTENT.equals(scheme)) {
            this.dataSource = f();
        } else if (SCHEME_RTMP.equals(scheme)) {
            this.dataSource = j();
        } else if (SCHEME_UDP.equals(scheme)) {
            this.dataSource = k();
        } else if ("data".equals(scheme)) {
            this.dataSource = g();
        } else if ("rawresource".equals(scheme) || SCHEME_ANDROID_RESOURCE.equals(scheme)) {
            this.dataSource = i();
        } else {
            this.dataSource = this.baseDataSource;
        }
        return this.dataSource.b(dataSpec);
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public void close() throws IOException {
        DataSource dataSource = this.dataSource;
        if (dataSource != null) {
            try {
                dataSource.close();
            } finally {
                this.dataSource = null;
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public Map<String, List<String>> getResponseHeaders() {
        DataSource dataSource = this.dataSource;
        return dataSource == null ? Collections.emptyMap() : dataSource.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    @UnstableApi
    public Uri getUri() {
        DataSource dataSource = this.dataSource;
        if (dataSource == null) {
            return null;
        }
        return dataSource.getUri();
    }

    @Override // androidx.media3.common.DataReader
    @UnstableApi
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return ((DataSource) Assertions.e(this.dataSource)).read(bArr, i10, i11);
    }

    @UnstableApi
    public DefaultDataSource(Context context, @Nullable String str, int i10, int i11, boolean z6) {
        this(context, new DefaultHttpDataSource.Factory().e(str).c(i10).d(i11).b(z6).createDataSource());
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public void c(TransferListener transferListener) {
        Assertions.e(transferListener);
        this.baseDataSource.c(transferListener);
        this.transferListeners.add(transferListener);
        l(this.fileDataSource, transferListener);
        l(this.assetDataSource, transferListener);
        l(this.contentDataSource, transferListener);
        l(this.rtmpDataSource, transferListener);
        l(this.udpDataSource, transferListener);
        l(this.dataSchemeDataSource, transferListener);
        l(this.rawResourceDataSource, transferListener);
    }

    @UnstableApi
    public DefaultDataSource(Context context, DataSource dataSource) {
        this.context = context.getApplicationContext();
        this.baseDataSource = (DataSource) Assertions.e(dataSource);
        this.transferListeners = new ArrayList();
    }
}

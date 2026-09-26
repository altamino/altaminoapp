package androidx.media3.exoplayer.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.StatsDataSource;
import com.google.common.collect.b0;
import com.narvii.util.http.ApiRequest;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class HttpMediaDrmCallback implements MediaDrmCallback {
    private static final int MAX_MANUAL_REDIRECTS = 5;
    private final DataSource.Factory dataSourceFactory;

    @Nullable
    private final String defaultLicenseUrl;
    private final boolean forceDefaultLicenseUrl;
    private final Map<String, String> keyRequestProperties;

    public HttpMediaDrmCallback(@Nullable String str, DataSource.Factory factory) {
        this(str, false, factory);
    }

    public HttpMediaDrmCallback(@Nullable String str, boolean z6, DataSource.Factory factory) {
        Assertions.a((z6 && TextUtils.isEmpty(str)) ? false : true);
        this.dataSourceFactory = factory;
        this.defaultLicenseUrl = str;
        this.forceDefaultLicenseUrl = z6;
        this.keyRequestProperties = new HashMap();
    }

    private static byte[] c(DataSource.Factory factory, String str, @Nullable byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        StatsDataSource statsDataSource = new StatsDataSource(factory.createDataSource());
        DataSpec dataSpecA = new DataSpec.Builder().j(str).e(map).d(2).c(bArr).b(1).a();
        int i10 = 0;
        DataSpec dataSpecA2 = dataSpecA;
        while (true) {
            try {
                DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(statsDataSource, dataSpecA2);
                try {
                    byte[] bArrJ1 = Util.j1(dataSourceInputStream);
                    Util.n(dataSourceInputStream);
                    return bArrJ1;
                } catch (HttpDataSource.InvalidResponseCodeException e) {
                    try {
                        String strD = d(e, i10);
                        if (strD == null) {
                            throw e;
                        }
                        i10++;
                        dataSpecA2 = dataSpecA2.a().j(strD).a();
                        Util.n(dataSourceInputStream);
                    } catch (Throwable th) {
                        Util.n(dataSourceInputStream);
                        throw th;
                    }
                }
            } catch (Exception e2) {
                throw new MediaDrmCallbackException(dataSpecA, (Uri) Assertions.e(statsDataSource.e()), statsDataSource.getResponseHeaders(), statsDataSource.d(), e2);
            }
        }
    }

    @Nullable
    private static String d(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i10) {
        Map<String, List<String>> map;
        List<String> list;
        int i11 = invalidResponseCodeException.responseCode;
        if ((i11 != 307 && i11 != 308) || i10 >= 5 || (map = invalidResponseCodeException.headerFields) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] b(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws MediaDrmCallbackException {
        return c(this.dataSourceFactory, provisionRequest.b() + "&signedRequest=" + Util.E(provisionRequest.a()), null, Collections.emptyMap());
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] a(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) throws MediaDrmCallbackException {
        String str;
        String strB = keyRequest.b();
        if (this.forceDefaultLicenseUrl || TextUtils.isEmpty(strB)) {
            strB = this.defaultLicenseUrl;
        }
        if (!TextUtils.isEmpty(strB)) {
            HashMap map = new HashMap();
            UUID uuid2 = C.PLAYREADY_UUID;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else if (C.CLEARKEY_UUID.equals(uuid)) {
                str = "application/json";
            } else {
                str = ApiRequest.CONTENT_TYPE_BINARY;
            }
            map.put(MIME.CONTENT_TYPE, str);
            if (uuid2.equals(uuid)) {
                map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
            }
            synchronized (this.keyRequestProperties) {
                map.putAll(this.keyRequestProperties);
            }
            return c(this.dataSourceFactory, strB, keyRequest.a(), map);
        }
        DataSpec.Builder builder = new DataSpec.Builder();
        Uri uri = Uri.EMPTY;
        throw new MediaDrmCallbackException(builder.i(uri).a(), uri, b0.m(), 0L, new IllegalStateException("No license URL"));
    }

    public void e(String str, String str2) {
        Assertions.e(str);
        Assertions.e(str2);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.put(str, str2);
        }
    }
}

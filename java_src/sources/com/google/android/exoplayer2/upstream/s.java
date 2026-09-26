package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class s implements k {
    private static final String SCHEME_ANDROID_RESOURCE = "android.resource";
    private static final String SCHEME_ASSET = "asset";
    private static final String SCHEME_CONTENT = "content";
    private static final String SCHEME_DATA = "data";
    private static final String SCHEME_RAW = "rawresource";
    private static final String SCHEME_RTMP = "rtmp";
    private static final String SCHEME_UDP = "udp";
    private static final String TAG = "DefaultDataSource";

    @Nullable
    private k assetDataSource;
    private final k baseDataSource;

    @Nullable
    private k contentDataSource;
    private final Context context;

    @Nullable
    private k dataSchemeDataSource;

    @Nullable
    private k dataSource;

    @Nullable
    private k fileDataSource;

    @Nullable
    private k rawResourceDataSource;

    @Nullable
    private k rtmpDataSource;
    private final List<m0> transferListeners;

    @Nullable
    private k udpDataSource;

    public static final class a implements k.a {
        private final k.a baseDataSourceFactory;
        private final Context context;

        @Nullable
        private m0 transferListener;

        public a(Context context) {
            this(context, new t.b());
        }

        public a(Context context, k.a aVar) {
            this.context = context.getApplicationContext();
            this.baseDataSourceFactory = aVar;
        }

        @Override // com.google.android.exoplayer2.upstream.k.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public s createDataSource() {
            s sVar = new s(this.context, this.baseDataSourceFactory.createDataSource());
            m0 m0Var = this.transferListener;
            if (m0Var != null) {
                sVar.b(m0Var);
            }
            return sVar;
        }
    }

    public s(Context context, boolean z6) {
        this(context, null, 8000, 8000, z6);
    }

    private void d(k kVar) {
        for (int i10 = 0; i10 < this.transferListeners.size(); i10++) {
            kVar.b(this.transferListeners.get(i10));
        }
    }

    public s(Context context, @Nullable String str, boolean z6) {
        this(context, str, 8000, 8000, z6);
    }

    private k e() {
        if (this.assetDataSource == null) {
            c cVar = new c(this.context);
            this.assetDataSource = cVar;
            d(cVar);
        }
        return this.assetDataSource;
    }

    private k f() {
        if (this.contentDataSource == null) {
            g gVar = new g(this.context);
            this.contentDataSource = gVar;
            d(gVar);
        }
        return this.contentDataSource;
    }

    private k g() {
        if (this.dataSchemeDataSource == null) {
            i iVar = new i();
            this.dataSchemeDataSource = iVar;
            d(iVar);
        }
        return this.dataSchemeDataSource;
    }

    private k h() {
        if (this.fileDataSource == null) {
            x xVar = new x();
            this.fileDataSource = xVar;
            d(xVar);
        }
        return this.fileDataSource;
    }

    private k i() {
        if (this.rawResourceDataSource == null) {
            h0 h0Var = new h0(this.context);
            this.rawResourceDataSource = h0Var;
            d(h0Var);
        }
        return this.rawResourceDataSource;
    }

    private k j() {
        if (this.rtmpDataSource == null) {
            try {
                k kVar = (k) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.rtmpDataSource = kVar;
                d(kVar);
            } catch (ClassNotFoundException unused) {
                com.google.android.exoplayer2.util.t.i(TAG, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating RTMP extension", e);
            }
            if (this.rtmpDataSource == null) {
                this.rtmpDataSource = this.baseDataSource;
            }
        }
        return this.rtmpDataSource;
    }

    private k k() {
        if (this.udpDataSource == null) {
            n0 n0Var = new n0();
            this.udpDataSource = n0Var;
            d(n0Var);
        }
        return this.udpDataSource;
    }

    private void l(@Nullable k kVar, m0 m0Var) {
        if (kVar != null) {
            kVar.b(m0Var);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws IOException {
        com.google.android.exoplayer2.util.a.g(this.dataSource == null);
        String scheme = oVar.uri.getScheme();
        if (o0.q0(oVar.uri)) {
            String path = oVar.uri.getPath();
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
        return this.dataSource.c(oVar);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws IOException {
        k kVar = this.dataSource;
        if (kVar != null) {
            try {
                kVar.close();
            } finally {
                this.dataSource = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map<String, List<String>> getResponseHeaders() {
        k kVar = this.dataSource;
        return kVar == null ? Collections.emptyMap() : kVar.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        k kVar = this.dataSource;
        if (kVar == null) {
            return null;
        }
        return kVar.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return ((k) com.google.android.exoplayer2.util.a.e(this.dataSource)).read(bArr, i10, i11);
    }

    public s(Context context, @Nullable String str, int i10, int i11, boolean z6) {
        this(context, new t.b().e(str).c(i10).d(i11).b(z6).createDataSource());
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void b(m0 m0Var) {
        com.google.android.exoplayer2.util.a.e(m0Var);
        this.baseDataSource.b(m0Var);
        this.transferListeners.add(m0Var);
        l(this.fileDataSource, m0Var);
        l(this.assetDataSource, m0Var);
        l(this.contentDataSource, m0Var);
        l(this.rtmpDataSource, m0Var);
        l(this.udpDataSource, m0Var);
        l(this.dataSchemeDataSource, m0Var);
        l(this.rawResourceDataSource, m0Var);
    }

    public s(Context context, k kVar) {
        this.context = context.getApplicationContext();
        this.baseDataSource = (k) com.google.android.exoplayer2.util.a.e(kVar);
        this.transferListeners = new ArrayList();
    }
}

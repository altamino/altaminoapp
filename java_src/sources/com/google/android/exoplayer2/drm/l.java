package com.google.android.exoplayer2.drm;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.i2;
import com.google.common.collect.l1;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class l implements a0 {

    @GuardedBy
    private i2.f drmConfiguration;

    @Nullable
    private com.google.android.exoplayer2.upstream.k.a drmHttpDataSourceFactory;
    private final Object lock = new Object();

    @GuardedBy
    private x manager;

    @Nullable
    private String userAgent;

    @RequiresApi
    private x b(i2.f fVar) {
        com.google.android.exoplayer2.upstream.k.a aVarE = this.drmHttpDataSourceFactory;
        if (aVarE == null) {
            aVarE = new com.google.android.exoplayer2.upstream.t.b().e(this.userAgent);
        }
        Uri uri = fVar.licenseUri;
        k0 k0Var = new k0(uri == null ? null : uri.toString(), fVar.forceDefaultLicenseUri, aVarE);
        l1<Map.Entry<String, String>> it = fVar.licenseRequestHeaders.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            k0Var.e(next.getKey(), next.getValue());
        }
        h hVarA = new h.b().e(fVar.scheme, j0.DEFAULT_PROVIDER).b(fVar.multiSession).c(fVar.playClearContentWithoutKey).d(com.google.common.primitives.e.l(fVar.forcedSessionTrackTypes)).a(k0Var);
        hVarA.E(0, fVar.c());
        return hVarA;
    }

    @Override // com.google.android.exoplayer2.drm.a0
    public x a(i2 i2Var) {
        x xVar;
        com.google.android.exoplayer2.util.a.e(i2Var.localConfiguration);
        i2.f fVar = i2Var.localConfiguration.drmConfiguration;
        if (fVar == null || com.google.android.exoplayer2.util.o0.SDK_INT < 18) {
            return x.DRM_UNSUPPORTED;
        }
        synchronized (this.lock) {
            try {
                if (!com.google.android.exoplayer2.util.o0.c(fVar, this.drmConfiguration)) {
                    this.drmConfiguration = fVar;
                    this.manager = b(fVar);
                }
                xVar = (x) com.google.android.exoplayer2.util.a.e(this.manager);
            } catch (Throwable th) {
                throw th;
            }
        }
        return xVar;
    }
}

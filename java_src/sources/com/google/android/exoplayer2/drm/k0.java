package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.narvii.util.http.ApiRequest;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: loaded from: classes10.dex */
public final class k0 implements m0 {
    private static final int MAX_MANUAL_REDIRECTS = 5;
    private final com.google.android.exoplayer2.upstream.k.a dataSourceFactory;

    @Nullable
    private final String defaultLicenseUrl;
    private final boolean forceDefaultLicenseUrl;
    private final Map<String, String> keyRequestProperties;

    public k0(@Nullable String str, com.google.android.exoplayer2.upstream.k.a aVar) {
        this(str, false, aVar);
    }

    public k0(@Nullable String str, boolean z6, com.google.android.exoplayer2.upstream.k.a aVar) {
        com.google.android.exoplayer2.util.a.a((z6 && TextUtils.isEmpty(str)) ? false : true);
        this.dataSourceFactory = aVar;
        this.defaultLicenseUrl = str;
        this.forceDefaultLicenseUrl = z6;
        this.keyRequestProperties = new HashMap();
    }

    private static byte[] c(com.google.android.exoplayer2.upstream.k.a aVar, String str, @Nullable byte[] bArr, Map<String, String> map) throws n0 {
        com.google.android.exoplayer2.upstream.l0 l0Var = new com.google.android.exoplayer2.upstream.l0(aVar.createDataSource());
        com.google.android.exoplayer2.upstream.o oVarA = new com.google.android.exoplayer2.upstream.o.b().i(str).e(map).d(2).c(bArr).b(1).a();
        int i10 = 0;
        com.google.android.exoplayer2.upstream.o oVarA2 = oVarA;
        while (true) {
            try {
                com.google.android.exoplayer2.upstream.m mVar = new com.google.android.exoplayer2.upstream.m(l0Var, oVarA2);
                try {
                    try {
                        byte[] bArrL0 = com.google.android.exoplayer2.util.o0.L0(mVar);
                        com.google.android.exoplayer2.util.o0.m(mVar);
                        return bArrL0;
                    } catch (com.google.android.exoplayer2.upstream.b0 e) {
                        String strD = d(e, i10);
                        if (strD == null) {
                            throw e;
                        }
                        i10++;
                        oVarA2 = oVarA2.a().i(strD).a();
                        com.google.android.exoplayer2.util.o0.m(mVar);
                    }
                } catch (Throwable th) {
                    com.google.android.exoplayer2.util.o0.m(mVar);
                    throw th;
                }
            } catch (Exception e2) {
                throw new n0(oVarA, (Uri) com.google.android.exoplayer2.util.a.e(l0Var.e()), l0Var.getResponseHeaders(), l0Var.d(), e2);
            }
        }
    }

    @Nullable
    private static String d(com.google.android.exoplayer2.upstream.b0 b0Var, int i10) {
        Map<String, List<String>> map;
        List<String> list;
        int i11 = b0Var.responseCode;
        if ((i11 != 307 && i11 != 308) || i10 >= 5 || (map = b0Var.headerFields) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override // com.google.android.exoplayer2.drm.m0
    public byte[] b(UUID uuid, f0.e eVar) throws n0 {
        return c(this.dataSourceFactory, eVar.b() + "&signedRequest=" + com.google.android.exoplayer2.util.o0.A(eVar.a()), null, Collections.emptyMap());
    }

    @Override // com.google.android.exoplayer2.drm.m0
    public byte[] a(UUID uuid, f0.b bVar) throws n0 {
        String str;
        String strB = bVar.b();
        if (this.forceDefaultLicenseUrl || TextUtils.isEmpty(strB)) {
            strB = this.defaultLicenseUrl;
        }
        if (!TextUtils.isEmpty(strB)) {
            HashMap map = new HashMap();
            UUID uuid2 = com.google.android.exoplayer2.i.PLAYREADY_UUID;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else if (com.google.android.exoplayer2.i.CLEARKEY_UUID.equals(uuid)) {
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
            return c(this.dataSourceFactory, strB, bVar.a(), map);
        }
        com.google.android.exoplayer2.upstream.o.b bVar2 = new com.google.android.exoplayer2.upstream.o.b();
        Uri uri = Uri.EMPTY;
        throw new n0(bVar2.h(uri).a(), uri, com.google.common.collect.b0.m(), 0L, new IllegalStateException("No license URL"));
    }

    public void e(String str, String str2) {
        com.google.android.exoplayer2.util.a.e(str);
        com.google.android.exoplayer2.util.a.e(str2);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.put(str, str2);
        }
    }
}

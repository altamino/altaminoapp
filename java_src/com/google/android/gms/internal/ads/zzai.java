package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectTimeoutException;

/* loaded from: classes2.dex */
final class zzai extends zzaj {
    private final zzas zzbp;

    zzai(zzas zzasVar) {
        this.zzbp = zzasVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final zzar zza(zzr<?> zzrVar, Map<String, String> map) throws zza, IOException {
        try {
            HttpResponse httpResponseZzb = this.zzbp.zzb(zzrVar, map);
            int statusCode = httpResponseZzb.getStatusLine().getStatusCode();
            Header[] allHeaders = httpResponseZzb.getAllHeaders();
            ArrayList arrayList = new ArrayList(allHeaders.length);
            for (Header header : allHeaders) {
                arrayList.add(new zzl(header.getName(), header.getValue()));
            }
            if (httpResponseZzb.getEntity() == null) {
                return new zzar(statusCode, arrayList);
            }
            long contentLength = httpResponseZzb.getEntity().getContentLength();
            if (((int) contentLength) != contentLength) {
                StringBuilder sb = new StringBuilder(40);
                sb.append("Response too large: ");
                sb.append(contentLength);
                throw new IOException(sb.toString());
            }
            return new zzar(statusCode, arrayList, (int) httpResponseZzb.getEntity().getContentLength(), httpResponseZzb.getEntity().getContent());
        } catch (ConnectTimeoutException e) {
            throw new SocketTimeoutException(e.getMessage());
        }
    }
}

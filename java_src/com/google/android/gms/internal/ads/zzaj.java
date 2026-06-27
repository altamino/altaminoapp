package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

/* loaded from: classes2.dex */
public abstract class zzaj implements zzas {
    public abstract zzar zza(zzr<?> zzrVar, Map<String, String> map) throws zza, IOException;

    @Override // com.google.android.gms.internal.ads.zzas
    @Deprecated
    public final HttpResponse zzb(zzr<?> zzrVar, Map<String, String> map) throws zza, IOException {
        zzar zzarVarZza = zza(zzrVar, map);
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(new ProtocolVersion("HTTP", 1, 1), zzarVarZza.getStatusCode(), ""));
        ArrayList arrayList = new ArrayList();
        for (zzl zzlVar : zzarVarZza.zzq()) {
            arrayList.add(new BasicHeader(zzlVar.getName(), zzlVar.getValue()));
        }
        basicHttpResponse.setHeaders((Header[]) arrayList.toArray(new Header[arrayList.size()]));
        InputStream content = zzarVarZza.getContent();
        if (content != null) {
            BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
            basicHttpEntity.setContent(content);
            basicHttpEntity.setContentLength(zzarVarZza.getContentLength());
            basicHttpResponse.setEntity(basicHttpEntity);
        }
        return basicHttpResponse;
    }
}

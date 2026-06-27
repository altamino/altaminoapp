package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public final class zzat extends zzaj {
    private final zzav zzcj;
    private final SSLSocketFactory zzck;

    public zzat() {
        this(null);
    }

    private zzat(zzav zzavVar) {
        this(null, null);
    }

    private zzat(zzav zzavVar, SSLSocketFactory sSLSocketFactory) {
        this.zzcj = null;
        this.zzck = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d0 A[Catch: all -> 0x0125, TryCatch #1 {all -> 0x0125, blocks: (B:14:0x0068, B:15:0x0070, B:17:0x0076, B:18:0x0086, B:19:0x008a, B:20:0x008d, B:53:0x011f, B:54:0x0124, B:21:0x0091, B:22:0x009a, B:23:0x00a0, B:24:0x00a6, B:25:0x00ac, B:26:0x00b2, B:27:0x00bb, B:28:0x00c4, B:29:0x00c9, B:31:0x00d0, B:44:0x00ec, B:51:0x0117, B:52:0x011e), top: B:63:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0117 A[Catch: all -> 0x0125, TRY_ENTER, TryCatch #1 {all -> 0x0125, blocks: (B:14:0x0068, B:15:0x0070, B:17:0x0076, B:18:0x0086, B:19:0x008a, B:20:0x008d, B:53:0x011f, B:54:0x0124, B:21:0x0091, B:22:0x009a, B:23:0x00a0, B:24:0x00a6, B:25:0x00ac, B:26:0x00b2, B:27:0x00bb, B:28:0x00c4, B:29:0x00c9, B:31:0x00d0, B:44:0x00ec, B:51:0x0117, B:52:0x011e), top: B:63:0x0068 }] */
    @Override // com.google.android.gms.internal.ads.zzaj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzar zza(com.google.android.gms.internal.ads.zzr<?> r7, java.util.Map<java.lang.String, java.lang.String> r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzat.zza(com.google.android.gms.internal.ads.zzr, java.util.Map):com.google.android.gms.internal.ads.zzar");
    }

    private static List<zzl> zza(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new zzl(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream zza(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static void zza(HttpURLConnection httpURLConnection, zzr<?> zzrVar) throws zza, IOException {
        byte[] bArrZzg = zzrVar.zzg();
        if (bArrZzg != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", C.UTF8_NAME.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(C.UTF8_NAME) : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bArrZzg);
            dataOutputStream.close();
        }
    }
}

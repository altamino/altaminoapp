package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzjs implements zzkf {
    private static final Pattern zzapl = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzapm = new AtomicReference<>();
    private final zzke zzaoz;
    private boolean zzapd;
    private final boolean zzapn;
    private final int zzapo;
    private final int zzapp;
    private final String zzapq;
    private final zzkn<String> zzapr;
    private final HashMap<String, String> zzaps;
    private zzjq zzapt;
    private HttpURLConnection zzapu;
    private InputStream zzapv;
    private long zzapw;
    private long zzapx;
    private long zzapy;
    private long zzce;

    public zzjs(String str, zzkn<String> zzknVar, zzke zzkeVar, int i, int i2, boolean z) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.zzapq = str;
        this.zzapr = null;
        this.zzaoz = null;
        this.zzaps = new HashMap<>();
        this.zzapo = i;
        this.zzapp = i2;
        this.zzapn = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    @Override // com.google.android.gms.internal.ads.zzjp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzjq r21) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjs.zza(com.google.android.gms.internal.ads.zzjq):long");
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            if (this.zzapy != this.zzapw) {
                byte[] andSet = zzapm.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (this.zzapy != this.zzapw) {
                    int i3 = this.zzapv.read(andSet, 0, (int) Math.min(this.zzapw - this.zzapy, andSet.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (i3 == -1) {
                        throw new EOFException();
                    }
                    this.zzapy += i3;
                    if (this.zzaoz != null) {
                        this.zzaoz.zzab(i3);
                    }
                }
                zzapm.set(andSet);
            }
            if (this.zzapx != -1) {
                i2 = (int) Math.min(i2, this.zzapx - this.zzce);
            }
            if (i2 == 0) {
                return -1;
            }
            int i4 = this.zzapv.read(bArr, i, i2);
            if (i4 == -1) {
                if (this.zzapx != -1 && this.zzapx != this.zzce) {
                    throw new EOFException();
                }
                return -1;
            }
            this.zzce += i4;
            if (this.zzaoz != null) {
                this.zzaoz.zzab(i4);
            }
            return i4;
        } catch (IOException e) {
            throw new zzjx(e, this.zzapt);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0039 A[Catch: IOException | Exception -> 0x006b, all -> 0x008e, TryCatch #0 {IOException | Exception -> 0x006b, blocks: (B:14:0x0023, B:16:0x002b, B:21:0x0039, B:23:0x0049, B:25:0x0051), top: B:48:0x0023 }] */
    @Override // com.google.android.gms.internal.ads.zzjp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws com.google.android.gms.internal.ads.zzjx {
        /*
            r8 = this;
            r0 = 0
            java.io.InputStream r1 = r8.zzapv     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L7d
            java.net.HttpURLConnection r1 = r8.zzapu     // Catch: java.lang.Throwable -> L8e
            long r2 = r8.zzapx     // Catch: java.lang.Throwable -> L8e
            r4 = -1
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L12
            long r2 = r8.zzapx     // Catch: java.lang.Throwable -> L8e
            goto L17
        L12:
            long r2 = r8.zzapx     // Catch: java.lang.Throwable -> L8e
            long r6 = r8.zzce     // Catch: java.lang.Throwable -> L8e
            long r2 = r2 - r6
        L17:
            int r6 = com.google.android.gms.internal.ads.zzkq.SDK_INT     // Catch: java.lang.Throwable -> L8e
            r7 = 19
            if (r6 == r7) goto L23
            int r6 = com.google.android.gms.internal.ads.zzkq.SDK_INT     // Catch: java.lang.Throwable -> L8e
            r7 = 20
            if (r6 != r7) goto L6b
        L23:
            java.io.InputStream r1 = r1.getInputStream()     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L33
            int r2 = r1.read()     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            r3 = -1
            if (r2 != r3) goto L39
            goto L6b
        L33:
            r4 = 2048(0x800, double:1.0118E-320)
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L6b
        L39:
            java.lang.Class r2 = r1.getClass()     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            java.lang.String r3 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            if (r3 != 0) goto L51
            java.lang.String r3 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            if (r2 == 0) goto L6b
        L51:
            java.lang.Class r2 = r1.getClass()     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            java.lang.Class r2 = r2.getSuperclass()     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            java.lang.String r3 = "unexpectedEndOfInput"
            java.lang.Class[] r4 = new java.lang.Class[r0]     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r4)     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            r3 = 1
            r2.setAccessible(r3)     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            java.lang.Object[] r3 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
            r2.invoke(r1, r3)     // Catch: java.lang.Throwable -> L6b java.lang.Throwable -> L8e
        L6b:
            java.io.InputStream r1 = r8.zzapv     // Catch: java.io.IOException -> L74 java.lang.Throwable -> L8e
            r1.close()     // Catch: java.io.IOException -> L74 java.lang.Throwable -> L8e
            r1 = 0
            r8.zzapv = r1     // Catch: java.lang.Throwable -> L8e
            goto L7d
        L74:
            r1 = move-exception
            com.google.android.gms.internal.ads.zzjx r2 = new com.google.android.gms.internal.ads.zzjx     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zzjq r3 = r8.zzapt     // Catch: java.lang.Throwable -> L8e
            r2.<init>(r1, r3)     // Catch: java.lang.Throwable -> L8e
            throw r2     // Catch: java.lang.Throwable -> L8e
        L7d:
            boolean r1 = r8.zzapd
            if (r1 == 0) goto L8d
            r8.zzapd = r0
            com.google.android.gms.internal.ads.zzke r0 = r8.zzaoz
            if (r0 == 0) goto L8a
            r0.zzgd()
        L8a:
            r8.closeConnection()
        L8d:
            return
        L8e:
            r1 = move-exception
            boolean r2 = r8.zzapd
            if (r2 == 0) goto L9f
            r8.zzapd = r0
            com.google.android.gms.internal.ads.zzke r0 = r8.zzaoz
            if (r0 == 0) goto L9c
            r0.zzgd()
        L9c:
            r8.closeConnection()
        L9f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjs.close():void");
    }

    private final HttpURLConnection zza(URL url, long j, long j2, boolean z) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.zzapo);
        httpURLConnection.setReadTimeout(this.zzapp);
        httpURLConnection.setDoOutput(false);
        synchronized (this.zzaps) {
            for (Map.Entry<String, String> entry : this.zzaps.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        if (j != 0 || j2 != -1) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
            String string = sb.toString();
            if (j2 != -1) {
                String strValueOf = String.valueOf(string);
                long j3 = (j + j2) - 1;
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 20);
                sb2.append(strValueOf);
                sb2.append(j3);
                string = sb2.toString();
            }
            httpURLConnection.setRequestProperty("Range", string);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.zzapq);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        return httpURLConnection;
    }

    private static long zzc(HttpURLConnection httpURLConnection) throws NumberFormatException {
        long j;
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (TextUtils.isEmpty(headerField)) {
            j = -1;
        } else {
            try {
                j = Long.parseLong(headerField);
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(headerField).length() + 28);
                sb.append("Unexpected Content-Length [");
                sb.append(headerField);
                sb.append("]");
                Log.e("HttpDataSource", sb.toString());
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        if (TextUtils.isEmpty(headerField2)) {
            return j;
        }
        Matcher matcher = zzapl.matcher(headerField2);
        if (!matcher.find()) {
            return j;
        }
        try {
            long j2 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            if (j < 0) {
                return j2;
            }
            if (j == j2) {
                return j;
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(headerField).length() + 26 + String.valueOf(headerField2).length());
            sb2.append("Inconsistent headers [");
            sb2.append(headerField);
            sb2.append("] [");
            sb2.append(headerField2);
            sb2.append("]");
            Log.w("HttpDataSource", sb2.toString());
            return Math.max(j, j2);
        } catch (NumberFormatException unused2) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(headerField2).length() + 27);
            sb3.append("Unexpected Content-Range [");
            sb3.append(headerField2);
            sb3.append("]");
            Log.e("HttpDataSource", sb3.toString());
            return j;
        }
    }

    private final void closeConnection() {
        HttpURLConnection httpURLConnection = this.zzapu;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.zzapu = null;
        }
    }
}

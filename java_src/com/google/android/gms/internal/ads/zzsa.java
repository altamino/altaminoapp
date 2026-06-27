package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzsa implements zzrv {
    private static final Pattern zzapl = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzapm = new AtomicReference<>();
    private boolean zzapd;
    private final int zzapo;
    private final int zzapp;
    private final String zzapq;
    private HttpURLConnection zzapu;
    private InputStream zzapv;
    private long zzapw;
    private long zzapx;
    private long zzapy;
    private final zzsj<? super zzsa> zzbmn;
    private zzry zzbmo;
    private long zzce;
    private final zzsv<String> zzbmk = null;
    private final zzsd zzbmm = new zzsd();
    private final boolean zzapn = true;
    private final zzsd zzbml = null;

    public zzsa(String str, zzsv<String> zzsvVar, zzsj<? super zzsa> zzsjVar, int i, int i2, boolean z, zzsd zzsdVar) {
        this.zzapq = zzsk.checkNotEmpty(str);
        this.zzbmn = zzsjVar;
        this.zzapo = i;
        this.zzapp = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.zzapu;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.zzapu;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    @Override // com.google.android.gms.internal.ads.zzrv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzry r25) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsa.zza(com.google.android.gms.internal.ads.zzry):long");
    }

    @Override // com.google.android.gms.internal.ads.zzrv
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
                    if (this.zzbmn != null) {
                        this.zzbmn.zzc(this, i3);
                    }
                }
                zzapm.set(andSet);
            }
            if (i2 == 0) {
                return 0;
            }
            if (this.zzapx != -1) {
                long j = this.zzapx - this.zzce;
                if (j == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j);
            }
            int i4 = this.zzapv.read(bArr, i, i2);
            if (i4 == -1) {
                if (this.zzapx == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.zzce += i4;
            if (this.zzbmn != null) {
                this.zzbmn.zzc(this, i4);
            }
            return i4;
        } catch (IOException e) {
            throw new zzsb(e, this.zzbmo, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: Exception -> 0x006c, all -> 0x008f, TryCatch #0 {Exception -> 0x006c, blocks: (B:14:0x0024, B:16:0x002c, B:21:0x003a, B:23:0x004a, B:25:0x0052), top: B:45:0x0024 }] */
    @Override // com.google.android.gms.internal.ads.zzrv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws com.google.android.gms.internal.ads.zzsb {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r9.zzapv     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L7c
            java.net.HttpURLConnection r2 = r9.zzapu     // Catch: java.lang.Throwable -> L8f
            long r3 = r9.zzapx     // Catch: java.lang.Throwable -> L8f
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L13
            long r3 = r9.zzapx     // Catch: java.lang.Throwable -> L8f
            goto L18
        L13:
            long r3 = r9.zzapx     // Catch: java.lang.Throwable -> L8f
            long r7 = r9.zzce     // Catch: java.lang.Throwable -> L8f
            long r3 = r3 - r7
        L18:
            int r7 = com.google.android.gms.internal.ads.zzsy.SDK_INT     // Catch: java.lang.Throwable -> L8f
            r8 = 19
            if (r7 == r8) goto L24
            int r7 = com.google.android.gms.internal.ads.zzsy.SDK_INT     // Catch: java.lang.Throwable -> L8f
            r8 = 20
            if (r7 != r8) goto L6c
        L24:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L34
            int r3 = r2.read()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            r4 = -1
            if (r3 != r4) goto L3a
            goto L6c
        L34:
            r5 = 2048(0x800, double:1.0118E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L6c
        L3a:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            if (r4 != 0) goto L52
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            if (r3 == 0) goto L6c
        L52:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L8f
        L6c:
            java.io.InputStream r2 = r9.zzapv     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L8f
            r2.close()     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L8f
            goto L7c
        L72:
            r2 = move-exception
            com.google.android.gms.internal.ads.zzsb r3 = new com.google.android.gms.internal.ads.zzsb     // Catch: java.lang.Throwable -> L8f
            com.google.android.gms.internal.ads.zzry r4 = r9.zzbmo     // Catch: java.lang.Throwable -> L8f
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L8f
            throw r3     // Catch: java.lang.Throwable -> L8f
        L7c:
            r9.zzapv = r0
            r9.zzjv()
            boolean r0 = r9.zzapd
            if (r0 == 0) goto L8e
            r9.zzapd = r1
            com.google.android.gms.internal.ads.zzsj<? super com.google.android.gms.internal.ads.zzsa> r0 = r9.zzbmn
            if (r0 == 0) goto L8e
            r0.zze(r9)
        L8e:
            return
        L8f:
            r2 = move-exception
            r9.zzapv = r0
            r9.zzjv()
            boolean r0 = r9.zzapd
            if (r0 == 0) goto La2
            r9.zzapd = r1
            com.google.android.gms.internal.ads.zzsj<? super com.google.android.gms.internal.ads.zzsa> r0 = r9.zzbmn
            if (r0 == 0) goto La2
            r0.zze(r9)
        La2:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsa.close():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.net.HttpURLConnection zza(java.net.URL r6, byte[] r7, long r8, long r10, boolean r12, boolean r13) throws java.io.IOException {
        /*
            r5 = this;
            java.net.URLConnection r6 = r6.openConnection()
            java.net.HttpURLConnection r6 = (java.net.HttpURLConnection) r6
            int r0 = r5.zzapo
            r6.setConnectTimeout(r0)
            int r0 = r5.zzapp
            r6.setReadTimeout(r0)
            com.google.android.gms.internal.ads.zzsd r0 = r5.zzbmm
            java.util.Map r0 = r0.zzjw()
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L1e:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L3a
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r6.setRequestProperty(r2, r1)
            goto L1e
        L3a:
            r0 = 0
            r2 = -1
            int r4 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r4 != 0) goto L46
            int r0 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r0 == 0) goto L88
        L46:
            r0 = 27
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "bytes="
            r1.append(r0)
            r1.append(r8)
            java.lang.String r0 = "-"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            int r1 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r1 == 0) goto L83
            java.lang.String r0 = java.lang.String.valueOf(r0)
            long r8 = r8 + r10
            r10 = 1
            long r8 = r8 - r10
            java.lang.String r10 = java.lang.String.valueOf(r0)
            int r10 = r10.length()
            int r10 = r10 + 20
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>(r10)
            r11.append(r0)
            r11.append(r8)
            java.lang.String r0 = r11.toString()
        L83:
            java.lang.String r8 = "Range"
            r6.setRequestProperty(r8, r0)
        L88:
            java.lang.String r8 = r5.zzapq
            java.lang.String r9 = "User-Agent"
            r6.setRequestProperty(r9, r8)
            if (r12 != 0) goto L98
            java.lang.String r8 = "Accept-Encoding"
            java.lang.String r9 = "identity"
            r6.setRequestProperty(r8, r9)
        L98:
            r6.setInstanceFollowRedirects(r13)
            if (r7 == 0) goto L9f
            r8 = 1
            goto La0
        L9f:
            r8 = 0
        La0:
            r6.setDoOutput(r8)
            if (r7 == 0) goto Lbf
            java.lang.String r8 = "POST"
            r6.setRequestMethod(r8)
            int r8 = r7.length
            if (r8 == 0) goto Lbf
            int r8 = r7.length
            r6.setFixedLengthStreamingMode(r8)
            r6.connect()
            java.io.OutputStream r8 = r6.getOutputStream()
            r8.write(r7)
            r8.close()
            goto Lc2
        Lbf:
            r6.connect()
        Lc2:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsa.zza(java.net.URL, byte[], long, long, boolean, boolean):java.net.HttpURLConnection");
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
                Log.e("DefaultHttpDataSource", sb.toString());
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
            Log.w("DefaultHttpDataSource", sb2.toString());
            return Math.max(j, j2);
        } catch (NumberFormatException unused2) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(headerField2).length() + 27);
            sb3.append("Unexpected Content-Range [");
            sb3.append(headerField2);
            sb3.append("]");
            Log.e("DefaultHttpDataSource", sb3.toString());
            return j;
        }
    }

    private final void zzjv() {
        HttpURLConnection httpURLConnection = this.zzapu;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.zzapu = null;
        }
    }
}

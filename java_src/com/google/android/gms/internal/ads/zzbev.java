package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;

@zzard
/* loaded from: classes2.dex */
final class zzbev implements zzrv {
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
    private final zzsj<? super zzbev> zzbmn;
    private zzry zzbmo;
    private long zzce;
    private int zzegm;
    private SSLSocketFactory zzegl = new zzbew(this);
    private Set<Socket> zzegn = new HashSet();
    private final zzsd zzbmm = new zzsd();

    zzbev(String str, zzsj<? super zzbev> zzsjVar, int i, int i2, int i3) {
        this.zzapq = zzsk.checkNotEmpty(str);
        this.zzbmn = zzsjVar;
        this.zzapo = i;
        this.zzapp = i2;
        this.zzegm = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.zzapu;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:?, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x012d, code lost:
    
        r23.zzapu = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012f, code lost:
    
        r0 = r23.zzapu.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0137, code lost:
    
        if (r0 < 200) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013b, code lost:
    
        if (r0 <= 299) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x013e, code lost:
    
        if (r0 != 200) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0140, code lost:
    
        r4 = r24.zzahv;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0146, code lost:
    
        if (r4 == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0149, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x014b, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x014c, code lost:
    
        r23.zzapw = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0153, code lost:
    
        if (r24.zzbk(1) != false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0155, code lost:
    
        r3 = r24.zzcd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015b, code lost:
    
        if (r3 == (-1)) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x015d, code lost:
    
        r23.zzapx = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0160, code lost:
    
        r3 = zzc(r23.zzapu);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0168, code lost:
    
        if (r3 == (-1)) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016a, code lost:
    
        r3 = r3 - r23.zzapw;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x016e, code lost:
    
        r3 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x016f, code lost:
    
        r23.zzapx = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0172, code lost:
    
        r23.zzapx = r24.zzcd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0176, code lost:
    
        r23.zzapv = r23.zzapu.getInputStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x017e, code lost:
    
        r23.zzapd = true;
        r0 = r23.zzbmn;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0183, code lost:
    
        if (r0 == null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0185, code lost:
    
        r0.zza(r23, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x018a, code lost:
    
        return r23.zzapx;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018c, code lost:
    
        zzjv();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0195, code lost:
    
        throw new com.google.android.gms.internal.ads.zzsb(r0, r24, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0196, code lost:
    
        r3 = r23.zzapu.getHeaderFields();
        zzjv();
        r4 = new com.google.android.gms.internal.ads.zzsc(r0, r3, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01a6, code lost:
    
        if (r0 != 416) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a8, code lost:
    
        r4.initCause(new com.google.android.gms.internal.ads.zzrx(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01b1, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01b2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01b3, code lost:
    
        zzjv();
        r5 = java.lang.String.valueOf(r24.uri.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c6, code lost:
    
        if (r5.length() != 0) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c8, code lost:
    
        r3 = "Unable to connect to ".concat(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01cd, code lost:
    
        r3 = new java.lang.String("Unable to connect to ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01d7, code lost:
    
        throw new com.google.android.gms.internal.ads.zzsb(r3, r0, r24, 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010a A[Catch: IOException -> 0x0245, TryCatch #0 {IOException -> 0x0245, blocks: (B:3:0x000f, B:4:0x0027, B:6:0x002d, B:8:0x0037, B:9:0x003f, B:10:0x0057, B:12:0x005d, B:24:0x00d2, B:26:0x00db, B:27:0x00e2, B:31:0x00eb, B:33:0x00f0, B:35:0x00f8, B:37:0x010d, B:51:0x012d, B:96:0x01dc, B:98:0x01e7, B:100:0x01f8, B:102:0x0200, B:104:0x020e, B:106:0x0218, B:107:0x021b, B:105:0x0213, B:109:0x0224, B:110:0x022b, B:36:0x010a, B:19:0x0087, B:21:0x00a3, B:23:0x00cd, B:111:0x022c, B:112:0x0244), top: B:121:0x000f }] */
    @Override // com.google.android.gms.internal.ads.zzrv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzry r24) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbev.zza(com.google.android.gms.internal.ads.zzry):long");
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

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: Exception -> 0x006c, all -> 0x0094, TryCatch #0 {Exception -> 0x006c, blocks: (B:14:0x0024, B:16:0x002c, B:21:0x003a, B:23:0x004a, B:25:0x0052), top: B:47:0x0024 }] */
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
            java.io.InputStream r2 = r9.zzapv     // Catch: java.lang.Throwable -> L94
            if (r2 == 0) goto L7c
            java.net.HttpURLConnection r2 = r9.zzapu     // Catch: java.lang.Throwable -> L94
            long r3 = r9.zzapx     // Catch: java.lang.Throwable -> L94
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L13
            long r3 = r9.zzapx     // Catch: java.lang.Throwable -> L94
            goto L18
        L13:
            long r3 = r9.zzapx     // Catch: java.lang.Throwable -> L94
            long r7 = r9.zzce     // Catch: java.lang.Throwable -> L94
            long r3 = r3 - r7
        L18:
            int r7 = com.google.android.gms.internal.ads.zzsy.SDK_INT     // Catch: java.lang.Throwable -> L94
            r8 = 19
            if (r7 == r8) goto L24
            int r7 = com.google.android.gms.internal.ads.zzsy.SDK_INT     // Catch: java.lang.Throwable -> L94
            r8 = 20
            if (r7 != r8) goto L6c
        L24:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L34
            int r3 = r2.read()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            r4 = -1
            if (r3 != r4) goto L3a
            goto L6c
        L34:
            r5 = 2048(0x800, double:1.0118E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L6c
        L3a:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            if (r4 != 0) goto L52
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            if (r3 == 0) goto L6c
        L52:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L94
        L6c:
            java.io.InputStream r2 = r9.zzapv     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L94
            r2.close()     // Catch: java.io.IOException -> L72 java.lang.Throwable -> L94
            goto L7c
        L72:
            r2 = move-exception
            com.google.android.gms.internal.ads.zzsb r3 = new com.google.android.gms.internal.ads.zzsb     // Catch: java.lang.Throwable -> L94
            com.google.android.gms.internal.ads.zzry r4 = r9.zzbmo     // Catch: java.lang.Throwable -> L94
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L94
            throw r3     // Catch: java.lang.Throwable -> L94
        L7c:
            r9.zzapv = r0
            r9.zzjv()
            boolean r0 = r9.zzapd
            if (r0 == 0) goto L8e
            r9.zzapd = r1
            com.google.android.gms.internal.ads.zzsj<? super com.google.android.gms.internal.ads.zzbev> r0 = r9.zzbmn
            if (r0 == 0) goto L8e
            r0.zze(r9)
        L8e:
            java.util.Set<java.net.Socket> r0 = r9.zzegn
            r0.clear()
            return
        L94:
            r2 = move-exception
            r9.zzapv = r0
            r9.zzjv()
            boolean r0 = r9.zzapd
            if (r0 == 0) goto La7
            r9.zzapd = r1
            com.google.android.gms.internal.ads.zzsj<? super com.google.android.gms.internal.ads.zzbev> r0 = r9.zzbmn
            if (r0 == 0) goto La7
            r0.zze(r9)
        La7:
            java.util.Set<java.net.Socket> r0 = r9.zzegn
            r0.clear()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbev.close():void");
    }

    final void setReceiveBufferSize(int i) throws SocketException {
        this.zzegm = i;
        for (Socket socket : this.zzegn) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzegm);
                } catch (SocketException e) {
                    zzbad.zzd("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Socket socket) {
        this.zzegn.add(socket);
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
                zzbad.zzen(sb.toString());
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
            zzbad.zzep(sb2.toString());
            return Math.max(j, j2);
        } catch (NumberFormatException unused2) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(headerField2).length() + 27);
            sb3.append("Unexpected Content-Range [");
            sb3.append(headerField2);
            sb3.append("]");
            zzbad.zzen(sb3.toString());
            return j;
        }
    }

    private final void zzjv() {
        HttpURLConnection httpURLConnection = this.zzapu;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzbad.zzc("Unexpected error while disconnecting", e);
            }
            this.zzapu = null;
        }
    }
}

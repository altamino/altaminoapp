package com.mixpanel.android.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public class b implements g {
    private static final String LOGTAG = "MixpanelAPI.Message";
    private static final int MAX_UNAVAILABLE_HTTP_RESPONSE_CODE = 599;
    private static final int MIN_UNAVAILABLE_HTTP_RESPONSE_CODE = 500;
    private static boolean sIsMixpanelBlocked;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InetAddress byName = InetAddress.getByName("api.mixpanel.com");
                boolean unused = b.sIsMixpanelBlocked = byName.isLoopbackAddress() || byName.isAnyLocalAddress();
                if (b.sIsMixpanelBlocked) {
                    d.i(b.LOGTAG, "AdBlocker is enabled. Won't be able to use Mixpanel services.");
                }
            } catch (Exception unused2) {
            }
        }
    }

    private boolean g(e eVar) {
        if (eVar == null) {
            return false;
        }
        try {
            return eVar.a();
        } catch (Exception e) {
            d.j(LOGTAG, "Client State should not throw exception, will assume is not on offline mode", e);
            return false;
        }
    }

    private static byte[] h(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr, 0, 8192);
            if (i10 == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0175 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:111:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x018e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x016b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x0189 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x0184 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x017a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x001a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x006a A[Catch: all -> 0x003d, IOException -> 0x0042, EOFException -> 0x0049, LOOP:1: B:27:0x0064->B:29:0x006a, LOOP_END, TryCatch #15 {EOFException -> 0x0049, IOException -> 0x0042, all -> 0x003d, blocks: (B:8:0x0032, B:10:0x0036, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0064, B:29:0x006a, B:30:0x0080, B:32:0x008d, B:33:0x009a, B:35:0x00a0, B:36:0x00b8, B:53:0x0107, B:55:0x010d, B:56:0x0114), top: B:130:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x008d A[Catch: all -> 0x003d, IOException -> 0x0042, EOFException -> 0x0049, TryCatch #15 {EOFException -> 0x0049, IOException -> 0x0042, all -> 0x003d, blocks: (B:8:0x0032, B:10:0x0036, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0064, B:29:0x006a, B:30:0x0080, B:32:0x008d, B:33:0x009a, B:35:0x00a0, B:36:0x00b8, B:53:0x0107, B:55:0x010d, B:56:0x0114), top: B:130:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a0 A[Catch: all -> 0x003d, IOException -> 0x0042, EOFException -> 0x0049, LOOP:2: B:33:0x009a->B:35:0x00a0, LOOP_END, TryCatch #15 {EOFException -> 0x0049, IOException -> 0x0042, all -> 0x003d, blocks: (B:8:0x0032, B:10:0x0036, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0064, B:29:0x006a, B:30:0x0080, B:32:0x008d, B:33:0x009a, B:35:0x00a0, B:36:0x00b8, B:53:0x0107, B:55:0x010d, B:56:0x0114), top: B:130:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0105 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x0107 A[Catch: all -> 0x003d, IOException -> 0x0042, EOFException -> 0x0049, TRY_ENTER, TryCatch #15 {EOFException -> 0x0049, IOException -> 0x0042, all -> 0x003d, blocks: (B:8:0x0032, B:10:0x0036, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0064, B:29:0x006a, B:30:0x0080, B:32:0x008d, B:33:0x009a, B:35:0x00a0, B:36:0x00b8, B:53:0x0107, B:55:0x010d, B:56:0x0114), top: B:130:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0148 A[Catch: all -> 0x015e, TryCatch #20 {all -> 0x015e, blocks: (B:70:0x0140, B:72:0x0148, B:74:0x0150, B:75:0x015d, B:78:0x0161), top: B:121:0x0140 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0193  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // com.mixpanel.android.util.g
    public byte[] a(String str, f fVar, Map<String, Object> map, SSLSocketFactory sSLSocketFactory) throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        OutputStream outputStream;
        ?? bufferedOutputStream;
        ?? r10;
        Uri.Builder builder;
        Map<String, String> mapB;
        d.i(LOGTAG, "Attempting request to " + str);
        HttpURLConnection httpURLConnection2 = null;
         = 0;
         = 0;
        ?? r1 = 0;
        int i10 = 0;
        byte[] bArrH = null;
        boolean z6 = false;
        while (i10 < 3 && !z6) {
            try {
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                if (sSLSocketFactory != null) {
                    try {
                        if (httpURLConnection instanceof HttpsURLConnection) {
                            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                        }
                        if (fVar != null && f(str) && (mapB = fVar.b()) != null) {
                            for (Map.Entry<String, String> entry : mapB.entrySet()) {
                                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                            }
                        }
                        httpURLConnection.setConnectTimeout(2000);
                        httpURLConnection.setReadTimeout(30000);
                        if (map != null) {
                            builder = new Uri.Builder();
                            for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                                builder.appendQueryParameter(entry2.getKey(), entry2.getValue().toString());
                            }
                            String encodedQuery = builder.build().getEncodedQuery();
                            httpURLConnection.setFixedLengthStreamingMode(encodedQuery.getBytes().length);
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setRequestMethod("POST");
                            outputStream = httpURLConnection.getOutputStream();
                            try {
                                bufferedOutputStream = new BufferedOutputStream(outputStream);
                                try {
                                    bufferedOutputStream.write(encodedQuery.getBytes("UTF-8"));
                                    bufferedOutputStream.flush();
                                    bufferedOutputStream.close();
                                    outputStream.close();
                                    if (fVar != null && f(str)) {
                                        fVar.a(str, httpURLConnection.getResponseCode());
                                    }
                                    inputStream = httpURLConnection.getInputStream();
                                    try {
                                        bArrH = h(inputStream);
                                        inputStream.close();
                                        httpURLConnection.disconnect();
                                        z6 = true;
                                    } catch (EOFException unused) {
                                        outputStream = null;
                                        bufferedOutputStream = outputStream;
                                        try {
                                            d.a(LOGTAG, "Failure to connect, likely caused by a known issue with Android lib. Retrying.");
                                            i10++;
                                            if (bufferedOutputStream != 0) {
                                                try {
                                                    bufferedOutputStream.close();
                                                } catch (IOException unused2) {
                                                }
                                            }
                                            if (outputStream != null) {
                                                try {
                                                    outputStream.close();
                                                } catch (IOException unused3) {
                                                }
                                            }
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (IOException unused4) {
                                                }
                                            }
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            r1 = bufferedOutputStream;
                                            if (r1 != 0) {
                                                try {
                                                    r1.close();
                                                } catch (IOException unused5) {
                                                }
                                            }
                                            if (outputStream != null) {
                                                try {
                                                    outputStream.close();
                                                } catch (IOException unused6) {
                                                }
                                            }
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (IOException unused7) {
                                                }
                                            }
                                            if (httpURLConnection == null) {
                                                throw th;
                                            }
                                            httpURLConnection.disconnect();
                                            throw th;
                                        }
                                    } catch (IOException e) {
                                        e = e;
                                        outputStream = null;
                                        r10 = outputStream;
                                        httpURLConnection2 = httpURLConnection;
                                        bufferedOutputStream = r10;
                                        if (httpURLConnection2 != null) {
                                            try {
                                                if (httpURLConnection2.getResponseCode() >= 500 && httpURLConnection2.getResponseCode() <= MAX_UNAVAILABLE_HTTP_RESPONSE_CODE) {
                                                    throw new g.a("Service Unavailable", httpURLConnection2.getHeaderField("Retry-After"));
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                httpURLConnection = httpURLConnection2;
                                                r1 = bufferedOutputStream;
                                                if (r1 != 0) {
                                                    r1.close();
                                                }
                                                if (outputStream != null) {
                                                    outputStream.close();
                                                }
                                                if (inputStream != null) {
                                                    inputStream.close();
                                                }
                                                if (httpURLConnection == null) {
                                                    throw th;
                                                }
                                                httpURLConnection.disconnect();
                                                throw th;
                                            }
                                        }
                                        throw e;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        outputStream = null;
                                    }
                                } catch (EOFException unused8) {
                                    inputStream = null;
                                    bufferedOutputStream = bufferedOutputStream;
                                    d.a(LOGTAG, "Failure to connect, likely caused by a known issue with Android lib. Retrying.");
                                    i10++;
                                    if (bufferedOutputStream != 0) {
                                        bufferedOutputStream.close();
                                    }
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                } catch (IOException e2) {
                                    e = e2;
                                    inputStream = null;
                                    r10 = bufferedOutputStream;
                                    httpURLConnection2 = httpURLConnection;
                                    bufferedOutputStream = r10;
                                    if (httpURLConnection2 != null) {
                                        if (httpURLConnection2.getResponseCode() >= 500) {
                                            throw new g.a("Service Unavailable", httpURLConnection2.getHeaderField("Retry-After"));
                                        }
                                    }
                                    throw e;
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStream = null;
                                    r1 = bufferedOutputStream;
                                }
                            } catch (EOFException unused9) {
                                inputStream = null;
                                bufferedOutputStream = 0;
                            } catch (IOException e6) {
                                e = e6;
                                inputStream = null;
                                r10 = 0;
                            } catch (Throwable th5) {
                                th = th5;
                                inputStream = null;
                            }
                        } else {
                            if (fVar != null) {
                                fVar.a(str, httpURLConnection.getResponseCode());
                            }
                            inputStream = httpURLConnection.getInputStream();
                            bArrH = h(inputStream);
                            inputStream.close();
                            httpURLConnection.disconnect();
                            z6 = true;
                        }
                    } catch (EOFException unused10) {
                        inputStream = null;
                        outputStream = inputStream;
                        bufferedOutputStream = outputStream;
                        d.a(LOGTAG, "Failure to connect, likely caused by a known issue with Android lib. Retrying.");
                        i10++;
                        if (bufferedOutputStream != 0) {
                            bufferedOutputStream.close();
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } catch (IOException e7) {
                        e = e7;
                        inputStream = null;
                        outputStream = null;
                        r10 = outputStream;
                        httpURLConnection2 = httpURLConnection;
                        bufferedOutputStream = r10;
                        if (httpURLConnection2 != null) {
                            if (httpURLConnection2.getResponseCode() >= 500) {
                                throw new g.a("Service Unavailable", httpURLConnection2.getHeaderField("Retry-After"));
                            }
                        }
                        throw e;
                    } catch (Throwable th6) {
                        th = th6;
                        inputStream = null;
                        outputStream = inputStream;
                    }
                } else {
                    if (fVar != null) {
                        while (r6.hasNext()) {
                            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                        }
                    }
                    httpURLConnection.setConnectTimeout(2000);
                    httpURLConnection.setReadTimeout(30000);
                    if (map != null) {
                        builder = new Uri.Builder();
                        while (r8.hasNext()) {
                            builder.appendQueryParameter(entry2.getKey(), entry2.getValue().toString());
                        }
                        String encodedQuery2 = builder.build().getEncodedQuery();
                        httpURLConnection.setFixedLengthStreamingMode(encodedQuery2.getBytes().length);
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setRequestMethod("POST");
                        outputStream = httpURLConnection.getOutputStream();
                        bufferedOutputStream = new BufferedOutputStream(outputStream);
                        bufferedOutputStream.write(encodedQuery2.getBytes("UTF-8"));
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        outputStream.close();
                        if (fVar != null) {
                            fVar.a(str, httpURLConnection.getResponseCode());
                        }
                        inputStream = httpURLConnection.getInputStream();
                        bArrH = h(inputStream);
                        inputStream.close();
                        httpURLConnection.disconnect();
                        z6 = true;
                    } else {
                        if (fVar != null) {
                            fVar.a(str, httpURLConnection.getResponseCode());
                        }
                        inputStream = httpURLConnection.getInputStream();
                        bArrH = h(inputStream);
                        inputStream.close();
                        httpURLConnection.disconnect();
                        z6 = true;
                    }
                }
            } catch (EOFException unused11) {
                httpURLConnection = null;
                inputStream = null;
            } catch (IOException e10) {
                e = e10;
                inputStream = null;
                outputStream = null;
                bufferedOutputStream = 0;
            } catch (Throwable th7) {
                th = th7;
                httpURLConnection = null;
                inputStream = null;
            }
            if (r1 != 0) {
                r1.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            if (httpURLConnection == null) {
                throw th;
            }
            httpURLConnection.disconnect();
            throw th;
        }
        if (i10 >= 3) {
            d.i(LOGTAG, "Could not connect to Mixpanel service after three retries.");
        }
        return bArrH;
    }

    @Override // com.mixpanel.android.util.g
    @SuppressLint({"MissingPermission"})
    public boolean b(Context context, e eVar) {
        if (sIsMixpanelBlocked || g(eVar)) {
            return false;
        }
        boolean z6 = true;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                d.i(LOGTAG, "A default network has not been set so we cannot be certain whether we are offline");
            } else {
                boolean zIsConnectedOrConnecting = activeNetworkInfo.isConnectedOrConnecting();
                StringBuilder sb = new StringBuilder();
                sb.append("ConnectivityManager says we ");
                sb.append(zIsConnectedOrConnecting ? "are" : "are not");
                sb.append(" online");
                d.i(LOGTAG, sb.toString());
                z6 = zIsConnectedOrConnecting;
            }
        } catch (SecurityException unused) {
            d.i(LOGTAG, "Don't have permission to check connectivity, will assume we are online");
        }
        return z6;
    }

    @Override // com.mixpanel.android.util.g
    public void c() {
        new Thread(new a()).start();
    }

    private static boolean f(String str) {
        return !str.toLowerCase().contains("https://api.mixpanel.com".toLowerCase());
    }
}

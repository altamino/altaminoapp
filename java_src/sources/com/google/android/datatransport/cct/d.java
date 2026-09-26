package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.cct.internal.j;
import com.google.android.datatransport.cct.internal.k;
import com.google.android.datatransport.cct.internal.l;
import com.google.android.datatransport.cct.internal.n;
import com.google.android.datatransport.cct.internal.o;
import com.google.android.datatransport.cct.internal.p;
import com.google.android.datatransport.runtime.h;
import com.google.android.datatransport.runtime.i;
import com.narvii.util.ws.WsMessage;
import g2.f;
import g2.g;
import g2.m;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes10.dex */
final class d implements m {
    private static final String ACCEPT_ENCODING_HEADER_KEY = "Accept-Encoding";
    static final String API_KEY_HEADER_KEY = "X-Goog-Api-Key";
    private static final int CONNECTION_TIME_OUT = 30000;
    private static final String CONTENT_ENCODING_HEADER_KEY = "Content-Encoding";
    private static final String CONTENT_TYPE_HEADER_KEY = "Content-Type";
    private static final String GZIP_CONTENT_ENCODING = "gzip";
    private static final int INVALID_VERSION_CODE = -1;
    private static final String JSON_CONTENT_TYPE = "application/json";
    private static final String KEY_APPLICATION_BUILD = "application_build";
    private static final String KEY_COUNTRY = "country";
    private static final String KEY_DEVICE = "device";
    private static final String KEY_FINGERPRINT = "fingerprint";
    private static final String KEY_HARDWARE = "hardware";
    private static final String KEY_LOCALE = "locale";
    private static final String KEY_MANUFACTURER = "manufacturer";
    private static final String KEY_MCC_MNC = "mcc_mnc";

    @VisibleForTesting
    static final String KEY_MOBILE_SUBTYPE = "mobile-subtype";
    private static final String KEY_MODEL = "model";

    @VisibleForTesting
    static final String KEY_NETWORK_TYPE = "net-type";
    private static final String KEY_OS_BUILD = "os-uild";
    private static final String KEY_PRODUCT = "product";
    private static final String KEY_SDK_VERSION = "sdk-version";
    private static final String KEY_TIMEZONE_OFFSET = "tz-offset";
    private static final String LOG_TAG = "CctTransportBackend";
    private static final int READ_TIME_OUT = 130000;
    private final Context applicationContext;
    private final ConnectivityManager connectivityManager;
    private final j4.a dataEncoder;
    final URL endPoint;
    private final int readTimeout;
    private final m2.a uptimeClock;
    private final m2.a wallTimeClock;

    static final class a {

        @Nullable
        final String apiKey;
        final j requestBody;
        final URL url;

        a a(URL url) {
            return new a(url, this.requestBody, this.apiKey);
        }

        a(URL url, j jVar, @Nullable String str) {
            this.url = url;
            this.requestBody = jVar;
            this.apiKey = str;
        }
    }

    d(Context context, m2.a aVar, m2.a aVar2, int i10) {
        this.dataEncoder = j.b();
        this.applicationContext = context;
        this.connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.endPoint = n(com.google.android.datatransport.cct.a.DEFAULT_END_POINT);
        this.uptimeClock = aVar2;
        this.wallTimeClock = aVar;
        this.readTimeout = i10;
    }

    static final class b {
        final int code;
        final long nextRequestMillis;

        @Nullable
        final URL redirectUrl;

        b(int i10, @Nullable URL url, long j6) {
            this.code = i10;
            this.redirectUrl = url;
            this.nextRequestMillis = j6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e(a aVar) throws IOException {
        i2.a.f(LOG_TAG, "Making request to: %s", aVar.url);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.url.openConnection();
        httpURLConnection.setConnectTimeout(CONNECTION_TIME_OUT);
        httpURLConnection.setReadTimeout(this.readTimeout);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.1.9"));
        httpURLConnection.setRequestProperty("Content-Encoding", GZIP_CONTENT_ENCODING);
        httpURLConnection.setRequestProperty("Content-Type", JSON_CONTENT_TYPE);
        httpURLConnection.setRequestProperty(ACCEPT_ENCODING_HEADER_KEY, GZIP_CONTENT_ENCODING);
        String str = aVar.apiKey;
        if (str != null) {
            httpURLConnection.setRequestProperty(API_KEY_HEADER_KEY, str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.dataEncoder.a(aVar.requestBody, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    i2.a.f(LOG_TAG, "Status Code: %d", Integer.valueOf(responseCode));
                    i2.a.b(LOG_TAG, "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    i2.a.b(LOG_TAG, "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream inputStreamM = m(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            b bVar = new b(responseCode, null, n.b(new BufferedReader(new InputStreamReader(inputStreamM))).c());
                            if (inputStreamM != null) {
                                inputStreamM.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable th) {
                            if (inputStreamM != null) {
                                try {
                                    inputStreamM.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                } catch (Throwable th5) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            } catch (Throwable th7) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                }
                throw th7;
            }
        } catch (j4.b e) {
            e = e;
            i2.a.d(LOG_TAG, "Couldn't encode request, returning with 400", e);
            return new b(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, null, 0L);
        } catch (ConnectException e2) {
            e = e2;
            i2.a.d(LOG_TAG, "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e6) {
            e = e6;
            i2.a.d(LOG_TAG, "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e7) {
            e = e7;
            i2.a.d(LOG_TAG, "Couldn't encode request, returning with 400", e);
            return new b(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, null, 0L);
        }
    }

    private static int f(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return o.b.UNKNOWN_MOBILE_SUBTYPE.b();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return o.b.COMBINED.b();
        }
        if (o.b.a(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    private static int g(NetworkInfo networkInfo) {
        return networkInfo == null ? o.c.NONE.b() : networkInfo.getType();
    }

    private j i(f fVar) {
        l.a aVarJ;
        HashMap map = new HashMap();
        for (i iVar : fVar.b()) {
            String strJ = iVar.j();
            if (map.containsKey(strJ)) {
                ((List) map.get(strJ)).add(iVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(iVar);
                map.put(strJ, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            i iVar2 = (i) ((List) entry.getValue()).get(0);
            com.google.android.datatransport.cct.internal.m.a aVarB = com.google.android.datatransport.cct.internal.m.a().f(p.DEFAULT).g(this.wallTimeClock.a()).h(this.uptimeClock.a()).b(k.a().c(k.b.ANDROID_FIREBASE).b(com.google.android.datatransport.cct.internal.a.a().m(Integer.valueOf(iVar2.g(KEY_SDK_VERSION))).j(iVar2.b(KEY_MODEL)).f(iVar2.b(KEY_HARDWARE)).d(iVar2.b(KEY_DEVICE)).l(iVar2.b(KEY_PRODUCT)).k(iVar2.b(KEY_OS_BUILD)).h(iVar2.b(KEY_MANUFACTURER)).e(iVar2.b(KEY_FINGERPRINT)).c(iVar2.b(KEY_COUNTRY)).g(iVar2.b(KEY_LOCALE)).i(iVar2.b(KEY_MCC_MNC)).b(iVar2.b(KEY_APPLICATION_BUILD)).a()).a());
            try {
                aVarB.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                aVarB.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (i iVar3 : (List) entry.getValue()) {
                h hVarE = iVar3.e();
                f2.b bVarB = hVarE.b();
                if (bVarB.equals(f2.b.b("proto"))) {
                    aVarJ = l.j(hVarE.a());
                } else if (bVarB.equals(f2.b.b("json"))) {
                    aVarJ = l.i(new String(hVarE.a(), Charset.forName("UTF-8")));
                } else {
                    i2.a.g(LOG_TAG, "Received event of unsupported encoding %s. Skipping...", bVarB);
                }
                aVarJ.c(iVar3.f()).d(iVar3.k()).h(iVar3.h(KEY_TIMEZONE_OFFSET)).e(o.a().c(o.c.a(iVar3.g(KEY_NETWORK_TYPE))).b(o.b.a(iVar3.g(KEY_MOBILE_SUBTYPE))).a());
                if (iVar3.d() != null) {
                    aVarJ.b(iVar3.d());
                }
                arrayList3.add(aVarJ.a());
            }
            aVarB.c(arrayList3);
            arrayList2.add(aVarB.a());
        }
        return j.a(arrayList2);
    }

    private static TelephonyManager j(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a l(a aVar, b bVar) {
        URL url = bVar.redirectUrl;
        if (url == null) {
            return null;
        }
        i2.a.b(LOG_TAG, "Following redirect to: %s", url);
        return aVar.a(bVar.redirectUrl);
    }

    private static InputStream m(InputStream inputStream, String str) throws IOException {
        return GZIP_CONTENT_ENCODING.equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    private static URL n(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    @Override // g2.m
    public i b(i iVar) {
        NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        return iVar.l().a(KEY_SDK_VERSION, Build.VERSION.SDK_INT).c(KEY_MODEL, Build.MODEL).c(KEY_HARDWARE, Build.HARDWARE).c(KEY_DEVICE, Build.DEVICE).c(KEY_PRODUCT, Build.PRODUCT).c(KEY_OS_BUILD, Build.ID).c(KEY_MANUFACTURER, Build.MANUFACTURER).c(KEY_FINGERPRINT, Build.FINGERPRINT).b(KEY_TIMEZONE_OFFSET, k()).a(KEY_NETWORK_TYPE, g(activeNetworkInfo)).a(KEY_MOBILE_SUBTYPE, f(activeNetworkInfo)).c(KEY_COUNTRY, Locale.getDefault().getCountry()).c(KEY_LOCALE, Locale.getDefault().getLanguage()).c(KEY_MCC_MNC, j(this.applicationContext).getSimOperator()).c(KEY_APPLICATION_BUILD, Integer.toString(h(this.applicationContext))).d();
    }

    private static int h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            i2.a.d(LOG_TAG, "Unable to find version code for package", e);
            return -1;
        }
    }

    @VisibleForTesting
    static long k() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    @Override // g2.m
    public g a(f fVar) {
        j jVarI = i(fVar);
        URL urlN = this.endPoint;
        String strD = null;
        if (fVar.c() != null) {
            try {
                com.google.android.datatransport.cct.a aVarC = com.google.android.datatransport.cct.a.c(fVar.c());
                if (aVarC.d() != null) {
                    strD = aVarC.d();
                }
                if (aVarC.e() != null) {
                    urlN = n(aVarC.e());
                }
            } catch (IllegalArgumentException unused) {
                return g.a();
            }
        }
        try {
            b bVar = (b) j2.b.a(5, new a(urlN, jVarI, strD), new j2.a() { // from class: com.google.android.datatransport.cct.b
                @Override // j2.a
                public final Object apply(Object obj) {
                    return this.f963a.e((d.a) obj);
                }
            }, new j2.c() { // from class: com.google.android.datatransport.cct.c
                @Override // j2.c
                public final Object a(Object obj, Object obj2) {
                    return d.l((d.a) obj, (d.b) obj2);
                }
            });
            int i10 = bVar.code;
            if (i10 == 200) {
                return g.e(bVar.nextRequestMillis);
            }
            if (i10 < 500 && i10 != 404) {
                if (i10 == 400) {
                    return g.d();
                }
                return g.a();
            }
            return g.f();
        } catch (IOException e) {
            i2.a.d(LOG_TAG, "Could not make request to the backend", e);
            return g.f();
        }
    }

    d(Context context, m2.a aVar, m2.a aVar2) {
        this(context, aVar, aVar2, READ_TIME_OUT);
    }
}

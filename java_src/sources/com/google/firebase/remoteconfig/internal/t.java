package com.google.firebase.remoteconfig.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.entity.mime.MIME;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class t {
    private static final String API_KEY_HEADER = "X-Goog-Api-Key";

    @VisibleForTesting
    static final int[] BACKOFF_TIME_DURATIONS_IN_MINUTES = {2, 4, 8, 16, 32, 64, 128, 256};
    private static final Pattern GMP_APP_ID_PATTERN = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    private static final String INSTALLATIONS_AUTH_TOKEN_HEADER = "X-Goog-Firebase-Installations-Auth";
    private static final String X_ACCEPT_RESPONSE_STREAMING = "X-Accept-Response-Streaming";
    private static final String X_ANDROID_CERT_HEADER = "X-Android-Cert";
    private static final String X_ANDROID_PACKAGE_HEADER = "X-Android-Package";
    private static final String X_GOOGLE_GFE_CAN_RETRY = "X-Google-GFE-Can-Retry";
    f activatedCache;
    private final m configFetchHandler;
    private final Context context;
    private final com.google.firebase.f firebaseApp;
    private final com.google.firebase.installations.h firebaseInstallations;

    @GuardedBy
    private int httpRetriesRemaining;

    @GuardedBy
    private final Set<c5.c> listeners;
    private final p metadataClient;
    private final String namespace;
    private final ScheduledExecutorService scheduledExecutorService;
    private final int ORIGINAL_RETRIES = 8;

    @GuardedBy
    private boolean isHttpConnectionRunning = false;
    private final Random random = new Random();
    private final Clock clock = DefaultClock.getInstance();

    @GuardedBy
    private boolean isRealtimeDisabled = false;
    private boolean isInBackground = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.e();
        }
    }

    class b implements c5.c {
        @Override // c5.c
        public void a(@NonNull c5.b bVar) {
        }

        b() {
        }

        @Override // c5.c
        public void b(@NonNull c5.i iVar) {
            t.this.j();
            t.this.u(iVar);
        }
    }

    private synchronized boolean f() {
        return (this.listeners.isEmpty() || this.isHttpConnectionRunning || this.isRealtimeDisabled || this.isInBackground) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        this.isRealtimeDisabled = true;
    }

    private String n(String str) {
        return String.format("https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations", k(this.firebaseApp.n().c()), str);
    }

    private boolean p(int i10) {
        return i10 == 408 || i10 == 429 || i10 == 502 || i10 == 503 || i10 == 504;
    }

    private synchronized void s(long j6) {
        try {
            if (f()) {
                int i10 = this.httpRetriesRemaining;
                if (i10 > 0) {
                    this.httpRetriesRemaining = i10 - 1;
                    this.scheduledExecutorService.schedule(new a(), j6, TimeUnit.MILLISECONDS);
                } else if (!this.isInBackground) {
                    u(new c5.h("Unable to connect to the server. Check your connection and try again.", c5.i.a.CONFIG_UPDATE_STREAM_ERROR));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void u(c5.i iVar) {
        Iterator<c5.c> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().b(iVar);
        }
    }

    private synchronized void v() {
        this.httpRetriesRemaining = 8;
    }

    private synchronized void y(boolean z6) {
        this.isHttpConnectionRunning = z6;
    }

    @SuppressLint({"VisibleForTests"})
    public synchronized com.google.firebase.remoteconfig.internal.b B(HttpURLConnection httpURLConnection) {
        return new com.google.firebase.remoteconfig.internal.b(httpURLConnection, this.configFetchHandler, this.activatedCache, this.listeners, new b(), this.scheduledExecutorService);
    }

    @SuppressLint({"VisibleForTests"})
    public synchronized void w() {
        s(Math.max(0L, this.metadataClient.h().a().getTime() - new Date(this.clock.currentTimeMillis()).getTime()));
    }

    void z(boolean z6) {
        this.isInBackground = z6;
    }

    private void D(Date date) {
        int iB = this.metadataClient.h().b() + 1;
        this.metadataClient.n(iB, new Date(date.getTime() + m(iB)));
    }

    private JSONObject i(String str) {
        HashMap map = new HashMap();
        map.put("project", k(this.firebaseApp.n().c()));
        map.put("namespace", this.namespace);
        map.put("lastKnownVersionNumber", Long.toString(this.configFetchHandler.r()));
        map.put("appId", this.firebaseApp.n().c());
        map.put("sdkVersion", "21.6.0");
        map.put("appInstanceId", str);
        return new JSONObject(map);
    }

    private static String k(String str) {
        Matcher matcher = GMP_APP_ID_PATTERN.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private String l() {
        try {
            Context context = this.context;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            Log.e(com.google.firebase.remoteconfig.a.TAG, "Could not get fingerprint hash for package: " + this.context.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.i(com.google.firebase.remoteconfig.a.TAG, "No such package: " + this.context.getPackageName());
            return null;
        }
    }

    private long m(int i10) {
        int[] iArr = BACKOFF_TIME_DURATIONS_IN_MINUTES;
        int length = iArr.length;
        if (i10 >= length) {
            i10 = length;
        }
        long millis = TimeUnit.MINUTES.toMillis(iArr[i10 - 1]);
        return (millis / 2) + ((long) this.random.nextInt((int) millis));
    }

    private URL o() {
        try {
            return new URL(n(this.namespace));
        } catch (MalformedURLException unused) {
            Log.e(com.google.firebase.remoteconfig.a.TAG, "URL is malformed");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:27:0x0089  */
    /* JADX WARN: Code duplicated, block: B:64:0x011d  */
    /* JADX WARN: Code duplicated, block: B:66:0x0120  */
    /* JADX WARN: Code duplicated, block: B:74:0x015b  */
    public /* synthetic */ Task q(Task task, Task task2) throws Exception {
        Integer numValueOf;
        Throwable th;
        HttpURLConnection httpURLConnection;
        boolean z6;
        c5.l lVar;
        try {
            if (!task.isSuccessful()) {
                throw new IOException(task.getException());
            }
            y(true);
            httpURLConnection = (HttpURLConnection) task.getResult();
            try {
                numValueOf = Integer.valueOf(httpURLConnection.getResponseCode());
                try {
                    try {
                        if (numValueOf.intValue() == 200) {
                            v();
                            this.metadataClient.j();
                            B(httpURLConnection).i();
                        }
                        g(httpURLConnection);
                        y(false);
                        boolean zP = p(numValueOf.intValue());
                        if (zP) {
                            D(new Date(this.clock.currentTimeMillis()));
                        }
                        if (zP || numValueOf.intValue() == 200) {
                            w();
                        } else {
                            String strT = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                            if (numValueOf.intValue() == 403) {
                                strT = t(httpURLConnection.getErrorStream());
                            }
                            lVar = new c5.l(numValueOf.intValue(), strT, c5.i.a.CONFIG_UPDATE_STREAM_ERROR);
                            u(lVar);
                        }
                    } catch (IOException e) {
                        e = e;
                        Log.d(com.google.firebase.remoteconfig.a.TAG, "Exception connecting to real-time RC backend. Retrying the connection...", e);
                        g(httpURLConnection);
                        y(false);
                        boolean z10 = numValueOf == null || p(numValueOf.intValue());
                        if (z10) {
                            D(new Date(this.clock.currentTimeMillis()));
                        }
                        if (z10 || numValueOf.intValue() == 200) {
                            w();
                        } else {
                            String strT2 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                            if (numValueOf.intValue() == 403) {
                                strT2 = t(httpURLConnection.getErrorStream());
                            }
                            lVar = new c5.l(numValueOf.intValue(), strT2, c5.i.a.CONFIG_UPDATE_STREAM_ERROR);
                        }
                        return Tasks.forResult(null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    g(httpURLConnection);
                    y(false);
                    if (numValueOf != null || p(numValueOf.intValue())) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        D(new Date(this.clock.currentTimeMillis()));
                    }
                    if (!z6 || numValueOf.intValue() == 200) {
                        w();
                    } else {
                        String strT3 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                        if (numValueOf.intValue() == 403) {
                            strT3 = t(httpURLConnection.getErrorStream());
                        }
                        u(new c5.l(numValueOf.intValue(), strT3, c5.i.a.CONFIG_UPDATE_STREAM_ERROR));
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                numValueOf = null;
            } catch (Throwable th3) {
                numValueOf = null;
                th = th3;
                g(httpURLConnection);
                y(false);
                if (numValueOf != null) {
                    z6 = true;
                } else {
                    z6 = true;
                }
                if (z6) {
                    D(new Date(this.clock.currentTimeMillis()));
                }
                if (z6) {
                    w();
                } else {
                    w();
                }
                throw th;
            }
            return Tasks.forResult(null);
        } catch (IOException e6) {
            e = e6;
            httpURLConnection = null;
            numValueOf = null;
        } catch (Throwable th4) {
            numValueOf = null;
            th = th4;
            httpURLConnection = null;
        }
    }

    private String t(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
        } catch (IOException unused) {
            if (sb.length() == 0) {
                return "Unable to connect to the server, access is forbidden. HTTP status code: 403";
            }
        }
        return sb.toString();
    }

    private void x(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty(INSTALLATIONS_AUTH_TOKEN_HEADER, str);
        httpURLConnection.setRequestProperty(API_KEY_HEADER, this.firebaseApp.n().b());
        httpURLConnection.setRequestProperty(X_ANDROID_PACKAGE_HEADER, this.context.getPackageName());
        httpURLConnection.setRequestProperty(X_ANDROID_CERT_HEADER, l());
        httpURLConnection.setRequestProperty(X_GOOGLE_GFE_CAN_RETRY, "yes");
        httpURLConnection.setRequestProperty(X_ACCEPT_RESPONSE_STREAMING, "true");
        httpURLConnection.setRequestProperty(MIME.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    @SuppressLint({"VisibleForTests"})
    public void A(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        httpURLConnection.setRequestMethod("POST");
        x(httpURLConnection, str2);
        byte[] bytes = i(str).toString().getBytes("utf-8");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bytes);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    public void C() {
        s(0L);
    }

    public void g(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            try {
                httpURLConnection.getInputStream().close();
                if (httpURLConnection.getErrorStream() != null) {
                    httpURLConnection.getErrorStream().close();
                }
            } catch (IOException unused) {
            }
        }
    }

    @SuppressLint({"VisibleForTests"})
    public Task<HttpURLConnection> h() {
        final Task<com.google.firebase.installations.m> taskA = this.firebaseInstallations.a(false);
        final Task<String> id = this.firebaseInstallations.getId();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskA, id}).continueWithTask(this.scheduledExecutorService, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.s
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f1677a.r(taskA, id, task);
            }
        });
    }

    public t(com.google.firebase.f fVar, com.google.firebase.installations.h hVar, m mVar, f fVar2, Context context, String str, Set<c5.c> set, p pVar, ScheduledExecutorService scheduledExecutorService) {
        this.listeners = set;
        this.scheduledExecutorService = scheduledExecutorService;
        this.httpRetriesRemaining = Math.max(8 - pVar.h().b(), 1);
        this.firebaseApp = fVar;
        this.configFetchHandler = mVar;
        this.firebaseInstallations = hVar;
        this.activatedCache = fVar2;
        this.context = context;
        this.namespace = str;
        this.metadataClient = pVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task r(Task task, Task task2, Task task3) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException(new c5.h("Firebase Installations failed to get installation auth token for config update listener connection.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new c5.h("Firebase Installations failed to get installation ID for config update listener connection.", task2.getException()));
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) o().openConnection();
            A(httpURLConnection, (String) task2.getResult(), ((com.google.firebase.installations.m) task.getResult()).b());
            return Tasks.forResult(httpURLConnection);
        } catch (IOException e) {
            return Tasks.forException(new c5.h("Failed to open HTTP stream connection", e));
        }
    }

    @SuppressLint({"VisibleForTests", "DefaultLocale"})
    public void e() {
        if (!f()) {
            return;
        }
        if (new Date(this.clock.currentTimeMillis()).before(this.metadataClient.h().a())) {
            w();
        } else {
            final Task<HttpURLConnection> taskH = h();
            Tasks.whenAllComplete((Task<?>[]) new Task[]{taskH}).continueWith(this.scheduledExecutorService, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.r
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return this.f1668a.q(taskH, task);
                }
            });
        }
    }
}

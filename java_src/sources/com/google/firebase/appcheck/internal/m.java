package com.google.firebase.appcheck.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Tasks;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;

/* JADX INFO: loaded from: classes10.dex */
public class m {
    private static final String APPLICATION_JSON = "application/json";
    private static final String CONTENT_TYPE = "Content-Type";
    public static final int DEBUG = 2;
    private static final String DEBUG_EXCHANGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeDebugToken?key=%s";
    public static final int PLAY_INTEGRITY = 3;
    private static final String PLAY_INTEGRITY_CHALLENGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:generatePlayIntegrityChallenge?key=%s";
    private static final String PLAY_INTEGRITY_EXCHANGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangePlayIntegrityToken?key=%s";
    public static final int SAFETY_NET = 1;
    private static final String SAFETY_NET_EXCHANGE_URL_TEMPLATE = "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeSafetyNetToken?key=%s";
    private static final String TAG = "com.google.firebase.appcheck.internal.m";
    public static final int UNKNOWN = 0;
    private static final String UTF_8 = "UTF-8";

    @VisibleForTesting
    static final String X_ANDROID_CERT = "X-Android-Cert";

    @VisibleForTesting
    static final String X_ANDROID_PACKAGE = "X-Android-Package";

    @VisibleForTesting
    static final String X_FIREBASE_CLIENT = "X-Firebase-Client";
    private final String apiKey;
    private final String appId;
    private final Context context;
    private final o4.b<m4.i> heartBeatControllerProvider;
    private final String projectId;

    public m(@NonNull com.google.firebase.f fVar) {
        this(fVar.k(), fVar.n(), ((h) x3.e.c(fVar)).j());
    }

    private String d() {
        try {
            Context context = this.context;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            Log.e(TAG, "Could not get fingerprint hash for package: " + this.context.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "No such package: " + this.context.getPackageName(), e);
            return null;
        }
    }

    private static String f(int i10) {
        if (i10 == 1) {
            return SAFETY_NET_EXCHANGE_URL_TEMPLATE;
        }
        if (i10 == 2) {
            return DEBUG_EXCHANGE_URL_TEMPLATE;
        }
        if (i10 == 3) {
            return PLAY_INTEGRITY_EXCHANGE_URL_TEMPLATE;
        }
        throw new IllegalArgumentException("Unknown token type.");
    }

    private static final boolean g(int i10) {
        return i10 >= 200 && i10 < 300;
    }

    @VisibleForTesting
    String e() {
        m4.i iVar = this.heartBeatControllerProvider.get();
        if (iVar != null) {
            try {
                return (String) Tasks.await(iVar.b());
            } catch (Exception unused) {
                Log.w(TAG, "Unable to get heartbeats!");
            }
        }
        return null;
    }

    private String h(@NonNull URL url, @NonNull byte[] bArr, @NonNull n nVar, boolean z6) throws JSONException, com.google.firebase.l, IOException {
        InputStream errorStream;
        HttpURLConnection httpURLConnectionA = a(url);
        try {
            httpURLConnectionA.setDoOutput(true);
            httpURLConnectionA.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionA.setRequestProperty("Content-Type", APPLICATION_JSON);
            String strE = e();
            if (strE != null) {
                httpURLConnectionA.setRequestProperty(X_FIREBASE_CLIENT, strE);
            }
            httpURLConnectionA.setRequestProperty(X_ANDROID_PACKAGE, this.context.getPackageName());
            httpURLConnectionA.setRequestProperty(X_ANDROID_CERT, d());
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnectionA.getOutputStream(), bArr.length);
            try {
                bufferedOutputStream.write(bArr, 0, bArr.length);
                bufferedOutputStream.close();
                int responseCode = httpURLConnectionA.getResponseCode();
                if (g(responseCode)) {
                    errorStream = httpURLConnectionA.getInputStream();
                } else {
                    errorStream = httpURLConnectionA.getErrorStream();
                }
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, "UTF-8"));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    httpURLConnectionA.disconnect();
                    throw th;
                }
                bufferedReader.close();
                String string = sb.toString();
                if (g(responseCode)) {
                    if (z6) {
                        nVar.c();
                    }
                    httpURLConnectionA.disconnect();
                    return string;
                }
                nVar.d(responseCode);
                l lVarA = l.a(string);
                throw new com.google.firebase.l("Error returned from API. code: " + lVarA.b() + " body: " + lVarA.c());
            } catch (Throwable th3) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Throwable th5) {
            httpURLConnectionA.disconnect();
            throw th5;
        }
    }

    @VisibleForTesting
    HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @NonNull
    public a b(@NonNull byte[] bArr, int i10, @NonNull n nVar) throws JSONException, com.google.firebase.l, IOException {
        if (nVar.a()) {
            return a.a(h(new URL(String.format(f(i10), this.projectId, this.appId, this.apiKey)), bArr, nVar, true));
        }
        throw new com.google.firebase.l("Too many attempts.");
    }

    @NonNull
    public String c(@NonNull byte[] bArr, @NonNull n nVar) throws JSONException, com.google.firebase.l, IOException {
        if (nVar.a()) {
            return h(new URL(String.format(PLAY_INTEGRITY_CHALLENGE_URL_TEMPLATE, this.projectId, this.appId, this.apiKey)), bArr, nVar, false);
        }
        throw new com.google.firebase.l("Too many attempts.");
    }

    @VisibleForTesting
    m(@NonNull Context context, @NonNull com.google.firebase.n nVar, @NonNull o4.b<m4.i> bVar) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(nVar);
        Preconditions.checkNotNull(bVar);
        this.context = context;
        this.apiKey = nVar.b();
        this.appId = nVar.c();
        String strE = nVar.e();
        this.projectId = strE;
        if (strE == null) {
            throw new IllegalArgumentException("FirebaseOptions#getProjectId cannot be null.");
        }
        this.heartBeatControllerProvider = bVar;
    }
}

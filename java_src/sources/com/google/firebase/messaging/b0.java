package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes7.dex */
class b0 {
    static final String CMD_RST = "RST";
    static final String CMD_RST_FULL = "RST_FULL";
    static final String CMD_SYNC = "SYNC";
    static final String ERROR_INSTANCE_ID_RESET = "INSTANCE_ID_RESET";
    static final String ERROR_INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR";
    static final String ERROR_INTERNAL_SERVER_ERROR_ALT = "InternalServerError";
    static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    private static final String EXTRA_DELETE = "delete";
    private static final String EXTRA_ERROR = "error";
    private static final String EXTRA_IID_OPERATION = "iid-operation";
    private static final String EXTRA_REGISTRATION_ID = "registration_id";
    private static final String EXTRA_SCOPE = "scope";
    private static final String EXTRA_SENDER = "sender";
    private static final String EXTRA_SUBTYPE = "subtype";
    private static final String EXTRA_TOPIC = "gcm.topic";
    private static final String EXTRA_UNREGISTERED = "unregistered";
    static final String FIREBASE_IID_HEARTBEAT_TAG = "fire-iid";
    private static final String PARAM_APP_VER_CODE = "app_ver";
    private static final String PARAM_APP_VER_NAME = "app_ver_name";
    private static final String PARAM_CLIENT_VER = "cliv";
    private static final String PARAM_FIREBASE_APP_NAME_HASH = "firebase-app-name-hash";
    private static final String PARAM_FIS_AUTH_TOKEN = "Goog-Firebase-Installations-Auth";
    private static final String PARAM_GMP_APP_ID = "gmp_app_id";
    private static final String PARAM_GMS_VER = "gmsv";
    private static final String PARAM_HEARTBEAT_CODE = "Firebase-Client-Log-Type";
    private static final String PARAM_INSTANCE_ID = "appid";
    private static final String PARAM_OS_VER = "osv";
    private static final String PARAM_USER_AGENT = "Firebase-Client";
    private static final String SCOPE_ALL = "*";
    static final String TAG = "FirebaseMessaging";
    private static final String TOPIC_PREFIX = "/topics/";
    private final com.google.firebase.f app;
    private final com.google.firebase.installations.h firebaseInstallations;
    private final o4.b<m4.j> heartbeatInfo;
    private final g0 metadata;
    private final Rpc rpc;
    private final o4.b<b5.i> userAgentPublisher;

    b0(com.google.firebase.f fVar, g0 g0Var, o4.b<b5.i> bVar, o4.b<m4.j> bVar2, com.google.firebase.installations.h hVar) {
        this(fVar, g0Var, new Rpc(fVar.k()), bVar, bVar2, hVar);
    }

    private static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task<String> c(Task<Bundle> task) {
        return task.continueWith(new androidx.media3.exoplayer.dash.offline.a(), new Continuation() { // from class: com.google.firebase.messaging.a0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.f1564a.h(task2);
            }
        });
    }

    private String d() {
        try {
            return b(MessageDigest.getInstance("SHA-1").digest(this.app.m().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    @AnyThread
    private String f(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
        }
        String string = bundle.getString(EXTRA_REGISTRATION_ID);
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString(EXTRA_UNREGISTERED);
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if (CMD_RST.equals(string3)) {
            throw new IOException(ERROR_INSTANCE_ID_RESET);
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
        throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
    }

    static boolean g(String str) {
        return ERROR_SERVICE_NOT_AVAILABLE.equals(str) || ERROR_INTERNAL_SERVER_ERROR.equals(str) || ERROR_INTERNAL_SERVER_ERROR_ALT.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String h(Task task) throws Exception {
        return f((Bundle) task.getResult(IOException.class));
    }

    private void i(String str, String str2, Bundle bundle) throws ExecutionException, InterruptedException {
        m4.j.a aVarA;
        bundle.putString(EXTRA_SCOPE, str2);
        bundle.putString(EXTRA_SENDER, str);
        bundle.putString(EXTRA_SUBTYPE, str);
        bundle.putString(PARAM_GMP_APP_ID, this.app.n().c());
        bundle.putString(PARAM_GMS_VER, Integer.toString(this.metadata.d()));
        bundle.putString(PARAM_OS_VER, Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString(PARAM_APP_VER_CODE, this.metadata.a());
        bundle.putString(PARAM_APP_VER_NAME, this.metadata.b());
        bundle.putString(PARAM_FIREBASE_APP_NAME_HASH, d());
        try {
            String strB = ((com.google.firebase.installations.m) Tasks.await(this.firebaseInstallations.a(false))).b();
            if (TextUtils.isEmpty(strB)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString(PARAM_FIS_AUTH_TOKEN, strB);
            }
        } catch (InterruptedException e) {
            e = e;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        } catch (ExecutionException e2) {
            e = e2;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        }
        bundle.putString(PARAM_INSTANCE_ID, (String) Tasks.await(this.firebaseInstallations.getId()));
        bundle.putString(PARAM_CLIENT_VER, "fcm-23.3.1");
        m4.j jVar = this.heartbeatInfo.get();
        b5.i iVar = this.userAgentPublisher.get();
        if (jVar == null || iVar == null || (aVarA = jVar.a(FIREBASE_IID_HEARTBEAT_TAG)) == m4.j.a.NONE) {
            return;
        }
        bundle.putString(PARAM_HEARTBEAT_CODE, Integer.toString(aVarA.a()));
        bundle.putString(PARAM_USER_AGENT, iVar.getUserAgent());
    }

    Task<String> e() {
        return c(j(g0.c(this.app), "*", new Bundle()));
    }

    Task<?> k(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_TOPIC, TOPIC_PREFIX + str2);
        return c(j(str, TOPIC_PREFIX + str2, bundle));
    }

    Task<?> l(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_TOPIC, TOPIC_PREFIX + str2);
        bundle.putString("delete", "1");
        return c(j(str, TOPIC_PREFIX + str2, bundle));
    }

    private Task<Bundle> j(String str, String str2, Bundle bundle) {
        try {
            i(str, str2, bundle);
            return this.rpc.send(bundle);
        } catch (InterruptedException | ExecutionException e) {
            return Tasks.forException(e);
        }
    }

    @VisibleForTesting
    b0(com.google.firebase.f fVar, g0 g0Var, Rpc rpc, o4.b<b5.i> bVar, o4.b<m4.j> bVar2, com.google.firebase.installations.h hVar) {
        this.app = fVar;
        this.metadata = g0Var;
        this.rpc = rpc;
        this.userAgentPublisher = bVar;
        this.heartbeatInfo = bVar2;
        this.firebaseInstallations = hVar;
    }
}

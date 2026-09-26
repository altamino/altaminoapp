package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class FirebaseMessaging {
    private static final String EXTRA_DUMMY_P_INTENT = "app";
    static final String GMS_PACKAGE = "com.google.android.gms";

    @Deprecated
    public static final String INSTANCE_ID_SCOPE = "FCM";
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);
    private static final long MIN_DELAY_SEC = 30;
    private static final String SEND_INTENT_ACTION = "com.google.android.gcm.intent.SEND";
    private static final String SUBTYPE_DEFAULT = "";
    static final String TAG = "FirebaseMessaging";

    @GuardedBy
    private static v0 store;

    @GuardedBy
    @VisibleForTesting
    static ScheduledExecutorService syncExecutor;

    @Nullable
    @SuppressLint({"FirebaseUnknownNullness"})
    @VisibleForTesting
    static f2.g transportFactory;
    private final a autoInit;
    private final Context context;
    private final Executor fileExecutor;
    private final com.google.firebase.f firebaseApp;
    private final com.google.firebase.installations.h fis;
    private final b0 gmsRpc;

    @Nullable
    private final n4.a iid;
    private final Executor initExecutor;
    private final Application.ActivityLifecycleCallbacks lifecycleCallbacks;
    private final g0 metadata;
    private final q0 requestDeduplicator;

    @GuardedBy
    private boolean syncScheduledOrRunning;
    private final Executor taskExecutor;
    private final Task<a1> topicsSubscriberTask;

    /* JADX INFO: Access modifiers changed from: private */
    class a {
        private static final String AUTO_INIT_PREF = "auto_init";
        private static final String FCM_PREFERENCES = "com.google.firebase.messaging";
        private static final String MANIFEST_METADATA_AUTO_INIT_ENABLED = "firebase_messaging_auto_init_enabled";

        @Nullable
        @GuardedBy
        private Boolean autoInitEnabled;

        @Nullable
        @GuardedBy
        private l4.b<com.google.firebase.b> dataCollectionDefaultChangeEventHandler;

        @GuardedBy
        private boolean initialized;
        private final l4.d subscriber;

        synchronized void b() {
            try {
                if (this.initialized) {
                    return;
                }
                Boolean boolE = e();
                this.autoInitEnabled = boolE;
                if (boolE == null) {
                    l4.b<com.google.firebase.b> bVar = new l4.b() { // from class: com.google.firebase.messaging.y
                        @Override // l4.b
                        public final void a(l4.a aVar) {
                            this.f1601a.d(aVar);
                        }
                    };
                    this.dataCollectionDefaultChangeEventHandler = bVar;
                    this.subscriber.a(com.google.firebase.b.class, bVar);
                }
                this.initialized = true;
            } catch (Throwable th) {
                throw th;
            }
        }

        synchronized boolean c() {
            Boolean bool;
            try {
                b();
                bool = this.autoInitEnabled;
            } catch (Throwable th) {
                throw th;
            }
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.firebaseApp.t();
        }

        a(l4.d dVar) {
            this.subscriber = dVar;
        }

        @Nullable
        private Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context contextK = FirebaseMessaging.this.firebaseApp.k();
            SharedPreferences sharedPreferences = contextK.getSharedPreferences(FCM_PREFERENCES, 0);
            if (sharedPreferences.contains(AUTO_INIT_PREF)) {
                return Boolean.valueOf(sharedPreferences.getBoolean(AUTO_INIT_PREF, false));
            }
            try {
                PackageManager packageManager = contextK.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(contextK.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(MANIFEST_METADATA_AUTO_INIT_ENABLED)) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean(MANIFEST_METADATA_AUTO_INIT_ENABLED));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(l4.a aVar) {
            if (c()) {
                FirebaseMessaging.this.D();
            }
        }
    }

    FirebaseMessaging(com.google.firebase.f fVar, @Nullable n4.a aVar, o4.b<b5.i> bVar, o4.b<m4.j> bVar2, com.google.firebase.installations.h hVar, @Nullable f2.g gVar, l4.d dVar) {
        this(fVar, aVar, bVar, bVar2, hVar, gVar, dVar, new g0(fVar.k()));
    }

    private synchronized void C() {
        if (!this.syncScheduledOrRunning) {
            E(0L);
        }
    }

    @Nullable
    public static f2.g q() {
        return transportFactory;
    }

    synchronized void B(boolean z6) {
        this.syncScheduledOrRunning = z6;
    }

    synchronized void E(long j6) {
        j(new w0(this, Math.min(Math.max(MIN_DELAY_SEC, 2 * j6), MAX_DELAY_SEC)), j6);
        this.syncScheduledOrRunning = true;
    }

    Context k() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        n4.a aVar = this.iid;
        if (aVar != null) {
            aVar.getToken();
        } else if (F(p())) {
            C();
        }
    }

    @NonNull
    @Keep
    static synchronized FirebaseMessaging getInstance(@NonNull com.google.firebase.f fVar) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) fVar.j(FirebaseMessaging.class);
        Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    @NonNull
    public static synchronized FirebaseMessaging l() {
        return getInstance(com.google.firebase.f.l());
    }

    @NonNull
    private static synchronized v0 m(Context context) {
        try {
            if (store == null) {
                store = new v0(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return store;
    }

    private String n() {
        return com.google.firebase.f.DEFAULT_APP_NAME.equals(this.firebaseApp.m()) ? "" : this.firebaseApp.o();
    }

    private void r(String str) {
        if (com.google.firebase.f.DEFAULT_APP_NAME.equals(this.firebaseApp.m())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Invoking onNewToken for app: " + this.firebaseApp.m());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra(com.mixpanel.android.mpmetrics.e.KEY_TOKEN, str);
            new n(this.context).k(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task u(final String str, final v0.a aVar) {
        return this.gmsRpc.e().onSuccessTask(this.fileExecutor, new SuccessContinuation() { // from class: com.google.firebase.messaging.x
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f1598a.v(str, aVar, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task v(String str, v0.a aVar, String str2) throws Exception {
        m(this.context).f(n(), str, str2, this.metadata.a());
        if (aVar == null || !str2.equals(aVar.token)) {
            r(str2);
        }
        return Tasks.forResult(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        m0.c(this.context);
    }

    @VisibleForTesting
    boolean F(@Nullable v0.a aVar) {
        return aVar == null || aVar.b(this.metadata.a());
    }

    String i() throws IOException {
        n4.a aVar = this.iid;
        if (aVar != null) {
            try {
                return (String) Tasks.await(aVar.b());
            } catch (InterruptedException | ExecutionException e) {
                throw new IOException(e);
            }
        }
        final v0.a aVarP = p();
        if (!F(aVarP)) {
            return aVarP.token;
        }
        final String strC = g0.c(this.firebaseApp);
        try {
            return (String) Tasks.await(this.requestDeduplicator.b(strC, new q0.a() { // from class: com.google.firebase.messaging.v
                @Override // com.google.firebase.messaging.q0.a
                public final Task start() {
                    return this.f1593a.u(strC, aVarP);
                }
            }));
        } catch (InterruptedException | ExecutionException e2) {
            throw new IOException(e2);
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    void j(Runnable runnable, long j6) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (syncExecutor == null) {
                    syncExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                syncExecutor.schedule(runnable, j6, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public Task<String> o() {
        n4.a aVar = this.iid;
        if (aVar != null) {
            return aVar.b();
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.initExecutor.execute(new Runnable() { // from class: com.google.firebase.messaging.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f1596a.w(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    @Nullable
    @VisibleForTesting
    v0.a p() {
        return m(this.context).d(n(), g0.c(this.firebaseApp));
    }

    public boolean s() {
        return this.autoInit.c();
    }

    @VisibleForTesting
    boolean t() {
        return this.metadata.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(i());
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        if (s()) {
            D();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(a1 a1Var) {
        if (s()) {
            a1Var.o();
        }
    }

    @Deprecated
    public void A(@NonNull RemoteMessage remoteMessage) {
        if (!TextUtils.isEmpty(remoteMessage.getTo())) {
            Intent intent = new Intent(SEND_INTENT_ACTION);
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            intent.putExtra(EXTRA_DUMMY_P_INTENT, PendingIntent.getBroadcast(this.context, 0, intent2, 67108864));
            intent.setPackage("com.google.android.gms");
            remoteMessage.a(intent);
            this.context.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
            return;
        }
        throw new IllegalArgumentException("Missing 'to'");
    }

    FirebaseMessaging(com.google.firebase.f fVar, @Nullable n4.a aVar, o4.b<b5.i> bVar, o4.b<m4.j> bVar2, com.google.firebase.installations.h hVar, @Nullable f2.g gVar, l4.d dVar, g0 g0Var) {
        this(fVar, aVar, hVar, gVar, dVar, g0Var, new b0(fVar, g0Var, bVar, bVar2, hVar), o.f(), o.c(), o.b());
    }

    FirebaseMessaging(com.google.firebase.f fVar, @Nullable n4.a aVar, com.google.firebase.installations.h hVar, @Nullable f2.g gVar, l4.d dVar, g0 g0Var, b0 b0Var, Executor executor, Executor executor2, Executor executor3) {
        this.syncScheduledOrRunning = false;
        transportFactory = gVar;
        this.firebaseApp = fVar;
        this.iid = aVar;
        this.fis = hVar;
        this.autoInit = new a(dVar);
        Context contextK = fVar.k();
        this.context = contextK;
        q qVar = new q();
        this.lifecycleCallbacks = qVar;
        this.metadata = g0Var;
        this.taskExecutor = executor;
        this.gmsRpc = b0Var;
        this.requestDeduplicator = new q0(executor);
        this.initExecutor = executor2;
        this.fileExecutor = executor3;
        Context contextK2 = fVar.k();
        if (contextK2 instanceof Application) {
            ((Application) contextK2).registerActivityLifecycleCallbacks(qVar);
        } else {
            Log.w("FirebaseMessaging", "Context " + contextK2 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (aVar != null) {
            aVar.a(new n4.a.InterfaceC0469a() { // from class: com.google.firebase.messaging.r
            });
        }
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f1589a.x();
            }
        });
        Task<a1> taskE = a1.e(this, g0Var, b0Var, contextK, o.g());
        this.topicsSubscriberTask = taskE;
        taskE.addOnSuccessListener(executor2, new OnSuccessListener() { // from class: com.google.firebase.messaging.t
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.f1590a.y((a1) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f1592a.z();
            }
        });
    }
}

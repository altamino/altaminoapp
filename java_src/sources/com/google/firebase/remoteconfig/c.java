package com.google.firebase.remoteconfig;

import android.app.Application;
import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.compose.animation.core.d;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.f;
import com.google.firebase.installations.h;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.p;
import com.google.firebase.remoteconfig.internal.q;
import com.google.firebase.remoteconfig.internal.rollouts.e;
import com.google.firebase.remoteconfig.internal.u;
import com.google.firebase.remoteconfig.internal.x;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes10.dex */
@KeepForSdk
public class c implements d5.a {
    public static final String ACTIVATE_FILE_NAME = "activate";
    public static final long CONNECTION_TIMEOUT_IN_SECONDS = 60;
    public static final String DEFAULTS_FILE_NAME = "defaults";

    @VisibleForTesting
    public static final String DEFAULT_NAMESPACE = "firebase";
    public static final String FETCH_FILE_NAME = "fetch";
    private static final String FIREBASE_REMOTE_CONFIG_FILE_NAME_PREFIX = "frc";
    private static final String PREFERENCES_FILE_NAME = "settings";

    @Nullable
    private final o4.b<com.google.firebase.analytics.connector.a> analyticsConnector;
    private final String appId;
    private final Context context;

    @GuardedBy
    private Map<String, String> customHeaders;
    private final ScheduledExecutorService executor;
    private final com.google.firebase.abt.c firebaseAbt;
    private final f firebaseApp;
    private final h firebaseInstallations;

    @GuardedBy
    private final Map<String, com.google.firebase.remoteconfig.a> frcNamespaceInstances;
    private static final Clock DEFAULT_CLOCK = DefaultClock.getInstance();
    private static final Random DEFAULT_RANDOM = new Random();
    private static final Map<String, com.google.firebase.remoteconfig.a> frcNamespaceInstancesStatic = new HashMap();

    c(Context context, @w3.b ScheduledExecutorService scheduledExecutorService, f fVar, h hVar, com.google.firebase.abt.c cVar, o4.b<com.google.firebase.analytics.connector.a> bVar) {
        this(context, scheduledExecutorService, fVar, hVar, cVar, bVar, true);
    }

    private com.google.firebase.remoteconfig.internal.f f(String str, String str2) {
        return com.google.firebase.remoteconfig.internal.f.h(this.executor, u.c(this.context, String.format("%s_%s_%s_%s.json", FIREBASE_REMOTE_CONFIG_FILE_NAME_PREFIX, this.appId, str, str2)));
    }

    @VisibleForTesting
    static p k(Context context, String str, String str2) {
        return new p(context.getSharedPreferences(String.format("%s_%s_%s_%s", FIREBASE_REMOTE_CONFIG_FILE_NAME_PREFIX, str, str2, PREFERENCES_FILE_NAME), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.firebase.analytics.connector.a q() {
        return null;
    }

    @VisibleForTesting
    synchronized com.google.firebase.remoteconfig.a d(f fVar, String str, h hVar, com.google.firebase.abt.c cVar, Executor executor, com.google.firebase.remoteconfig.internal.f fVar2, com.google.firebase.remoteconfig.internal.f fVar3, com.google.firebase.remoteconfig.internal.f fVar4, m mVar, o oVar, p pVar, e eVar) {
        try {
            if (!this.frcNamespaceInstances.containsKey(str)) {
                com.google.firebase.remoteconfig.a aVar = new com.google.firebase.remoteconfig.a(this.context, fVar, hVar, o(fVar, str) ? cVar : null, executor, fVar2, fVar3, fVar4, mVar, oVar, pVar, m(fVar, hVar, mVar, fVar3, this.context, str, pVar), eVar);
                aVar.v();
                this.frcNamespaceInstances.put(str, aVar);
                frcNamespaceInstancesStatic.put(str, aVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.frcNamespaceInstances.get(str);
    }

    @KeepForSdk
    @VisibleForTesting
    public synchronized com.google.firebase.remoteconfig.a e(String str) {
        com.google.firebase.remoteconfig.internal.f fVarF;
        com.google.firebase.remoteconfig.internal.f fVarF2;
        com.google.firebase.remoteconfig.internal.f fVarF3;
        p pVarK;
        o oVarJ;
        try {
            fVarF = f(str, FETCH_FILE_NAME);
            fVarF2 = f(str, ACTIVATE_FILE_NAME);
            fVarF3 = f(str, DEFAULTS_FILE_NAME);
            pVarK = k(this.context, this.appId, str);
            oVarJ = j(fVarF2, fVarF3);
            final x xVarL = l(this.firebaseApp, str, this.analyticsConnector);
            if (xVarL != null) {
                oVarJ.b(new BiConsumer() { // from class: c5.o
                    @Override // com.google.android.gms.common.util.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        xVarL.a((String) obj, (com.google.firebase.remoteconfig.internal.g) obj2);
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
        return d(this.firebaseApp, str, this.firebaseInstallations, this.firebaseAbt, this.executor, fVarF, fVarF2, fVarF3, h(str, fVarF, pVarK), oVarJ, pVarK, n(fVarF2, oVarJ));
    }

    @VisibleForTesting
    synchronized m h(String str, com.google.firebase.remoteconfig.internal.f fVar, p pVar) {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return new m(this.firebaseInstallations, p(this.firebaseApp) ? this.analyticsConnector : new o4.b() { // from class: c5.p
            @Override // o4.b
            public final Object get() {
                return com.google.firebase.remoteconfig.c.q();
            }
        }, this.executor, DEFAULT_CLOCK, DEFAULT_RANDOM, fVar, i(this.firebaseApp.n().b(), str, pVar), pVar, this.customHeaders);
    }

    synchronized q m(f fVar, h hVar, m mVar, com.google.firebase.remoteconfig.internal.f fVar2, Context context, String str, p pVar) {
        return new q(fVar, hVar, mVar, fVar2, context, str, pVar, this.executor);
    }

    private static class a implements BackgroundDetector.BackgroundStateChangeListener {
        private static final AtomicReference<a> INSTANCE = new AtomicReference<>();

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference<a> atomicReference = INSTANCE;
            if (atomicReference.get() == null) {
                a aVar = new a();
                if (d.a(atomicReference, null, aVar)) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(aVar);
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z6) {
            c.r(z6);
        }
    }

    @VisibleForTesting
    protected c(Context context, ScheduledExecutorService scheduledExecutorService, f fVar, h hVar, com.google.firebase.abt.c cVar, o4.b<com.google.firebase.analytics.connector.a> bVar, boolean z6) {
        this.frcNamespaceInstances = new HashMap();
        this.customHeaders = new HashMap();
        this.context = context;
        this.executor = scheduledExecutorService;
        this.firebaseApp = fVar;
        this.firebaseInstallations = hVar;
        this.firebaseAbt = cVar;
        this.analyticsConnector = bVar;
        this.appId = fVar.n().c();
        a.b(context);
        if (z6) {
            Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.remoteconfig.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f1644a.g();
                }
            });
        }
    }

    private o j(com.google.firebase.remoteconfig.internal.f fVar, com.google.firebase.remoteconfig.internal.f fVar2) {
        return new o(this.executor, fVar, fVar2);
    }

    private static boolean o(f fVar, String str) {
        return str.equals(DEFAULT_NAMESPACE) && p(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void r(boolean z6) {
        Iterator<com.google.firebase.remoteconfig.a> it = frcNamespaceInstancesStatic.values().iterator();
        while (it.hasNext()) {
            it.next().u(z6);
        }
    }

    com.google.firebase.remoteconfig.a g() {
        return e(DEFAULT_NAMESPACE);
    }

    @VisibleForTesting
    ConfigFetchHttpClient i(String str, String str2, p pVar) {
        return new ConfigFetchHttpClient(this.context, this.firebaseApp.n().c(), str, str2, pVar.b(), pVar.b());
    }

    @Nullable
    private static x l(f fVar, String str, o4.b<com.google.firebase.analytics.connector.a> bVar) {
        if (p(fVar) && str.equals(DEFAULT_NAMESPACE)) {
            return new x(bVar);
        }
        return null;
    }

    private e n(com.google.firebase.remoteconfig.internal.f fVar, o oVar) {
        return new e(fVar, com.google.firebase.remoteconfig.internal.rollouts.a.a(oVar), this.executor);
    }

    private static boolean p(f fVar) {
        return fVar.m().equals(f.DEFAULT_APP_NAME);
    }

    @Override // d5.a
    public void a(@NonNull String str, @NonNull com.google.firebase.remoteconfig.interop.rollouts.f fVar) {
        e(str).n().h(fVar);
    }
}

package com.google.firebase.installations;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.components.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class g implements h {
    private static final String API_KEY_VALIDATION_MSG = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.";
    private static final String APP_ID_VALIDATION_MSG = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";
    private static final String AUTH_ERROR_MSG = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request.";
    private static final String CHIME_FIREBASE_APP_NAME = "CHIME_ANDROID_SDK";
    private static final int CORE_POOL_SIZE = 0;
    private static final long KEEP_ALIVE_TIME_IN_SECONDS = 30;
    private static final String LOCKFILE_NAME_GENERATE_FID = "generatefid.lock";
    private static final int MAXIMUM_POOL_SIZE = 1;
    private static final String PROJECT_ID_VALIDATION_MSG = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";
    private final ExecutorService backgroundExecutor;

    @GuardedBy
    private String cachedFid;
    private final n fidGenerator;

    @GuardedBy
    private Set<p4.a> fidListeners;
    private final com.google.firebase.f firebaseApp;
    private final y<q4.b> iidStore;

    @GuardedBy
    private final List<o> listeners;
    private final Object lock;
    private final Executor networkExecutor;
    private final q4.c persistedInstallation;
    private final com.google.firebase.installations.remote.c serviceClient;
    private final p utils;
    private static final Object lockGenerateFid = new Object();
    private static final ThreadFactory THREAD_FACTORY = new a();

    class a implements ThreadFactory {
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        @SuppressLint({"ThreadPoolCreation"})
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.mCount.getAndIncrement())));
        }

        a() {
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    g(final com.google.firebase.f fVar, @NonNull o4.b<m4.i> bVar, @NonNull ExecutorService executorService, @NonNull Executor executor) {
        this(executorService, executor, fVar, new com.google.firebase.installations.remote.c(fVar.k(), bVar), new q4.c(fVar), p.c(), new y(new o4.b() { // from class: com.google.firebase.installations.d
            @Override // o4.b
            public final Object get() {
                return g.y(fVar);
            }
        }), new n());
    }

    private synchronized void E(String str) {
        this.cachedFid = str;
    }

    private synchronized void F(q4.d dVar, q4.d dVar2) {
        if (this.fidListeners.size() != 0 && !TextUtils.equals(dVar.d(), dVar2.d())) {
            Iterator<p4.a> it = this.fidListeners.iterator();
            while (it.hasNext()) {
                it.next().a(dVar2.d());
            }
        }
    }

    private synchronized String n() {
        return this.cachedFid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
        x(false);
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode;
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode;

        static {
            int[] iArr = new int[com.google.firebase.installations.remote.f.b.values().length];
            $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode = iArr;
            try {
                iArr[com.google.firebase.installations.remote.f.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode[com.google.firebase.installations.remote.f.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode[com.google.firebase.installations.remote.f.b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[com.google.firebase.installations.remote.d.b.values().length];
            $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode = iArr2;
            try {
                iArr2[com.google.firebase.installations.remote.d.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode[com.google.firebase.installations.remote.d.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private String A(q4.d dVar) {
        if ((!this.firebaseApp.m().equals(CHIME_FIREBASE_APP_NAME) && !this.firebaseApp.u()) || !dVar.m()) {
            return this.fidGenerator.a();
        }
        String strF = o().f();
        return TextUtils.isEmpty(strF) ? this.fidGenerator.a() : strF;
    }

    private void C(Exception exc) {
        synchronized (this.lock) {
            try {
                Iterator<o> it = this.listeners.iterator();
                while (it.hasNext()) {
                    if (it.next().a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void D(q4.d dVar) {
        synchronized (this.lock) {
            try {
                Iterator<o> it = this.listeners.iterator();
                while (it.hasNext()) {
                    if (it.next().b(dVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Task<m> f() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new k(this.utils, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private Task<String> g() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new l(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private void h(o oVar) {
        synchronized (this.lock) {
            this.listeners.add(oVar);
        }
    }

    private q4.d k(@NonNull q4.d dVar) throws i {
        com.google.firebase.installations.remote.f fVarE = this.serviceClient.e(l(), dVar.d(), t(), dVar.f());
        int i10 = b.$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode[fVarE.b().ordinal()];
        if (i10 == 1) {
            return dVar.o(fVarE.c(), fVarE.d(), this.utils.b());
        }
        if (i10 == 2) {
            return dVar.q("BAD CONFIG");
        }
        if (i10 != 3) {
            throw new i("Firebase Installations Service is unavailable. Please try again later.", i.a.UNAVAILABLE);
        }
        E(null);
        return dVar.r();
    }

    private q4.b o() {
        return this.iidStore.get();
    }

    @NonNull
    public static g q(@NonNull com.google.firebase.f fVar) {
        Preconditions.checkArgument(fVar != null, "Null is not a valid value of FirebaseApp.");
        return (g) fVar.j(h.class);
    }

    private q4.d r() {
        q4.d dVarD;
        synchronized (lockGenerateFid) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.firebaseApp.k(), LOCKFILE_NAME_GENERATE_FID);
                try {
                    dVarD = this.persistedInstallation.d();
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dVarD;
    }

    private q4.d s() {
        q4.d dVarD;
        synchronized (lockGenerateFid) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.firebaseApp.k(), LOCKFILE_NAME_GENERATE_FID);
                try {
                    dVarD = this.persistedInstallation.d();
                    if (dVarD.j()) {
                        dVarD = this.persistedInstallation.b(dVarD.t(A(dVarD)));
                    }
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dVarD;
    }

    private void u(q4.d dVar) {
        synchronized (lockGenerateFid) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.firebaseApp.k(), LOCKFILE_NAME_GENERATE_FID);
                try {
                    this.persistedInstallation.b(dVar);
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ q4.b y(com.google.firebase.f fVar) {
        return new q4.b(fVar);
    }

    @Nullable
    String l() {
        return this.firebaseApp.n().b();
    }

    @VisibleForTesting
    String m() {
        return this.firebaseApp.n().c();
    }

    @Nullable
    String t() {
        return this.firebaseApp.n().e();
    }

    private q4.d B(q4.d dVar) throws i {
        String strI;
        if (dVar.d() != null && dVar.d().length() == 11) {
            strI = o().i();
        } else {
            strI = null;
        }
        com.google.firebase.installations.remote.d dVarD = this.serviceClient.d(l(), dVar.d(), t(), m(), strI);
        int i10 = b.$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode[dVarD.e().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return dVar.q("BAD CONFIG");
            }
            throw new i("Firebase Installations Service is unavailable. Please try again later.", i.a.UNAVAILABLE);
        }
        return dVar.s(dVarD.c(), dVarD.d(), this.utils.b(), dVarD.b().c(), dVarD.b().d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void v(boolean z6) {
        q4.d dVarB;
        q4.d dVarR = r();
        try {
            if (!dVarR.i() && !dVarR.l()) {
                if (!z6 && !this.utils.f(dVarR)) {
                    return;
                }
                dVarB = k(dVarR);
            } else {
                dVarB = B(dVarR);
            }
            u(dVarB);
            F(dVarR, dVarB);
            if (dVarB.k()) {
                E(dVarB.d());
            }
            if (dVarB.i()) {
                C(new i(i.a.BAD_CONFIG));
            } else if (dVarB.j()) {
                C(new IOException(AUTH_ERROR_MSG));
            } else {
                D(dVarB);
            }
        } catch (i e) {
            C(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final void x(final boolean z6) {
        q4.d dVarS = s();
        if (z6) {
            dVarS = dVarS.p();
        }
        D(dVarS);
        this.networkExecutor.execute(new Runnable() { // from class: com.google.firebase.installations.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f1560a.v(z6);
            }
        });
    }

    @NonNull
    public static g p() {
        return q(com.google.firebase.f.l());
    }

    private void z() {
        Preconditions.checkNotEmpty(m(), APP_ID_VALIDATION_MSG);
        Preconditions.checkNotEmpty(t(), PROJECT_ID_VALIDATION_MSG);
        Preconditions.checkNotEmpty(l(), API_KEY_VALIDATION_MSG);
        Preconditions.checkArgument(p.h(m()), APP_ID_VALIDATION_MSG);
        Preconditions.checkArgument(p.g(l()), API_KEY_VALIDATION_MSG);
    }

    @Override // com.google.firebase.installations.h
    @NonNull
    public Task<m> a(final boolean z6) {
        z();
        Task<m> taskF = f();
        this.backgroundExecutor.execute(new Runnable() { // from class: com.google.firebase.installations.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f1562a.x(z6);
            }
        });
        return taskF;
    }

    @Override // com.google.firebase.installations.h
    @NonNull
    public Task<String> getId() {
        z();
        String strN = n();
        if (strN != null) {
            return Tasks.forResult(strN);
        }
        Task<String> taskG = g();
        this.backgroundExecutor.execute(new Runnable() { // from class: com.google.firebase.installations.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f1558a.w();
            }
        });
        return taskG;
    }

    @SuppressLint({"ThreadPoolCreation"})
    g(ExecutorService executorService, Executor executor, com.google.firebase.f fVar, com.google.firebase.installations.remote.c cVar, q4.c cVar2, p pVar, y<q4.b> yVar, n nVar) {
        this.lock = new Object();
        this.fidListeners = new HashSet();
        this.listeners = new ArrayList();
        this.firebaseApp = fVar;
        this.serviceClient = cVar;
        this.persistedInstallation = cVar2;
        this.utils = pVar;
        this.iidStore = yVar;
        this.fidGenerator = nVar;
        this.backgroundExecutor = executorService;
        this.networkExecutor = executor;
    }
}

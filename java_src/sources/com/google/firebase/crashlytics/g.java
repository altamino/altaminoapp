package com.google.firebase.crashlytics;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.b0;
import com.google.firebase.crashlytics.internal.common.i;
import com.google.firebase.crashlytics.internal.common.m;
import com.google.firebase.crashlytics.internal.common.r;
import com.google.firebase.crashlytics.internal.common.x;
import com.google.firebase.crashlytics.internal.common.z;
import com.google.firebase.crashlytics.internal.l;
import com.google.firebase.installations.h;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes5.dex */
public class g {
    static final int APP_EXCEPTION_CALLBACK_TIMEOUT_MS = 500;
    static final String FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN = "clx";
    static final String LEGACY_CRASH_ANALYTICS_ORIGIN = "crash";

    @VisibleForTesting
    final r core;

    class b implements Callable<Void> {
        final /* synthetic */ r val$core;
        final /* synthetic */ boolean val$finishCoreInBackground;
        final /* synthetic */ com.google.firebase.crashlytics.internal.settings.f val$settingsController;

        b(boolean z6, r rVar, com.google.firebase.crashlytics.internal.settings.f fVar) {
            this.val$finishCoreInBackground = z6;
            this.val$core = rVar;
            this.val$settingsController = fVar;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            if (!this.val$finishCoreInBackground) {
                return null;
            }
            this.val$core.g(this.val$settingsController);
            return null;
        }
    }

    class a implements Continuation<Void, Object> {
        a() {
        }

        @Override // com.google.android.gms.tasks.Continuation
        public Object then(@NonNull Task<Void> task) throws Exception {
            if (!task.isSuccessful()) {
                com.google.firebase.crashlytics.internal.g.f().e("Error fetching settings.", task.getException());
                return null;
            }
            return null;
        }
    }

    public void c(@NonNull Throwable th) {
        if (th == null) {
            com.google.firebase.crashlytics.internal.g.f().k("A null value was passed to recordException. Ignoring.");
        } else {
            this.core.l(th);
        }
    }

    public void d(@NonNull String str) {
        this.core.p(str);
    }

    private g(@NonNull r rVar) {
        this.core = rVar;
    }

    @NonNull
    public static g a() {
        g gVar = (g) com.google.firebase.f.l().j(g.class);
        if (gVar != null) {
            return gVar;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    @Nullable
    static g b(@NonNull com.google.firebase.f fVar, @NonNull h hVar, @NonNull o4.a<com.google.firebase.crashlytics.internal.a> aVar, @NonNull o4.a<com.google.firebase.analytics.connector.a> aVar2, @NonNull o4.a<d5.a> aVar3) {
        Context contextK = fVar.k();
        String packageName = contextK.getPackageName();
        com.google.firebase.crashlytics.internal.g.f().g("Initializing Firebase Crashlytics " + r.i() + " for " + packageName);
        e4.f fVar2 = new e4.f(contextK);
        x xVar = new x(fVar);
        b0 b0Var = new b0(contextK, packageName, hVar, xVar);
        com.google.firebase.crashlytics.internal.d dVar = new com.google.firebase.crashlytics.internal.d(aVar);
        d dVar2 = new d(aVar2);
        ExecutorService executorServiceC = z.c("Crashlytics Exception Handler");
        m mVar = new m(xVar, fVar2);
        com.google.firebase.sessions.api.a.e(mVar);
        r rVar = new r(fVar, b0Var, dVar, xVar, dVar2.e(), dVar2.d(), fVar2, executorServiceC, mVar, new l(aVar3));
        String strC = fVar.n().c();
        String strM = i.m(contextK);
        List<com.google.firebase.crashlytics.internal.common.f> listJ = i.j(contextK);
        com.google.firebase.crashlytics.internal.g.f().b("Mapping file ID is: " + strM);
        for (com.google.firebase.crashlytics.internal.common.f fVar3 : listJ) {
            com.google.firebase.crashlytics.internal.g.f().b(String.format("Build id for %s on %s: %s", fVar3.c(), fVar3.a(), fVar3.b()));
        }
        try {
            com.google.firebase.crashlytics.internal.common.a aVarA = com.google.firebase.crashlytics.internal.common.a.a(contextK, b0Var, strC, strM, listJ, new com.google.firebase.crashlytics.internal.f(contextK));
            com.google.firebase.crashlytics.internal.g.f().i("Installer package name is: " + aVarA.installerPackageName);
            ExecutorService executorServiceC2 = z.c("com.google.firebase.crashlytics.startup");
            com.google.firebase.crashlytics.internal.settings.f fVarL = com.google.firebase.crashlytics.internal.settings.f.l(contextK, strC, b0Var, new d4.b(), aVarA.versionCode, aVarA.versionName, fVar2, xVar);
            fVarL.p(executorServiceC2).continueWith(executorServiceC2, new a());
            Tasks.call(executorServiceC2, new b(rVar.o(aVarA, fVarL), rVar, fVarL));
            return new g(rVar);
        } catch (PackageManager.NameNotFoundException e) {
            com.google.firebase.crashlytics.internal.g.f().e("Error retrieving app package info.", e);
            return null;
        }
    }
}

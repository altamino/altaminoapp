package com.google.firebase.crashlytics.internal.common;

import android.app.ApplicationExitInfo;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class q0 {
    private static final int DEFAULT_BUFFER_SIZE = 8192;
    private static final int EVENT_THREAD_IMPORTANCE = 4;
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    private static final int MAX_CHAINED_EXCEPTION_DEPTH = 8;
    private final t dataCapture;
    private final b0 idManager;
    private final com.google.firebase.crashlytics.internal.metadata.e logFileManager;
    private final com.google.firebase.crashlytics.internal.metadata.n reportMetadata;
    private final e4.e reportPersistence;
    private final com.google.firebase.crashlytics.internal.send.b reportsSender;

    @RequiresApi
    private static com.google.firebase.crashlytics.internal.model.f0.a f(ApplicationExitInfo applicationExitInfo) {
        String strG = null;
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null) {
                strG = g(traceInputStream);
            }
        } catch (IOException e) {
            com.google.firebase.crashlytics.internal.g.f().k("Could not get input trace in application exit info: " + applicationExitInfo.toString() + " Error: " + e);
        }
        return com.google.firebase.crashlytics.internal.model.f0.a.a().c(applicationExitInfo.getImportance()).e(applicationExitInfo.getProcessName()).g(applicationExitInfo.getReason()).i(applicationExitInfo.getTimestamp()).d(applicationExitInfo.getPid()).f(applicationExitInfo.getPss()).h(applicationExitInfo.getRss()).j(strG).a();
    }

    private void s(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, @NonNull String str2, long j6, boolean z6) {
        this.reportPersistence.y(d(this.dataCapture.d(th, thread, str2, j6, 4, 8, z6)), str, str2.equals("crash"));
    }

    public Task<Void> x(@NonNull Executor executor) {
        return y(executor, null);
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d d(com.google.firebase.crashlytics.internal.model.f0.e.d dVar) {
        return e(c(dVar, this.logFileManager, this.reportMetadata), this.reportMetadata);
    }

    @RequiresApi
    @VisibleForTesting
    public static String g(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static q0 h(Context context, b0 b0Var, e4.f fVar, a aVar, com.google.firebase.crashlytics.internal.metadata.e eVar, com.google.firebase.crashlytics.internal.metadata.n nVar, f4.d dVar, com.google.firebase.crashlytics.internal.settings.i iVar, g0 g0Var, m mVar) {
        return new q0(new t(context, b0Var, aVar, dVar, iVar), new e4.e(fVar, iVar, mVar), com.google.firebase.crashlytics.internal.send.b.b(context, iVar, g0Var), eVar, nVar, b0Var);
    }

    @Nullable
    @RequiresApi
    private ApplicationExitInfo l(String str, List<ApplicationExitInfo> list) {
        long jQ = this.reportPersistence.q(str);
        Iterator<ApplicationExitInfo> it = list.iterator();
        while (it.hasNext()) {
            ApplicationExitInfo applicationExitInfoA = androidx.work.impl.utils.b.a(it.next());
            if (applicationExitInfoA.getTimestamp() < jQ) {
                return null;
            }
            if (applicationExitInfoA.getReason() == 6) {
                return applicationExitInfoA;
            }
        }
        return null;
    }

    @NonNull
    private static List<com.google.firebase.crashlytics.internal.model.f0.c> m(@NonNull Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(com.google.firebase.crashlytics.internal.model.f0.c.a().b(entry.getKey()).c(entry.getValue()).a());
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.google.firebase.crashlytics.internal.common.o0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return q0.o((com.google.firebase.crashlytics.internal.model.f0.c) obj, (com.google.firebase.crashlytics.internal.model.f0.c) obj2);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    public void k(long j6, @Nullable String str) {
        this.reportPersistence.k(str, j6);
    }

    public boolean n() {
        return this.reportPersistence.r();
    }

    public SortedSet<String> p() {
        return this.reportPersistence.p();
    }

    public void q(@NonNull String str, long j6) {
        this.reportPersistence.z(this.dataCapture.e(str, j6));
    }

    public void w() {
        this.reportPersistence.i();
    }

    public Task<Void> y(@NonNull Executor executor, @Nullable String str) {
        List<u> listW = this.reportPersistence.w();
        ArrayList arrayList = new ArrayList();
        for (u uVar : listW) {
            if (str == null || str.equals(uVar.d())) {
                arrayList.add(this.reportsSender.c(i(uVar), str != null).continueWith(executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.p0
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object then(Task task) {
                        return Boolean.valueOf(this.f1536a.r(task));
                    }
                }));
            }
        }
        return Tasks.whenAll(arrayList);
    }

    q0(t tVar, e4.e eVar, com.google.firebase.crashlytics.internal.send.b bVar, com.google.firebase.crashlytics.internal.metadata.e eVar2, com.google.firebase.crashlytics.internal.metadata.n nVar, b0 b0Var) {
        this.dataCapture = tVar;
        this.reportPersistence = eVar;
        this.reportsSender = bVar;
        this.logFileManager = eVar2;
        this.reportMetadata = nVar;
        this.idManager = b0Var;
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d c(com.google.firebase.crashlytics.internal.model.f0.e.d dVar, com.google.firebase.crashlytics.internal.metadata.e eVar, com.google.firebase.crashlytics.internal.metadata.n nVar) {
        com.google.firebase.crashlytics.internal.model.f0.e.d.b bVarH = dVar.h();
        String strC = eVar.c();
        if (strC != null) {
            bVarH.d(com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0250d.a().b(strC).a());
        } else {
            com.google.firebase.crashlytics.internal.g.f().i("No log data to include with this event.");
        }
        List<com.google.firebase.crashlytics.internal.model.f0.c> listM = m(nVar.f());
        List<com.google.firebase.crashlytics.internal.model.f0.c> listM2 = m(nVar.g());
        if (!listM.isEmpty() || !listM2.isEmpty()) {
            bVarH.b(dVar.b().i().e(listM).g(listM2).a());
        }
        return bVarH.a();
    }

    private com.google.firebase.crashlytics.internal.model.f0.e.d e(com.google.firebase.crashlytics.internal.model.f0.e.d dVar, com.google.firebase.crashlytics.internal.metadata.n nVar) {
        List<com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e> listH = nVar.h();
        if (listH.isEmpty()) {
            return dVar;
        }
        com.google.firebase.crashlytics.internal.model.f0.e.d.b bVarH = dVar.h();
        bVarH.e(com.google.firebase.crashlytics.internal.model.f0.e.d.f.a().b(listH).a());
        return bVarH.a();
    }

    private u i(u uVar) {
        if (uVar.b().g() == null) {
            return u.a(uVar.b().r(this.idManager.d()), uVar.d(), uVar.c());
        }
        return uVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int o(com.google.firebase.crashlytics.internal.model.f0.c cVar, com.google.firebase.crashlytics.internal.model.f0.c cVar2) {
        return cVar.b().compareTo(cVar2.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(@NonNull Task<u> task) {
        if (task.isSuccessful()) {
            u result = task.getResult();
            com.google.firebase.crashlytics.internal.g.f().b("Crashlytics report successfully enqueued to DataTransport: " + result.d());
            File fileC = result.c();
            if (fileC.delete()) {
                com.google.firebase.crashlytics.internal.g.f().b("Deleted report file: " + fileC.getPath());
                return true;
            }
            com.google.firebase.crashlytics.internal.g.f().k("Crashlytics could not delete report file: " + fileC.getPath());
            return true;
        }
        com.google.firebase.crashlytics.internal.g.f().l("Crashlytics report could not be enqueued to DataTransport", task.getException());
        return false;
    }

    public void j(@NonNull String str, @NonNull List<e0> list, com.google.firebase.crashlytics.internal.model.f0.a aVar) {
        com.google.firebase.crashlytics.internal.g.f().b("SessionReportingCoordinator#finalizeSessionWithNativeEvent");
        ArrayList arrayList = new ArrayList();
        Iterator<e0> it = list.iterator();
        while (it.hasNext()) {
            com.google.firebase.crashlytics.internal.model.f0.d.b bVarB = it.next().b();
            if (bVarB != null) {
                arrayList.add(bVarB);
            }
        }
        this.reportPersistence.l(str, com.google.firebase.crashlytics.internal.model.f0.d.a().b(Collections.unmodifiableList(arrayList)).a(), aVar);
    }

    public void t(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, long j6) {
        com.google.firebase.crashlytics.internal.g.f().i("Persisting fatal event for session " + str);
        s(th, thread, str, "crash", j6, true);
    }

    public void u(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, long j6) {
        com.google.firebase.crashlytics.internal.g.f().i("Persisting non-fatal event for session " + str);
        s(th, thread, str, "error", j6, false);
    }

    @RequiresApi
    public void v(String str, List<ApplicationExitInfo> list, com.google.firebase.crashlytics.internal.metadata.e eVar, com.google.firebase.crashlytics.internal.metadata.n nVar) {
        ApplicationExitInfo applicationExitInfoL = l(str, list);
        if (applicationExitInfoL == null) {
            com.google.firebase.crashlytics.internal.g.f().i("No relevant ApplicationExitInfo occurred during session: " + str);
            return;
        }
        com.google.firebase.crashlytics.internal.model.f0.e.d dVarC = this.dataCapture.c(f(applicationExitInfoL));
        com.google.firebase.crashlytics.internal.g.f().b("Persisting anr for session " + str);
        this.reportPersistence.y(e(c(dVarC, eVar, nVar), nVar), str, true);
    }
}

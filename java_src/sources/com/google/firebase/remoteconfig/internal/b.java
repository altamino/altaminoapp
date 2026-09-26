package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    private static final int MAXIMUM_FETCH_ATTEMPTS = 3;
    private static final String REALTIME_DISABLED_KEY = "featureDisabled";
    private static final String TEMPLATE_VERSION_KEY = "latestTemplateVersionNumber";
    private final f activatedCache;
    private final m configFetchHandler;

    @GuardedBy
    private final Set<c5.c> eventListeners;
    private final HttpURLConnection httpURLConnection;
    private final Random random = new Random();
    private final c5.c retryCallback;
    private final ScheduledExecutorService scheduledExecutorService;

    class a implements Runnable {
        final /* synthetic */ int val$remainingAttempts;
        final /* synthetic */ long val$targetVersion;

        a(int i10, long j6) {
            this.val$remainingAttempts = i10;
            this.val$targetVersion = j6;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.d(this.val$remainingAttempts, this.val$targetVersion);
        }
    }

    private synchronized void c(c5.b bVar) {
        Iterator<c5.c> it = this.eventListeners.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
    }

    private synchronized boolean g() {
        return this.eventListeners.isEmpty();
    }

    private synchronized void k(c5.i iVar) {
        Iterator<c5.c> it = this.eventListeners.iterator();
        while (it.hasNext()) {
            it.next().b(iVar);
        }
    }

    @VisibleForTesting
    public synchronized Task<Void> d(int i10, final long j6) {
        final int i11;
        final Task<m.a> taskN;
        final Task<g> taskE;
        i11 = i10 - 1;
        taskN = this.configFetchHandler.n(m.b.REALTIME, 3 - i11);
        taskE = this.activatedCache.e();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskN, taskE}).continueWithTask(this.scheduledExecutorService, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.a
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f1645a.h(taskN, taskE, j6, i11, task);
            }
        });
    }

    private void b(int i10, long j6) {
        if (i10 == 0) {
            k(new c5.l("Unable to fetch the latest version of the template.", c5.i.a.CONFIG_UPDATE_NOT_FETCHED));
        } else {
            this.scheduledExecutorService.schedule(new a(i10, j6), this.random.nextInt(4), TimeUnit.SECONDS);
        }
    }

    private void f(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
        loop0: while (true) {
            String strJ = "";
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break loop0;
                }
                strJ = strJ + line;
                if (line.contains("}")) {
                    strJ = j(strJ);
                    if (strJ.isEmpty()) {
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject(strJ);
                if (jSONObject.has(REALTIME_DISABLED_KEY) && jSONObject.getBoolean(REALTIME_DISABLED_KEY)) {
                    this.retryCallback.b(new c5.l("The server is temporarily unavailable. Try again in a few minutes.", c5.i.a.CONFIG_UPDATE_UNAVAILABLE));
                    break;
                } else {
                    if (g()) {
                        break;
                    }
                    if (jSONObject.has(TEMPLATE_VERSION_KEY)) {
                        long jR = this.configFetchHandler.r();
                        long j6 = jSONObject.getLong(TEMPLATE_VERSION_KEY);
                        if (j6 > jR) {
                            b(3, j6);
                        }
                    }
                }
            } catch (JSONException e) {
                k(new c5.h("Unable to parse config update message.", e.getCause(), c5.i.a.CONFIG_UPDATE_MESSAGE_INVALID));
                Log.e(com.google.firebase.remoteconfig.a.TAG, "Unable to parse latest config update message.", e);
            }
        }
        bufferedReader.close();
        inputStream.close();
    }

    private String j(String str) {
        int iIndexOf = str.indexOf(123);
        int iLastIndexOf = str.lastIndexOf(125);
        return (iIndexOf < 0 || iLastIndexOf < 0 || iIndexOf >= iLastIndexOf) ? "" : str.substring(iIndexOf, iLastIndexOf + 1);
    }

    @VisibleForTesting
    public void i() {
        HttpURLConnection httpURLConnection = this.httpURLConnection;
        if (httpURLConnection == null) {
            return;
        }
        try {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                f(inputStream);
                inputStream.close();
            } catch (IOException e) {
                Log.d(com.google.firebase.remoteconfig.a.TAG, "Stream was cancelled due to an exception. Retrying the connection...", e);
            }
        } finally {
            this.httpURLConnection.disconnect();
        }
    }

    public b(HttpURLConnection httpURLConnection, m mVar, f fVar, Set<c5.c> set, c5.c cVar, ScheduledExecutorService scheduledExecutorService) {
        this.httpURLConnection = httpURLConnection;
        this.configFetchHandler = mVar;
        this.activatedCache = fVar;
        this.eventListeners = set;
        this.retryCallback = cVar;
        this.scheduledExecutorService = scheduledExecutorService;
    }

    private static Boolean e(m.a aVar, long j6) {
        boolean z6 = false;
        if (aVar.d() != null) {
            if (aVar.d().k() >= j6) {
                z6 = true;
            }
            return Boolean.valueOf(z6);
        }
        if (aVar.f() == 1) {
            z6 = true;
        }
        return Boolean.valueOf(z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task h(Task task, Task task2, long j6, int i10, Task task3) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException(new c5.h("Failed to auto-fetch config update.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new c5.h("Failed to get activated config for auto-fetch", task2.getException()));
        }
        m.a aVar = (m.a) task.getResult();
        g gVarA = (g) task2.getResult();
        if (!e(aVar, j6).booleanValue()) {
            Log.d(com.google.firebase.remoteconfig.a.TAG, "Fetched template version is the same as SDK's current version. Retrying fetch.");
            b(i10, j6);
            return Tasks.forResult(null);
        }
        if (aVar.d() == null) {
            Log.d(com.google.firebase.remoteconfig.a.TAG, "The fetch succeeded, but the backend had no updates.");
            return Tasks.forResult(null);
        }
        if (gVarA == null) {
            gVarA = g.l().a();
        }
        Set<String> setF = gVarA.f(aVar.d());
        if (setF.isEmpty()) {
            Log.d(com.google.firebase.remoteconfig.a.TAG, "Config was fetched, but no params changed.");
            return Tasks.forResult(null);
        }
        c(c5.b.a(setF));
        return Tasks.forResult(null);
    }
}

package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import c5.k;
import c5.n;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.concurrent.z;
import com.google.firebase.installations.h;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.g;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.p;
import com.google.firebase.remoteconfig.internal.q;
import com.google.firebase.remoteconfig.internal.rollouts.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
public class a {
    public static final boolean DEFAULT_VALUE_FOR_BOOLEAN = false;
    public static final byte[] DEFAULT_VALUE_FOR_BYTE_ARRAY = new byte[0];
    public static final double DEFAULT_VALUE_FOR_DOUBLE = 0.0d;
    public static final long DEFAULT_VALUE_FOR_LONG = 0;
    public static final String DEFAULT_VALUE_FOR_STRING = "";
    public static final int LAST_FETCH_STATUS_FAILURE = 1;
    public static final int LAST_FETCH_STATUS_NO_FETCH_YET = 0;
    public static final int LAST_FETCH_STATUS_SUCCESS = -1;
    public static final int LAST_FETCH_STATUS_THROTTLED = 2;
    public static final String TAG = "FirebaseRemoteConfig";
    public static final int VALUE_SOURCE_DEFAULT = 1;
    public static final int VALUE_SOURCE_REMOTE = 2;
    public static final int VALUE_SOURCE_STATIC = 0;
    private final f activatedConfigsCache;
    private final q configRealtimeHandler;
    private final Context context;
    private final f defaultConfigsCache;
    private final Executor executor;
    private final m fetchHandler;
    private final f fetchedConfigsCache;

    @Nullable
    private final com.google.firebase.abt.c firebaseAbt;
    private final com.google.firebase.f firebaseApp;
    private final h firebaseInstallations;
    private final p frcMetadata;
    private final o getHandler;
    private final e rolloutsStateSubscriptionsHandler;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task r(m.a aVar) throws Exception {
        return Tasks.forResult(null);
    }

    e n() {
        return this.rolloutsStateSubscriptionsHandler;
    }

    @NonNull
    public static a l(@NonNull com.google.firebase.f fVar) {
        return ((c) fVar.j(c.class)).g();
    }

    private static boolean p(g gVar, @Nullable g gVar2) {
        return gVar2 == null || !gVar.h().equals(gVar2.h());
    }

    @VisibleForTesting
    static List<Map<String, String>> w(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            HashMap map = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            arrayList.add(map);
        }
        return arrayList;
    }

    @NonNull
    public Task<Boolean> e() {
        final Task<g> taskE = this.fetchedConfigsCache.e();
        final Task<g> taskE2 = this.activatedConfigsCache.e();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskE, taskE2}).continueWithTask(this.executor, new Continuation() { // from class: c5.f
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f891a.q(taskE, taskE2, task);
            }
        });
    }

    @NonNull
    public Task<Void> f() {
        return this.fetchHandler.i().onSuccessTask(z.a(), new SuccessContinuation() { // from class: c5.d
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return com.google.firebase.remoteconfig.a.r((com.google.firebase.remoteconfig.internal.m.a) obj);
            }
        });
    }

    @NonNull
    public Map<String, n> h() {
        return this.getHandler.d();
    }

    public boolean i(@NonNull String str) {
        return this.getHandler.e(str);
    }

    @NonNull
    public k j() {
        return this.frcMetadata.c();
    }

    public long m(@NonNull String str) {
        return this.getHandler.h(str);
    }

    @NonNull
    public String o(@NonNull String str) {
        return this.getHandler.j(str);
    }

    void u(boolean z6) {
        this.configRealtimeHandler.b(z6);
    }

    void v() {
        this.activatedConfigsCache.e();
        this.defaultConfigsCache.e();
        this.fetchedConfigsCache.e();
    }

    @VisibleForTesting
    void x(@NonNull JSONArray jSONArray) {
        if (this.firebaseAbt == null) {
            return;
        }
        try {
            this.firebaseAbt.m(w(jSONArray));
        } catch (com.google.firebase.abt.a e) {
            Log.w(TAG, "Could not update ABT experiments.", e);
        } catch (JSONException e2) {
            Log.e(TAG, "Could not parse ABT experiments from the JSON response.", e2);
        }
    }

    a(Context context, com.google.firebase.f fVar, h hVar, @Nullable com.google.firebase.abt.c cVar, Executor executor, f fVar2, f fVar3, f fVar4, m mVar, o oVar, p pVar, q qVar, e eVar) {
        this.context = context;
        this.firebaseApp = fVar;
        this.firebaseInstallations = hVar;
        this.firebaseAbt = cVar;
        this.executor = executor;
        this.fetchedConfigsCache = fVar2;
        this.activatedConfigsCache = fVar3;
        this.defaultConfigsCache = fVar4;
        this.fetchHandler = mVar;
        this.getHandler = oVar;
        this.frcMetadata = pVar;
        this.configRealtimeHandler = qVar;
        this.rolloutsStateSubscriptionsHandler = eVar;
    }

    @NonNull
    public static a k() {
        return l(com.google.firebase.f.l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task q(Task task, Task task2, Task task3) throws Exception {
        if (task.isSuccessful() && task.getResult() != null) {
            g gVar = (g) task.getResult();
            if (task2.isSuccessful() && !p(gVar, (g) task2.getResult())) {
                return Tasks.forResult(Boolean.FALSE);
            }
            return this.activatedConfigsCache.k(gVar).continueWith(this.executor, new Continuation() { // from class: c5.g
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task4) {
                    return Boolean.valueOf(this.f894a.t(task4));
                }
            });
        }
        return Tasks.forResult(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task s(Void r1) throws Exception {
        return e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t(Task<g> task) {
        if (task.isSuccessful()) {
            this.fetchedConfigsCache.d();
            g result = task.getResult();
            if (result != null) {
                x(result.e());
                this.rolloutsStateSubscriptionsHandler.g(result);
                return true;
            }
            Log.e(TAG, "Activated configs written to disk are null.");
            return true;
        }
        return false;
    }

    @NonNull
    public Task<Boolean> g() {
        return f().onSuccessTask(this.executor, new SuccessContinuation() { // from class: c5.e
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f890a.s((Void) obj);
            }
        });
    }
}

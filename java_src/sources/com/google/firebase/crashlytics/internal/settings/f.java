package com.google.firebase.crashlytics.internal.settings;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.b0;
import com.google.firebase.crashlytics.internal.common.r0;
import com.google.firebase.crashlytics.internal.common.w;
import com.google.firebase.crashlytics.internal.common.x;
import com.google.firebase.crashlytics.internal.common.y;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class f implements i {
    private static final String PREFS_BUILD_INSTANCE_IDENTIFIER = "existing_instance_identifier";
    private static final String SETTINGS_URL_FORMAT = "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings";
    private final com.google.firebase.crashlytics.internal.settings.a cachedSettingsIo;
    private final Context context;
    private final w currentTimeProvider;
    private final x dataCollectionArbiter;
    private final AtomicReference<d> settings;
    private final g settingsJsonParser;
    private final j settingsRequest;
    private final k settingsSpiCall;
    private final AtomicReference<TaskCompletionSource<d>> settingsTask;

    class a implements SuccessContinuation<Void, Void> {
        a() {
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> then(@Nullable Void r5) throws Exception {
            JSONObject jSONObjectA = f.this.settingsSpiCall.a(f.this.settingsRequest, true);
            if (jSONObjectA != null) {
                d dVarB = f.this.settingsJsonParser.b(jSONObjectA);
                f.this.cachedSettingsIo.c(dVarB.expiresAtMillis, jSONObjectA);
                f.this.q(jSONObjectA, "Loaded settings: ");
                f fVar = f.this;
                fVar.r(fVar.settingsRequest.instanceId);
                f.this.settings.set(dVarB);
                ((TaskCompletionSource) f.this.settingsTask.get()).trySetResult(dVarB);
            }
            return Tasks.forResult(null);
        }
    }

    private d m(e eVar) throws Throwable {
        d dVar = null;
        try {
            if (!e.SKIP_CACHE_LOOKUP.equals(eVar)) {
                JSONObject jSONObjectB = this.cachedSettingsIo.b();
                if (jSONObjectB != null) {
                    d dVarB = this.settingsJsonParser.b(jSONObjectB);
                    if (dVarB != null) {
                        q(jSONObjectB, "Loaded cached settings: ");
                        long jA = this.currentTimeProvider.a();
                        if (e.IGNORE_CACHE_EXPIRATION.equals(eVar) || !dVarB.a(jA)) {
                            try {
                                com.google.firebase.crashlytics.internal.g.f().i("Returning cached settings.");
                                dVar = dVarB;
                            } catch (Exception e) {
                                e = e;
                                dVar = dVarB;
                                com.google.firebase.crashlytics.internal.g.f().e("Failed to get cached settings", e);
                            }
                        } else {
                            com.google.firebase.crashlytics.internal.g.f().i("Cached settings have expired.");
                        }
                    } else {
                        com.google.firebase.crashlytics.internal.g.f().e("Failed to parse cached settings data.", null);
                    }
                } else {
                    com.google.firebase.crashlytics.internal.g.f().b("No cached settings data found.");
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return dVar;
    }

    public static f l(Context context, String str, b0 b0Var, d4.b bVar, String str2, String str3, e4.f fVar, x xVar) {
        String strG = b0Var.g();
        r0 r0Var = new r0();
        return new f(context, new j(str, b0Var.h(), b0Var.i(), b0Var.j(), b0Var, com.google.firebase.crashlytics.internal.common.i.h(com.google.firebase.crashlytics.internal.common.i.m(context), str, str3, str2), str3, str2, y.a(strG).b()), r0Var, new g(r0Var), new com.google.firebase.crashlytics.internal.settings.a(fVar), new c(String.format(Locale.US, SETTINGS_URL_FORMAT, str), bVar), xVar);
    }

    private String n() {
        return com.google.firebase.crashlytics.internal.common.i.q(this.context).getString(PREFS_BUILD_INSTANCE_IDENTIFIER, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public boolean r(String str) {
        SharedPreferences.Editor editorEdit = com.google.firebase.crashlytics.internal.common.i.q(this.context).edit();
        editorEdit.putString(PREFS_BUILD_INSTANCE_IDENTIFIER, str);
        editorEdit.apply();
        return true;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.i
    public d a() {
        return this.settings.get();
    }

    @Override // com.google.firebase.crashlytics.internal.settings.i
    public Task<d> b() {
        return this.settingsTask.get().getTask();
    }

    public Task<Void> p(Executor executor) {
        return o(e.USE_CACHE, executor);
    }

    f(Context context, j jVar, w wVar, g gVar, com.google.firebase.crashlytics.internal.settings.a aVar, k kVar, x xVar) {
        AtomicReference<d> atomicReference = new AtomicReference<>();
        this.settings = atomicReference;
        this.settingsTask = new AtomicReference<>(new TaskCompletionSource());
        this.context = context;
        this.settingsRequest = jVar;
        this.currentTimeProvider = wVar;
        this.settingsJsonParser = gVar;
        this.cachedSettingsIo = aVar;
        this.settingsSpiCall = kVar;
        this.dataCollectionArbiter = xVar;
        atomicReference.set(b.b(wVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(JSONObject jSONObject, String str) throws JSONException {
        com.google.firebase.crashlytics.internal.g.f().b(str + jSONObject.toString());
    }

    boolean k() {
        return !n().equals(this.settingsRequest.instanceId);
    }

    public Task<Void> o(e eVar, Executor executor) throws Throwable {
        d dVarM;
        if (!k() && (dVarM = m(eVar)) != null) {
            this.settings.set(dVarM);
            this.settingsTask.get().trySetResult(dVarM);
            return Tasks.forResult(null);
        }
        d dVarM2 = m(e.IGNORE_CACHE_EXPIRATION);
        if (dVarM2 != null) {
            this.settings.set(dVarM2);
            this.settingsTask.get().trySetResult(dVarM2);
        }
        return this.dataCollectionArbiter.i(executor).onSuccessTask(executor, new a());
    }
}

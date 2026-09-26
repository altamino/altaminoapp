package com.google.firebase.sessions.settings;

import android.os.Build;
import android.util.Log;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import com.google.android.gms.tasks.Task;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.util.ws.WsMessage;
import e8.p;
import java.util.Arrays;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import w7.a0;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements h {

    @NotNull
    private static final a Companion = new a(null);

    @Deprecated
    @NotNull
    public static final String FORWARD_SLASH_STRING = "/";

    @Deprecated
    @NotNull
    public static final String TAG = "SessionConfigFetcher";

    @NotNull
    private final com.google.firebase.sessions.b appInfo;

    @NotNull
    private final kotlin.coroutines.g backgroundDispatcher;

    @NotNull
    private final com.google.firebase.sessions.settings.a configsFetcher;

    @NotNull
    private final kotlinx.coroutines.sync.a fetchInProgress;

    @NotNull
    private final com.google.firebase.installations.h firebaseInstallationsApi;

    @NotNull
    private final g settingsCache;

    private static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.RemoteSettings", f = "RemoteSettings.kt", l = {170, 76, 94}, m = "updateSettings")
    static final class b extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return c.this.b(this);
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.c$c, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", f = "RemoteSettings.kt", l = {125, 128, 131, 133, 134, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST}, m = "invokeSuspend")
    static final class C0270c extends l implements p<JSONObject, kotlin.coroutines.d<? super l0>, Object> {
        /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C0270c(kotlin.coroutines.d<? super C0270c> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            C0270c c0270c = c.this.new C0270c(dVar);
            c0270c.L$0 = obj;
            return c0270c;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull JSONObject jSONObject, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((C0270c) create(jSONObject, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:45:0x00fe  */
        /* JADX WARN: Code duplicated, block: B:47:0x011a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:50:0x0121  */
        /* JADX WARN: Code duplicated, block: B:52:0x013d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:55:0x0144  */
        /* JADX WARN: Code duplicated, block: B:57:0x0160 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x0164  */
        /* JADX WARN: Code duplicated, block: B:61:0x0167  */
        /* JADX WARN: Code duplicated, block: B:63:0x0183 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x01a1 A[RETURN] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v12, types: [T, java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r1v5, types: [T, java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r2v4, types: [T, java.lang.Double] */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws JSONException {
            p0 p0Var;
            Boolean bool;
            p0 p0Var2;
            p0 p0Var3;
            p0 p0Var4;
            p0 p0Var5;
            Integer num;
            g gVar;
            Integer num2;
            Double d;
            g gVar2;
            Double d2;
            Integer num3;
            l0 l0Var;
            g gVar3;
            Integer num4;
            g gVar4;
            Integer numD;
            g gVar5;
            Long lE;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            switch (this.label) {
                case 0:
                    w.b(obj);
                    JSONObject jSONObject = (JSONObject) this.L$0;
                    Log.d(c.TAG, "Fetched settings: " + jSONObject);
                    p0 p0Var6 = new p0();
                    p0Var = new p0();
                    p0 p0Var7 = new p0();
                    if (jSONObject.has("app_quality")) {
                        Object obj2 = jSONObject.get("app_quality");
                        t.h(obj2, "null cannot be cast to non-null type org.json.JSONObject");
                        JSONObject jSONObject2 = (JSONObject) obj2;
                        try {
                            bool = jSONObject2.has("sessions_enabled") ? (Boolean) jSONObject2.get("sessions_enabled") : null;
                            try {
                                if (jSONObject2.has("sampling_rate")) {
                                    p0Var6.element = (Double) jSONObject2.get("sampling_rate");
                                }
                                if (jSONObject2.has("session_timeout_seconds")) {
                                    p0Var.element = (Integer) jSONObject2.get("session_timeout_seconds");
                                }
                                if (jSONObject2.has("cache_duration")) {
                                    p0Var7.element = (Integer) jSONObject2.get("cache_duration");
                                }
                            } catch (JSONException e) {
                                e = e;
                                Log.e(c.TAG, "Error parsing the configs remotely fetched: ", e);
                            }
                        } catch (JSONException e2) {
                            e = e2;
                            bool = null;
                        }
                        break;
                    } else {
                        bool = null;
                    }
                    if (bool != null) {
                        c cVar = c.this;
                        bool.booleanValue();
                        g gVar6 = cVar.settingsCache;
                        this.L$0 = p0Var6;
                        this.L$1 = p0Var;
                        this.L$2 = p0Var7;
                        this.label = 1;
                        if (gVar6.n(bool, this) == objE) {
                            return objE;
                        }
                        p0Var4 = p0Var6;
                        p0Var5 = p0Var;
                        p0Var3 = p0Var7;
                        p0Var = p0Var5;
                        p0Var2 = p0Var4;
                    } else {
                        p0Var2 = p0Var6;
                        p0Var3 = p0Var7;
                    }
                    num = (Integer) p0Var.element;
                    if (num != null) {
                        c cVar2 = c.this;
                        num.intValue();
                        gVar = cVar2.settingsCache;
                        num2 = (Integer) p0Var.element;
                        this.L$0 = p0Var2;
                        this.L$1 = p0Var3;
                        this.L$2 = null;
                        this.label = 2;
                        if (gVar.m(num2, this) == objE) {
                            return objE;
                        }
                    }
                    d = (Double) p0Var2.element;
                    if (d != null) {
                        c cVar3 = c.this;
                        d.doubleValue();
                        gVar2 = cVar3.settingsCache;
                        d2 = (Double) p0Var2.element;
                        this.L$0 = p0Var3;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 3;
                        if (gVar2.i(d2, this) == objE) {
                            return objE;
                        }
                    }
                    num3 = (Integer) p0Var3.element;
                    if (num3 != null) {
                        c cVar4 = c.this;
                        num3.intValue();
                        gVar3 = cVar4.settingsCache;
                        num4 = (Integer) p0Var3.element;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 4;
                        if (gVar3.j(num4, this) == objE) {
                            return objE;
                        }
                        l0Var = l0.INSTANCE;
                    } else {
                        l0Var = null;
                    }
                    if (l0Var == null) {
                        gVar4 = c.this.settingsCache;
                        numD = kotlin.coroutines.jvm.internal.b.d(InviteMembersFragment.SECOND_DAY);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (gVar4.j(numD, this) == objE) {
                            return objE;
                        }
                    }
                    gVar5 = c.this.settingsCache;
                    lE = kotlin.coroutines.jvm.internal.b.e(System.currentTimeMillis());
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 6;
                    if (gVar5.k(lE, this) == objE) {
                        return objE;
                    }
                    return l0.INSTANCE;
                case 1:
                    p0Var3 = (p0) this.L$2;
                    p0Var5 = (p0) this.L$1;
                    p0Var4 = (p0) this.L$0;
                    w.b(obj);
                    p0Var = p0Var5;
                    p0Var2 = p0Var4;
                    num = (Integer) p0Var.element;
                    if (num != null) {
                        c cVar5 = c.this;
                        num.intValue();
                        gVar = cVar5.settingsCache;
                        num2 = (Integer) p0Var.element;
                        this.L$0 = p0Var2;
                        this.L$1 = p0Var3;
                        this.L$2 = null;
                        this.label = 2;
                        if (gVar.m(num2, this) == objE) {
                            return objE;
                        }
                    }
                    d = (Double) p0Var2.element;
                    if (d != null) {
                        c cVar6 = c.this;
                        d.doubleValue();
                        gVar2 = cVar6.settingsCache;
                        d2 = (Double) p0Var2.element;
                        this.L$0 = p0Var3;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 3;
                        if (gVar2.i(d2, this) == objE) {
                            return objE;
                        }
                    }
                    num3 = (Integer) p0Var3.element;
                    if (num3 != null) {
                        c cVar7 = c.this;
                        num3.intValue();
                        gVar3 = cVar7.settingsCache;
                        num4 = (Integer) p0Var3.element;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 4;
                        if (gVar3.j(num4, this) == objE) {
                            return objE;
                        }
                        l0Var = l0.INSTANCE;
                    } else {
                        l0Var = null;
                    }
                    if (l0Var == null) {
                        gVar4 = c.this.settingsCache;
                        numD = kotlin.coroutines.jvm.internal.b.d(InviteMembersFragment.SECOND_DAY);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (gVar4.j(numD, this) == objE) {
                            return objE;
                        }
                    }
                    gVar5 = c.this.settingsCache;
                    lE = kotlin.coroutines.jvm.internal.b.e(System.currentTimeMillis());
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 6;
                    if (gVar5.k(lE, this) == objE) {
                        return objE;
                    }
                    return l0.INSTANCE;
                case 2:
                    p0Var3 = (p0) this.L$1;
                    p0Var2 = (p0) this.L$0;
                    w.b(obj);
                    d = (Double) p0Var2.element;
                    if (d != null) {
                        c cVar8 = c.this;
                        d.doubleValue();
                        gVar2 = cVar8.settingsCache;
                        d2 = (Double) p0Var2.element;
                        this.L$0 = p0Var3;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 3;
                        if (gVar2.i(d2, this) == objE) {
                            return objE;
                        }
                    }
                    num3 = (Integer) p0Var3.element;
                    if (num3 != null) {
                        c cVar9 = c.this;
                        num3.intValue();
                        gVar3 = cVar9.settingsCache;
                        num4 = (Integer) p0Var3.element;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 4;
                        if (gVar3.j(num4, this) == objE) {
                            return objE;
                        }
                        l0Var = l0.INSTANCE;
                    } else {
                        l0Var = null;
                    }
                    if (l0Var == null) {
                        gVar4 = c.this.settingsCache;
                        numD = kotlin.coroutines.jvm.internal.b.d(InviteMembersFragment.SECOND_DAY);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (gVar4.j(numD, this) == objE) {
                            return objE;
                        }
                    }
                    gVar5 = c.this.settingsCache;
                    lE = kotlin.coroutines.jvm.internal.b.e(System.currentTimeMillis());
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 6;
                    if (gVar5.k(lE, this) == objE) {
                        return objE;
                    }
                    return l0.INSTANCE;
                case 3:
                    p0Var3 = (p0) this.L$0;
                    w.b(obj);
                    num3 = (Integer) p0Var3.element;
                    if (num3 != null) {
                        c cVar10 = c.this;
                        num3.intValue();
                        gVar3 = cVar10.settingsCache;
                        num4 = (Integer) p0Var3.element;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 4;
                        if (gVar3.j(num4, this) == objE) {
                            return objE;
                        }
                        l0Var = l0.INSTANCE;
                    } else {
                        l0Var = null;
                    }
                    if (l0Var == null) {
                        gVar4 = c.this.settingsCache;
                        numD = kotlin.coroutines.jvm.internal.b.d(InviteMembersFragment.SECOND_DAY);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (gVar4.j(numD, this) == objE) {
                            return objE;
                        }
                    }
                    gVar5 = c.this.settingsCache;
                    lE = kotlin.coroutines.jvm.internal.b.e(System.currentTimeMillis());
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 6;
                    if (gVar5.k(lE, this) == objE) {
                        return objE;
                    }
                    return l0.INSTANCE;
                case 4:
                    w.b(obj);
                    l0Var = l0.INSTANCE;
                    if (l0Var == null) {
                        gVar4 = c.this.settingsCache;
                        numD = kotlin.coroutines.jvm.internal.b.d(InviteMembersFragment.SECOND_DAY);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (gVar4.j(numD, this) == objE) {
                            return objE;
                        }
                    }
                    gVar5 = c.this.settingsCache;
                    lE = kotlin.coroutines.jvm.internal.b.e(System.currentTimeMillis());
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 6;
                    if (gVar5.k(lE, this) == objE) {
                        return objE;
                    }
                    return l0.INSTANCE;
                case 5:
                    w.b(obj);
                    gVar5 = c.this.settingsCache;
                    lE = kotlin.coroutines.jvm.internal.b.e(System.currentTimeMillis());
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 6;
                    if (gVar5.k(lE, this) == objE) {
                        return objE;
                    }
                    return l0.INSTANCE;
                case 6:
                    w.b(obj);
                    return l0.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$2", f = "RemoteSettings.kt", l = {}, m = "invokeSuspend")
    static final class d extends l implements p<String, kotlin.coroutines.d<? super l0>, Object> {
        /* synthetic */ Object L$0;
        int label;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            d dVar2 = new d(dVar);
            dVar2.L$0 = obj;
            return dVar2;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull String str, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((d) create(str, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                Log.e(c.TAG, "Error failing to fetch the remote configs: " + ((String) this.L$0));
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public c(@NotNull kotlin.coroutines.g backgroundDispatcher, @NotNull com.google.firebase.installations.h firebaseInstallationsApi, @NotNull com.google.firebase.sessions.b appInfo, @NotNull com.google.firebase.sessions.settings.a configsFetcher, @NotNull DataStore<Preferences> dataStore) {
        t.j(backgroundDispatcher, "backgroundDispatcher");
        t.j(firebaseInstallationsApi, "firebaseInstallationsApi");
        t.j(appInfo, "appInfo");
        t.j(configsFetcher, "configsFetcher");
        t.j(dataStore, "dataStore");
        this.backgroundDispatcher = backgroundDispatcher;
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.appInfo = appInfo;
        this.configsFetcher = configsFetcher;
        this.settingsCache = new g(dataStore);
        this.fetchInProgress = kotlinx.coroutines.sync.c.b(false, 1, null);
    }

    private final String f(String str) {
        return new kotlin.text.g(FORWARD_SLASH_STRING).c(str, "");
    }

    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public Double a() {
        return this.settingsCache.f();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00b8 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x004e, B:44:0x00b4, B:46:0x00b8, B:50:0x00c4, B:36:0x0089, B:38:0x0091, B:41:0x009c), top: B:59:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:52:0x014c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x014d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlinx.coroutines.sync.a] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public Object b(@NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        b bVar;
        ?? r5;
        kotlinx.coroutines.sync.a aVar;
        c cVar;
        String str;
        Map<String, String> mapL;
        com.google.firebase.sessions.settings.a aVar2;
        C0270c c0270c;
        d dVar2;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i10 = bVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.label = i10 - Integer.MIN_VALUE;
            } else {
                bVar = new b(dVar);
            }
        } else {
            bVar = new b(dVar);
        }
        Object objA = bVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        ?? r10 = bVar.label;
        try {
            if (r10 == 0) {
                w.b(objA);
                if (!this.fetchInProgress.b() && !this.settingsCache.d()) {
                    return l0.INSTANCE;
                }
                kotlinx.coroutines.sync.a aVar3 = this.fetchInProgress;
                bVar.L$0 = this;
                bVar.L$1 = aVar3;
                bVar.label = 1;
                if (aVar3.d(null, bVar) == objE) {
                    return objE;
                }
                aVar = aVar3;
                cVar = this;
            } else {
                if (r10 != 1) {
                    if (r10 != 2) {
                        if (r10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        r5 = (kotlinx.coroutines.sync.a) bVar.L$0;
                        try {
                            w.b(objA);
                            r5 = r5;
                            l0 l0Var = l0.INSTANCE;
                            r5.e(null);
                            return l0.INSTANCE;
                        } catch (Throwable th) {
                            th = th;
                            r5.e(null);
                            throw th;
                        }
                    }
                    aVar = (kotlinx.coroutines.sync.a) bVar.L$1;
                    cVar = (c) bVar.L$0;
                    w.b(objA);
                    str = (String) objA;
                    if (str == null) {
                        Log.w(TAG, "Error getting Firebase Installation ID. Skipping this Session Event.");
                        l0 l0Var2 = l0.INSTANCE;
                        aVar.e(null);
                        return l0Var2;
                    }
                    u0 u0Var = u0.INSTANCE;
                    String str2 = String.format("%s/%s", Arrays.copyOf(new Object[]{Build.MANUFACTURER, Build.MODEL}, 2));
                    t.i(str2, "format(format, *args)");
                    String INCREMENTAL = Build.VERSION.INCREMENTAL;
                    t.i(INCREMENTAL, "INCREMENTAL");
                    String RELEASE = Build.VERSION.RELEASE;
                    t.i(RELEASE, "RELEASE");
                    mapL = s0.l(a0.a("X-Crashlytics-Installation-ID", str), a0.a("X-Crashlytics-Device-Model", cVar.f(str2)), a0.a("X-Crashlytics-OS-Build-Version", cVar.f(INCREMENTAL)), a0.a("X-Crashlytics-OS-Display-Version", cVar.f(RELEASE)), a0.a("X-Crashlytics-API-Client-Version", cVar.appInfo.f()));
                    Log.d(TAG, "Fetching settings from server.");
                    aVar2 = cVar.configsFetcher;
                    c0270c = cVar.new C0270c(null);
                    dVar2 = new d(null);
                    bVar.L$0 = aVar;
                    bVar.L$1 = null;
                    bVar.label = 3;
                    if (aVar2.a(mapL, c0270c, dVar2, bVar) == objE) {
                        return objE;
                    }
                    r5 = aVar;
                    l0 l0Var3 = l0.INSTANCE;
                    r5.e(null);
                    return l0.INSTANCE;
                }
                aVar = (kotlinx.coroutines.sync.a) bVar.L$1;
                cVar = (c) bVar.L$0;
                w.b(objA);
            }
            if (!cVar.settingsCache.d()) {
                Log.d(TAG, "Remote settings cache not expired. Using cached values.");
                l0 l0Var4 = l0.INSTANCE;
                aVar.e(null);
                return l0Var4;
            }
            Task<String> id = cVar.firebaseInstallationsApi.getId();
            t.i(id, "firebaseInstallationsApi.id");
            bVar.L$0 = cVar;
            bVar.L$1 = aVar;
            bVar.label = 2;
            objA = kotlinx.coroutines.tasks.b.a(id, bVar);
            if (objA == objE) {
                return objE;
            }
            str = (String) objA;
            if (str == null) {
                Log.w(TAG, "Error getting Firebase Installation ID. Skipping this Session Event.");
                l0 l0Var5 = l0.INSTANCE;
                aVar.e(null);
                return l0Var5;
            }
            u0 u0Var2 = u0.INSTANCE;
            String str3 = String.format("%s/%s", Arrays.copyOf(new Object[]{Build.MANUFACTURER, Build.MODEL}, 2));
            t.i(str3, "format(format, *args)");
            String INCREMENTAL2 = Build.VERSION.INCREMENTAL;
            t.i(INCREMENTAL2, "INCREMENTAL");
            String RELEASE2 = Build.VERSION.RELEASE;
            t.i(RELEASE2, "RELEASE");
            mapL = s0.l(a0.a("X-Crashlytics-Installation-ID", str), a0.a("X-Crashlytics-Device-Model", cVar.f(str3)), a0.a("X-Crashlytics-OS-Build-Version", cVar.f(INCREMENTAL2)), a0.a("X-Crashlytics-OS-Display-Version", cVar.f(RELEASE2)), a0.a("X-Crashlytics-API-Client-Version", cVar.appInfo.f()));
            Log.d(TAG, "Fetching settings from server.");
            aVar2 = cVar.configsFetcher;
            c0270c = cVar.new C0270c(null);
            dVar2 = new d(null);
            bVar.L$0 = aVar;
            bVar.L$1 = null;
            bVar.label = 3;
            if (aVar2.a(mapL, c0270c, dVar2, bVar) == objE) {
                return objE;
            }
            r5 = aVar;
            l0 l0Var6 = l0.INSTANCE;
            r5.e(null);
            return l0.INSTANCE;
        } catch (Throwable th2) {
            th = th2;
            r5 = r10;
        }
    }

    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public Boolean c() {
        return this.settingsCache.g();
    }

    @Override // com.google.firebase.sessions.settings.h
    @Nullable
    public k8.b d() {
        Integer numE = this.settingsCache.e();
        if (numE == null) {
            return null;
        }
        k8.b.a aVar = k8.b.Companion;
        return k8.b.f(k8.d.s(numE.intValue(), k8.e.SECONDS));
    }
}

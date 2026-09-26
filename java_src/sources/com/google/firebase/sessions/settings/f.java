package com.google.firebase.sessions.settings;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.core.Preferences;
import com.google.firebase.m;
import com.google.firebase.sessions.a0;
import com.google.firebase.sessions.v;
import kotlin.jvm.internal.i0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final kotlin.properties.d<Context, DataStore<Preferences>> dataStore$delegate = PreferenceDataStoreDelegateKt.b(v.INSTANCE.b(), null, null, null, 14, null);

    @NotNull
    private final h localOverrideSettings;

    @NotNull
    private final h remoteSettings;

    public static final class a {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.h(new i0(a.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final f c() {
            Object objJ = m.a(com.google.firebase.c.INSTANCE).j(f.class);
            t.i(objJ, "Firebase.app[SessionsSettings::class.java]");
            return (f) objJ;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DataStore<Preferences> b(Context context) {
            return (DataStore) f.dataStore$delegate.getValue(context, $$delegatedProperties[0]);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.SessionsSettings", f = "SessionsSettings.kt", l = {134, 135}, m = "updateSettings")
    static final class b extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
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
            return f.this.g(this);
        }
    }

    public f(@NotNull h localOverrideSettings, @NotNull h remoteSettings) {
        t.j(localOverrideSettings, "localOverrideSettings");
        t.j(remoteSettings, "remoteSettings");
        this.localOverrideSettings = localOverrideSettings;
        this.remoteSettings = remoteSettings;
    }

    private final boolean e(double d) {
        return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE <= d && d <= 1.0d;
    }

    private f(Context context, kotlin.coroutines.g gVar, kotlin.coroutines.g gVar2, com.google.firebase.installations.h hVar, com.google.firebase.sessions.b bVar) {
        this(new com.google.firebase.sessions.settings.b(context), new c(gVar2, hVar, bVar, new d(bVar, gVar, null, 4, null), Companion.b(context)));
    }

    public final double b() {
        Double dA = this.localOverrideSettings.a();
        if (dA != null) {
            double dDoubleValue = dA.doubleValue();
            if (e(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        Double dA2 = this.remoteSettings.a();
        if (dA2 == null) {
            return 1.0d;
        }
        double dDoubleValue2 = dA2.doubleValue();
        if (e(dDoubleValue2)) {
            return dDoubleValue2;
        }
        return 1.0d;
    }

    public final long c() {
        k8.b bVarD = this.localOverrideSettings.d();
        if (bVarD != null) {
            long jM = bVarD.M();
            if (f(jM)) {
                return jM;
            }
        }
        k8.b bVarD2 = this.remoteSettings.d();
        if (bVarD2 != null) {
            long jM2 = bVarD2.M();
            if (f(jM2)) {
                return jM2;
            }
        }
        k8.b.a aVar = k8.b.Companion;
        return k8.d.s(30, k8.e.MINUTES);
    }

    public final boolean d() {
        Boolean boolC = this.localOverrideSettings.c();
        if (boolC != null) {
            return boolC.booleanValue();
        }
        Boolean boolC2 = this.remoteSettings.c();
        if (boolC2 != null) {
            return boolC2.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object g(@NotNull kotlin.coroutines.d<? super l0> dVar) {
        b bVar;
        f fVar;
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
        Object obj = bVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = bVar.label;
        if (i11 != 0) {
            if (i11 == 1) {
                fVar = (f) bVar.L$0;
                w.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        h hVar = this.localOverrideSettings;
        bVar.L$0 = this;
        bVar.label = 1;
        if (hVar.b(bVar) == objE) {
            return objE;
        }
        fVar = this;
        h hVar2 = fVar.remoteSettings;
        bVar.L$0 = null;
        bVar.label = 2;
        if (hVar2.b(bVar) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }

    private final boolean f(long j6) {
        if (k8.b.F(j6) && k8.b.A(j6)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public f(@NotNull com.google.firebase.f firebaseApp, @NotNull kotlin.coroutines.g blockingDispatcher, @NotNull kotlin.coroutines.g backgroundDispatcher, @NotNull com.google.firebase.installations.h firebaseInstallationsApi) {
        t.j(firebaseApp, "firebaseApp");
        t.j(blockingDispatcher, "blockingDispatcher");
        t.j(backgroundDispatcher, "backgroundDispatcher");
        t.j(firebaseInstallationsApi, "firebaseInstallationsApi");
        Context contextK = firebaseApp.k();
        t.i(contextK, "firebaseApp.applicationContext");
        this(contextK, blockingDispatcher, backgroundDispatcher, firebaseInstallationsApi, a0.INSTANCE.b(firebaseApp));
    }
}

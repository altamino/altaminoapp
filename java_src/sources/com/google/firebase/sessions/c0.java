package com.google.firebase.sessions;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class c0 implements b0 {

    @NotNull
    private static final String TAG = "SessionFirelogPublisher";

    @NotNull
    private final kotlin.coroutines.g backgroundDispatcher;

    @NotNull
    private final h eventGDTLogger;

    @NotNull
    private final com.google.firebase.f firebaseApp;

    @NotNull
    private final com.google.firebase.installations.h firebaseInstallations;

    @NotNull
    private final com.google.firebase.sessions.settings.f sessionSettings;

    @NotNull
    public static final a Companion = new a(null);
    private static final double randomValueForSampling = Math.random();

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl", f = "SessionFirelogPublisher.kt", l = {113}, m = "getFirebaseInstallationId")
    static final class b extends kotlin.coroutines.jvm.internal.d {
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
            return c0.this.h(this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1", f = "SessionFirelogPublisher.kt", l = {64, 72, 73}, m = "invokeSuspend")
    static final class c extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ y $sessionDetails;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(y yVar, kotlin.coroutines.d<? super c> dVar) {
            super(2, dVar);
            this.$sessionDetails = yVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return c0.this.new c(this.$sessionDetails, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((c) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x00f8 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:24:0x00f9  */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            y yVar;
            c0 c0Var;
            t tVar;
            a0 a0Var;
            List<t> list;
            com.google.firebase.f fVar;
            com.google.firebase.sessions.settings.f fVar2;
            Map<com.google.firebase.sessions.api.b.a, ? extends com.google.firebase.sessions.api.b> map;
            Object objH;
            a0 a0Var2;
            Map<com.google.firebase.sessions.api.b.a, ? extends com.google.firebase.sessions.api.b> map2;
            y yVar2;
            List<t> list2;
            com.google.firebase.f fVar3;
            t tVar2;
            com.google.firebase.sessions.settings.f fVar4;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            Map<com.google.firebase.sessions.api.b.a, ? extends com.google.firebase.sessions.api.b> map3 = (Map) this.L$7;
                            List<t> list3 = (List) this.L$6;
                            t tVar3 = (t) this.L$5;
                            fVar4 = (com.google.firebase.sessions.settings.f) this.L$4;
                            y yVar3 = (y) this.L$3;
                            com.google.firebase.f fVar5 = (com.google.firebase.f) this.L$2;
                            a0 a0Var3 = (a0) this.L$1;
                            c0 c0Var2 = (c0) this.L$0;
                            w7.w.b(obj);
                            c0Var = c0Var2;
                            map2 = map3;
                            a0Var2 = a0Var3;
                            list2 = list3;
                            fVar3 = fVar5;
                            tVar2 = tVar3;
                            yVar2 = yVar3;
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        list = (List) this.L$6;
                        tVar = (t) this.L$5;
                        fVar2 = (com.google.firebase.sessions.settings.f) this.L$4;
                        yVar = (y) this.L$3;
                        fVar = (com.google.firebase.f) this.L$2;
                        a0Var = (a0) this.L$1;
                        c0Var = (c0) this.L$0;
                        w7.w.b(obj);
                        map = (Map) obj;
                        c0 c0Var3 = c0.this;
                        this.L$0 = c0Var;
                        this.L$1 = a0Var;
                        this.L$2 = fVar;
                        this.L$3 = yVar;
                        this.L$4 = fVar2;
                        this.L$5 = tVar;
                        this.L$6 = list;
                        this.L$7 = map;
                        this.label = 3;
                        objH = c0Var3.h(this);
                        if (objH == objE) {
                            return objE;
                        }
                        a0Var2 = a0Var;
                        com.google.firebase.f fVar6 = fVar;
                        map2 = map;
                        obj = objH;
                        yVar2 = yVar;
                        list2 = list;
                        fVar3 = fVar6;
                        com.google.firebase.sessions.settings.f fVar7 = fVar2;
                        tVar2 = tVar;
                        fVar4 = fVar7;
                    }
                } else {
                    w7.w.b(obj);
                }
                kotlin.jvm.internal.t.i(obj, "getFirebaseInstallationId()");
                c0Var.g(a0Var2.a(fVar3, yVar2, fVar4, tVar2, list2, map2, (String) obj));
                return w7.l0.INSTANCE;
            }
            w7.w.b(obj);
            c0 c0Var4 = c0.this;
            this.label = 1;
            obj = c0Var4.j(this);
            if (obj == objE) {
                return objE;
            }
            if (((Boolean) obj).booleanValue()) {
                c0 c0Var5 = c0.this;
                a0 a0Var4 = a0.INSTANCE;
                com.google.firebase.f fVar8 = c0Var5.firebaseApp;
                yVar = this.$sessionDetails;
                com.google.firebase.sessions.settings.f fVar9 = c0.this.sessionSettings;
                u uVar = u.INSTANCE;
                Context contextK = c0.this.firebaseApp.k();
                kotlin.jvm.internal.t.i(contextK, "firebaseApp.applicationContext");
                t tVarD = uVar.d(contextK);
                Context contextK2 = c0.this.firebaseApp.k();
                kotlin.jvm.internal.t.i(contextK2, "firebaseApp.applicationContext");
                List<t> listC = uVar.c(contextK2);
                com.google.firebase.sessions.api.a aVar = com.google.firebase.sessions.api.a.INSTANCE;
                this.L$0 = c0Var5;
                this.L$1 = a0Var4;
                this.L$2 = fVar8;
                this.L$3 = yVar;
                this.L$4 = fVar9;
                this.L$5 = tVarD;
                this.L$6 = listC;
                this.label = 2;
                Object objC = aVar.c(this);
                if (objC == objE) {
                    return objE;
                }
                c0Var = c0Var5;
                obj = objC;
                tVar = tVarD;
                a0Var = a0Var4;
                list = listC;
                fVar = fVar8;
                fVar2 = fVar9;
                map = (Map) obj;
                c0 c0Var6 = c0.this;
                this.L$0 = c0Var;
                this.L$1 = a0Var;
                this.L$2 = fVar;
                this.L$3 = yVar;
                this.L$4 = fVar2;
                this.L$5 = tVar;
                this.L$6 = list;
                this.L$7 = map;
                this.label = 3;
                objH = c0Var6.h(this);
                if (objH == objE) {
                    return objE;
                }
                a0Var2 = a0Var;
                com.google.firebase.f fVar10 = fVar;
                map2 = map;
                obj = objH;
                yVar2 = yVar;
                list2 = list;
                fVar3 = fVar10;
                com.google.firebase.sessions.settings.f fVar11 = fVar2;
                tVar2 = tVar;
                fVar4 = fVar11;
                kotlin.jvm.internal.t.i(obj, "getFirebaseInstallationId()");
                c0Var.g(a0Var2.a(fVar3, yVar2, fVar4, tVar2, list2, map2, (String) obj));
            }
            return w7.l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl", f = "SessionFirelogPublisher.kt", l = {95}, m = "shouldLogSession")
    static final class d extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return c0.this.j(this);
        }
    }

    public c0(@NotNull com.google.firebase.f firebaseApp, @NotNull com.google.firebase.installations.h firebaseInstallations, @NotNull com.google.firebase.sessions.settings.f sessionSettings, @NotNull h eventGDTLogger, @NotNull kotlin.coroutines.g backgroundDispatcher) {
        kotlin.jvm.internal.t.j(firebaseApp, "firebaseApp");
        kotlin.jvm.internal.t.j(firebaseInstallations, "firebaseInstallations");
        kotlin.jvm.internal.t.j(sessionSettings, "sessionSettings");
        kotlin.jvm.internal.t.j(eventGDTLogger, "eventGDTLogger");
        kotlin.jvm.internal.t.j(backgroundDispatcher, "backgroundDispatcher");
        this.firebaseApp = firebaseApp;
        this.firebaseInstallations = firebaseInstallations;
        this.sessionSettings = sessionSettings;
        this.eventGDTLogger = eventGDTLogger;
        this.backgroundDispatcher = backgroundDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(z zVar) {
        try {
            this.eventGDTLogger.a(zVar);
            Log.d(TAG, "Successfully logged Session Start event: " + zVar.c().e());
        } catch (RuntimeException e) {
            Log.e(TAG, "Error logging Session Start event to DataTransport: ", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(kotlin.coroutines.d<? super String> dVar) {
        b bVar;
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
        int i11 = bVar.label;
        try {
            if (i11 == 0) {
                w7.w.b(objA);
                Task<String> id = this.firebaseInstallations.getId();
                kotlin.jvm.internal.t.i(id, "firebaseInstallations.id");
                bVar.label = 1;
                objA = kotlinx.coroutines.tasks.b.a(id, bVar);
                if (objA == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(objA);
            }
            return (String) objA;
        } catch (Exception e) {
            Log.e(TAG, "Error getting Firebase Installation ID. Using an empty ID", e);
            return "";
        }
    }

    private final boolean i() {
        return randomValueForSampling <= this.sessionSettings.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(kotlin.coroutines.d<? super Boolean> dVar) {
        d dVar2;
        c0 c0Var;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i10 = dVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        Object obj = dVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dVar2.label;
        if (i11 == 0) {
            w7.w.b(obj);
            Log.d(TAG, "Data Collection is enabled for at least one Subscriber");
            com.google.firebase.sessions.settings.f fVar = this.sessionSettings;
            dVar2.L$0 = this;
            dVar2.label = 1;
            if (fVar.g(dVar2) == objE) {
                return objE;
            }
            c0Var = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c0Var = (c0) dVar2.L$0;
            w7.w.b(obj);
        }
        if (!c0Var.sessionSettings.d()) {
            Log.d(TAG, "Sessions SDK disabled. Events will not be sent.");
            return kotlin.coroutines.jvm.internal.b.a(false);
        }
        if (c0Var.i()) {
            return kotlin.coroutines.jvm.internal.b.a(true);
        }
        Log.d(TAG, "Sessions SDK has dropped this session due to sampling.");
        return kotlin.coroutines.jvm.internal.b.a(false);
    }

    @Override // com.google.firebase.sessions.b0
    public void a(@NotNull y sessionDetails) {
        kotlin.jvm.internal.t.j(sessionDetails, "sessionDetails");
        kotlinx.coroutines.k.d(p0.a(this.backgroundDispatcher), null, null, new c(sessionDetails, null), 3, null);
    }
}

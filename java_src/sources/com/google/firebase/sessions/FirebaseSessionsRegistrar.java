package com.google.firebase.sessions;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {

    @Deprecated
    @NotNull
    private static final String LIBRARY_NAME = "fire-sessions";

    @NotNull
    private static final a Companion = new a(null);

    @Deprecated
    private static final com.google.firebase.components.g0<com.google.firebase.f> firebaseApp = com.google.firebase.components.g0.b(com.google.firebase.f.class);

    @Deprecated
    private static final com.google.firebase.components.g0<com.google.firebase.installations.h> firebaseInstallationsApi = com.google.firebase.components.g0.b(com.google.firebase.installations.h.class);

    @Deprecated
    private static final com.google.firebase.components.g0<kotlinx.coroutines.k0> backgroundDispatcher = com.google.firebase.components.g0.a(w3.a.class, kotlinx.coroutines.k0.class);

    @Deprecated
    private static final com.google.firebase.components.g0<kotlinx.coroutines.k0> blockingDispatcher = com.google.firebase.components.g0.a(w3.b.class, kotlinx.coroutines.k0.class);

    @Deprecated
    private static final com.google.firebase.components.g0<f2.g> transportFactory = com.google.firebase.components.g0.b(f2.g.class);

    @Deprecated
    private static final com.google.firebase.components.g0<b0> sessionFirelogPublisher = com.google.firebase.components.g0.b(b0.class);

    @Deprecated
    private static final com.google.firebase.components.g0<d0> sessionGenerator = com.google.firebase.components.g0.b(d0.class);

    @Deprecated
    private static final com.google.firebase.components.g0<com.google.firebase.sessions.settings.f> sessionsSettings = com.google.firebase.components.g0.b(com.google.firebase.sessions.settings.f.class);

    private static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<com.google.firebase.components.c<? extends Object>> getComponents() {
        com.google.firebase.components.c.b bVarH = com.google.firebase.components.c.e(k.class).h(LIBRARY_NAME);
        com.google.firebase.components.g0<com.google.firebase.f> g0Var = firebaseApp;
        com.google.firebase.components.c.b bVarB = bVarH.b(com.google.firebase.components.s.j(g0Var));
        com.google.firebase.components.g0<com.google.firebase.sessions.settings.f> g0Var2 = sessionsSettings;
        com.google.firebase.components.c.b bVarB2 = bVarB.b(com.google.firebase.components.s.j(g0Var2));
        com.google.firebase.components.g0<kotlinx.coroutines.k0> g0Var3 = backgroundDispatcher;
        com.google.firebase.components.c.b bVarB3 = com.google.firebase.components.c.e(b0.class).h("session-publisher").b(com.google.firebase.components.s.j(g0Var));
        com.google.firebase.components.g0<com.google.firebase.installations.h> g0Var4 = firebaseInstallationsApi;
        return kotlin.collections.v.p(bVarB2.b(com.google.firebase.components.s.j(g0Var3)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.sessions.m
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseSessionsRegistrar.m7getComponents$lambda0(eVar);
            }
        }).e().d(), com.google.firebase.components.c.e(d0.class).h("session-generator").f(new com.google.firebase.components.h() { // from class: com.google.firebase.sessions.n
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseSessionsRegistrar.m8getComponents$lambda1(eVar);
            }
        }).d(), bVarB3.b(com.google.firebase.components.s.j(g0Var4)).b(com.google.firebase.components.s.j(g0Var2)).b(com.google.firebase.components.s.l(transportFactory)).b(com.google.firebase.components.s.j(g0Var3)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.sessions.o
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseSessionsRegistrar.m9getComponents$lambda2(eVar);
            }
        }).d(), com.google.firebase.components.c.e(com.google.firebase.sessions.settings.f.class).h("sessions-settings").b(com.google.firebase.components.s.j(g0Var)).b(com.google.firebase.components.s.j(blockingDispatcher)).b(com.google.firebase.components.s.j(g0Var3)).b(com.google.firebase.components.s.j(g0Var4)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.sessions.p
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseSessionsRegistrar.m10getComponents$lambda3(eVar);
            }
        }).d(), com.google.firebase.components.c.e(w.class).h("sessions-datastore").b(com.google.firebase.components.s.j(g0Var)).b(com.google.firebase.components.s.j(g0Var3)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.sessions.q
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseSessionsRegistrar.m11getComponents$lambda4(eVar);
            }
        }).d(), com.google.firebase.components.c.e(h0.class).h("sessions-service-binder").b(com.google.firebase.components.s.j(g0Var)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.sessions.r
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseSessionsRegistrar.m12getComponents$lambda5(eVar);
            }
        }).d(), b5.h.b(LIBRARY_NAME, "1.2.0"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-0, reason: not valid java name */
    public static final k m7getComponents$lambda0(com.google.firebase.components.e eVar) {
        Object objG = eVar.g(firebaseApp);
        kotlin.jvm.internal.t.i(objG, "container[firebaseApp]");
        Object objG2 = eVar.g(sessionsSettings);
        kotlin.jvm.internal.t.i(objG2, "container[sessionsSettings]");
        Object objG3 = eVar.g(backgroundDispatcher);
        kotlin.jvm.internal.t.i(objG3, "container[backgroundDispatcher]");
        return new k((com.google.firebase.f) objG, (com.google.firebase.sessions.settings.f) objG2, (kotlin.coroutines.g) objG3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-1, reason: not valid java name */
    public static final d0 m8getComponents$lambda1(com.google.firebase.components.e eVar) {
        return new d0(l0.INSTANCE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-2, reason: not valid java name */
    public static final b0 m9getComponents$lambda2(com.google.firebase.components.e eVar) {
        Object objG = eVar.g(firebaseApp);
        kotlin.jvm.internal.t.i(objG, "container[firebaseApp]");
        com.google.firebase.f fVar = (com.google.firebase.f) objG;
        Object objG2 = eVar.g(firebaseInstallationsApi);
        kotlin.jvm.internal.t.i(objG2, "container[firebaseInstallationsApi]");
        com.google.firebase.installations.h hVar = (com.google.firebase.installations.h) objG2;
        Object objG3 = eVar.g(sessionsSettings);
        kotlin.jvm.internal.t.i(objG3, "container[sessionsSettings]");
        com.google.firebase.sessions.settings.f fVar2 = (com.google.firebase.sessions.settings.f) objG3;
        o4.b bVarD = eVar.d(transportFactory);
        kotlin.jvm.internal.t.i(bVarD, "container.getProvider(transportFactory)");
        g gVar = new g(bVarD);
        Object objG4 = eVar.g(backgroundDispatcher);
        kotlin.jvm.internal.t.i(objG4, "container[backgroundDispatcher]");
        return new c0(fVar, hVar, fVar2, gVar, (kotlin.coroutines.g) objG4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-3, reason: not valid java name */
    public static final com.google.firebase.sessions.settings.f m10getComponents$lambda3(com.google.firebase.components.e eVar) {
        Object objG = eVar.g(firebaseApp);
        kotlin.jvm.internal.t.i(objG, "container[firebaseApp]");
        Object objG2 = eVar.g(blockingDispatcher);
        kotlin.jvm.internal.t.i(objG2, "container[blockingDispatcher]");
        Object objG3 = eVar.g(backgroundDispatcher);
        kotlin.jvm.internal.t.i(objG3, "container[backgroundDispatcher]");
        Object objG4 = eVar.g(firebaseInstallationsApi);
        kotlin.jvm.internal.t.i(objG4, "container[firebaseInstallationsApi]");
        return new com.google.firebase.sessions.settings.f((com.google.firebase.f) objG, (kotlin.coroutines.g) objG2, (kotlin.coroutines.g) objG3, (com.google.firebase.installations.h) objG4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-4, reason: not valid java name */
    public static final w m11getComponents$lambda4(com.google.firebase.components.e eVar) {
        Context contextK = ((com.google.firebase.f) eVar.g(firebaseApp)).k();
        kotlin.jvm.internal.t.i(contextK, "container[firebaseApp].applicationContext");
        Object objG = eVar.g(backgroundDispatcher);
        kotlin.jvm.internal.t.i(objG, "container[backgroundDispatcher]");
        return new x(contextK, (kotlin.coroutines.g) objG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getComponents$lambda-5, reason: not valid java name */
    public static final h0 m12getComponents$lambda5(com.google.firebase.components.e eVar) {
        Object objG = eVar.g(firebaseApp);
        kotlin.jvm.internal.t.i(objG, "container[firebaseApp]");
        return new i0((com.google.firebase.f) objG);
    }
}

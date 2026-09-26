package com.google.firebase.perf;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.e;
import com.google.firebase.components.g0;
import com.google.firebase.components.s;
import com.google.firebase.f;
import com.google.firebase.installations.h;
import com.google.firebase.o;
import com.google.firebase.perf.FirebasePerfRegistrar;
import com.google.firebase.remoteconfig.c;
import f2.g;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import v4.b;
import w3.d;
import w4.a;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class FirebasePerfRegistrar implements ComponentRegistrar {
    private static final String EARLY_LIBRARY_NAME = "fire-perf-early";
    private static final String LIBRARY_NAME = "fire-perf";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b lambda$getComponents$0(g0 g0Var, e eVar) {
        return new b((f) eVar.get(f.class), (o) eVar.b(o.class).get(), (Executor) eVar.g(g0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static v4.e providesFirebasePerformance(e eVar) {
        eVar.get(b.class);
        return a.b().b(new x4.a((f) eVar.get(f.class), (h) eVar.get(h.class), eVar.b(c.class), eVar.b(g.class))).a().a();
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<com.google.firebase.components.c<?>> getComponents() {
        final g0 g0VarA = g0.a(d.class, Executor.class);
        return Arrays.asList(com.google.firebase.components.c.e(v4.e.class).h(LIBRARY_NAME).b(s.k(f.class)).b(s.m(c.class)).b(s.k(h.class)).b(s.m(g.class)).b(s.k(b.class)).f(new com.google.firebase.components.h() { // from class: v4.c
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebasePerfRegistrar.providesFirebasePerformance(eVar);
            }
        }).d(), com.google.firebase.components.c.e(b.class).h(EARLY_LIBRARY_NAME).b(s.k(f.class)).b(s.i(o.class)).b(s.j(g0VarA)).e().f(new com.google.firebase.components.h() { // from class: v4.d
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebasePerfRegistrar.lambda$getComponents$0(g0VarA, eVar);
            }
        }).d(), b5.h.b(LIBRARY_NAME, v4.a.VERSION_NAME));
    }
}

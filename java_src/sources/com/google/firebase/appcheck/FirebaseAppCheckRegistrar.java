package com.google.firebase.appcheck;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.appcheck.FirebaseAppCheckRegistrar;
import com.google.firebase.appcheck.internal.h;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.c;
import com.google.firebase.components.g0;
import com.google.firebase.components.s;
import com.google.firebase.f;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import m4.i;
import w3.a;
import w3.b;
import w3.d;
import x3.e;

/* JADX INFO: loaded from: classes10.dex */
@KeepForSdk
public class FirebaseAppCheckRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-app-check";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e b(g0 g0Var, g0 g0Var2, g0 g0Var3, g0 g0Var4, com.google.firebase.components.e eVar) {
        return new h((f) eVar.get(f.class), eVar.b(i.class), (Executor) eVar.g(g0Var), (Executor) eVar.g(g0Var2), (Executor) eVar.g(g0Var3), (ScheduledExecutorService) eVar.g(g0Var4));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        final g0 g0VarA = g0.a(d.class, Executor.class);
        final g0 g0VarA2 = g0.a(w3.c.class, Executor.class);
        final g0 g0VarA3 = g0.a(a.class, Executor.class);
        final g0 g0VarA4 = g0.a(b.class, ScheduledExecutorService.class);
        return Arrays.asList(c.f(e.class, z3.b.class).h(LIBRARY_NAME).b(s.k(f.class)).b(s.j(g0VarA)).b(s.j(g0VarA2)).b(s.j(g0VarA3)).b(s.j(g0VarA4)).b(s.i(i.class)).f(new com.google.firebase.components.h() { // from class: x3.f
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseAppCheckRegistrar.b(g0VarA, g0VarA2, g0VarA3, g0VarA4, eVar);
            }
        }).c().d(), m4.h.a(), b5.h.b(LIBRARY_NAME, "17.1.1"));
    }
}

package com.google.firebase.appcheck.debug;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.appcheck.debug.FirebaseAppCheckDebugRegistrar;
import com.google.firebase.appcheck.debug.internal.e;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.c;
import com.google.firebase.components.g0;
import com.google.firebase.components.h;
import com.google.firebase.components.s;
import com.google.firebase.f;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import w3.a;
import y3.b;

/* JADX INFO: loaded from: classes6.dex */
@KeepForSdk
public class FirebaseAppCheckDebugRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-app-check-debug";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e b(g0 g0Var, g0 g0Var2, g0 g0Var3, com.google.firebase.components.e eVar) {
        return new e((f) eVar.get(f.class), eVar.b(b.class), (Executor) eVar.g(g0Var), (Executor) eVar.g(g0Var2), (Executor) eVar.g(g0Var3));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        final g0 g0VarA = g0.a(w3.c.class, Executor.class);
        final g0 g0VarA2 = g0.a(a.class, Executor.class);
        final g0 g0VarA3 = g0.a(w3.b.class, Executor.class);
        return Arrays.asList(c.e(e.class).h(LIBRARY_NAME).b(s.k(f.class)).b(s.i(b.class)).b(s.j(g0VarA)).b(s.j(g0VarA2)).b(s.j(g0VarA3)).f(new h() { // from class: y3.a
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseAppCheckDebugRegistrar.b(g0VarA, g0VarA2, g0VarA3, eVar);
            }
        }).d(), b5.h.b(LIBRARY_NAME, "17.1.1"));
    }
}

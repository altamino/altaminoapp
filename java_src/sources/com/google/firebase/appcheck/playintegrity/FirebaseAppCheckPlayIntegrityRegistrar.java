package com.google.firebase.appcheck.playintegrity;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.appcheck.playintegrity.FirebaseAppCheckPlayIntegrityRegistrar;
import com.google.firebase.appcheck.playintegrity.internal.i;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.c;
import com.google.firebase.components.e;
import com.google.firebase.components.g0;
import com.google.firebase.components.h;
import com.google.firebase.components.s;
import com.google.firebase.f;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import w3.b;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class FirebaseAppCheckPlayIntegrityRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-app-check-play-integrity";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i b(g0 g0Var, g0 g0Var2, e eVar) {
        return new i((f) eVar.get(f.class), (Executor) eVar.g(g0Var), (Executor) eVar.g(g0Var2));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        final g0 g0VarA = g0.a(w3.c.class, Executor.class);
        final g0 g0VarA2 = g0.a(b.class, Executor.class);
        return Arrays.asList(c.e(i.class).h(LIBRARY_NAME).b(s.k(f.class)).b(s.j(g0VarA)).b(s.j(g0VarA2)).f(new h() { // from class: a4.a
            @Override // com.google.firebase.components.h
            public final Object a(e eVar) {
                return FirebaseAppCheckPlayIntegrityRegistrar.b(g0VarA, g0VarA2, eVar);
            }
        }).d(), b5.h.b(LIBRARY_NAME, "17.1.1"));
    }
}

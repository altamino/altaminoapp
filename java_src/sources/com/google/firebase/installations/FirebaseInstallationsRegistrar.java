package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.g0;
import com.google.firebase.components.s;
import com.google.firebase.concurrent.z;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<com.google.firebase.components.c<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.c.e(h.class).h(LIBRARY_NAME).b(s.k(com.google.firebase.f.class)).b(s.i(m4.i.class)).b(s.j(g0.a(w3.a.class, ExecutorService.class))).b(s.j(g0.a(w3.b.class, Executor.class))).f(new com.google.firebase.components.h() { // from class: com.google.firebase.installations.j
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), m4.h.a(), b5.h.b(LIBRARY_NAME, "17.2.0"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h lambda$getComponents$0(com.google.firebase.components.e eVar) {
        return new g((com.google.firebase.f) eVar.get(com.google.firebase.f.class), eVar.b(m4.i.class), (ExecutorService) eVar.g(g0.a(w3.a.class, ExecutorService.class)), z.b((Executor) eVar.g(g0.a(w3.b.class, Executor.class))));
    }
}

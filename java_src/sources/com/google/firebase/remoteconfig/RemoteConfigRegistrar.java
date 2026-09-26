package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.e;
import com.google.firebase.components.g0;
import com.google.firebase.components.s;
import com.google.firebase.f;
import com.google.firebase.installations.h;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes10.dex */
@Keep
public class RemoteConfigRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rc";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c lambda$getComponents$0(g0 g0Var, e eVar) {
        return new c((Context) eVar.get(Context.class), (ScheduledExecutorService) eVar.g(g0Var), (f) eVar.get(f.class), (h) eVar.get(h.class), ((com.google.firebase.abt.component.a) eVar.get(com.google.firebase.abt.component.a.class)).b("frc"), eVar.b(com.google.firebase.analytics.connector.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<com.google.firebase.components.c<?>> getComponents() {
        final g0 g0VarA = g0.a(w3.b.class, ScheduledExecutorService.class);
        return Arrays.asList(com.google.firebase.components.c.f(c.class, d5.a.class).h(LIBRARY_NAME).b(s.k(Context.class)).b(s.j(g0VarA)).b(s.k(f.class)).b(s.k(h.class)).b(s.k(com.google.firebase.abt.component.a.class)).b(s.i(com.google.firebase.analytics.connector.a.class)).f(new com.google.firebase.components.h() { // from class: c5.q
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return RemoteConfigRegistrar.lambda$getComponents$0(g0VarA, eVar);
            }
        }).e().d(), b5.h.b(LIBRARY_NAME, "21.6.0"));
    }
}

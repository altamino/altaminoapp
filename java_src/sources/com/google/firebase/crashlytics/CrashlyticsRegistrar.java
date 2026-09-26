package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.s;
import com.google.firebase.installations.h;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-cls";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<com.google.firebase.components.c<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.c.e(g.class).h(LIBRARY_NAME).b(s.k(com.google.firebase.f.class)).b(s.k(h.class)).b(s.a(com.google.firebase.crashlytics.internal.a.class)).b(s.a(com.google.firebase.analytics.connector.a.class)).b(s.a(d5.a.class)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.crashlytics.f
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return this.f1531a.b(eVar);
            }
        }).e().d(), b5.h.b(LIBRARY_NAME, "18.6.0"));
    }

    static {
        com.google.firebase.sessions.api.a.INSTANCE.a(com.google.firebase.sessions.api.b.a.CRASHLYTICS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g b(com.google.firebase.components.e eVar) {
        return g.b((com.google.firebase.f) eVar.get(com.google.firebase.f.class), (h) eVar.get(h.class), eVar.h(com.google.firebase.crashlytics.internal.a.class), eVar.h(com.google.firebase.analytics.connector.a.class), eVar.h(d5.a.class));
    }
}

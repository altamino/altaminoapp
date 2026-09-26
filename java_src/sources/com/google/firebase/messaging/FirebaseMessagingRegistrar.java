package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@KeepForSdk
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<com.google.firebase.components.c<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.c.e(FirebaseMessaging.class).h(LIBRARY_NAME).b(com.google.firebase.components.s.k(com.google.firebase.f.class)).b(com.google.firebase.components.s.h(n4.a.class)).b(com.google.firebase.components.s.i(b5.i.class)).b(com.google.firebase.components.s.i(m4.j.class)).b(com.google.firebase.components.s.h(f2.g.class)).b(com.google.firebase.components.s.k(com.google.firebase.installations.h.class)).b(com.google.firebase.components.s.k(l4.d.class)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.messaging.z
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseMessagingRegistrar.lambda$getComponents$0(eVar);
            }
        }).c().d(), b5.h.b(LIBRARY_NAME, "23.3.1"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(com.google.firebase.components.e eVar) {
        return new FirebaseMessaging((com.google.firebase.f) eVar.get(com.google.firebase.f.class), (n4.a) eVar.get(n4.a.class), eVar.b(b5.i.class), eVar.b(m4.j.class), (com.google.firebase.installations.h) eVar.get(com.google.firebase.installations.h.class), (f2.g) eVar.get(f2.g.class), (l4.d) eVar.get(l4.d.class));
    }
}

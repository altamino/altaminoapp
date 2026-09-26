package com.google.firebase.dynamiclinks.internal;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.s;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@KeepForSdk
public final class FirebaseDynamicLinkRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-dl";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h4.a lambda$getComponents$0(com.google.firebase.components.e eVar) {
        return new f((com.google.firebase.f) eVar.get(com.google.firebase.f.class), eVar.b(com.google.firebase.analytics.connector.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<com.google.firebase.components.c<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.c.e(h4.a.class).h(LIBRARY_NAME).b(s.k(com.google.firebase.f.class)).b(s.i(com.google.firebase.analytics.connector.a.class)).f(new com.google.firebase.components.h() { // from class: com.google.firebase.dynamiclinks.internal.e
            @Override // com.google.firebase.components.h
            public final Object a(com.google.firebase.components.e eVar) {
                return FirebaseDynamicLinkRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), b5.h.b(LIBRARY_NAME, "21.2.0"));
    }
}

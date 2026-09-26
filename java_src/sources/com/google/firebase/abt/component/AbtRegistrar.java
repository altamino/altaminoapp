package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.c;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
import com.google.firebase.components.s;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return Arrays.asList(c.e(a.class).h(LIBRARY_NAME).b(s.k(Context.class)).b(s.i(com.google.firebase.analytics.connector.a.class)).f(new h() { // from class: v3.a
            @Override // com.google.firebase.components.h
            public final Object a(e eVar) {
                return AbtRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), b5.h.b(LIBRARY_NAME, "21.1.1"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a lambda$getComponents$0(e eVar) {
        return new a((Context) eVar.get(Context.class), eVar.b(com.google.firebase.analytics.connector.a.class));
    }
}

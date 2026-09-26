package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.datatransport.cct.a;
import com.google.android.datatransport.runtime.u;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.c;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
import com.google.firebase.components.s;
import com.google.firebase.datatransport.TransportRegistrar;
import f2.g;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return Arrays.asList(c.e(g.class).h(LIBRARY_NAME).b(s.k(Context.class)).f(new h() { // from class: g4.a
            @Override // com.google.firebase.components.h
            public final Object a(e eVar) {
                return TransportRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), b5.h.b(LIBRARY_NAME, "18.1.8"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g lambda$getComponents$0(e eVar) {
        u.f((Context) eVar.get(Context.class));
        return u.c().g(a.LEGACY_INSTANCE);
    }
}

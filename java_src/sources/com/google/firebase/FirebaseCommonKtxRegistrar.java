package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.g0;
import com.google.firebase.components.s;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.s1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Keep
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    public static final class a<T> implements com.google.firebase.components.h {
        public static final a<T> INSTANCE = new a<>();

        @Override // com.google.firebase.components.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final k0 a(com.google.firebase.components.e eVar) {
            Object objG = eVar.g(g0.a(w3.a.class, Executor.class));
            t.i(objG, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return s1.b((Executor) objG);
        }
    }

    public static final class b<T> implements com.google.firebase.components.h {
        public static final b<T> INSTANCE = new b<>();

        @Override // com.google.firebase.components.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final k0 a(com.google.firebase.components.e eVar) {
            Object objG = eVar.g(g0.a(w3.c.class, Executor.class));
            t.i(objG, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return s1.b((Executor) objG);
        }
    }

    public static final class c<T> implements com.google.firebase.components.h {
        public static final c<T> INSTANCE = new c<>();

        @Override // com.google.firebase.components.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final k0 a(com.google.firebase.components.e eVar) {
            Object objG = eVar.g(g0.a(w3.b.class, Executor.class));
            t.i(objG, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return s1.b((Executor) objG);
        }
    }

    public static final class d<T> implements com.google.firebase.components.h {
        public static final d<T> INSTANCE = new d<>();

        @Override // com.google.firebase.components.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final k0 a(com.google.firebase.components.e eVar) {
            Object objG = eVar.g(g0.a(w3.d.class, Executor.class));
            t.i(objG, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return s1.b((Executor) objG);
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<com.google.firebase.components.c<?>> getComponents() {
        com.google.firebase.components.c cVarD = com.google.firebase.components.c.c(g0.a(w3.a.class, k0.class)).b(s.j(g0.a(w3.a.class, Executor.class))).f(a.INSTANCE).d();
        t.i(cVarD, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        com.google.firebase.components.c cVarD2 = com.google.firebase.components.c.c(g0.a(w3.c.class, k0.class)).b(s.j(g0.a(w3.c.class, Executor.class))).f(b.INSTANCE).d();
        t.i(cVarD2, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        com.google.firebase.components.c cVarD3 = com.google.firebase.components.c.c(g0.a(w3.b.class, k0.class)).b(s.j(g0.a(w3.b.class, Executor.class))).f(c.INSTANCE).d();
        t.i(cVarD3, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        com.google.firebase.components.c cVarD4 = com.google.firebase.components.c.c(g0.a(w3.d.class, k0.class)).b(s.j(g0.a(w3.d.class, Executor.class))).f(d.INSTANCE).d();
        t.i(cVarD4, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        return v.p(cVarD, cVarD2, cVarD3, cVarD4);
    }
}

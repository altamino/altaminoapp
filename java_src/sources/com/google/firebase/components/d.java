package com.google.firebase.components;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d {
    public static Object a(e eVar, g0 g0Var) {
        o4.b bVarD = eVar.d(g0Var);
        if (bVarD == null) {
            return null;
        }
        return bVarD.get();
    }

    public static Object b(e eVar, Class cls) {
        return eVar.g(g0.b(cls));
    }

    public static o4.a c(e eVar, Class cls) {
        return eVar.c(g0.b(cls));
    }

    public static o4.b d(e eVar, Class cls) {
        return eVar.d(g0.b(cls));
    }

    public static Set e(e eVar, g0 g0Var) {
        return (Set) eVar.f(g0Var).get();
    }

    public static Set f(e eVar, Class cls) {
        return eVar.e(g0.b(cls));
    }
}

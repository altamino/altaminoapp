package io.ktor.http;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class r0 {
    @NotNull
    public static final z d(@NotNull io.ktor.util.u parameters) {
        kotlin.jvm.internal.t.j(parameters, "parameters");
        a0 a0VarB = d0.b(0, 1, null);
        b(a0VarB, parameters);
        return a0VarB.build();
    }

    @NotNull
    public static final a0 e(@NotNull io.ktor.util.t parameters) {
        kotlin.jvm.internal.t.j(parameters, "parameters");
        a0 a0VarB = d0.b(0, 1, null);
        c(a0VarB, parameters);
        return a0VarB;
    }

    private static final void b(io.ktor.util.u uVar, io.ktor.util.u uVar2) {
        for (String str : uVar2.names()) {
            List<String> listB = uVar2.b(str);
            if (listB == null) {
                listB = kotlin.collections.v.m();
            }
            String strK = b.k(str, 0, 0, false, null, 15, null);
            List<String> list = listB;
            ArrayList arrayList = new ArrayList(kotlin.collections.w.x(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(b.k((String) it.next(), 0, 0, true, null, 11, null));
            }
            uVar.d(strK, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(io.ktor.util.u uVar, io.ktor.util.t tVar) {
        for (String str : tVar.names()) {
            List<String> listB = tVar.b(str);
            if (listB == null) {
                listB = kotlin.collections.v.m();
            }
            String strM = b.m(str, false, 1, null);
            List<String> list = listB;
            ArrayList arrayList = new ArrayList(kotlin.collections.w.x(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(b.n((String) it.next()));
            }
            uVar.d(strM, arrayList);
        }
    }
}

package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.n2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class x {
    private static final boolean FAST_SERVICE_LOADER_ENABLED = false;

    @NotNull
    public static final x INSTANCE;

    @NotNull
    public static final n2 dispatcher;

    static {
        x xVar = new x();
        INSTANCE = xVar;
        j0.f("kotlinx.coroutines.fast.service.loader", true);
        dispatcher = xVar.a();
    }

    private final n2 a() {
        Object next;
        n2 n2VarE;
        try {
            List<w> listC = FAST_SERVICE_LOADER_ENABLED ? m.INSTANCE.c() : kotlin.sequences.o.A(kotlin.sequences.m.c(ServiceLoader.load(w.class, w.class.getClassLoader()).iterator()));
            Iterator<T> it = listC.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int loadPriority = ((w) next).getLoadPriority();
                    do {
                        Object next2 = it.next();
                        int loadPriority2 = ((w) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            w wVar = (w) next;
            return (wVar == null || (n2VarE = y.e(wVar, listC)) == null) ? y.b(null, null, 3, null) : n2VarE;
        } catch (Throwable th) {
            return y.b(th, null, 2, null);
        }
    }

    private x() {
    }
}

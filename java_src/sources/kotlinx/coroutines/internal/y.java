package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.n2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class y {

    @NotNull
    private static final String FAST_SERVICE_LOADER_PROPERTY_NAME = "kotlinx.coroutines.fast.service.loader";
    private static final boolean SUPPORT_MISSING = false;

    private static final z a(Throwable th, String str) throws Throwable {
        if (SUPPORT_MISSING) {
            return new z(th, str);
        }
        if (th != null) {
            throw th;
        }
        d();
        throw new w7.i();
    }

    static /* synthetic */ z b(Throwable th, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    @NotNull
    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final boolean c(@NotNull n2 n2Var) {
        return n2Var.getImmediate() instanceof z;
    }

    @NotNull
    public static final n2 e(@NotNull w wVar, @NotNull List<? extends w> list) {
        try {
            return wVar.createDispatcher(list);
        } catch (Throwable th) {
            return a(th, wVar.hintOnError());
        }
    }
}

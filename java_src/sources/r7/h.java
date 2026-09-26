package r7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    @NotNull
    public static final s7.a a(@NotNull s7.a aVar) {
        t.j(aVar, "<this>");
        while (true) {
            s7.a aVarX = aVar.x();
            if (aVarX == null) {
                return aVar;
            }
            aVar = aVarX;
        }
    }

    public static final void b(@Nullable s7.a aVar, @NotNull t7.g<s7.a> pool) {
        t.j(pool, "pool");
        while (aVar != null) {
            s7.a aVarW = aVar.w();
            aVar.A(pool);
            aVar = aVarW;
        }
    }

    public static final long c(@NotNull s7.a aVar) {
        t.j(aVar, "<this>");
        return d(aVar, 0L);
    }

    private static final long d(s7.a aVar, long j6) {
        do {
            j6 += (long) (aVar.j() - aVar.h());
            aVar = aVar.x();
        } while (aVar != null);
        return j6;
    }
}

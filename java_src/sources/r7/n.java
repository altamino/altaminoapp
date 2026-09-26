package r7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static final void a(@NotNull m mVar, @NotNull a dst, int i10) throws Throwable {
        t.j(mVar, "<this>");
        t.j(dst, "dst");
        boolean z6 = true;
        s7.a aVarB = s7.g.b(mVar, 1);
        if (aVarB != null) {
            do {
                try {
                    int iMin = Math.min(i10, aVarB.j() - aVarB.h());
                    f.a(aVarB, dst, iMin);
                    i10 -= iMin;
                    if (i10 <= 0) {
                        s7.g.a(mVar, aVarB);
                        break;
                    }
                    try {
                        aVarB = s7.g.c(mVar, aVarB);
                    } catch (Throwable th) {
                        th = th;
                        z6 = false;
                        if (z6) {
                            s7.g.a(mVar, aVarB);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } while (aVarB != null);
        }
        if (i10 <= 0) {
            return;
        }
        s.a(i10);
        throw new w7.i();
    }

    public static final void b(@NotNull m mVar, @NotNull byte[] dst, int i10, int i11) {
        t.j(mVar, "<this>");
        t.j(dst, "dst");
        boolean z6 = true;
        s7.a aVarB = s7.g.b(mVar, 1);
        if (aVarB != null) {
            do {
                try {
                    int iMin = Math.min(i11, aVarB.j() - aVarB.h());
                    f.b(aVarB, dst, i10, iMin);
                    i11 -= iMin;
                    i10 += iMin;
                    if (i11 <= 0) {
                        s7.g.a(mVar, aVarB);
                        break;
                    }
                    try {
                        aVarB = s7.g.c(mVar, aVarB);
                    } catch (Throwable th) {
                        th = th;
                        z6 = false;
                        if (z6) {
                            s7.g.a(mVar, aVarB);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } while (aVarB != null);
        }
        if (i11 <= 0) {
            return;
        }
        s.a(i11);
        throw new w7.i();
    }
}

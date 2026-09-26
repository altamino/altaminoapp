package s7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r7.i;
import r7.j;
import r7.m;
import r7.p;
import r7.r;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    @NotNull
    public static final byte[] EmptyByteArray = new byte[0];

    public static final void a(@NotNull m mVar, @NotNull a current) {
        t.j(mVar, "<this>");
        t.j(current, "current");
        if (current == mVar) {
            return;
        }
        if (current.j() <= current.h()) {
            mVar.p(current);
        } else if (current.e() - current.f() < 8) {
            mVar.Q(current);
        } else {
            mVar.T0(current.h());
        }
    }

    @Nullable
    public static final a b(@NotNull m mVar, int i10) {
        t.j(mVar, "<this>");
        return mVar.M0(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final a c(@NotNull m mVar, @NotNull a current) {
        t.j(mVar, "<this>");
        t.j(current, "current");
        if (current != mVar) {
            return mVar.r(current);
        }
        if (mVar.h()) {
            return (a) mVar;
        }
        return null;
    }

    @NotNull
    public static final a d(@NotNull p pVar, int i10, @Nullable a aVar) {
        t.j(pVar, "<this>");
        if (aVar != null) {
            pVar.h();
        }
        return pVar.k0(i10);
    }

    public static final int e(@NotNull j jVar, @NotNull i builder) {
        t.j(jVar, "<this>");
        t.j(builder, "builder");
        int iM0 = builder.M0();
        a aVarT0 = builder.t0();
        if (aVarT0 == null) {
            return 0;
        }
        if (iM0 <= r.a() && aVarT0.x() == null && jVar.Y0(aVarT0)) {
            builder.d();
            return iM0;
        }
        jVar.b(aVarT0);
        return iM0;
    }
}

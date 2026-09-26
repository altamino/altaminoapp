package com.google.android.exoplayer2.extractor.avi;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.c0;
import com.google.common.collect.a0;
import com.google.common.collect.l1;

/* JADX INFO: loaded from: classes6.dex */
final class f implements a {
    public final a0<a> children;
    private final int type;

    @Override // com.google.android.exoplayer2.extractor.avi.a
    public int getType() {
        return this.type;
    }

    public static f c(int i10, c0 c0Var) {
        a0.a aVar = new a0.a();
        int iF = c0Var.f();
        int iB = -2;
        while (c0Var.a() > 8) {
            int iQ = c0Var.q();
            int iE = c0Var.e() + c0Var.q();
            c0Var.O(iE);
            a aVarC = iQ == 1414744396 ? c(c0Var.q(), c0Var) : a(iQ, iB, c0Var);
            if (aVarC != null) {
                if (aVarC.getType() == 1752331379) {
                    iB = ((d) aVarC).b();
                }
                aVar.d(aVarC);
            }
            c0Var.P(iE);
            c0Var.O(iF);
        }
        return new f(i10, aVar.k());
    }

    @Nullable
    public <T extends a> T b(Class<T> cls) {
        l1<a> it = this.children.iterator();
        while (it.hasNext()) {
            T t5 = (T) it.next();
            if (t5.getClass() == cls) {
                return t5;
            }
        }
        return null;
    }

    private f(int i10, a0<a> a0Var) {
        this.type = i10;
        this.children = a0Var;
    }

    @Nullable
    private static a a(int i10, int i11, c0 c0Var) {
        switch (i10) {
            case 1718776947:
                return g.d(i11, c0Var);
            case 1751742049:
                return c.b(c0Var);
            case 1752331379:
                return d.c(c0Var);
            case 1852994675:
                return h.a(c0Var);
            default:
                return null;
        }
    }
}

package oa;

import java.util.Comparator;

/* JADX INFO: loaded from: classes11.dex */
public class m extends x9.h<j, l> {
    public m(int i10) {
        super(i10);
    }

    public m(int i10, Comparator<j> comparator) {
        super(i10, comparator);
    }

    @Override // x9.h
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void d(l lVar) {
        try {
            c(a(lVar));
        } catch (aa.e unused) {
        } catch (Exception e) {
            b(e);
        }
    }

    @Override // x9.a
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public j a(l lVar) throws aa.h {
        if (!lVar.k()) {
            j jVar = new j(g(), lVar.getUrl(), lVar.getName(), lVar.getStreamType());
            try {
                jVar.h(lVar.getDuration());
            } catch (Exception e) {
                b(e);
            }
            try {
                jVar.n(lVar.c());
            } catch (Exception e2) {
                b(e2);
            }
            try {
                jVar.k(lVar.i());
            } catch (Exception e6) {
                b(e6);
            }
            try {
                jVar.l(lVar.j());
            } catch (aa.h e7) {
                b(e7);
            }
            try {
                jVar.q(lVar.n());
            } catch (Exception e10) {
                b(e10);
            }
            try {
                jVar.f(lVar.e());
            } catch (Exception e11) {
                b(e11);
            }
            try {
                jVar.o(lVar.a());
            } catch (Exception e12) {
                b(e12);
            }
            try {
                jVar.m(lVar.f());
            } catch (Exception e13) {
                b(e13);
            }
            try {
                jVar.p(lVar.b());
            } catch (Exception e14) {
                b(e14);
            }
            try {
                jVar.i(lVar.m());
            } catch (Exception e15) {
                b(e15);
            }
            try {
                jVar.j(lVar.l());
            } catch (Exception e16) {
                b(e16);
            }
            return jVar;
        }
        throw new aa.e("Found ad");
    }
}

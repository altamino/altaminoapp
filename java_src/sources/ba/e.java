package ba;

import x9.h;

/* JADX INFO: loaded from: classes7.dex */
public class e extends h<b, d> {
    @Override // x9.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public b a(d dVar) throws aa.h {
        b bVar = new b(g(), dVar.getUrl(), dVar.getName());
        try {
            bVar.j(dVar.c());
        } catch (Exception e) {
            b(e);
        }
        try {
            bVar.k(dVar.a());
        } catch (Exception e2) {
            b(e2);
        }
        try {
            bVar.l(dVar.b());
        } catch (Exception e6) {
            b(e6);
        }
        try {
            bVar.f(dVar.e());
        } catch (Exception e7) {
            b(e7);
        }
        try {
            bVar.i(dVar.d());
        } catch (Exception e10) {
            b(e10);
        }
        try {
            bVar.g(dVar.getDescription());
        } catch (Exception e11) {
            b(e11);
        }
        try {
            bVar.h(dVar.h());
        } catch (Exception e12) {
            b(e12);
        }
        return bVar;
    }

    public e(int i10) {
        super(i10);
    }
}

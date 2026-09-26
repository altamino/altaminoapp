package y9;

import x9.h;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends h<a, b> {
    @Override // x9.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public a a(b bVar) throws aa.h {
        a aVar = new a(g(), bVar.getUrl(), bVar.getName());
        try {
            aVar.i(bVar.o());
        } catch (Exception e) {
            b(e);
        }
        try {
            aVar.h(bVar.d());
        } catch (Exception e2) {
            b(e2);
        }
        try {
            aVar.f(bVar.e());
        } catch (Exception e6) {
            b(e6);
        }
        try {
            aVar.g(bVar.getDescription());
        } catch (Exception e7) {
            b(e7);
        }
        try {
            aVar.j(bVar.g());
        } catch (Exception e10) {
            b(e10);
        }
        return aVar;
    }

    public c(int i10) {
        super(i10);
    }
}

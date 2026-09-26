package org.threeten.bp.temporal;

import org.threeten.bp.r;
import org.threeten.bp.s;

/* JADX INFO: loaded from: classes4.dex */
public final class i {
    static final j<r> ZONE_ID = new a();
    static final j<org.threeten.bp.chrono.h> CHRONO = new b();
    static final j<k> PRECISION = new c();
    static final j<r> ZONE = new d();
    static final j<s> OFFSET = new e();
    static final j<org.threeten.bp.g> LOCAL_DATE = new f();
    static final j<org.threeten.bp.i> LOCAL_TIME = new g();

    class d implements j<r> {
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public r a(org.threeten.bp.temporal.e eVar) {
            r rVar = (r) eVar.d(i.ZONE_ID);
            return rVar != null ? rVar : (r) eVar.d(i.OFFSET);
        }

        d() {
        }
    }

    class e implements j<s> {
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public s a(org.threeten.bp.temporal.e eVar) {
            org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.OFFSET_SECONDS;
            if (eVar.i(aVar)) {
                return s.y(eVar.f(aVar));
            }
            return null;
        }

        e() {
        }
    }

    class f implements j<org.threeten.bp.g> {
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public org.threeten.bp.g a(org.threeten.bp.temporal.e eVar) {
            org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.EPOCH_DAY;
            if (eVar.i(aVar)) {
                return org.threeten.bp.g.S(eVar.k(aVar));
            }
            return null;
        }

        f() {
        }
    }

    class g implements j<org.threeten.bp.i> {
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public org.threeten.bp.i a(org.threeten.bp.temporal.e eVar) {
            org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.NANO_OF_DAY;
            if (eVar.i(aVar)) {
                return org.threeten.bp.i.x(eVar.k(aVar));
            }
            return null;
        }

        g() {
        }
    }

    public static final j<org.threeten.bp.chrono.h> a() {
        return CHRONO;
    }

    public static final j<org.threeten.bp.g> b() {
        return LOCAL_DATE;
    }

    public static final j<org.threeten.bp.i> c() {
        return LOCAL_TIME;
    }

    public static final j<s> d() {
        return OFFSET;
    }

    public static final j<k> e() {
        return PRECISION;
    }

    public static final j<r> f() {
        return ZONE;
    }

    public static final j<r> g() {
        return ZONE_ID;
    }

    class a implements j<r> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public r a(org.threeten.bp.temporal.e eVar) {
            return (r) eVar.d(this);
        }
    }

    class b implements j<org.threeten.bp.chrono.h> {
        b() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public org.threeten.bp.chrono.h a(org.threeten.bp.temporal.e eVar) {
            return (org.threeten.bp.chrono.h) eVar.d(this);
        }
    }

    class c implements j<k> {
        c() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public k a(org.threeten.bp.temporal.e eVar) {
            return (k) eVar.d(this);
        }
    }
}

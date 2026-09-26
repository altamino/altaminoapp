package org.threeten.bp.format;

import java.util.Locale;
import org.threeten.bp.r;
import org.threeten.bp.s;
import org.threeten.bp.temporal.m;

/* JADX INFO: loaded from: classes7.dex */
final class d {
    private Locale locale;
    private int optional;
    private f symbols;
    private org.threeten.bp.temporal.e temporal;

    class a extends ra.c {
        final /* synthetic */ org.threeten.bp.chrono.h val$effectiveChrono;
        final /* synthetic */ org.threeten.bp.chrono.b val$effectiveDate;
        final /* synthetic */ r val$effectiveZone;
        final /* synthetic */ org.threeten.bp.temporal.e val$temporal;

        a(org.threeten.bp.chrono.b bVar, org.threeten.bp.temporal.e eVar, org.threeten.bp.chrono.h hVar, r rVar) {
            this.val$effectiveDate = bVar;
            this.val$temporal = eVar;
            this.val$effectiveChrono = hVar;
            this.val$effectiveZone = rVar;
        }

        @Override // ra.c, org.threeten.bp.temporal.e
        public m c(org.threeten.bp.temporal.h hVar) {
            return (this.val$effectiveDate == null || !hVar.a()) ? this.val$temporal.c(hVar) : this.val$effectiveDate.c(hVar);
        }

        @Override // org.threeten.bp.temporal.e
        public boolean i(org.threeten.bp.temporal.h hVar) {
            return (this.val$effectiveDate == null || !hVar.a()) ? this.val$temporal.i(hVar) : this.val$effectiveDate.i(hVar);
        }

        @Override // org.threeten.bp.temporal.e
        public long k(org.threeten.bp.temporal.h hVar) {
            return (this.val$effectiveDate == null || !hVar.a()) ? this.val$temporal.k(hVar) : this.val$effectiveDate.k(hVar);
        }

        @Override // ra.c, org.threeten.bp.temporal.e
        public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
            if (jVar == org.threeten.bp.temporal.i.a()) {
                return (R) this.val$effectiveChrono;
            }
            if (jVar == org.threeten.bp.temporal.i.g()) {
                return (R) this.val$effectiveZone;
            }
            if (jVar == org.threeten.bp.temporal.i.e()) {
                return (R) this.val$temporal.d(jVar);
            }
            return jVar.a(this);
        }
    }

    void b() {
        this.optional--;
    }

    Locale c() {
        return this.locale;
    }

    f d() {
        return this.symbols;
    }

    org.threeten.bp.temporal.e e() {
        return this.temporal;
    }

    void h() {
        this.optional++;
    }

    Long f(org.threeten.bp.temporal.h hVar) {
        try {
            return Long.valueOf(this.temporal.k(hVar));
        } catch (org.threeten.bp.b e) {
            if (this.optional > 0) {
                return null;
            }
            throw e;
        }
    }

    <R> R g(org.threeten.bp.temporal.j<R> jVar) {
        R r = (R) this.temporal.d(jVar);
        if (r != null || this.optional != 0) {
            return r;
        }
        throw new org.threeten.bp.b("Unable to extract value: " + this.temporal.getClass());
    }

    public String toString() {
        return this.temporal.toString();
    }

    d(org.threeten.bp.temporal.e eVar, b bVar) {
        this.temporal = a(eVar, bVar);
        this.locale = bVar.e();
        this.symbols = bVar.d();
    }

    private static org.threeten.bp.temporal.e a(org.threeten.bp.temporal.e eVar, b bVar) {
        org.threeten.bp.chrono.h hVar;
        org.threeten.bp.chrono.h hVarC = bVar.c();
        r rVarF = bVar.f();
        if (hVarC == null && rVarF == null) {
            return eVar;
        }
        org.threeten.bp.chrono.h hVar2 = (org.threeten.bp.chrono.h) eVar.d(org.threeten.bp.temporal.i.a());
        r rVar = (r) eVar.d(org.threeten.bp.temporal.i.g());
        org.threeten.bp.chrono.b bVarB = null;
        if (ra.d.c(hVar2, hVarC)) {
            hVarC = null;
        }
        if (ra.d.c(rVar, rVarF)) {
            rVarF = null;
        }
        if (hVarC == null && rVarF == null) {
            return eVar;
        }
        if (hVarC != null) {
            hVar = hVarC;
        } else {
            hVar = hVar2;
        }
        if (rVarF != null) {
            rVar = rVarF;
        }
        if (rVarF != null) {
            if (eVar.i(org.threeten.bp.temporal.a.INSTANT_SECONDS)) {
                if (hVar == null) {
                    hVar = org.threeten.bp.chrono.m.INSTANCE;
                }
                return hVar.r(org.threeten.bp.f.p(eVar), rVarF);
            }
            r rVarP = rVarF.p();
            s sVar = (s) eVar.d(org.threeten.bp.temporal.i.d());
            if ((rVarP instanceof s) && sVar != null && !rVarP.equals(sVar)) {
                throw new org.threeten.bp.b("Invalid override zone for temporal: " + rVarF + " " + eVar);
            }
        }
        if (hVarC != null) {
            if (eVar.i(org.threeten.bp.temporal.a.EPOCH_DAY)) {
                bVarB = hVar.b(eVar);
            } else if (hVarC != org.threeten.bp.chrono.m.INSTANCE || hVar2 != null) {
                for (org.threeten.bp.temporal.a aVar : org.threeten.bp.temporal.a.values()) {
                    if (aVar.a() && eVar.i(aVar)) {
                        throw new org.threeten.bp.b("Invalid override chronology for temporal: " + hVarC + " " + eVar);
                    }
                }
            }
        }
        return new a(bVarB, eVar, hVar, rVar);
    }
}

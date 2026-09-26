package org.threeten.bp.chrono;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class r extends h implements Serializable {
    public static final r INSTANCE = new r();
    static final int YEARS_DIFFERENCE = 1911;
    private static final long serialVersionUID = 1039765215346859963L;

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.bp.chrono.h
    public String i() {
        return "roc";
    }

    @Override // org.threeten.bp.chrono.h
    public String j() {
        return "Minguo";
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[org.threeten.bp.temporal.a.PROLEPTIC_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public s s(int i10, int i11, int i12) {
        return new s(org.threeten.bp.g.Q(i10 + YEARS_DIFFERENCE, i11, i12));
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public s b(org.threeten.bp.temporal.e eVar) {
        return eVar instanceof s ? (s) eVar : new s(org.threeten.bp.g.A(eVar));
    }

    public org.threeten.bp.temporal.m v(org.threeten.bp.temporal.a aVar) {
        int i10 = a.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1) {
            org.threeten.bp.temporal.m mVarD = org.threeten.bp.temporal.a.PROLEPTIC_MONTH.d();
            return org.threeten.bp.temporal.m.i(mVarD.d() - 22932, mVarD.c() - 22932);
        }
        if (i10 == 2) {
            org.threeten.bp.temporal.m mVarD2 = org.threeten.bp.temporal.a.YEAR.d();
            return org.threeten.bp.temporal.m.j(1L, mVarD2.c() - 1911, (-mVarD2.d()) + 1912);
        }
        if (i10 != 3) {
            return aVar.d();
        }
        org.threeten.bp.temporal.m mVarD3 = org.threeten.bp.temporal.a.YEAR.d();
        return org.threeten.bp.temporal.m.i(mVarD3.d() - 1911, mVarD3.c() - 1911);
    }

    private r() {
    }

    @Override // org.threeten.bp.chrono.h
    public c<s> l(org.threeten.bp.temporal.e eVar) {
        return super.l(eVar);
    }

    @Override // org.threeten.bp.chrono.h
    public f<s> r(org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        return super.r(fVar, rVar);
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public t f(int i10) {
        return t.a(i10);
    }
}

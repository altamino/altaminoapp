package org.threeten.bp.chrono;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class v extends h implements Serializable {
    public static final v INSTANCE = new v();
    static final int YEARS_DIFFERENCE = 543;
    private static final long serialVersionUID = 2775954514031616474L;

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.bp.chrono.h
    public String i() {
        return "buddhist";
    }

    @Override // org.threeten.bp.chrono.h
    public String j() {
        return "ThaiBuddhist";
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

    public w s(int i10, int i11, int i12) {
        return new w(org.threeten.bp.g.Q(i10 - 543, i11, i12));
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public w b(org.threeten.bp.temporal.e eVar) {
        return eVar instanceof w ? (w) eVar : new w(org.threeten.bp.g.A(eVar));
    }

    public org.threeten.bp.temporal.m v(org.threeten.bp.temporal.a aVar) {
        int i10 = a.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1) {
            org.threeten.bp.temporal.m mVarD = org.threeten.bp.temporal.a.PROLEPTIC_MONTH.d();
            return org.threeten.bp.temporal.m.i(mVarD.d() + 6516, mVarD.c() + 6516);
        }
        if (i10 == 2) {
            org.threeten.bp.temporal.m mVarD2 = org.threeten.bp.temporal.a.YEAR.d();
            return org.threeten.bp.temporal.m.j(1L, 1 + (-(mVarD2.d() + 543)), mVarD2.c() + 543);
        }
        if (i10 != 3) {
            return aVar.d();
        }
        org.threeten.bp.temporal.m mVarD3 = org.threeten.bp.temporal.a.YEAR.d();
        return org.threeten.bp.temporal.m.i(mVarD3.d() + 543, mVarD3.c() + 543);
    }

    private v() {
    }

    @Override // org.threeten.bp.chrono.h
    public c<w> l(org.threeten.bp.temporal.e eVar) {
        return super.l(eVar);
    }

    @Override // org.threeten.bp.chrono.h
    public f<w> r(org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        return super.r(fVar, rVar);
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public x f(int i10) {
        return x.a(i10);
    }
}

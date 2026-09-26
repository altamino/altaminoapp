package org.threeten.bp.temporal;

/* JADX INFO: loaded from: classes9.dex */
public final class g {

    private static final class b implements f {
        private final int dowValue;
        private final int relative;

        private b(int i10, org.threeten.bp.d dVar) {
            ra.d.i(dVar, "dayOfWeek");
            this.relative = i10;
            this.dowValue = dVar.getValue();
        }

        @Override // org.threeten.bp.temporal.f
        public d b(d dVar) {
            int iF = dVar.f(org.threeten.bp.temporal.a.DAY_OF_WEEK);
            int i10 = this.relative;
            if (i10 < 2 && iF == this.dowValue) {
                return dVar;
            }
            if ((i10 & 1) == 0) {
                int i11 = iF - this.dowValue;
                return dVar.t(i11 >= 0 ? 7 - i11 : -i11, org.threeten.bp.temporal.b.DAYS);
            }
            int i12 = this.dowValue - iF;
            return dVar.s(i12 >= 0 ? 7 - i12 : -i12, org.threeten.bp.temporal.b.DAYS);
        }
    }

    public static f a(org.threeten.bp.d dVar) {
        return new b(0, dVar);
    }

    public static f b(org.threeten.bp.d dVar) {
        return new b(1, dVar);
    }
}

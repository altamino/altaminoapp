package org.threeten.bp;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: org.threeten.bp.a$a, reason: collision with other inner class name */
    static final class C0483a extends a implements Serializable {
        private static final long serialVersionUID = 6740630888130243051L;
        private final r zone;

        @Override // org.threeten.bp.a
        public r a() {
            return this.zone;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C0483a) {
                return this.zone.equals(((C0483a) obj).zone);
            }
            return false;
        }

        public int hashCode() {
            return this.zone.hashCode() + 1;
        }

        public String toString() {
            return "SystemClock[" + this.zone + "]";
        }

        C0483a(r rVar) {
            this.zone = rVar;
        }

        @Override // org.threeten.bp.a
        public f b() {
            return f.t(d());
        }

        public long d() {
            return System.currentTimeMillis();
        }
    }

    public abstract r a();

    public abstract f b();

    public static a c(r rVar) {
        ra.d.i(rVar, "zone");
        return new C0483a(rVar);
    }

    protected a() {
    }
}

package org.threeten.bp.zone;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import org.threeten.bp.s;

/* JADX INFO: loaded from: classes9.dex */
public abstract class f {

    static final class a extends f implements Serializable {
        private static final long serialVersionUID = -8733721350312276297L;
        private final s offset;

        @Override // org.threeten.bp.zone.f
        public s a(org.threeten.bp.f fVar) {
            return this.offset;
        }

        @Override // org.threeten.bp.zone.f
        public d b(org.threeten.bp.h hVar) {
            return null;
        }

        @Override // org.threeten.bp.zone.f
        public boolean d() {
            return true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.offset.equals(((a) obj).offset);
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return bVar.d() && this.offset.equals(bVar.a(org.threeten.bp.f.EPOCH));
        }

        @Override // org.threeten.bp.zone.f
        public List<s> c(org.threeten.bp.h hVar) {
            return Collections.singletonList(this.offset);
        }

        @Override // org.threeten.bp.zone.f
        public boolean e(org.threeten.bp.h hVar, s sVar) {
            return this.offset.equals(sVar);
        }

        public int hashCode() {
            return ((this.offset.hashCode() + 31) ^ (this.offset.hashCode() + 31)) ^ 1;
        }

        public String toString() {
            return "FixedRules:" + this.offset;
        }

        a(s sVar) {
            this.offset = sVar;
        }
    }

    public abstract s a(org.threeten.bp.f fVar);

    public abstract d b(org.threeten.bp.h hVar);

    public abstract List<s> c(org.threeten.bp.h hVar);

    public abstract boolean d();

    public abstract boolean e(org.threeten.bp.h hVar, s sVar);

    public static f f(s sVar) {
        ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
        return new a(sVar);
    }

    f() {
    }
}

package org.threeten.bp.chrono;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.List;
import org.threeten.bp.chrono.b;

/* JADX INFO: loaded from: classes4.dex */
final class g<D extends b> extends f<D> implements Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    private final d<D> dateTime;
    private final org.threeten.bp.s offset;
    private final org.threeten.bp.r zone;

    @Override // org.threeten.bp.chrono.f
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && compareTo((f) obj) == 0;
    }

    @Override // org.threeten.bp.chrono.f
    public org.threeten.bp.s o() {
        return this.offset;
    }

    @Override // org.threeten.bp.chrono.f
    public org.threeten.bp.r p() {
        return this.zone;
    }

    @Override // org.threeten.bp.chrono.f
    public c<D> w() {
        return this.dateTime;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[org.threeten.bp.temporal.a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static <R extends b> f<R> C(d<R> dVar, org.threeten.bp.r rVar, org.threeten.bp.s sVar) {
        ra.d.i(dVar, "localDateTime");
        ra.d.i(rVar, "zone");
        if (rVar instanceof org.threeten.bp.s) {
            return new g(dVar, (org.threeten.bp.s) rVar, rVar);
        }
        org.threeten.bp.zone.f fVarO = rVar.o();
        org.threeten.bp.h hVarD = org.threeten.bp.h.D(dVar);
        List<org.threeten.bp.s> listC = fVarO.c(hVarD);
        if (listC.size() == 1) {
            sVar = listC.get(0);
        } else if (listC.size() == 0) {
            org.threeten.bp.zone.d dVarB = fVarO.b(hVarD);
            dVar = dVar.G(dVarB.d().c());
            sVar = dVarB.h();
        } else if (sVar == null || !listC.contains(sVar)) {
            sVar = listC.get(0);
        }
        ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
        return new g(dVar, sVar, rVar);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new u(com.google.common.base.c.CR, this);
    }

    @Override // org.threeten.bp.chrono.f
    public f<D> A(org.threeten.bp.r rVar) {
        return C(this.dateTime, rVar, this.offset);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        return (hVar instanceof org.threeten.bp.temporal.a) || (hVar != null && hVar.c(this));
    }

    @Override // org.threeten.bp.chrono.f, org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: s */
    public f<D> t(long j6, org.threeten.bp.temporal.k kVar) {
        return kVar instanceof org.threeten.bp.temporal.b ? y(this.dateTime.s(j6, kVar)) : v().p().e(kVar.b(this, j6));
    }

    @Override // org.threeten.bp.chrono.f
    public String toString() {
        String str = w().toString() + o().toString();
        if (o() == p()) {
            return str;
        }
        return str + kotlinx.serialization.json.internal.b.BEGIN_LIST + p().toString() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.dateTime);
        objectOutput.writeObject(this.offset);
        objectOutput.writeObject(this.zone);
    }

    @Override // org.threeten.bp.chrono.f, org.threeten.bp.temporal.d
    public f<D> z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return v().p().e(hVar.b(this, j6));
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        int i10 = a.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1) {
            return t(j6 - t(), org.threeten.bp.temporal.b.SECONDS);
        }
        if (i10 != 2) {
            return C(this.dateTime.z(hVar, j6), this.zone, this.offset);
        }
        return B(this.dateTime.v(org.threeten.bp.s.y(aVar.i(j6))), this.zone);
    }

    private g(d<D> dVar, org.threeten.bp.s sVar, org.threeten.bp.r rVar) {
        this.dateTime = (d) ra.d.i(dVar, "dateTime");
        this.offset = (org.threeten.bp.s) ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
        this.zone = (org.threeten.bp.r) ra.d.i(rVar, "zone");
    }

    private g<D> B(org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        return D(v().p(), fVar, rVar);
    }

    static <R extends b> g<R> D(h hVar, org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        org.threeten.bp.s sVarA = rVar.o().a(fVar);
        ra.d.i(sVarA, TypedValues.CycleType.S_WAVE_OFFSET);
        return new g<>((d) hVar.l(org.threeten.bp.h.J(fVar.q(), fVar.r(), sVarA)), sVarA, rVar);
    }

    static f<?> E(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        c cVar = (c) objectInput.readObject();
        org.threeten.bp.s sVar = (org.threeten.bp.s) objectInput.readObject();
        return cVar.n(sVar).A((org.threeten.bp.r) objectInput.readObject());
    }

    @Override // org.threeten.bp.chrono.f
    public int hashCode() {
        return (w().hashCode() ^ o().hashCode()) ^ Integer.rotateLeft(p().hashCode(), 3);
    }
}

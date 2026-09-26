package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public enum x implements i {
    BEFORE_BE,
    BE;

    public static x a(int i10) {
        if (i10 == 0) {
            return BEFORE_BE;
        }
        if (i10 == 1) {
            return BE;
        }
        throw new org.threeten.bp.b("Era is not valid for ThaiBuddhistEra");
    }

    private Object writeReplace() {
        return new u((byte) 8, this);
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.ERA, getValue());
    }

    @Override // org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.ERA) {
            return hVar.d();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return hVar == org.threeten.bp.temporal.a.ERA ? getValue() : c(hVar).a(k(hVar), hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.ERA;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.ERA) {
            return getValue();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    static x n(DataInput dataInput) throws IOException {
        return a(dataInput.readByte());
    }

    @Override // org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.ERAS;
        }
        if (jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d() && jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c()) {
            return jVar.a(this);
        }
        return null;
    }

    @Override // org.threeten.bp.chrono.i
    public int getValue() {
        return ordinal();
    }

    void o(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(getValue());
    }
}

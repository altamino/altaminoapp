package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class q extends ra.a implements Serializable {
    private static final int ADDITIONAL_VALUE = 4;
    static final int ERA_OFFSET = 2;
    public static final q HEISEI;
    private static final AtomicReference<q[]> KNOWN_ERAS;
    public static final q MEIJI;
    public static final q REIWA;
    public static final q SHOWA;
    public static final q TAISHO;
    private static final long serialVersionUID = 1466499369062886794L;
    private final int eraValue;
    private final transient String name;
    private final transient org.threeten.bp.g since;

    private static int q(int i10) {
        return i10 + 1;
    }

    @Override // org.threeten.bp.chrono.i
    public int getValue() {
        return this.eraValue;
    }

    org.threeten.bp.g s() {
        return this.since;
    }

    public String toString() {
        return this.name;
    }

    static {
        q qVar = new q(-1, org.threeten.bp.g.Q(1868, 9, 8), "Meiji");
        MEIJI = qVar;
        q qVar2 = new q(0, org.threeten.bp.g.Q(1912, 7, 30), "Taisho");
        TAISHO = qVar2;
        q qVar3 = new q(1, org.threeten.bp.g.Q(1926, 12, 25), "Showa");
        SHOWA = qVar3;
        q qVar4 = new q(2, org.threeten.bp.g.Q(1989, 1, 8), "Heisei");
        HEISEI = qVar4;
        q qVar5 = new q(3, org.threeten.bp.g.Q(2019, 5, 1), "Reiwa");
        REIWA = qVar5;
        KNOWN_ERAS = new AtomicReference<>(new q[]{qVar, qVar2, qVar3, qVar4, qVar5});
    }

    static q o(org.threeten.bp.g gVar) {
        if (gVar.r(MEIJI.since)) {
            throw new org.threeten.bp.b("Date too early: " + gVar);
        }
        q[] qVarArr = KNOWN_ERAS.get();
        for (int length = qVarArr.length - 1; length >= 0; length--) {
            q qVar = qVarArr[length];
            if (gVar.compareTo(qVar.since) >= 0) {
                return qVar;
            }
        }
        return null;
    }

    public static q p(int i10) {
        q[] qVarArr = KNOWN_ERAS.get();
        if (i10 < MEIJI.eraValue || i10 > qVarArr[qVarArr.length - 1].eraValue) {
            throw new org.threeten.bp.b("japaneseEra is invalid");
        }
        return qVarArr[q(i10)];
    }

    private Object readResolve() throws ObjectStreamException {
        try {
            return p(this.eraValue);
        } catch (org.threeten.bp.b e) {
            InvalidObjectException invalidObjectException = new InvalidObjectException("Invalid era");
            invalidObjectException.initCause(e);
            throw invalidObjectException;
        }
    }

    public static q[] t() {
        q[] qVarArr = KNOWN_ERAS.get();
        return (q[]) Arrays.copyOf(qVarArr, qVarArr.length);
    }

    private Object writeReplace() {
        return new u((byte) 2, this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.ERA;
        return hVar == aVar ? o.INSTANCE.w(aVar) : super.c(hVar);
    }

    org.threeten.bp.g n() {
        int iQ = q(this.eraValue);
        q[] qVarArrT = t();
        return iQ >= qVarArrT.length + (-1) ? org.threeten.bp.g.MAX : qVarArrT[iQ + 1].s().O(1L);
    }

    private q(int i10, org.threeten.bp.g gVar, String str) {
        this.eraValue = i10;
        this.since = gVar;
        this.name = str;
    }

    static q r(DataInput dataInput) throws IOException {
        return p(dataInput.readByte());
    }

    void u(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(getValue());
    }
}

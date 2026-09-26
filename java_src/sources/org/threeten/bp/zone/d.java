package org.threeten.bp.zone;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.threeten.bp.s;

/* JADX INFO: loaded from: classes9.dex */
public final class d implements Comparable<d>, Serializable {
    private static final long serialVersionUID = -6946044323557704546L;
    private final s offsetAfter;
    private final s offsetBefore;
    private final org.threeten.bp.h transition;

    d(org.threeten.bp.h hVar, s sVar, s sVar2) {
        this.transition = hVar;
        this.offsetBefore = sVar;
        this.offsetAfter = sVar2;
    }

    public org.threeten.bp.h c() {
        return this.transition;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.transition.equals(dVar.transition) && this.offsetBefore.equals(dVar.offsetBefore) && this.offsetAfter.equals(dVar.offsetAfter);
    }

    public s h() {
        return this.offsetAfter;
    }

    public s i() {
        return this.offsetBefore;
    }

    d(long j6, s sVar, s sVar2) {
        this.transition = org.threeten.bp.h.J(j6, 0, sVar);
        this.offsetBefore = sVar;
        this.offsetAfter = sVar2;
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    public org.threeten.bp.h b() {
        return this.transition.Q(e());
    }

    public org.threeten.bp.f f() {
        return this.transition.v(this.offsetBefore);
    }

    public int hashCode() {
        return (this.transition.hashCode() ^ this.offsetBefore.hashCode()) ^ Integer.rotateLeft(this.offsetAfter.hashCode(), 16);
    }

    public long n() {
        return this.transition.u(this.offsetBefore);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Transition[");
        sb.append(k() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.transition);
        sb.append(this.offsetBefore);
        sb.append(" to ");
        sb.append(this.offsetAfter);
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    private int e() {
        return h().v() - i().v();
    }

    static d l(DataInput dataInput) throws IOException {
        long jB = a.b(dataInput);
        s sVarD = a.d(dataInput);
        s sVarD2 = a.d(dataInput);
        if (!sVarD.equals(sVarD2)) {
            return new d(jB, sVarD, sVarD2);
        }
        throw new IllegalArgumentException("Offsets must not be equal");
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        return f().compareTo(dVar.f());
    }

    public org.threeten.bp.e d() {
        return org.threeten.bp.e.e(e());
    }

    List<s> j() {
        if (k()) {
            return Collections.emptyList();
        }
        return Arrays.asList(i(), h());
    }

    public boolean k() {
        if (h().v() > i().v()) {
            return true;
        }
        return false;
    }

    void o(DataOutput dataOutput) throws IOException {
        a.e(n(), dataOutput);
        a.g(this.offsetBefore, dataOutput);
        a.g(this.offsetAfter, dataOutput);
    }
}

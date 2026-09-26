package org.threeten.bp.zone;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.bp.s;

/* JADX INFO: loaded from: classes9.dex */
final class b extends f implements Serializable {
    private static final int LAST_CACHED_YEAR = 2100;
    private static final long serialVersionUID = 3044319355680032515L;
    private final e[] lastRules;
    private final ConcurrentMap<Integer, d[]> lastRulesCache = new ConcurrentHashMap();
    private final long[] savingsInstantTransitions;
    private final org.threeten.bp.h[] savingsLocalTransitions;
    private final s[] standardOffsets;
    private final long[] standardTransitions;
    private final s[] wallOffsets;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return Arrays.equals(this.standardTransitions, bVar.standardTransitions) && Arrays.equals(this.standardOffsets, bVar.standardOffsets) && Arrays.equals(this.savingsInstantTransitions, bVar.savingsInstantTransitions) && Arrays.equals(this.wallOffsets, bVar.wallOffsets) && Arrays.equals(this.lastRules, bVar.lastRules);
        }
        if (!(obj instanceof f.a)) {
            return false;
        }
        if (d()) {
            org.threeten.bp.f fVar = org.threeten.bp.f.EPOCH;
            if (a(fVar).equals(((f.a) obj).a(fVar))) {
                return true;
            }
        }
        return false;
    }

    private Object j(org.threeten.bp.h hVar) {
        int i10 = 0;
        if (this.lastRules.length > 0) {
            org.threeten.bp.h[] hVarArr = this.savingsLocalTransitions;
            if (hVarArr.length == 0 || hVar.q(hVarArr[hVarArr.length - 1])) {
                d[] dVarArrH = h(hVar.G());
                int length = dVarArrH.length;
                Object obj = null;
                while (i10 < length) {
                    d dVar = dVarArrH[i10];
                    Object objG = g(hVar, dVar);
                    if ((objG instanceof d) || objG.equals(dVar.i())) {
                        return objG;
                    }
                    i10++;
                    obj = objG;
                }
                return obj;
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.savingsLocalTransitions, hVar);
        if (iBinarySearch == -1) {
            return this.wallOffsets[0];
        }
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        } else {
            Object[] objArr = this.savingsLocalTransitions;
            if (iBinarySearch < objArr.length - 1) {
                int i11 = iBinarySearch + 1;
                if (objArr[iBinarySearch].equals(objArr[i11])) {
                    iBinarySearch = i11;
                }
            }
        }
        if ((iBinarySearch & 1) != 0) {
            return this.wallOffsets[(iBinarySearch / 2) + 1];
        }
        org.threeten.bp.h[] hVarArr2 = this.savingsLocalTransitions;
        org.threeten.bp.h hVar2 = hVarArr2[iBinarySearch];
        org.threeten.bp.h hVar3 = hVarArr2[iBinarySearch + 1];
        s[] sVarArr = this.wallOffsets;
        int i12 = iBinarySearch / 2;
        s sVar = sVarArr[i12];
        s sVar2 = sVarArr[i12 + 1];
        return sVar2.v() > sVar.v() ? new d(hVar2, sVar, sVar2) : new d(hVar3, sVar, sVar2);
    }

    private Object writeReplace() {
        return new a((byte) 1, this);
    }

    @Override // org.threeten.bp.zone.f
    public boolean d() {
        return this.savingsInstantTransitions.length == 0 && this.lastRules.length == 0 && this.wallOffsets[0].equals(this.standardOffsets[0]);
    }

    public int hashCode() {
        return (((Arrays.hashCode(this.standardTransitions) ^ Arrays.hashCode(this.standardOffsets)) ^ Arrays.hashCode(this.savingsInstantTransitions)) ^ Arrays.hashCode(this.wallOffsets)) ^ Arrays.hashCode(this.lastRules);
    }

    void l(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.standardTransitions.length);
        for (long j6 : this.standardTransitions) {
            a.e(j6, dataOutput);
        }
        for (s sVar : this.standardOffsets) {
            a.g(sVar, dataOutput);
        }
        dataOutput.writeInt(this.savingsInstantTransitions.length);
        for (long j10 : this.savingsInstantTransitions) {
            a.e(j10, dataOutput);
        }
        for (s sVar2 : this.wallOffsets) {
            a.g(sVar2, dataOutput);
        }
        dataOutput.writeByte(this.lastRules.length);
        for (e eVar : this.lastRules) {
            eVar.d(dataOutput);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("StandardZoneRules[currentStandardOffset=");
        s[] sVarArr = this.standardOffsets;
        sb.append(sVarArr[sVarArr.length - 1]);
        sb.append("]");
        return sb.toString();
    }

    private b(long[] jArr, s[] sVarArr, long[] jArr2, s[] sVarArr2, e[] eVarArr) {
        this.standardTransitions = jArr;
        this.standardOffsets = sVarArr;
        this.savingsInstantTransitions = jArr2;
        this.wallOffsets = sVarArr2;
        this.lastRules = eVarArr;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < jArr2.length) {
            int i11 = i10 + 1;
            d dVar = new d(jArr2[i10], sVarArr2[i10], sVarArr2[i11]);
            if (dVar.k()) {
                arrayList.add(dVar.c());
                arrayList.add(dVar.b());
            } else {
                arrayList.add(dVar.b());
                arrayList.add(dVar.c());
            }
            i10 = i11;
        }
        this.savingsLocalTransitions = (org.threeten.bp.h[]) arrayList.toArray(new org.threeten.bp.h[arrayList.size()]);
    }

    private Object g(org.threeten.bp.h hVar, d dVar) {
        org.threeten.bp.h hVarC = dVar.c();
        if (dVar.k()) {
            if (hVar.r(hVarC)) {
                return dVar.i();
            }
            if (hVar.r(dVar.b())) {
                return dVar;
            }
            return dVar.h();
        }
        if (!hVar.r(hVarC)) {
            return dVar.h();
        }
        if (hVar.r(dVar.b())) {
            return dVar.i();
        }
        return dVar;
    }

    private d[] h(int i10) {
        Integer numValueOf = Integer.valueOf(i10);
        d[] dVarArr = this.lastRulesCache.get(numValueOf);
        if (dVarArr != null) {
            return dVarArr;
        }
        e[] eVarArr = this.lastRules;
        d[] dVarArr2 = new d[eVarArr.length];
        for (int i11 = 0; i11 < eVarArr.length; i11++) {
            dVarArr2[i11] = eVarArr[i11].b(i10);
        }
        if (i10 < LAST_CACHED_YEAR) {
            this.lastRulesCache.putIfAbsent(numValueOf, dVarArr2);
        }
        return dVarArr2;
    }

    private int i(long j6, s sVar) {
        return org.threeten.bp.g.S(ra.d.e(j6 + ((long) sVar.v()), 86400L)).J();
    }

    static b k(DataInput dataInput) throws IOException, ClassNotFoundException {
        int i10 = dataInput.readInt();
        long[] jArr = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = a.b(dataInput);
        }
        int i12 = i10 + 1;
        s[] sVarArr = new s[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            sVarArr[i13] = a.d(dataInput);
        }
        int i14 = dataInput.readInt();
        long[] jArr2 = new long[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            jArr2[i15] = a.b(dataInput);
        }
        int i16 = i14 + 1;
        s[] sVarArr2 = new s[i16];
        for (int i17 = 0; i17 < i16; i17++) {
            sVarArr2[i17] = a.d(dataInput);
        }
        int i18 = dataInput.readByte();
        e[] eVarArr = new e[i18];
        for (int i19 = 0; i19 < i18; i19++) {
            eVarArr[i19] = e.c(dataInput);
        }
        return new b(jArr, sVarArr, jArr2, sVarArr2, eVarArr);
    }

    @Override // org.threeten.bp.zone.f
    public s a(org.threeten.bp.f fVar) {
        long jQ = fVar.q();
        if (this.lastRules.length > 0) {
            long[] jArr = this.savingsInstantTransitions;
            if (jArr.length == 0 || jQ > jArr[jArr.length - 1]) {
                s[] sVarArr = this.wallOffsets;
                d[] dVarArrH = h(i(jQ, sVarArr[sVarArr.length - 1]));
                d dVar = null;
                for (int i10 = 0; i10 < dVarArrH.length; i10++) {
                    dVar = dVarArrH[i10];
                    if (jQ < dVar.n()) {
                        return dVar.i();
                    }
                }
                return dVar.h();
            }
        }
        int iBinarySearch = Arrays.binarySearch(this.savingsInstantTransitions, jQ);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 2;
        }
        return this.wallOffsets[iBinarySearch + 1];
    }

    @Override // org.threeten.bp.zone.f
    public d b(org.threeten.bp.h hVar) {
        Object objJ = j(hVar);
        if (objJ instanceof d) {
            return (d) objJ;
        }
        return null;
    }

    @Override // org.threeten.bp.zone.f
    public List<s> c(org.threeten.bp.h hVar) {
        Object objJ = j(hVar);
        if (objJ instanceof d) {
            return ((d) objJ).j();
        }
        return Collections.singletonList((s) objJ);
    }

    @Override // org.threeten.bp.zone.f
    public boolean e(org.threeten.bp.h hVar, s sVar) {
        return c(hVar).contains(sVar);
    }
}

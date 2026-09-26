package org.threeten.bp.format;

import java.util.HashMap;
import java.util.Map;
import org.threeten.bp.n;
import org.threeten.bp.r;

/* JADX INFO: loaded from: classes11.dex */
final class a extends ra.c implements Cloneable {
    org.threeten.bp.chrono.h chrono;
    org.threeten.bp.chrono.b date;
    n excessDays;
    final Map<org.threeten.bp.temporal.h, Long> fieldValues = new HashMap();
    boolean leapSecond;
    org.threeten.bp.i time;
    r zone;

    public a() {
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        org.threeten.bp.chrono.b bVar;
        org.threeten.bp.i iVar;
        if (hVar == null) {
            return false;
        }
        return this.fieldValues.containsKey(hVar) || ((bVar = this.date) != null && bVar.i(hVar)) || ((iVar = this.time) != null && iVar.i(hVar));
    }

    private Long o(org.threeten.bp.temporal.h hVar) {
        return this.fieldValues.get(hVar);
    }

    private a p(org.threeten.bp.temporal.h hVar, long j6) {
        this.fieldValues.put(hVar, Long.valueOf(j6));
        return this;
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        ra.d.i(hVar, "field");
        Long lO = o(hVar);
        if (lO != null) {
            return lO.longValue();
        }
        org.threeten.bp.chrono.b bVar = this.date;
        if (bVar != null && bVar.i(hVar)) {
            return this.date.k(hVar);
        }
        org.threeten.bp.i iVar = this.time;
        if (iVar != null && iVar.i(hVar)) {
            return this.time.k(hVar);
        }
        throw new org.threeten.bp.b("Field not found: " + hVar);
    }

    a n(org.threeten.bp.temporal.h hVar, long j6) {
        ra.d.i(hVar, "field");
        Long lO = o(hVar);
        if (lO == null || lO.longValue() == j6) {
            return p(hVar, j6);
        }
        throw new org.threeten.bp.b("Conflict found: " + hVar + " " + lO + " differs from " + hVar + " " + j6 + ": " + this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("DateTimeBuilder[");
        if (this.fieldValues.size() > 0) {
            sb.append("fields=");
            sb.append(this.fieldValues);
        }
        sb.append(", ");
        sb.append(this.chrono);
        sb.append(", ");
        sb.append(this.zone);
        sb.append(", ");
        sb.append(this.date);
        sb.append(", ");
        sb.append(this.time);
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    public a(org.threeten.bp.temporal.h hVar, long j6) {
        n(hVar, j6);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.g()) {
            return (R) this.zone;
        }
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) this.chrono;
        }
        if (jVar == org.threeten.bp.temporal.i.b()) {
            org.threeten.bp.chrono.b bVar = this.date;
            if (bVar == null) {
                return null;
            }
            return (R) org.threeten.bp.g.A(bVar);
        }
        if (jVar == org.threeten.bp.temporal.i.c()) {
            return (R) this.time;
        }
        if (jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.d()) {
            if (jVar == org.threeten.bp.temporal.i.e()) {
                return null;
            }
            return jVar.a(this);
        }
        return jVar.a(this);
    }
}

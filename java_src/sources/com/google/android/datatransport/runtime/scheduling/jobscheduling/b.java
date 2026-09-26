package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
final class b extends f {
    private final m2.a clock;
    private final Map<f2.d, f.b> values;

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f
    m2.a e() {
        return this.clock;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.clock.equals(fVar.e()) && this.values.equals(fVar.h());
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f
    Map<f2.d, f.b> h() {
        return this.values;
    }

    public int hashCode() {
        return ((this.clock.hashCode() ^ 1000003) * 1000003) ^ this.values.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.clock + ", values=" + this.values + "}";
    }

    b(m2.a aVar, Map<f2.d, f.b> map) {
        if (aVar != null) {
            this.clock = aVar;
            if (map != null) {
                this.values = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }
}

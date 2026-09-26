package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
final class c extends f.b {
    private final long delta;
    private final Set<f.c> flags;
    private final long maxAllowedDelay;

    static final class b extends f.b.a {
        private Long delta;
        private Set<f.c> flags;
        private Long maxAllowedDelay;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f.b.a
        public f.b a() {
            String str = "";
            if (this.delta == null) {
                str = " delta";
            }
            if (this.maxAllowedDelay == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.flags == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new c(this.delta.longValue(), this.maxAllowedDelay.longValue(), this.flags);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f.b.a
        public f.b.a c(Set<f.c> set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.flags = set;
            return this;
        }

        b() {
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f.b.a
        public f.b.a b(long j6) {
            this.delta = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f.b.a
        public f.b.a d(long j6) {
            this.maxAllowedDelay = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f.b
    long b() {
        return this.delta;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f.b
    Set<f.c> c() {
        return this.flags;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.f.b
    long d() {
        return this.maxAllowedDelay;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f.b)) {
            return false;
        }
        f.b bVar = (f.b) obj;
        return this.delta == bVar.b() && this.maxAllowedDelay == bVar.d() && this.flags.equals(bVar.c());
    }

    private c(long j6, long j10, Set<f.c> set) {
        this.delta = j6;
        this.maxAllowedDelay = j10;
        this.flags = set;
    }

    public int hashCode() {
        long j6 = this.delta;
        int i10 = (((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003;
        long j10 = this.maxAllowedDelay;
        return ((i10 ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.flags.hashCode();
    }

    public String toString() {
        return "ConfigValue{delta=" + this.delta + ", maxAllowedDelay=" + this.maxAllowedDelay + ", flags=" + this.flags + "}";
    }
}

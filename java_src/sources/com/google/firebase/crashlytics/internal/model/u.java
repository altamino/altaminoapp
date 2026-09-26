package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class u extends f0.e.d.c {
    private final Double batteryLevel;
    private final int batteryVelocity;
    private final long diskUsed;
    private final int orientation;
    private final boolean proximityOn;
    private final long ramUsed;

    static final class b extends f0.e.d.c.a {
        private Double batteryLevel;
        private Integer batteryVelocity;
        private Long diskUsed;
        private Integer orientation;
        private Boolean proximityOn;
        private Long ramUsed;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c.a
        public f0.e.d.c.a b(Double d) {
            this.batteryLevel = d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c.a
        public f0.e.d.c a() {
            String str = "";
            if (this.batteryVelocity == null) {
                str = " batteryVelocity";
            }
            if (this.proximityOn == null) {
                str = str + " proximityOn";
            }
            if (this.orientation == null) {
                str = str + " orientation";
            }
            if (this.ramUsed == null) {
                str = str + " ramUsed";
            }
            if (this.diskUsed == null) {
                str = str + " diskUsed";
            }
            if (str.isEmpty()) {
                return new u(this.batteryLevel, this.batteryVelocity.intValue(), this.proximityOn.booleanValue(), this.orientation.intValue(), this.ramUsed.longValue(), this.diskUsed.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c.a
        public f0.e.d.c.a c(int i10) {
            this.batteryVelocity = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c.a
        public f0.e.d.c.a d(long j6) {
            this.diskUsed = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c.a
        public f0.e.d.c.a e(int i10) {
            this.orientation = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c.a
        public f0.e.d.c.a f(boolean z6) {
            this.proximityOn = Boolean.valueOf(z6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c.a
        public f0.e.d.c.a g(long j6) {
            this.ramUsed = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c
    @Nullable
    public Double b() {
        return this.batteryLevel;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c
    public int c() {
        return this.batteryVelocity;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c
    public long d() {
        return this.diskUsed;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c
    public int e() {
        return this.orientation;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.c)) {
            return false;
        }
        f0.e.d.c cVar = (f0.e.d.c) obj;
        Double d = this.batteryLevel;
        if (d != null ? d.equals(cVar.b()) : cVar.b() == null) {
            if (this.batteryVelocity == cVar.c() && this.proximityOn == cVar.g() && this.orientation == cVar.e() && this.ramUsed == cVar.f() && this.diskUsed == cVar.d()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c
    public long f() {
        return this.ramUsed;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.c
    public boolean g() {
        return this.proximityOn;
    }

    private u(@Nullable Double d, int i10, boolean z6, int i11, long j6, long j10) {
        this.batteryLevel = d;
        this.batteryVelocity = i10;
        this.proximityOn = z6;
        this.orientation = i11;
        this.ramUsed = j6;
        this.diskUsed = j10;
    }

    public int hashCode() {
        Double d = this.batteryLevel;
        int iHashCode = ((((((((d == null ? 0 : d.hashCode()) ^ 1000003) * 1000003) ^ this.batteryVelocity) * 1000003) ^ (this.proximityOn ? 1231 : 1237)) * 1000003) ^ this.orientation) * 1000003;
        long j6 = this.ramUsed;
        long j10 = this.diskUsed;
        return ((iHashCode ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.batteryLevel + ", batteryVelocity=" + this.batteryVelocity + ", proximityOn=" + this.proximityOn + ", orientation=" + this.orientation + ", ramUsed=" + this.ramUsed + ", diskUsed=" + this.diskUsed + "}";
    }
}

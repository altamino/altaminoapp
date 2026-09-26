package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class l extends f0.e.d {
    private final f0.e.d.a app;
    private final f0.e.d.c device;
    private final f0.e.d.AbstractC0250d log;
    private final f0.e.d.f rollouts;
    private final long timestamp;
    private final String type;

    static final class b extends f0.e.d.b {
        private f0.e.d.a app;
        private f0.e.d.c device;
        private f0.e.d.AbstractC0250d log;
        private f0.e.d.f rollouts;
        private Long timestamp;
        private String type;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.b
        public f0.e.d.b d(f0.e.d.AbstractC0250d abstractC0250d) {
            this.log = abstractC0250d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.b
        public f0.e.d.b e(f0.e.d.f fVar) {
            this.rollouts = fVar;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.b
        public f0.e.d a() {
            String str = "";
            if (this.timestamp == null) {
                str = " timestamp";
            }
            if (this.type == null) {
                str = str + " type";
            }
            if (this.app == null) {
                str = str + " app";
            }
            if (this.device == null) {
                str = str + " device";
            }
            if (str.isEmpty()) {
                return new l(this.timestamp.longValue(), this.type, this.app, this.device, this.log, this.rollouts);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.b
        public f0.e.d.b b(f0.e.d.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null app");
            }
            this.app = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.b
        public f0.e.d.b c(f0.e.d.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("Null device");
            }
            this.device = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.b
        public f0.e.d.b g(String str) {
            if (str == null) {
                throw new NullPointerException("Null type");
            }
            this.type = str;
            return this;
        }

        private b(f0.e.d dVar) {
            this.timestamp = Long.valueOf(dVar.f());
            this.type = dVar.g();
            this.app = dVar.b();
            this.device = dVar.c();
            this.log = dVar.d();
            this.rollouts = dVar.e();
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.b
        public f0.e.d.b f(long j6) {
            this.timestamp = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d
    @NonNull
    public f0.e.d.a b() {
        return this.app;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d
    @NonNull
    public f0.e.d.c c() {
        return this.device;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d
    @Nullable
    public f0.e.d.AbstractC0250d d() {
        return this.log;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d
    @Nullable
    public f0.e.d.f e() {
        return this.rollouts;
    }

    public boolean equals(Object obj) {
        f0.e.d.AbstractC0250d abstractC0250d;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d)) {
            return false;
        }
        f0.e.d dVar = (f0.e.d) obj;
        if (this.timestamp == dVar.f() && this.type.equals(dVar.g()) && this.app.equals(dVar.b()) && this.device.equals(dVar.c()) && ((abstractC0250d = this.log) != null ? abstractC0250d.equals(dVar.d()) : dVar.d() == null)) {
            f0.e.d.f fVar = this.rollouts;
            if (fVar == null) {
                if (dVar.e() == null) {
                    return true;
                }
            } else if (fVar.equals(dVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d
    public long f() {
        return this.timestamp;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d
    @NonNull
    public String g() {
        return this.type;
    }

    private l(long j6, String str, f0.e.d.a aVar, f0.e.d.c cVar, @Nullable f0.e.d.AbstractC0250d abstractC0250d, @Nullable f0.e.d.f fVar) {
        this.timestamp = j6;
        this.type = str;
        this.app = aVar;
        this.device = cVar;
        this.log = abstractC0250d;
        this.rollouts = fVar;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d
    public f0.e.d.b h() {
        return new b(this);
    }

    public int hashCode() {
        long j6 = this.timestamp;
        int iHashCode = (((((((((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003) ^ this.type.hashCode()) * 1000003) ^ this.app.hashCode()) * 1000003) ^ this.device.hashCode()) * 1000003;
        f0.e.d.AbstractC0250d abstractC0250d = this.log;
        int iHashCode2 = (iHashCode ^ (abstractC0250d == null ? 0 : abstractC0250d.hashCode())) * 1000003;
        f0.e.d.f fVar = this.rollouts;
        return iHashCode2 ^ (fVar != null ? fVar.hashCode() : 0);
    }

    public String toString() {
        return "Event{timestamp=" + this.timestamp + ", type=" + this.type + ", app=" + this.app + ", device=" + this.device + ", log=" + this.log + ", rollouts=" + this.rollouts + "}";
    }
}

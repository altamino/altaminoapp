package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class h extends f0.e {
    private final f0.e.a app;
    private final String appQualitySessionId;
    private final boolean crashed;
    private final f0.e.c device;
    private final Long endedAt;
    private final List<f0.e.d> events;
    private final String generator;
    private final int generatorType;
    private final String identifier;
    private final f0.e.AbstractC0252e os;
    private final long startedAt;
    private final f0.e.f user;

    static final class b extends f0.e.b {
        private f0.e.a app;
        private String appQualitySessionId;
        private Boolean crashed;
        private f0.e.c device;
        private Long endedAt;
        private List<f0.e.d> events;
        private String generator;
        private Integer generatorType;
        private String identifier;
        private f0.e.AbstractC0252e os;
        private Long startedAt;
        private f0.e.f user;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b c(@Nullable String str) {
            this.appQualitySessionId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b e(f0.e.c cVar) {
            this.device = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b f(Long l) {
            this.endedAt = l;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b g(List<f0.e.d> list) {
            this.events = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b l(f0.e.AbstractC0252e abstractC0252e) {
            this.os = abstractC0252e;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b n(f0.e.f fVar) {
            this.user = fVar;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e a() {
            String str = "";
            if (this.generator == null) {
                str = " generator";
            }
            if (this.identifier == null) {
                str = str + " identifier";
            }
            if (this.startedAt == null) {
                str = str + " startedAt";
            }
            if (this.crashed == null) {
                str = str + " crashed";
            }
            if (this.app == null) {
                str = str + " app";
            }
            if (this.generatorType == null) {
                str = str + " generatorType";
            }
            if (str.isEmpty()) {
                return new h(this.generator, this.identifier, this.appQualitySessionId, this.startedAt.longValue(), this.endedAt, this.crashed.booleanValue(), this.app, this.user, this.os, this.device, this.events, this.generatorType.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b b(f0.e.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null app");
            }
            this.app = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b h(String str) {
            if (str == null) {
                throw new NullPointerException("Null generator");
            }
            this.generator = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b j(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.identifier = str;
            return this;
        }

        private b(f0.e eVar) {
            this.generator = eVar.g();
            this.identifier = eVar.i();
            this.appQualitySessionId = eVar.c();
            this.startedAt = Long.valueOf(eVar.l());
            this.endedAt = eVar.e();
            this.crashed = Boolean.valueOf(eVar.n());
            this.app = eVar.b();
            this.user = eVar.m();
            this.os = eVar.k();
            this.device = eVar.d();
            this.events = eVar.f();
            this.generatorType = Integer.valueOf(eVar.h());
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b d(boolean z6) {
            this.crashed = Boolean.valueOf(z6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b i(int i10) {
            this.generatorType = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.b
        public f0.e.b m(long j6) {
            this.startedAt = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @NonNull
    public f0.e.a b() {
        return this.app;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @Nullable
    public String c() {
        return this.appQualitySessionId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @Nullable
    public f0.e.c d() {
        return this.device;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @Nullable
    public Long e() {
        return this.endedAt;
    }

    public boolean equals(Object obj) {
        String str;
        Long l;
        f0.e.f fVar;
        f0.e.AbstractC0252e abstractC0252e;
        f0.e.c cVar;
        List<f0.e.d> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e)) {
            return false;
        }
        f0.e eVar = (f0.e) obj;
        return this.generator.equals(eVar.g()) && this.identifier.equals(eVar.i()) && ((str = this.appQualitySessionId) != null ? str.equals(eVar.c()) : eVar.c() == null) && this.startedAt == eVar.l() && ((l = this.endedAt) != null ? l.equals(eVar.e()) : eVar.e() == null) && this.crashed == eVar.n() && this.app.equals(eVar.b()) && ((fVar = this.user) != null ? fVar.equals(eVar.m()) : eVar.m() == null) && ((abstractC0252e = this.os) != null ? abstractC0252e.equals(eVar.k()) : eVar.k() == null) && ((cVar = this.device) != null ? cVar.equals(eVar.d()) : eVar.d() == null) && ((list = this.events) != null ? list.equals(eVar.f()) : eVar.f() == null) && this.generatorType == eVar.h();
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @Nullable
    public List<f0.e.d> f() {
        return this.events;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @NonNull
    public String g() {
        return this.generator;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    public int h() {
        return this.generatorType;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @NonNull
    public String i() {
        return this.identifier;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @Nullable
    public f0.e.AbstractC0252e k() {
        return this.os;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    public long l() {
        return this.startedAt;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    @Nullable
    public f0.e.f m() {
        return this.user;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    public boolean n() {
        return this.crashed;
    }

    private h(String str, String str2, @Nullable String str3, long j6, @Nullable Long l, boolean z6, f0.e.a aVar, @Nullable f0.e.f fVar, @Nullable f0.e.AbstractC0252e abstractC0252e, @Nullable f0.e.c cVar, @Nullable List<f0.e.d> list, int i10) {
        this.generator = str;
        this.identifier = str2;
        this.appQualitySessionId = str3;
        this.startedAt = j6;
        this.endedAt = l;
        this.crashed = z6;
        this.app = aVar;
        this.user = fVar;
        this.os = abstractC0252e;
        this.device = cVar;
        this.events = list;
        this.generatorType = i10;
    }

    public int hashCode() {
        int iHashCode = (((this.generator.hashCode() ^ 1000003) * 1000003) ^ this.identifier.hashCode()) * 1000003;
        String str = this.appQualitySessionId;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        long j6 = this.startedAt;
        int i10 = (((iHashCode ^ iHashCode2) * 1000003) ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        Long l = this.endedAt;
        int iHashCode3 = (((((i10 ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.crashed ? 1231 : 1237)) * 1000003) ^ this.app.hashCode()) * 1000003;
        f0.e.f fVar = this.user;
        int iHashCode4 = (iHashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        f0.e.AbstractC0252e abstractC0252e = this.os;
        int iHashCode5 = (iHashCode4 ^ (abstractC0252e == null ? 0 : abstractC0252e.hashCode())) * 1000003;
        f0.e.c cVar = this.device;
        int iHashCode6 = (iHashCode5 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List<f0.e.d> list = this.events;
        return ((iHashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003) ^ this.generatorType;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e
    public f0.e.b o() {
        return new b(this);
    }

    public String toString() {
        return "Session{generator=" + this.generator + ", identifier=" + this.identifier + ", appQualitySessionId=" + this.appQualitySessionId + ", startedAt=" + this.startedAt + ", endedAt=" + this.endedAt + ", crashed=" + this.crashed + ", app=" + this.app + ", user=" + this.user + ", os=" + this.os + ", device=" + this.device + ", events=" + this.events + ", generatorType=" + this.generatorType + "}";
    }
}

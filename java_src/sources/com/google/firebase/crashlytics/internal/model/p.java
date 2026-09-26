package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class p extends f0.e.d.a.b.c {
    private final f0.e.d.a.b.c causedBy;
    private final List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> frames;
    private final int overflowCount;
    private final String reason;
    private final String type;

    static final class b extends f0.e.d.a.b.c.AbstractC0242a {
        private f0.e.d.a.b.c causedBy;
        private List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> frames;
        private Integer overflowCount;
        private String reason;
        private String type;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.AbstractC0242a
        public f0.e.d.a.b.c.AbstractC0242a b(f0.e.d.a.b.c cVar) {
            this.causedBy = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.AbstractC0242a
        public f0.e.d.a.b.c.AbstractC0242a e(String str) {
            this.reason = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.AbstractC0242a
        public f0.e.d.a.b.c a() {
            String str = "";
            if (this.type == null) {
                str = " type";
            }
            if (this.frames == null) {
                str = str + " frames";
            }
            if (this.overflowCount == null) {
                str = str + " overflowCount";
            }
            if (str.isEmpty()) {
                return new p(this.type, this.reason, this.frames, this.causedBy, this.overflowCount.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.AbstractC0242a
        public f0.e.d.a.b.c.AbstractC0242a c(List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> list) {
            if (list == null) {
                throw new NullPointerException("Null frames");
            }
            this.frames = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.AbstractC0242a
        public f0.e.d.a.b.c.AbstractC0242a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null type");
            }
            this.type = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c.AbstractC0242a
        public f0.e.d.a.b.c.AbstractC0242a d(int i10) {
            this.overflowCount = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c
    @Nullable
    public f0.e.d.a.b.c b() {
        return this.causedBy;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c
    @NonNull
    public List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> c() {
        return this.frames;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c
    public int d() {
        return this.overflowCount;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c
    @Nullable
    public String e() {
        return this.reason;
    }

    public boolean equals(Object obj) {
        String str;
        f0.e.d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.c)) {
            return false;
        }
        f0.e.d.a.b.c cVar2 = (f0.e.d.a.b.c) obj;
        return this.type.equals(cVar2.f()) && ((str = this.reason) != null ? str.equals(cVar2.e()) : cVar2.e() == null) && this.frames.equals(cVar2.c()) && ((cVar = this.causedBy) != null ? cVar.equals(cVar2.b()) : cVar2.b() == null) && this.overflowCount == cVar2.d();
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.c
    @NonNull
    public String f() {
        return this.type;
    }

    private p(String str, @Nullable String str2, List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> list, @Nullable f0.e.d.a.b.c cVar, int i10) {
        this.type = str;
        this.reason = str2;
        this.frames = list;
        this.causedBy = cVar;
        this.overflowCount = i10;
    }

    public int hashCode() {
        int iHashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        String str = this.reason;
        int iHashCode2 = (((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.frames.hashCode()) * 1000003;
        f0.e.d.a.b.c cVar = this.causedBy;
        return ((iHashCode2 ^ (cVar != null ? cVar.hashCode() : 0)) * 1000003) ^ this.overflowCount;
    }

    public String toString() {
        return "Exception{type=" + this.type + ", reason=" + this.reason + ", frames=" + this.frames + ", causedBy=" + this.causedBy + ", overflowCount=" + this.overflowCount + "}";
    }
}

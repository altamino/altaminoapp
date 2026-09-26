package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class r extends f0.e.d.a.b.AbstractC0245e {
    private final List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> frames;
    private final int importance;
    private final String name;

    static final class b extends f0.e.d.a.b.AbstractC0245e.AbstractC0246a {
        private List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> frames;
        private Integer importance;
        private String name;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0246a
        public f0.e.d.a.b.AbstractC0245e a() {
            String str = "";
            if (this.name == null) {
                str = " name";
            }
            if (this.importance == null) {
                str = str + " importance";
            }
            if (this.frames == null) {
                str = str + " frames";
            }
            if (str.isEmpty()) {
                return new r(this.name, this.importance.intValue(), this.frames);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0246a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0246a b(List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> list) {
            if (list == null) {
                throw new NullPointerException("Null frames");
            }
            this.frames = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0246a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0246a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.name = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0246a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0246a c(int i10) {
            this.importance = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e
    @NonNull
    public List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> b() {
        return this.frames;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e
    public int c() {
        return this.importance;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e
    @NonNull
    public String d() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0245e)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0245e abstractC0245e = (f0.e.d.a.b.AbstractC0245e) obj;
        return this.name.equals(abstractC0245e.d()) && this.importance == abstractC0245e.c() && this.frames.equals(abstractC0245e.b());
    }

    private r(String str, int i10, List<f0.e.d.a.b.AbstractC0245e.AbstractC0247b> list) {
        this.name = str;
        this.importance = i10;
        this.frames = list;
    }

    public int hashCode() {
        return ((((this.name.hashCode() ^ 1000003) * 1000003) ^ this.importance) * 1000003) ^ this.frames.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.name + ", importance=" + this.importance + ", frames=" + this.frames + "}";
    }
}

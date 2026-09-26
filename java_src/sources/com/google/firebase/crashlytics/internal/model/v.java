package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
final class v extends f0.e.d.AbstractC0250d {
    private final String content;

    static final class b extends f0.e.d.AbstractC0250d.a {
        private String content;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0250d.a
        public f0.e.d.AbstractC0250d a() {
            String str = "";
            if (this.content == null) {
                str = " content";
            }
            if (str.isEmpty()) {
                return new v(this.content);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0250d.a
        public f0.e.d.AbstractC0250d.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null content");
            }
            this.content = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0250d
    @NonNull
    public String b() {
        return this.content;
    }

    private v(String str) {
        this.content = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.AbstractC0250d) {
            return this.content.equals(((f0.e.d.AbstractC0250d) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.content.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.content + "}";
    }
}

package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
final class a0 extends f0.e.f {
    private final String identifier;

    static final class b extends f0.e.f.a {
        private String identifier;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.f.a
        public f0.e.f a() {
            String str = "";
            if (this.identifier == null) {
                str = " identifier";
            }
            if (str.isEmpty()) {
                return new a0(this.identifier);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.f.a
        public f0.e.f.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.identifier = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.f
    @NonNull
    public String b() {
        return this.identifier;
    }

    private a0(String str) {
        this.identifier = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.f) {
            return this.identifier.equals(((f0.e.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.identifier.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.identifier + "}";
    }
}

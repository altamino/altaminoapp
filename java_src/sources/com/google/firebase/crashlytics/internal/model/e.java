package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
final class e extends f0.c {
    private final String key;
    private final String value;

    static final class b extends f0.c.a {
        private String key;
        private String value;

        @Override // com.google.firebase.crashlytics.internal.model.f0.c.a
        public f0.c a() {
            String str = "";
            if (this.key == null) {
                str = " key";
            }
            if (this.value == null) {
                str = str + " value";
            }
            if (str.isEmpty()) {
                return new e(this.key, this.value);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.c.a
        public f0.c.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null key");
            }
            this.key = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.c.a
        public f0.c.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null value");
            }
            this.value = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.c
    @NonNull
    public String b() {
        return this.key;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.c
    @NonNull
    public String c() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.c)) {
            return false;
        }
        f0.c cVar = (f0.c) obj;
        return this.key.equals(cVar.b()) && this.value.equals(cVar.c());
    }

    private e(String str, String str2) {
        this.key = str;
        this.value = str2;
    }

    public int hashCode() {
        return ((this.key.hashCode() ^ 1000003) * 1000003) ^ this.value.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.key + ", value=" + this.value + "}";
    }
}

package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
final class t extends f0.e.d.a.c {
    private final boolean defaultProcess;
    private final int importance;
    private final int pid;
    private final String processName;

    static final class b extends f0.e.d.a.c.AbstractC0249a {
        private Boolean defaultProcess;
        private Integer importance;
        private Integer pid;
        private String processName;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c.AbstractC0249a
        public f0.e.d.a.c a() {
            String str = "";
            if (this.processName == null) {
                str = " processName";
            }
            if (this.pid == null) {
                str = str + " pid";
            }
            if (this.importance == null) {
                str = str + " importance";
            }
            if (this.defaultProcess == null) {
                str = str + " defaultProcess";
            }
            if (str.isEmpty()) {
                return new t(this.processName, this.pid.intValue(), this.importance.intValue(), this.defaultProcess.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c.AbstractC0249a
        public f0.e.d.a.c.AbstractC0249a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null processName");
            }
            this.processName = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c.AbstractC0249a
        public f0.e.d.a.c.AbstractC0249a b(boolean z6) {
            this.defaultProcess = Boolean.valueOf(z6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c.AbstractC0249a
        public f0.e.d.a.c.AbstractC0249a c(int i10) {
            this.importance = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c.AbstractC0249a
        public f0.e.d.a.c.AbstractC0249a d(int i10) {
            this.pid = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c
    public int b() {
        return this.importance;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c
    public int c() {
        return this.pid;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c
    @NonNull
    public String d() {
        return this.processName;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.c
    public boolean e() {
        return this.defaultProcess;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.c)) {
            return false;
        }
        f0.e.d.a.c cVar = (f0.e.d.a.c) obj;
        return this.processName.equals(cVar.d()) && this.pid == cVar.c() && this.importance == cVar.b() && this.defaultProcess == cVar.e();
    }

    private t(String str, int i10, int i11, boolean z6) {
        this.processName = str;
        this.pid = i10;
        this.importance = i11;
        this.defaultProcess = z6;
    }

    public int hashCode() {
        return ((((((this.processName.hashCode() ^ 1000003) * 1000003) ^ this.pid) * 1000003) ^ this.importance) * 1000003) ^ (this.defaultProcess ? 1231 : 1237);
    }

    public String toString() {
        return "ProcessDetails{processName=" + this.processName + ", pid=" + this.pid + ", importance=" + this.importance + ", defaultProcess=" + this.defaultProcess + "}";
    }
}

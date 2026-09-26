package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class y extends f0.e.d.f {
    private final List<f0.e.d.AbstractC0251e> rolloutAssignments;

    static final class b extends f0.e.d.f.a {
        private List<f0.e.d.AbstractC0251e> rolloutAssignments;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.f.a
        public f0.e.d.f a() {
            String str = "";
            if (this.rolloutAssignments == null) {
                str = " rolloutAssignments";
            }
            if (str.isEmpty()) {
                return new y(this.rolloutAssignments);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.f.a
        public f0.e.d.f.a b(@Nullable List<f0.e.d.AbstractC0251e> list) {
            if (list == null) {
                throw new NullPointerException("Null rolloutAssignments");
            }
            this.rolloutAssignments = list;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.f
    @NonNull
    public List<f0.e.d.AbstractC0251e> b() {
        return this.rolloutAssignments;
    }

    private y(List<f0.e.d.AbstractC0251e> list) {
        this.rolloutAssignments = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.f) {
            return this.rolloutAssignments.equals(((f0.e.d.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.rolloutAssignments.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.rolloutAssignments + "}";
    }
}

package com.google.firebase.remoteconfig.interop.rollouts;

import androidx.annotation.NonNull;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
final class c extends e {
    private final Set<d> rolloutAssignments;

    @Override // com.google.firebase.remoteconfig.interop.rollouts.e
    @NonNull
    public Set<d> b() {
        return this.rolloutAssignments;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            return this.rolloutAssignments.equals(((e) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.rolloutAssignments.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.rolloutAssignments + "}";
    }

    c(Set<d> set) {
        if (set != null) {
            this.rolloutAssignments = set;
            return;
        }
        throw new NullPointerException("Null rolloutAssignments");
    }
}

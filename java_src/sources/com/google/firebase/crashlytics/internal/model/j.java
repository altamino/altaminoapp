package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
final class j extends f0.e.a.b {
    private final String clsId;

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.b
    @NonNull
    public String a() {
        return this.clsId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.a.b) {
            return this.clsId.equals(((f0.e.a.b) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.clsId.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Organization{clsId=" + this.clsId + "}";
    }
}

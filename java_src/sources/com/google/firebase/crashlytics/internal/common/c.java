package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class c extends c0.a {
    private final String crashlyticsInstallId;
    private final String firebaseInstallationId;

    @Override // com.google.firebase.crashlytics.internal.common.c0.a
    @NonNull
    public String c() {
        return this.crashlyticsInstallId;
    }

    @Override // com.google.firebase.crashlytics.internal.common.c0.a
    @Nullable
    public String d() {
        return this.firebaseInstallationId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c0.a)) {
            return false;
        }
        c0.a aVar = (c0.a) obj;
        if (this.crashlyticsInstallId.equals(aVar.c())) {
            String str = this.firebaseInstallationId;
            if (str == null) {
                if (aVar.d() == null) {
                    return true;
                }
            } else if (str.equals(aVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.crashlyticsInstallId.hashCode() ^ 1000003) * 1000003;
        String str = this.firebaseInstallationId;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "InstallIds{crashlyticsInstallId=" + this.crashlyticsInstallId + ", firebaseInstallationId=" + this.firebaseInstallationId + "}";
    }

    c(String str, @Nullable String str2) {
        if (str != null) {
            this.crashlyticsInstallId = str;
            this.firebaseInstallationId = str2;
            return;
        }
        throw new NullPointerException("Null crashlyticsInstallId");
    }
}

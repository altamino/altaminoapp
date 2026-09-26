package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes10.dex */
final class e0 extends g0.c {
    private final boolean isRooted;
    private final String osCodeName;
    private final String osRelease;

    @Override // com.google.firebase.crashlytics.internal.model.g0.c
    public boolean b() {
        return this.isRooted;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.c
    public String c() {
        return this.osCodeName;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.c
    public String d() {
        return this.osRelease;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.c)) {
            return false;
        }
        g0.c cVar = (g0.c) obj;
        return this.osRelease.equals(cVar.d()) && this.osCodeName.equals(cVar.c()) && this.isRooted == cVar.b();
    }

    public int hashCode() {
        return ((((this.osRelease.hashCode() ^ 1000003) * 1000003) ^ this.osCodeName.hashCode()) * 1000003) ^ (this.isRooted ? 1231 : 1237);
    }

    public String toString() {
        return "OsData{osRelease=" + this.osRelease + ", osCodeName=" + this.osCodeName + ", isRooted=" + this.isRooted + "}";
    }

    e0(String str, String str2, boolean z6) {
        if (str != null) {
            this.osRelease = str;
            if (str2 != null) {
                this.osCodeName = str2;
                this.isRooted = z6;
                return;
            }
            throw new NullPointerException("Null osCodeName");
        }
        throw new NullPointerException("Null osRelease");
    }
}

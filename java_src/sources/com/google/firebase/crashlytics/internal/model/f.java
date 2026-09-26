package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
final class f extends f0.d {
    private final List<f0.d.b> files;
    private final String orgId;

    static final class b extends f0.d.a {
        private List<f0.d.b> files;
        private String orgId;

        @Override // com.google.firebase.crashlytics.internal.model.f0.d.a
        public f0.d.a c(String str) {
            this.orgId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.d.a
        public f0.d a() {
            String str = "";
            if (this.files == null) {
                str = " files";
            }
            if (str.isEmpty()) {
                return new f(this.files, this.orgId);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.d.a
        public f0.d.a b(List<f0.d.b> list) {
            if (list == null) {
                throw new NullPointerException("Null files");
            }
            this.files = list;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.d
    @NonNull
    public List<f0.d.b> b() {
        return this.files;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.d
    @Nullable
    public String c() {
        return this.orgId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d)) {
            return false;
        }
        f0.d dVar = (f0.d) obj;
        if (this.files.equals(dVar.b())) {
            String str = this.orgId;
            if (str == null) {
                if (dVar.c() == null) {
                    return true;
                }
            } else if (str.equals(dVar.c())) {
                return true;
            }
        }
        return false;
    }

    private f(List<f0.d.b> list, @Nullable String str) {
        this.files = list;
        this.orgId = str;
    }

    public int hashCode() {
        int iHashCode = (this.files.hashCode() ^ 1000003) * 1000003;
        String str = this.orgId;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.files + ", orgId=" + this.orgId + "}";
    }
}

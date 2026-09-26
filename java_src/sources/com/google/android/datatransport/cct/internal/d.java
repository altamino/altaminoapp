package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class d extends j {
    private final List<m> logRequests;

    @Override // com.google.android.datatransport.cct.internal.j
    @NonNull
    public List<m> c() {
        return this.logRequests;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.logRequests.equals(((j) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.logRequests.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.logRequests + "}";
    }

    d(List<m> list) {
        if (list != null) {
            this.logRequests = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }
}

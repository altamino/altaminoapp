package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class l {

    @Nullable
    private final String sessionId;

    @Nullable
    public final String a() {
        return this.sessionId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && kotlin.jvm.internal.t.e(this.sessionId, ((l) obj).sessionId);
    }

    public int hashCode() {
        String str = this.sessionId;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        return "FirebaseSessionsData(sessionId=" + this.sessionId + ')';
    }

    public l(@Nullable String str) {
        this.sessionId = str;
    }
}

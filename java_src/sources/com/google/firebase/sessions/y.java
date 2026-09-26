package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class y {

    @NotNull
    private final String firstSessionId;

    @NotNull
    private final String sessionId;
    private final int sessionIndex;
    private final long sessionStartTimestampUs;

    @NotNull
    public final String a() {
        return this.firstSessionId;
    }

    @NotNull
    public final String b() {
        return this.sessionId;
    }

    public final int c() {
        return this.sessionIndex;
    }

    public final long d() {
        return this.sessionStartTimestampUs;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return kotlin.jvm.internal.t.e(this.sessionId, yVar.sessionId) && kotlin.jvm.internal.t.e(this.firstSessionId, yVar.firstSessionId) && this.sessionIndex == yVar.sessionIndex && this.sessionStartTimestampUs == yVar.sessionStartTimestampUs;
    }

    public int hashCode() {
        return (((((this.sessionId.hashCode() * 31) + this.firstSessionId.hashCode()) * 31) + this.sessionIndex) * 31) + i.a.a(this.sessionStartTimestampUs);
    }

    @NotNull
    public String toString() {
        return "SessionDetails(sessionId=" + this.sessionId + ", firstSessionId=" + this.firstSessionId + ", sessionIndex=" + this.sessionIndex + ", sessionStartTimestampUs=" + this.sessionStartTimestampUs + ')';
    }

    public y(@NotNull String sessionId, @NotNull String firstSessionId, int i10, long j6) {
        kotlin.jvm.internal.t.j(sessionId, "sessionId");
        kotlin.jvm.internal.t.j(firstSessionId, "firstSessionId");
        this.sessionId = sessionId;
        this.firstSessionId = firstSessionId;
        this.sessionIndex = i10;
        this.sessionStartTimestampUs = j6;
    }
}

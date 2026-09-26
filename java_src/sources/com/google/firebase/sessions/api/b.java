package com.google.firebase.sessions.api;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface b {

    public enum a {
        CRASHLYTICS,
        PERFORMANCE,
        MATT_SAYS_HI
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.api.b$b, reason: collision with other inner class name */
    public static final class C0267b {

        @NotNull
        private final String sessionId;

        @NotNull
        public final String a() {
            return this.sessionId;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0267b) && t.e(this.sessionId, ((C0267b) obj).sessionId);
        }

        public int hashCode() {
            return this.sessionId.hashCode();
        }

        @NotNull
        public String toString() {
            return "SessionDetails(sessionId=" + this.sessionId + ')';
        }

        public C0267b(@NotNull String sessionId) {
            t.j(sessionId, "sessionId");
            this.sessionId = sessionId;
        }
    }

    boolean a();

    @NotNull
    a b();

    void c(@NotNull C0267b c0267b);
}

package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class z {

    @NotNull
    private final b applicationInfo;

    @NotNull
    private final i eventType;

    @NotNull
    private final e0 sessionData;

    @NotNull
    public final b a() {
        return this.applicationInfo;
    }

    @NotNull
    public final i b() {
        return this.eventType;
    }

    @NotNull
    public final e0 c() {
        return this.sessionData;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.eventType == zVar.eventType && kotlin.jvm.internal.t.e(this.sessionData, zVar.sessionData) && kotlin.jvm.internal.t.e(this.applicationInfo, zVar.applicationInfo);
    }

    public int hashCode() {
        return (((this.eventType.hashCode() * 31) + this.sessionData.hashCode()) * 31) + this.applicationInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "SessionEvent(eventType=" + this.eventType + ", sessionData=" + this.sessionData + ", applicationInfo=" + this.applicationInfo + ')';
    }

    public z(@NotNull i eventType, @NotNull e0 sessionData, @NotNull b applicationInfo) {
        kotlin.jvm.internal.t.j(eventType, "eventType");
        kotlin.jvm.internal.t.j(sessionData, "sessionData");
        kotlin.jvm.internal.t.j(applicationInfo, "applicationInfo");
        this.eventType = eventType;
        this.sessionData = sessionData;
        this.applicationInfo = applicationInfo;
    }
}

package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class t {
    private final int importance;
    private final boolean isDefaultProcess;
    private final int pid;

    @NotNull
    private final String processName;

    public final int a() {
        return this.importance;
    }

    public final int b() {
        return this.pid;
    }

    @NotNull
    public final String c() {
        return this.processName;
    }

    public final boolean d() {
        return this.isDefaultProcess;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return kotlin.jvm.internal.t.e(this.processName, tVar.processName) && this.pid == tVar.pid && this.importance == tVar.importance && this.isDefaultProcess == tVar.isDefaultProcess;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    public int hashCode() {
        int iHashCode = ((((this.processName.hashCode() * 31) + this.pid) * 31) + this.importance) * 31;
        boolean z6 = this.isDefaultProcess;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    @NotNull
    public String toString() {
        return "ProcessDetails(processName=" + this.processName + ", pid=" + this.pid + ", importance=" + this.importance + ", isDefaultProcess=" + this.isDefaultProcess + ')';
    }

    public t(@NotNull String processName, int i10, int i11, boolean z6) {
        kotlin.jvm.internal.t.j(processName, "processName");
        this.processName = processName;
        this.pid = i10;
        this.importance = i11;
        this.isDefaultProcess = z6;
    }
}

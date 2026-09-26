package com.narvii.util.debug.model;

import androidx.compose.foundation.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class FailAttestation {
    private final boolean shouldFail;

    public static /* synthetic */ FailAttestation copy$default(FailAttestation failAttestation, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = failAttestation.shouldFail;
        }
        return failAttestation.copy(z6);
    }

    public final boolean component1() {
        return this.shouldFail;
    }

    @NotNull
    public final FailAttestation copy(boolean z6) {
        return new FailAttestation(z6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FailAttestation) && this.shouldFail == ((FailAttestation) obj).shouldFail;
    }

    public final boolean getShouldFail() {
        return this.shouldFail;
    }

    public int hashCode() {
        return c.a(this.shouldFail);
    }

    @NotNull
    public String toString() {
        return "FailAttestation(shouldFail=" + this.shouldFail + ")";
    }

    public FailAttestation(boolean z6) {
        this.shouldFail = z6;
    }
}

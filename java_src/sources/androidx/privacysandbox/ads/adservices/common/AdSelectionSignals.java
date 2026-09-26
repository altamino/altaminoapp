package androidx.privacysandbox.ads.adservices.common;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class AdSelectionSignals {

    @NotNull
    private final String signals;

    @NotNull
    public final String a() {
        return this.signals;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdSelectionSignals) {
            return t.e(this.signals, ((AdSelectionSignals) obj).signals);
        }
        return false;
    }

    public int hashCode() {
        return this.signals.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdSelectionSignals: " + this.signals;
    }

    public AdSelectionSignals(@NotNull String signals) {
        t.j(signals, "signals");
        this.signals = signals;
    }
}

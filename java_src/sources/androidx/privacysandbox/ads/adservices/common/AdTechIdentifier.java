package androidx.privacysandbox.ads.adservices.common;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class AdTechIdentifier {

    @NotNull
    private final String identifier;

    @NotNull
    public final String a() {
        return this.identifier;
    }

    public AdTechIdentifier(@NotNull String identifier) {
        t.j(identifier, "identifier");
        this.identifier = identifier;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdTechIdentifier) {
            return t.e(this.identifier, ((AdTechIdentifier) obj).identifier);
        }
        return false;
    }

    public int hashCode() {
        return this.identifier.hashCode();
    }

    @NotNull
    public String toString() {
        return String.valueOf(this.identifier);
    }
}

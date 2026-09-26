package androidx.privacysandbox.ads.adservices.customaudience;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class JoinCustomAudienceRequest {

    @NotNull
    private final CustomAudience customAudience;

    @NotNull
    public final CustomAudience a() {
        return this.customAudience;
    }

    public JoinCustomAudienceRequest(@NotNull CustomAudience customAudience) {
        kotlin.jvm.internal.t.j(customAudience, "customAudience");
        this.customAudience = customAudience;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JoinCustomAudienceRequest) {
            return kotlin.jvm.internal.t.e(this.customAudience, ((JoinCustomAudienceRequest) obj).customAudience);
        }
        return false;
    }

    public int hashCode() {
        return this.customAudience.hashCode();
    }

    @NotNull
    public String toString() {
        return "JoinCustomAudience: customAudience=" + this.customAudience;
    }
}

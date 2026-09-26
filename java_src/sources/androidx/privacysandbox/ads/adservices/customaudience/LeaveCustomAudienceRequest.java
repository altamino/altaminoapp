package androidx.privacysandbox.ads.adservices.customaudience;

import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class LeaveCustomAudienceRequest {

    @NotNull
    private final AdTechIdentifier buyer;

    @NotNull
    private final String name;

    @NotNull
    public final AdTechIdentifier a() {
        return this.buyer;
    }

    @NotNull
    public final String b() {
        return this.name;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LeaveCustomAudienceRequest)) {
            return false;
        }
        LeaveCustomAudienceRequest leaveCustomAudienceRequest = (LeaveCustomAudienceRequest) obj;
        return kotlin.jvm.internal.t.e(this.buyer, leaveCustomAudienceRequest.buyer) && kotlin.jvm.internal.t.e(this.name, leaveCustomAudienceRequest.name);
    }

    public LeaveCustomAudienceRequest(@NotNull AdTechIdentifier buyer, @NotNull String name) {
        kotlin.jvm.internal.t.j(buyer, "buyer");
        kotlin.jvm.internal.t.j(name, "name");
        this.buyer = buyer;
        this.name = name;
    }

    public int hashCode() {
        return (this.buyer.hashCode() * 31) + this.name.hashCode();
    }

    @NotNull
    public String toString() {
        return "LeaveCustomAudience: buyer=" + this.buyer + ", name=" + this.name;
    }
}

package androidx.privacysandbox.ads.adservices.adselection;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ReportImpressionRequest {

    @NotNull
    private final AdSelectionConfig adSelectionConfig;
    private final long adSelectionId;

    @NotNull
    public final AdSelectionConfig a() {
        return this.adSelectionConfig;
    }

    public final long b() {
        return this.adSelectionId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportImpressionRequest)) {
            return false;
        }
        ReportImpressionRequest reportImpressionRequest = (ReportImpressionRequest) obj;
        return this.adSelectionId == reportImpressionRequest.adSelectionId && kotlin.jvm.internal.t.e(this.adSelectionConfig, reportImpressionRequest.adSelectionConfig);
    }

    public ReportImpressionRequest(long j6, @NotNull AdSelectionConfig adSelectionConfig) {
        kotlin.jvm.internal.t.j(adSelectionConfig, "adSelectionConfig");
        this.adSelectionId = j6;
        this.adSelectionConfig = adSelectionConfig;
    }

    public int hashCode() {
        return (i.a.a(this.adSelectionId) * 31) + this.adSelectionConfig.hashCode();
    }

    @NotNull
    public String toString() {
        return "ReportImpressionRequest: adSelectionId=" + this.adSelectionId + ", adSelectionConfig=" + this.adSelectionConfig;
    }
}

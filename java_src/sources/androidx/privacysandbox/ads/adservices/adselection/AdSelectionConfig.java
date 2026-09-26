package androidx.privacysandbox.ads.adservices.adselection;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class AdSelectionConfig {

    @NotNull
    private final AdSelectionSignals adSelectionSignals;

    @NotNull
    private final List<AdTechIdentifier> customAudienceBuyers;

    @NotNull
    private final Uri decisionLogicUri;

    @NotNull
    private final Map<AdTechIdentifier, AdSelectionSignals> perBuyerSignals;

    @NotNull
    private final AdTechIdentifier seller;

    @NotNull
    private final AdSelectionSignals sellerSignals;

    @NotNull
    private final Uri trustedScoringSignalsUri;

    @NotNull
    public final AdSelectionSignals a() {
        return this.adSelectionSignals;
    }

    @NotNull
    public final List<AdTechIdentifier> b() {
        return this.customAudienceBuyers;
    }

    @NotNull
    public final Uri c() {
        return this.decisionLogicUri;
    }

    @NotNull
    public final Map<AdTechIdentifier, AdSelectionSignals> d() {
        return this.perBuyerSignals;
    }

    @NotNull
    public final AdTechIdentifier e() {
        return this.seller;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionConfig)) {
            return false;
        }
        AdSelectionConfig adSelectionConfig = (AdSelectionConfig) obj;
        return kotlin.jvm.internal.t.e(this.seller, adSelectionConfig.seller) && kotlin.jvm.internal.t.e(this.decisionLogicUri, adSelectionConfig.decisionLogicUri) && kotlin.jvm.internal.t.e(this.customAudienceBuyers, adSelectionConfig.customAudienceBuyers) && kotlin.jvm.internal.t.e(this.adSelectionSignals, adSelectionConfig.adSelectionSignals) && kotlin.jvm.internal.t.e(this.sellerSignals, adSelectionConfig.sellerSignals) && kotlin.jvm.internal.t.e(this.perBuyerSignals, adSelectionConfig.perBuyerSignals) && kotlin.jvm.internal.t.e(this.trustedScoringSignalsUri, adSelectionConfig.trustedScoringSignalsUri);
    }

    @NotNull
    public final AdSelectionSignals f() {
        return this.sellerSignals;
    }

    @NotNull
    public final Uri g() {
        return this.trustedScoringSignalsUri;
    }

    public int hashCode() {
        return (((((((((((this.seller.hashCode() * 31) + this.decisionLogicUri.hashCode()) * 31) + this.customAudienceBuyers.hashCode()) * 31) + this.adSelectionSignals.hashCode()) * 31) + this.sellerSignals.hashCode()) * 31) + this.perBuyerSignals.hashCode()) * 31) + this.trustedScoringSignalsUri.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdSelectionConfig: seller=" + this.seller + ", decisionLogicUri='" + this.decisionLogicUri + "', customAudienceBuyers=" + this.customAudienceBuyers + ", adSelectionSignals=" + this.adSelectionSignals + ", sellerSignals=" + this.sellerSignals + ", perBuyerSignals=" + this.perBuyerSignals + ", trustedScoringSignalsUri=" + this.trustedScoringSignalsUri;
    }

    public AdSelectionConfig(@NotNull AdTechIdentifier seller, @NotNull Uri decisionLogicUri, @NotNull List<AdTechIdentifier> customAudienceBuyers, @NotNull AdSelectionSignals adSelectionSignals, @NotNull AdSelectionSignals sellerSignals, @NotNull Map<AdTechIdentifier, AdSelectionSignals> perBuyerSignals, @NotNull Uri trustedScoringSignalsUri) {
        kotlin.jvm.internal.t.j(seller, "seller");
        kotlin.jvm.internal.t.j(decisionLogicUri, "decisionLogicUri");
        kotlin.jvm.internal.t.j(customAudienceBuyers, "customAudienceBuyers");
        kotlin.jvm.internal.t.j(adSelectionSignals, "adSelectionSignals");
        kotlin.jvm.internal.t.j(sellerSignals, "sellerSignals");
        kotlin.jvm.internal.t.j(perBuyerSignals, "perBuyerSignals");
        kotlin.jvm.internal.t.j(trustedScoringSignalsUri, "trustedScoringSignalsUri");
        this.seller = seller;
        this.decisionLogicUri = decisionLogicUri;
        this.customAudienceBuyers = customAudienceBuyers;
        this.adSelectionSignals = adSelectionSignals;
        this.sellerSignals = sellerSignals;
        this.perBuyerSignals = perBuyerSignals;
        this.trustedScoringSignalsUri = trustedScoringSignalsUri;
    }
}

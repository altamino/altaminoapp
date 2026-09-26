package androidx.privacysandbox.ads.adservices.customaudience;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdData;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import java.time.Instant;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class CustomAudience {

    @Nullable
    private final Instant activationTime;

    @NotNull
    private final List<AdData> ads;

    @NotNull
    private final Uri biddingLogicUri;

    @NotNull
    private final AdTechIdentifier buyer;

    @NotNull
    private final Uri dailyUpdateUri;

    @Nullable
    private final Instant expirationTime;

    @NotNull
    private final String name;

    @Nullable
    private final TrustedBiddingData trustedBiddingSignals;

    @Nullable
    private final AdSelectionSignals userBiddingSignals;

    public static final class Builder {

        @Nullable
        private Instant activationTime;

        @NotNull
        private List<AdData> ads;

        @NotNull
        private Uri biddingLogicUri;

        @NotNull
        private AdTechIdentifier buyer;

        @NotNull
        private Uri dailyUpdateUri;

        @Nullable
        private Instant expirationTime;

        @NotNull
        private String name;

        @Nullable
        private TrustedBiddingData trustedBiddingData;

        @Nullable
        private AdSelectionSignals userBiddingSignals;

        public Builder(@NotNull AdTechIdentifier buyer, @NotNull String name, @NotNull Uri dailyUpdateUri, @NotNull Uri biddingLogicUri, @NotNull List<AdData> ads) {
            kotlin.jvm.internal.t.j(buyer, "buyer");
            kotlin.jvm.internal.t.j(name, "name");
            kotlin.jvm.internal.t.j(dailyUpdateUri, "dailyUpdateUri");
            kotlin.jvm.internal.t.j(biddingLogicUri, "biddingLogicUri");
            kotlin.jvm.internal.t.j(ads, "ads");
            this.buyer = buyer;
            this.name = name;
            this.dailyUpdateUri = dailyUpdateUri;
            this.biddingLogicUri = biddingLogicUri;
            this.ads = ads;
        }
    }

    public CustomAudience(@NotNull AdTechIdentifier buyer, @NotNull String name, @NotNull Uri dailyUpdateUri, @NotNull Uri biddingLogicUri, @NotNull List<AdData> ads, @Nullable Instant instant, @Nullable Instant instant2, @Nullable AdSelectionSignals adSelectionSignals, @Nullable TrustedBiddingData trustedBiddingData) {
        kotlin.jvm.internal.t.j(buyer, "buyer");
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(dailyUpdateUri, "dailyUpdateUri");
        kotlin.jvm.internal.t.j(biddingLogicUri, "biddingLogicUri");
        kotlin.jvm.internal.t.j(ads, "ads");
        this.buyer = buyer;
        this.name = name;
        this.dailyUpdateUri = dailyUpdateUri;
        this.biddingLogicUri = biddingLogicUri;
        this.ads = ads;
        this.activationTime = instant;
        this.expirationTime = instant2;
        this.userBiddingSignals = adSelectionSignals;
        this.trustedBiddingSignals = trustedBiddingData;
    }

    @Nullable
    public final Instant a() {
        return this.activationTime;
    }

    @NotNull
    public final List<AdData> b() {
        return this.ads;
    }

    @NotNull
    public final Uri c() {
        return this.biddingLogicUri;
    }

    @NotNull
    public final AdTechIdentifier d() {
        return this.buyer;
    }

    @NotNull
    public final Uri e() {
        return this.dailyUpdateUri;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAudience)) {
            return false;
        }
        CustomAudience customAudience = (CustomAudience) obj;
        return kotlin.jvm.internal.t.e(this.buyer, customAudience.buyer) && kotlin.jvm.internal.t.e(this.name, customAudience.name) && kotlin.jvm.internal.t.e(this.activationTime, customAudience.activationTime) && kotlin.jvm.internal.t.e(this.expirationTime, customAudience.expirationTime) && kotlin.jvm.internal.t.e(this.dailyUpdateUri, customAudience.dailyUpdateUri) && kotlin.jvm.internal.t.e(this.userBiddingSignals, customAudience.userBiddingSignals) && kotlin.jvm.internal.t.e(this.trustedBiddingSignals, customAudience.trustedBiddingSignals) && kotlin.jvm.internal.t.e(this.ads, customAudience.ads);
    }

    @Nullable
    public final Instant f() {
        return this.expirationTime;
    }

    @NotNull
    public final String g() {
        return this.name;
    }

    @Nullable
    public final TrustedBiddingData h() {
        return this.trustedBiddingSignals;
    }

    @Nullable
    public final AdSelectionSignals i() {
        return this.userBiddingSignals;
    }

    public /* synthetic */ CustomAudience(AdTechIdentifier adTechIdentifier, String str, Uri uri, Uri uri2, List list, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals, TrustedBiddingData trustedBiddingData, int i10, kotlin.jvm.internal.k kVar) {
        this(adTechIdentifier, str, uri, uri2, list, (i10 & 32) != 0 ? null : instant, (i10 & 64) != 0 ? null : instant2, (i10 & 128) != 0 ? null : adSelectionSignals, (i10 & 256) != 0 ? null : trustedBiddingData);
    }

    public int hashCode() {
        int iHashCode = ((this.buyer.hashCode() * 31) + this.name.hashCode()) * 31;
        Instant instant = this.activationTime;
        int iHashCode2 = (iHashCode + (instant != null ? instant.hashCode() : 0)) * 31;
        Instant instant2 = this.expirationTime;
        int iHashCode3 = (((iHashCode2 + (instant2 != null ? instant2.hashCode() : 0)) * 31) + this.dailyUpdateUri.hashCode()) * 31;
        AdSelectionSignals adSelectionSignals = this.userBiddingSignals;
        int iHashCode4 = (iHashCode3 + (adSelectionSignals != null ? adSelectionSignals.hashCode() : 0)) * 31;
        TrustedBiddingData trustedBiddingData = this.trustedBiddingSignals;
        return ((((iHashCode4 + (trustedBiddingData != null ? trustedBiddingData.hashCode() : 0)) * 31) + this.biddingLogicUri.hashCode()) * 31) + this.ads.hashCode();
    }

    @NotNull
    public String toString() {
        return "CustomAudience: buyer=" + this.biddingLogicUri + ", activationTime=" + this.activationTime + ", expirationTime=" + this.expirationTime + ", dailyUpdateUri=" + this.dailyUpdateUri + ", userBiddingSignals=" + this.userBiddingSignals + ", trustedBiddingSignals=" + this.trustedBiddingSignals + ", biddingLogicUri=" + this.biddingLogicUri + ", ads=" + this.ads;
    }
}

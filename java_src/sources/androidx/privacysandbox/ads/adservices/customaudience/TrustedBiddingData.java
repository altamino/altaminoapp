package androidx.privacysandbox.ads.adservices.customaudience;

import android.net.Uri;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class TrustedBiddingData {

    @NotNull
    private final List<String> trustedBiddingKeys;

    @NotNull
    private final Uri trustedBiddingUri;

    @NotNull
    public final List<String> a() {
        return this.trustedBiddingKeys;
    }

    @NotNull
    public final Uri b() {
        return this.trustedBiddingUri;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrustedBiddingData)) {
            return false;
        }
        TrustedBiddingData trustedBiddingData = (TrustedBiddingData) obj;
        return kotlin.jvm.internal.t.e(this.trustedBiddingUri, trustedBiddingData.trustedBiddingUri) && kotlin.jvm.internal.t.e(this.trustedBiddingKeys, trustedBiddingData.trustedBiddingKeys);
    }

    public int hashCode() {
        return (this.trustedBiddingUri.hashCode() * 31) + this.trustedBiddingKeys.hashCode();
    }

    @NotNull
    public String toString() {
        return "TrustedBiddingData: trustedBiddingUri=" + this.trustedBiddingUri + " trustedBiddingKeys=" + this.trustedBiddingKeys;
    }

    public TrustedBiddingData(@NotNull Uri trustedBiddingUri, @NotNull List<String> trustedBiddingKeys) {
        kotlin.jvm.internal.t.j(trustedBiddingUri, "trustedBiddingUri");
        kotlin.jvm.internal.t.j(trustedBiddingKeys, "trustedBiddingKeys");
        this.trustedBiddingUri = trustedBiddingUri;
        this.trustedBiddingKeys = trustedBiddingKeys;
    }
}

package androidx.privacysandbox.ads.adservices.adid;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class AdId {

    @NotNull
    private final String adId;
    private final boolean isLimitAdTrackingEnabled;

    public AdId(@NotNull String adId, boolean z6) {
        t.j(adId, "adId");
        this.adId = adId;
        this.isLimitAdTrackingEnabled = z6;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdId)) {
            return false;
        }
        AdId adId = (AdId) obj;
        return t.e(this.adId, adId.adId) && this.isLimitAdTrackingEnabled == adId.isLimitAdTrackingEnabled;
    }

    public /* synthetic */ AdId(String str, boolean z6, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? false : z6);
    }

    public int hashCode() {
        return (this.adId.hashCode() * 31) + androidx.compose.foundation.c.a(this.isLimitAdTrackingEnabled);
    }

    @NotNull
    public String toString() {
        return "AdId: adId=" + this.adId + ", isLimitAdTrackingEnabled=" + this.isLimitAdTrackingEnabled;
    }
}

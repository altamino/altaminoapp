package androidx.privacysandbox.ads.adservices.adselection;

import android.net.Uri;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class AdSelectionOutcome {
    private final long adSelectionId;

    @NotNull
    private final Uri renderUri;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionOutcome)) {
            return false;
        }
        AdSelectionOutcome adSelectionOutcome = (AdSelectionOutcome) obj;
        return this.adSelectionId == adSelectionOutcome.adSelectionId && kotlin.jvm.internal.t.e(this.renderUri, adSelectionOutcome.renderUri);
    }

    public int hashCode() {
        return (i.a.a(this.adSelectionId) * 31) + this.renderUri.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdSelectionOutcome: adSelectionId=" + this.adSelectionId + ", renderUri=" + this.renderUri;
    }

    public AdSelectionOutcome(long j6, @NotNull Uri renderUri) {
        kotlin.jvm.internal.t.j(renderUri, "renderUri");
        this.adSelectionId = j6;
        this.renderUri = renderUri;
    }
}

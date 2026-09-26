package androidx.privacysandbox.ads.adservices.common;

import android.net.Uri;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class AdData {

    @NotNull
    private final String metadata;

    @NotNull
    private final Uri renderUri;

    @NotNull
    public final String a() {
        return this.metadata;
    }

    @NotNull
    public final Uri b() {
        return this.renderUri;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdData)) {
            return false;
        }
        AdData adData = (AdData) obj;
        return t.e(this.renderUri, adData.renderUri) && t.e(this.metadata, adData.metadata);
    }

    public int hashCode() {
        return (this.renderUri.hashCode() * 31) + this.metadata.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdData: renderUri=" + this.renderUri + ", metadata='" + this.metadata + '\'';
    }

    public AdData(@NotNull Uri renderUri, @NotNull String metadata) {
        t.j(renderUri, "renderUri");
        t.j(metadata, "metadata");
        this.renderUri = renderUri;
        this.metadata = metadata;
    }
}

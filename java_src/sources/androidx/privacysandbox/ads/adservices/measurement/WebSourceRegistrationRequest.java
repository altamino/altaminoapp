package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.RequiresApi;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
public final class WebSourceRegistrationRequest {

    @Nullable
    private final Uri appDestination;

    @Nullable
    private final InputEvent inputEvent;

    @NotNull
    private final Uri topOriginUri;

    @Nullable
    private final Uri verifiedDestination;

    @Nullable
    private final Uri webDestination;

    @NotNull
    private final List<WebSourceParams> webSourceParams;

    public WebSourceRegistrationRequest(@NotNull List<WebSourceParams> webSourceParams, @NotNull Uri topOriginUri, @Nullable InputEvent inputEvent, @Nullable Uri uri, @Nullable Uri uri2, @Nullable Uri uri3) {
        kotlin.jvm.internal.t.j(webSourceParams, "webSourceParams");
        kotlin.jvm.internal.t.j(topOriginUri, "topOriginUri");
        this.webSourceParams = webSourceParams;
        this.topOriginUri = topOriginUri;
        this.inputEvent = inputEvent;
        this.appDestination = uri;
        this.webDestination = uri2;
        this.verifiedDestination = uri3;
    }

    @Nullable
    public final Uri a() {
        return this.appDestination;
    }

    @Nullable
    public final InputEvent b() {
        return this.inputEvent;
    }

    @NotNull
    public final Uri c() {
        return this.topOriginUri;
    }

    @Nullable
    public final Uri d() {
        return this.verifiedDestination;
    }

    @Nullable
    public final Uri e() {
        return this.webDestination;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSourceRegistrationRequest)) {
            return false;
        }
        WebSourceRegistrationRequest webSourceRegistrationRequest = (WebSourceRegistrationRequest) obj;
        return kotlin.jvm.internal.t.e(this.webSourceParams, webSourceRegistrationRequest.webSourceParams) && kotlin.jvm.internal.t.e(this.webDestination, webSourceRegistrationRequest.webDestination) && kotlin.jvm.internal.t.e(this.appDestination, webSourceRegistrationRequest.appDestination) && kotlin.jvm.internal.t.e(this.topOriginUri, webSourceRegistrationRequest.topOriginUri) && kotlin.jvm.internal.t.e(this.inputEvent, webSourceRegistrationRequest.inputEvent) && kotlin.jvm.internal.t.e(this.verifiedDestination, webSourceRegistrationRequest.verifiedDestination);
    }

    @NotNull
    public final List<WebSourceParams> f() {
        return this.webSourceParams;
    }

    public static final class Builder {

        @Nullable
        private Uri appDestination;

        @Nullable
        private InputEvent inputEvent;

        @NotNull
        private final Uri topOriginUri;

        @Nullable
        private Uri verifiedDestination;

        @Nullable
        private Uri webDestination;

        @NotNull
        private final List<WebSourceParams> webSourceParams;

        public Builder(@NotNull List<WebSourceParams> webSourceParams, @NotNull Uri topOriginUri) {
            kotlin.jvm.internal.t.j(webSourceParams, "webSourceParams");
            kotlin.jvm.internal.t.j(topOriginUri, "topOriginUri");
            this.webSourceParams = webSourceParams;
            this.topOriginUri = topOriginUri;
        }
    }

    public /* synthetic */ WebSourceRegistrationRequest(List list, Uri uri, InputEvent inputEvent, Uri uri2, Uri uri3, Uri uri4, int i10, kotlin.jvm.internal.k kVar) {
        this(list, uri, (i10 & 4) != 0 ? null : inputEvent, (i10 & 8) != 0 ? null : uri2, (i10 & 16) != 0 ? null : uri3, (i10 & 32) != 0 ? null : uri4);
    }

    public int hashCode() {
        int iHashCode = (this.webSourceParams.hashCode() * 31) + this.topOriginUri.hashCode();
        InputEvent inputEvent = this.inputEvent;
        if (inputEvent != null) {
            iHashCode = (iHashCode * 31) + inputEvent.hashCode();
        }
        Uri uri = this.appDestination;
        if (uri != null) {
            iHashCode = (iHashCode * 31) + uri.hashCode();
        }
        Uri uri2 = this.webDestination;
        if (uri2 != null) {
            iHashCode = (iHashCode * 31) + uri2.hashCode();
        }
        int iHashCode2 = (iHashCode * 31) + this.topOriginUri.hashCode();
        InputEvent inputEvent2 = this.inputEvent;
        if (inputEvent2 != null) {
            iHashCode2 = (iHashCode2 * 31) + inputEvent2.hashCode();
        }
        Uri uri3 = this.verifiedDestination;
        return uri3 != null ? (iHashCode2 * 31) + uri3.hashCode() : iHashCode2;
    }

    @NotNull
    public String toString() {
        return "WebSourceRegistrationRequest { " + ("WebSourceParams=[" + this.webSourceParams + "], TopOriginUri=" + this.topOriginUri + ", InputEvent=" + this.inputEvent + ", AppDestination=" + this.appDestination + ", WebDestination=" + this.webDestination + ", VerifiedDestination=" + this.verifiedDestination) + " }";
    }
}

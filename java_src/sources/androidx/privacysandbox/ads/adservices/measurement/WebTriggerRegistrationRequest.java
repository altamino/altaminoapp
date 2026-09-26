package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import androidx.annotation.RequiresApi;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class WebTriggerRegistrationRequest {

    @NotNull
    private final Uri destination;

    @NotNull
    private final List<WebTriggerParams> webTriggerParams;

    @NotNull
    public final Uri a() {
        return this.destination;
    }

    @NotNull
    public final List<WebTriggerParams> b() {
        return this.webTriggerParams;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerRegistrationRequest)) {
            return false;
        }
        WebTriggerRegistrationRequest webTriggerRegistrationRequest = (WebTriggerRegistrationRequest) obj;
        return kotlin.jvm.internal.t.e(this.webTriggerParams, webTriggerRegistrationRequest.webTriggerParams) && kotlin.jvm.internal.t.e(this.destination, webTriggerRegistrationRequest.destination);
    }

    public int hashCode() {
        return (this.webTriggerParams.hashCode() * 31) + this.destination.hashCode();
    }

    @NotNull
    public String toString() {
        return "WebTriggerRegistrationRequest { WebTriggerParams=" + this.webTriggerParams + ", Destination=" + this.destination;
    }

    public WebTriggerRegistrationRequest(@NotNull List<WebTriggerParams> webTriggerParams, @NotNull Uri destination) {
        kotlin.jvm.internal.t.j(webTriggerParams, "webTriggerParams");
        kotlin.jvm.internal.t.j(destination, "destination");
        this.webTriggerParams = webTriggerParams;
        this.destination = destination;
    }
}

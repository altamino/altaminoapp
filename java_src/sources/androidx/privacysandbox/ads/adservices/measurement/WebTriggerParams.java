package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class WebTriggerParams {
    private final boolean debugKeyAllowed;

    @NotNull
    private final Uri registrationUri;

    public final boolean a() {
        return this.debugKeyAllowed;
    }

    @NotNull
    public final Uri b() {
        return this.registrationUri;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebTriggerParams)) {
            return false;
        }
        WebTriggerParams webTriggerParams = (WebTriggerParams) obj;
        return kotlin.jvm.internal.t.e(this.registrationUri, webTriggerParams.registrationUri) && this.debugKeyAllowed == webTriggerParams.debugKeyAllowed;
    }

    public int hashCode() {
        return (this.registrationUri.hashCode() * 31) + androidx.compose.foundation.c.a(this.debugKeyAllowed);
    }

    @NotNull
    public String toString() {
        return "WebTriggerParams { RegistrationUri=" + this.registrationUri + ", DebugKeyAllowed=" + this.debugKeyAllowed + " }";
    }

    public WebTriggerParams(@NotNull Uri registrationUri, boolean z6) {
        kotlin.jvm.internal.t.j(registrationUri, "registrationUri");
        this.registrationUri = registrationUri;
        this.debugKeyAllowed = z6;
    }
}

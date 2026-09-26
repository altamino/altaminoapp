package androidx.privacysandbox.ads.adservices.topics;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class GetTopicsRequest {

    @NotNull
    private final String adsSdkName;
    private final boolean shouldRecordObservation;

    public static final class Builder {

        @NotNull
        private String adsSdkName = "";
        private boolean shouldRecordObservation = true;

        @NotNull
        public final Builder b(@NotNull String adsSdkName) {
            t.j(adsSdkName, "adsSdkName");
            this.adsSdkName = adsSdkName;
            return this;
        }

        @NotNull
        public final Builder c(boolean z6) {
            this.shouldRecordObservation = z6;
            return this;
        }

        @NotNull
        public final GetTopicsRequest a() {
            if (this.adsSdkName.length() > 0) {
                return new GetTopicsRequest(this.adsSdkName, this.shouldRecordObservation);
            }
            throw new IllegalStateException("adsSdkName must be set".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GetTopicsRequest() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    @NotNull
    public final String a() {
        return this.adsSdkName;
    }

    public final boolean b() {
        return this.shouldRecordObservation;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetTopicsRequest)) {
            return false;
        }
        GetTopicsRequest getTopicsRequest = (GetTopicsRequest) obj;
        return t.e(this.adsSdkName, getTopicsRequest.adsSdkName) && this.shouldRecordObservation == getTopicsRequest.shouldRecordObservation;
    }

    public GetTopicsRequest(@NotNull String adsSdkName, boolean z6) {
        t.j(adsSdkName, "adsSdkName");
        this.adsSdkName = adsSdkName;
        this.shouldRecordObservation = z6;
    }

    public int hashCode() {
        return (this.adsSdkName.hashCode() * 31) + androidx.compose.foundation.c.a(this.shouldRecordObservation);
    }

    @NotNull
    public String toString() {
        return "GetTopicsRequest: adsSdkName=" + this.adsSdkName + ", shouldRecordObservation=" + this.shouldRecordObservation;
    }

    public /* synthetic */ GetTopicsRequest(String str, boolean z6, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? false : z6);
    }
}

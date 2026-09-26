package coil.network;

import okhttp3.Response;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends RuntimeException {

    @NotNull
    private final Response response;

    public d(@NotNull Response response) {
        super("HTTP " + response.code() + ": " + response.message());
        this.response = response;
    }
}

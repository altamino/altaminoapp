package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import com.android.volley.toolbox.HttpClientStack;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class HttpMethod {

    @NotNull
    public static final HttpMethod INSTANCE = new HttpMethod();

    public static final boolean permitsRequestBody(@NotNull String method) {
        t.j(method, "method");
        return (t.e(method, ShareTarget.METHOD_GET) || t.e(method, "HEAD")) ? false : true;
    }

    public static final boolean requiresRequestBody(@NotNull String method) {
        t.j(method, "method");
        return t.e(method, "POST") || t.e(method, "PUT") || t.e(method, HttpClientStack.HttpPatch.METHOD_NAME) || t.e(method, "PROPPATCH") || t.e(method, "REPORT");
    }

    public final boolean invalidatesCache(@NotNull String method) {
        t.j(method, "method");
        return t.e(method, "POST") || t.e(method, HttpClientStack.HttpPatch.METHOD_NAME) || t.e(method, "PUT") || t.e(method, "DELETE") || t.e(method, "MOVE");
    }

    public final boolean redirectsToGet(@NotNull String method) {
        t.j(method, "method");
        return !t.e(method, "PROPFIND");
    }

    public final boolean redirectsWithBody(@NotNull String method) {
        t.j(method, "method");
        return t.e(method, "PROPFIND");
    }

    private HttpMethod() {
    }
}

package retrofit2;

import java.util.Objects;
import okhttp3.Headers;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes9.dex */
public final class Response<T> {
    private final T body;
    private final ResponseBody errorBody;
    private final okhttp3.Response rawResponse;

    public static <T> Response<T> error(int i10, ResponseBody responseBody) {
        Objects.requireNonNull(responseBody, "body == null");
        if (i10 >= 400) {
            return error(responseBody, new okhttp3.Response.Builder().body(new OkHttpCall.NoContentResponseBody(responseBody.contentType(), responseBody.contentLength())).code(i10).message("Response.error()").protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
        }
        throw new IllegalArgumentException("code < 400: " + i10);
    }

    public static <T> Response<T> success(T t5) {
        return success(t5, new okhttp3.Response.Builder().code(200).message("OK").protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
    }

    public T body() {
        return this.body;
    }

    public ResponseBody errorBody() {
        return this.errorBody;
    }

    public okhttp3.Response raw() {
        return this.rawResponse;
    }

    public int code() {
        return this.rawResponse.code();
    }

    public Headers headers() {
        return this.rawResponse.headers();
    }

    public boolean isSuccessful() {
        return this.rawResponse.isSuccessful();
    }

    public String message() {
        return this.rawResponse.message();
    }

    public String toString() {
        return this.rawResponse.toString();
    }

    private Response(okhttp3.Response response, T t5, ResponseBody responseBody) {
        this.rawResponse = response;
        this.body = t5;
        this.errorBody = responseBody;
    }

    public static <T> Response<T> success(int i10, T t5) {
        if (i10 >= 200 && i10 < 300) {
            return success(t5, new okhttp3.Response.Builder().code(i10).message("Response.success()").protocol(Protocol.HTTP_1_1).request(new Request.Builder().url("http://localhost/").build()).build());
        }
        throw new IllegalArgumentException("code < 200 or >= 300: " + i10);
    }

    public static <T> Response<T> error(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new Response<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public static <T> Response<T> success(T t5, Headers headers) {
        Objects.requireNonNull(headers, "headers == null");
        return success(t5, new okhttp3.Response.Builder().code(200).message("OK").protocol(Protocol.HTTP_1_1).headers(headers).request(new Request.Builder().url("http://localhost/").build()).build());
    }

    public static <T> Response<T> success(T t5, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new Response<>(response, t5, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }
}

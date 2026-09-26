package com.android.volley;

/* JADX INFO: loaded from: classes7.dex */
public class Response<T> {
    public final Cache.Entry cacheEntry;
    public final VolleyError error;
    public boolean intermediate;
    public final T result;

    public interface ErrorListener {
        void onErrorResponse(VolleyError volleyError);
    }

    public interface Listener<T> {
        void onResponse(T t5);
    }

    private Response(T t5, Cache.Entry entry) {
        this.intermediate = false;
        this.result = t5;
        this.cacheEntry = entry;
        this.error = null;
    }

    public boolean isSuccess() {
        return this.error == null;
    }

    private Response(VolleyError volleyError) {
        this.intermediate = false;
        this.result = null;
        this.cacheEntry = null;
        this.error = volleyError;
    }

    public static <T> Response<T> error(VolleyError volleyError) {
        return new Response<>(volleyError);
    }

    public static <T> Response<T> success(T t5, Cache.Entry entry) {
        return new Response<>(t5, entry);
    }
}

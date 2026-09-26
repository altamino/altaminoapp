package com.android.volley.toolbox;

import com.android.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class HttpResponse {
    private final InputStream mContent;
    private final int mContentLength;
    private final List<Header> mHeaders;
    private final int mStatusCode;

    public HttpResponse(int i10, List<Header> list) {
        this(i10, list, -1, null);
    }

    public final InputStream getContent() {
        return this.mContent;
    }

    public final int getContentLength() {
        return this.mContentLength;
    }

    public final int getStatusCode() {
        return this.mStatusCode;
    }

    public HttpResponse(int i10, List<Header> list, int i11, InputStream inputStream) {
        this.mStatusCode = i10;
        this.mHeaders = list;
        this.mContentLength = i11;
        this.mContent = inputStream;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.mHeaders);
    }
}

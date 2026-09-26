package com.narvii.volley;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
public interface HurlExtRequest {
    int getFixedLengthStreaming();

    void writeOutputStream(OutputStream outputStream) throws IOException;
}

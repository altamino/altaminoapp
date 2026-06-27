package com.narvii.volley;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public interface HurlExtRequest {
    int getFixedLengthStreaming();

    void writeOutputStream(OutputStream outputStream) throws IOException;
}

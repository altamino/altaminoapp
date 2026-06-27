package com.narvii.youtube;

import java.io.IOException;

/* loaded from: classes3.dex */
public interface Extractor {
    ExtractResult extract(String str) throws IOException;

    String name();
}

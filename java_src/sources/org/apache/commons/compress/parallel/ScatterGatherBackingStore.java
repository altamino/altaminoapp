package org.apache.commons.compress.parallel;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public interface ScatterGatherBackingStore extends Closeable {
    void closeForWriting() throws IOException;

    InputStream getInputStream() throws IOException;

    void writeOut(byte[] bArr, int i10, int i11) throws IOException;
}

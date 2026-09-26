package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes8.dex */
abstract class CoderBase {
    private static final byte[] NONE = new byte[0];
    private final Class<?>[] acceptableOptions;

    abstract InputStream decode(String str, InputStream inputStream, long j6, Coder coder, byte[] bArr) throws IOException;

    byte[] getOptionsAsProperties(Object obj) throws IOException {
        return NONE;
    }

    Object getOptionsFromCoder(Coder coder, InputStream inputStream) throws IOException {
        return null;
    }

    protected static int numberOptionOrDefault(Object obj, int i10) {
        return obj instanceof Number ? ((Number) obj).intValue() : i10;
    }

    boolean canAcceptOptions(Object obj) {
        for (Class<?> cls : this.acceptableOptions) {
            if (cls.isInstance(obj)) {
                return true;
            }
        }
        return false;
    }

    OutputStream encode(OutputStream outputStream, Object obj) throws IOException {
        throw new UnsupportedOperationException("method doesn't support writing");
    }

    protected CoderBase(Class<?>... clsArr) {
        this.acceptableOptions = clsArr;
    }
}

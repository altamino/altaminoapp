package org.apache.commons.compress.compressors;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
public interface CompressorStreamProvider {
    CompressorInputStream createCompressorInputStream(String str, InputStream inputStream, boolean z6) throws CompressorException;

    CompressorOutputStream createCompressorOutputStream(String str, OutputStream outputStream) throws CompressorException;

    Set<String> getInputStreamCompressorNames();

    Set<String> getOutputStreamCompressorNames();
}

package org.apache.commons.compress.compressors.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.jar.JarInputStream;
import java.util.jar.Pack200;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* JADX INFO: loaded from: classes7.dex */
public class Pack200CompressorOutputStream extends CompressorOutputStream {
    private boolean finished;
    private final OutputStream originalOutput;
    private final Map<String, String> properties;
    private final StreamBridge streamBridge;

    public Pack200CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, Pack200Strategy.IN_MEMORY);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        this.streamBridge.write(i10);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Pack200Strategy pack200Strategy) throws IOException {
        this(outputStream, pack200Strategy, null);
    }

    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        this.finished = true;
        Pack200.Packer packerNewPacker = Pack200.newPacker();
        if (this.properties != null) {
            packerNewPacker.properties().putAll(this.properties);
        }
        JarInputStream jarInputStream = new JarInputStream(this.streamBridge.getInput());
        try {
            packerNewPacker.pack(jarInputStream, this.originalOutput);
            jarInputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    jarInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.streamBridge.write(bArr);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Map<String, String> map) throws IOException {
        this(outputStream, Pack200Strategy.IN_MEMORY, map);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        try {
            this.streamBridge.stop();
        } finally {
            this.originalOutput.close();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.streamBridge.write(bArr, i10, i11);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this.finished = false;
        this.originalOutput = outputStream;
        this.streamBridge = pack200Strategy.newStreamBridge();
        this.properties = map;
    }
}

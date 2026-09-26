package org.apache.commons.compress.compressors.pack200;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
abstract class StreamBridge extends FilterOutputStream {
    private InputStream input;
    private final Object inputLock;

    protected StreamBridge(OutputStream outputStream) {
        super(outputStream);
        this.inputLock = new Object();
    }

    abstract InputStream getInputView() throws IOException;

    InputStream getInput() throws IOException {
        synchronized (this.inputLock) {
            try {
                if (this.input == null) {
                    this.input = getInputView();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.input;
    }

    protected StreamBridge() {
        this(null);
    }

    void stop() throws IOException {
        close();
        synchronized (this.inputLock) {
            try {
                InputStream inputStream = this.input;
                if (inputStream != null) {
                    inputStream.close();
                    this.input = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

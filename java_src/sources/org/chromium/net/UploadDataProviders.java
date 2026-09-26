package org.chromium.net;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes8.dex */
public final class UploadDataProviders {

    static class a implements d {
        final /* synthetic */ File val$file;

        a(File file) {
            this.val$file = file;
        }

        @Override // org.chromium.net.UploadDataProviders.d
        public FileChannel d() throws IOException {
            return new FileInputStream(this.val$file).getChannel();
        }
    }

    static class b implements d {
        final /* synthetic */ ParcelFileDescriptor val$fd;

        b(ParcelFileDescriptor parcelFileDescriptor) {
            this.val$fd = parcelFileDescriptor;
        }

        @Override // org.chromium.net.UploadDataProviders.d
        public FileChannel d() throws IOException {
            if (this.val$fd.getStatSize() != -1) {
                return new ParcelFileDescriptor.AutoCloseInputStream(this.val$fd).getChannel();
            }
            this.val$fd.close();
            throw new IllegalArgumentException("Not a file: " + this.val$fd);
        }
    }

    private static final class c extends UploadDataProvider {
        private final ByteBuffer mUploadBuffer;

        /* synthetic */ c(ByteBuffer byteBuffer, a aVar) {
            this(byteBuffer);
        }

        private c(ByteBuffer byteBuffer) {
            this.mUploadBuffer = byteBuffer;
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() {
            return this.mUploadBuffer.limit();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) {
            this.mUploadBuffer.position(0);
            uploadDataSink.onRewindSucceeded();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (byteBuffer.hasRemaining()) {
                if (byteBuffer.remaining() >= this.mUploadBuffer.remaining()) {
                    byteBuffer.put(this.mUploadBuffer);
                } else {
                    int iLimit = this.mUploadBuffer.limit();
                    ByteBuffer byteBuffer2 = this.mUploadBuffer;
                    byteBuffer2.limit(byteBuffer2.position() + byteBuffer.remaining());
                    byteBuffer.put(this.mUploadBuffer);
                    this.mUploadBuffer.limit(iLimit);
                }
                uploadDataSink.onReadSucceeded(false);
                return;
            }
            throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
        }
    }

    private interface d {
        FileChannel d() throws IOException;
    }

    private static final class e extends UploadDataProvider {
        private volatile FileChannel mChannel;
        private final Object mLock;
        private final d mProvider;

        /* synthetic */ e(d dVar, a aVar) {
            this(dVar);
        }

        private e(d dVar) {
            this.mLock = new Object();
            this.mProvider = dVar;
        }

        private FileChannel d() throws IOException {
            if (this.mChannel == null) {
                synchronized (this.mLock) {
                    try {
                        if (this.mChannel == null) {
                            this.mChannel = this.mProvider.d();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.mChannel;
        }

        @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            FileChannel fileChannel = this.mChannel;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() throws IOException {
            return d().size();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasRemaining()) {
                FileChannel fileChannelD = d();
                int i10 = 0;
                while (i10 == 0) {
                    int i11 = fileChannelD.read(byteBuffer);
                    if (i11 == -1) {
                        break;
                    } else {
                        i10 += i11;
                    }
                }
                uploadDataSink.onReadSucceeded(false);
                return;
            }
            throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) throws IOException {
            d().position(0L);
            uploadDataSink.onRewindSucceeded();
        }
    }

    public static UploadDataProvider create(File file) {
        return new e(new a(file), null);
    }

    public static UploadDataProvider create(ParcelFileDescriptor parcelFileDescriptor) {
        return new e(new b(parcelFileDescriptor), null);
    }

    private UploadDataProviders() {
    }

    public static UploadDataProvider create(ByteBuffer byteBuffer) {
        return new c(byteBuffer.slice(), null);
    }

    public static UploadDataProvider create(byte[] bArr, int i10, int i11) {
        return new c(ByteBuffer.wrap(bArr, i10, i11).slice(), null);
    }

    public static UploadDataProvider create(byte[] bArr) {
        return create(bArr, 0, bArr.length);
    }
}

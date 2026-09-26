package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
final class GifInfoHandle {
    private volatile long gifInfoPtr;

    GifInfoHandle(FileDescriptor fileDescriptor) throws GifIOException {
        this.gifInfoPtr = m(fileDescriptor, 0L);
    }

    static native int createTempNativeFileDescriptor() throws GifIOException;

    static native int extractNativeFileDescriptor(FileDescriptor fileDescriptor) throws GifIOException;

    private static native void free(long j6);

    private static native int getCurrentFrameIndex(long j6);

    private static native int getCurrentLoop(long j6);

    private static native int getCurrentPosition(long j6);

    private static native int getDuration(long j6);

    private static native int getHeight(long j6);

    private static native int getLoopCount(long j6);

    private static native int getNativeErrorCode(long j6);

    private static native int getNumberOfFrames(long j6);

    private static native int getWidth(long j6);

    private static native boolean isOpaque(long j6);

    static native long openByteArray(byte[] bArr) throws GifIOException;

    static native long openDirectByteBuffer(ByteBuffer byteBuffer) throws GifIOException;

    static native long openFile(String str) throws GifIOException;

    static native long openNativeFileDescriptor(int i10, long j6) throws GifIOException;

    static native long openStream(InputStream inputStream) throws GifIOException;

    private static native long renderFrame(long j6, Bitmap bitmap);

    private static native boolean reset(long j6);

    private static native long restoreRemainder(long j6);

    private static native void saveRemainder(long j6);

    private static native void seekToFrame(long j6, int i10, Bitmap bitmap);

    private static native void seekToTime(long j6, int i10, Bitmap bitmap);

    synchronized int a() {
        return getCurrentFrameIndex(this.gifInfoPtr);
    }

    synchronized int b() {
        return getCurrentLoop(this.gifInfoPtr);
    }

    synchronized int c() {
        return getCurrentPosition(this.gifInfoPtr);
    }

    synchronized int d() {
        return getDuration(this.gifInfoPtr);
    }

    synchronized int e() {
        return getHeight(this.gifInfoPtr);
    }

    synchronized int f() {
        return getLoopCount(this.gifInfoPtr);
    }

    synchronized int g() {
        return getNativeErrorCode(this.gifInfoPtr);
    }

    synchronized int i() {
        return getNumberOfFrames(this.gifInfoPtr);
    }

    synchronized int j() {
        return getWidth(this.gifInfoPtr);
    }

    synchronized boolean k() {
        return isOpaque(this.gifInfoPtr);
    }

    synchronized boolean l() {
        return this.gifInfoPtr == 0;
    }

    synchronized void o() {
        free(this.gifInfoPtr);
        this.gifInfoPtr = 0L;
    }

    synchronized long p(Bitmap bitmap) {
        return renderFrame(this.gifInfoPtr, bitmap);
    }

    synchronized boolean q() {
        return reset(this.gifInfoPtr);
    }

    synchronized long r() {
        return restoreRemainder(this.gifInfoPtr);
    }

    synchronized void s() {
        saveRemainder(this.gifInfoPtr);
    }

    synchronized void t(@IntRange int i10, Bitmap bitmap) {
        seekToFrame(this.gifInfoPtr, i10, bitmap);
    }

    synchronized void u(@IntRange int i10, Bitmap bitmap) {
        seekToTime(this.gifInfoPtr, i10, bitmap);
    }

    private static long m(FileDescriptor fileDescriptor, long j6) throws GifIOException {
        int iH;
        if (Build.VERSION.SDK_INT > 27) {
            try {
                iH = h(fileDescriptor);
            } catch (Exception e) {
                throw new GifIOException(c.OPEN_FAILED.errorCode, e.getMessage());
            }
        } else {
            iH = extractNativeFileDescriptor(fileDescriptor);
        }
        return openNativeFileDescriptor(iH, j6);
    }

    static {
        h.b();
    }

    GifInfoHandle(byte[] bArr) throws GifIOException {
        this.gifInfoPtr = openByteArray(bArr);
    }

    @RequiresApi
    private static int h(FileDescriptor fileDescriptor) throws GifIOException, ErrnoException {
        try {
            int iCreateTempNativeFileDescriptor = createTempNativeFileDescriptor();
            Os.dup2(fileDescriptor, iCreateTempNativeFileDescriptor);
            return iCreateTempNativeFileDescriptor;
        } finally {
            Os.close(fileDescriptor);
        }
    }

    static GifInfoHandle n(ContentResolver contentResolver, Uri uri) throws IOException {
        if ("file".equals(uri.getScheme())) {
            return new GifInfoHandle(uri.getPath());
        }
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (assetFileDescriptorOpenAssetFileDescriptor != null) {
            return new GifInfoHandle(assetFileDescriptorOpenAssetFileDescriptor);
        }
        throw new IOException("Could not open AssetFileDescriptor for " + uri);
    }

    protected void finalize() throws Throwable {
        try {
            o();
        } finally {
            super.finalize();
        }
    }

    GifInfoHandle(ByteBuffer byteBuffer) throws GifIOException {
        this.gifInfoPtr = openDirectByteBuffer(byteBuffer);
    }

    GifInfoHandle(String str) throws GifIOException {
        this.gifInfoPtr = openFile(str);
    }

    GifInfoHandle(InputStream inputStream) throws GifIOException {
        if (inputStream.markSupported()) {
            this.gifInfoPtr = openStream(inputStream);
            return;
        }
        throw new IllegalArgumentException("InputStream does not support marking");
    }

    GifInfoHandle(AssetFileDescriptor assetFileDescriptor) throws IOException {
        try {
            this.gifInfoPtr = m(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset());
        } finally {
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }
}

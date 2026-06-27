package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes4.dex */
final class GifInfoHandle {
    private volatile long gifInfoPtr;

    static native int createTempNativeFileDescriptor() throws GifIOException;

    static native int extractNativeFileDescriptor(FileDescriptor fileDescriptor) throws GifIOException;

    private static native void free(long j);

    private static native int getCurrentFrameIndex(long j);

    private static native int getCurrentLoop(long j);

    private static native int getCurrentPosition(long j);

    private static native int getDuration(long j);

    private static native int getHeight(long j);

    private static native int getLoopCount(long j);

    private static native int getNativeErrorCode(long j);

    private static native int getNumberOfFrames(long j);

    private static native int getWidth(long j);

    private static native boolean isOpaque(long j);

    static native long openByteArray(byte[] bArr) throws GifIOException;

    static native long openDirectByteBuffer(ByteBuffer byteBuffer) throws GifIOException;

    static native long openFile(String str) throws GifIOException;

    static native long openNativeFileDescriptor(int i, long j) throws GifIOException;

    static native long openStream(InputStream inputStream) throws GifIOException;

    private static native long renderFrame(long j, Bitmap bitmap);

    private static native boolean reset(long j);

    private static native long restoreRemainder(long j);

    private static native void saveRemainder(long j);

    private static native void seekToFrame(long j, int i, Bitmap bitmap);

    private static native void seekToTime(long j, int i, Bitmap bitmap);

    static {
        LibraryLoader.loadLibrary();
    }

    GifInfoHandle() {
    }

    GifInfoHandle(FileDescriptor fileDescriptor) throws GifIOException {
        this.gifInfoPtr = openFd(fileDescriptor, 0L);
    }

    GifInfoHandle(byte[] bArr) throws GifIOException {
        this.gifInfoPtr = openByteArray(bArr);
    }

    GifInfoHandle(ByteBuffer byteBuffer) throws GifIOException {
        this.gifInfoPtr = openDirectByteBuffer(byteBuffer);
    }

    GifInfoHandle(String str) throws GifIOException {
        this.gifInfoPtr = openFile(str);
    }

    GifInfoHandle(InputStream inputStream) throws GifIOException {
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("InputStream does not support marking");
        }
        this.gifInfoPtr = openStream(inputStream);
    }

    GifInfoHandle(AssetFileDescriptor assetFileDescriptor) throws IOException {
        try {
            this.gifInfoPtr = openFd(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset());
        } finally {
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    private static long openFd(FileDescriptor fileDescriptor, long j) throws GifIOException {
        int nativeFileDescriptor;
        if (Build.VERSION.SDK_INT > 27) {
            try {
                nativeFileDescriptor = getNativeFileDescriptor(fileDescriptor);
            } catch (Exception e) {
                throw new GifIOException(GifError.OPEN_FAILED.errorCode, e.getMessage());
            }
        } else {
            nativeFileDescriptor = extractNativeFileDescriptor(fileDescriptor);
        }
        return openNativeFileDescriptor(nativeFileDescriptor, j);
    }

    private static int getNativeFileDescriptor(FileDescriptor fileDescriptor) throws GifIOException, ErrnoException {
        try {
            int iCreateTempNativeFileDescriptor = createTempNativeFileDescriptor();
            Os.dup2(fileDescriptor, iCreateTempNativeFileDescriptor);
            return iCreateTempNativeFileDescriptor;
        } finally {
            Os.close(fileDescriptor);
        }
    }

    static GifInfoHandle openUri(ContentResolver contentResolver, Uri uri) throws IOException {
        if ("file".equals(uri.getScheme())) {
            return new GifInfoHandle(uri.getPath());
        }
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (assetFileDescriptorOpenAssetFileDescriptor == null) {
            throw new IOException("Could not open AssetFileDescriptor for " + uri);
        }
        return new GifInfoHandle(assetFileDescriptorOpenAssetFileDescriptor);
    }

    synchronized long renderFrame(Bitmap bitmap) {
        return renderFrame(this.gifInfoPtr, bitmap);
    }

    synchronized void recycle() {
        free(this.gifInfoPtr);
        this.gifInfoPtr = 0L;
    }

    synchronized long restoreRemainder() {
        return restoreRemainder(this.gifInfoPtr);
    }

    synchronized boolean reset() {
        return reset(this.gifInfoPtr);
    }

    synchronized void saveRemainder() {
        saveRemainder(this.gifInfoPtr);
    }

    synchronized int getLoopCount() {
        return getLoopCount(this.gifInfoPtr);
    }

    synchronized int getNativeErrorCode() {
        return getNativeErrorCode(this.gifInfoPtr);
    }

    synchronized int getDuration() {
        return getDuration(this.gifInfoPtr);
    }

    synchronized int getCurrentPosition() {
        return getCurrentPosition(this.gifInfoPtr);
    }

    synchronized int getCurrentFrameIndex() {
        return getCurrentFrameIndex(this.gifInfoPtr);
    }

    synchronized int getCurrentLoop() {
        return getCurrentLoop(this.gifInfoPtr);
    }

    synchronized void seekToTime(int i, Bitmap bitmap) {
        seekToTime(this.gifInfoPtr, i, bitmap);
    }

    synchronized void seekToFrame(int i, Bitmap bitmap) {
        seekToFrame(this.gifInfoPtr, i, bitmap);
    }

    synchronized boolean isRecycled() {
        return this.gifInfoPtr == 0;
    }

    protected void finalize() throws Throwable {
        try {
            recycle();
        } finally {
            super.finalize();
        }
    }

    synchronized int getWidth() {
        return getWidth(this.gifInfoPtr);
    }

    synchronized int getHeight() {
        return getHeight(this.gifInfoPtr);
    }

    synchronized int getNumberOfFrames() {
        return getNumberOfFrames(this.gifInfoPtr);
    }

    synchronized boolean isOpaque() {
        return isOpaque(this.gifInfoPtr);
    }
}

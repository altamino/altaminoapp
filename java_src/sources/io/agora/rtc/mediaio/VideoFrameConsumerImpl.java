package io.agora.rtc.mediaio;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.GLException;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes11.dex */
public class VideoFrameConsumerImpl implements IVideoFrameConsumer {
    private long mCaptureHandle;

    @Override // io.agora.rtc.mediaio.IVideoFrameConsumer
    public void consumeByteArrayFrame(byte[] data, int format, int width, int height, int rotation, long ts) {
        int i10;
        if (format == 8 || format == 3 || format == 1) {
            i10 = (((width + 1) >> 1) * ((height + 1) >> 1) * 2) + (width * height);
        } else {
            i10 = (format == 4 || format == 2 || format == 7) ? 4 * width * height : 0;
        }
        if (i10 == 0 || data.length == i10) {
            provideByteArrayFrame(this.mCaptureHandle, data, format, width, height, rotation, ts);
            return;
        }
        Log.e("IVideoFrameConsumer", "The size of consumeByteArrayFrame is illegal, format " + format);
    }

    @Override // io.agora.rtc.mediaio.IVideoFrameConsumer
    public void consumeByteBufferFrame(ByteBuffer buffer, int format, int width, int height, int rotation, long ts) {
        provideByteBufferFrame(this.mCaptureHandle, buffer, format, width, height, rotation, ts);
    }

    public native void provideByteArrayFrame(long nativeHandle, byte[] data, int format, int width, int height, int rotation, long ts);

    public native void provideByteBufferFrame(long nativeHandle, ByteBuffer buffer, int format, int width, int height, int rotation, long ts);

    public native void provideTextureFrame(long nativeHandle, Object sharedContext, int texId, int format, int width, int height, int rotation, long ts, float[] matrix);

    public VideoFrameConsumerImpl(long nativeHandle) {
        this.mCaptureHandle = nativeHandle;
    }

    @Override // io.agora.rtc.mediaio.IVideoFrameConsumer
    public void consumeTextureFrame(int texId, int format, int width, int height, int rotation, long ts, float[] matrix) {
        EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            provideTextureFrame(this.mCaptureHandle, eGLContextEglGetCurrentContext, texId, format, width, height, rotation, ts, matrix);
            return;
        }
        throw new GLException(iEglGetError, "eglError: " + iEglGetError);
    }
}

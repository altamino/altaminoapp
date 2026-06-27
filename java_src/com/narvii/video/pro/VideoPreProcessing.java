package com.narvii.video.pro;

import android.util.Log;

/* loaded from: classes3.dex */
public class VideoPreProcessing {
    private StreamingClient mStreamingClient;

    public interface FrameAvailableListener {
        void onFrameAvailable(int i);
    }

    public interface ProgressCallback {
        void onProcessYUV(byte[] bArr, int i, int i2, int i3);
    }

    public native void capture(int i, ProgressCallback progressCallback);

    public native void doDeregisterPreProcessing();

    public native void doRegisterPreProcessing();

    public native void enablePreProcessing(boolean z);

    public native void setFrameAvailableListener(FrameAvailableListener frameAvailableListener);

    static {
        System.loadLibrary("apm-plugin-video-preprocessing");
    }

    public void setRemoteFrameAvailableListener(FrameAvailableListener frameAvailableListener) {
        Log.d("VideoProcess", "setRemoteFrameAvailableListener  ");
        setFrameAvailableListener(frameAvailableListener);
    }

    public void capFile(int i, ProgressCallback progressCallback) {
        Log.d("VideoProcess", "processing  " + i);
        capture(i, progressCallback);
    }

    public final void registerPreProcessing() {
        StreamingClient streamingClient = this.mStreamingClient;
        if (streamingClient == null) {
            throw new IllegalStateException("should call setStreamingClient first");
        }
        streamingClient.startStreaming();
        doRegisterPreProcessing();
    }

    public final void deregisterPreProcessing() {
        doDeregisterPreProcessing();
        this.mStreamingClient.stopStreaming();
    }

    public void setStreamingClient(StreamingClient streamingClient) {
        this.mStreamingClient = streamingClient;
    }
}

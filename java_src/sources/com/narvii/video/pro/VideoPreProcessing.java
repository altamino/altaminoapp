package com.narvii.video.pro;

import android.util.Log;

/* JADX INFO: loaded from: classes7.dex */
public class VideoPreProcessing {
    private StreamingClient mStreamingClient;

    public interface FrameAvailableListener {
        void onFrameAvailable(int i10);
    }

    public interface ProgressCallback {
        void onProcessYUV(byte[] bArr, int i10, int i11, int i12);
    }

    public native void capture(int i10, ProgressCallback progressCallback);

    public native void doDeregisterPreProcessing();

    public native void doRegisterPreProcessing();

    public native void enablePreProcessing(boolean z6);

    public native void setFrameAvailableListener(FrameAvailableListener frameAvailableListener);

    public void setStreamingClient(StreamingClient streamingClient) {
        this.mStreamingClient = streamingClient;
    }

    static {
        System.loadLibrary("apm-plugin-video-preprocessing-amino");
    }

    public void capFile(int i10, ProgressCallback progressCallback) {
        Log.d("VideoProcess", "processing  " + i10);
        capture(i10, progressCallback);
    }

    public final void registerPreProcessing() {
        StreamingClient streamingClient = this.mStreamingClient;
        if (streamingClient == null) {
            throw new IllegalStateException("should call setStreamingClient first");
        }
        streamingClient.startStreaming();
        doRegisterPreProcessing();
    }

    public void setRemoteFrameAvailableListener(FrameAvailableListener frameAvailableListener) {
        Log.d("VideoProcess", "setRemoteFrameAvailableListener  ");
        setFrameAvailableListener(frameAvailableListener);
    }

    public final void deregisterPreProcessing() {
        doDeregisterPreProcessing();
        this.mStreamingClient.stopStreaming();
    }
}

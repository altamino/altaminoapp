package com.narvii.chat.p2a.encoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;

@TargetApi(18)
/* loaded from: classes2.dex */
public class MediaMuxerWrapper {
    private static final String TAG = "MediaMuxerWrapper";
    private static final boolean VERBOSE = true;
    private final MediaMuxer mMediaMuxer;
    private int mEncoderCount = 2;
    private int mStatredCount = 0;
    private boolean mIsStarted = false;

    public MediaMuxerWrapper(String str) throws IOException {
        this.mMediaMuxer = new MediaMuxer(str, 0);
    }

    synchronized boolean start() {
        Log.v(TAG, "start:");
        this.mStatredCount++;
        if (this.mEncoderCount > 0 && this.mStatredCount == this.mEncoderCount) {
            this.mMediaMuxer.start();
            this.mIsStarted = true;
            notifyAll();
            Log.v(TAG, "MediaMuxer started:");
        }
        return this.mIsStarted;
    }

    synchronized void stop() {
        Log.v(TAG, "stop:mStatredCount=" + this.mStatredCount);
        this.mStatredCount = this.mStatredCount + (-1);
        if (this.mEncoderCount > 0 && this.mStatredCount <= 0) {
            this.mMediaMuxer.release();
            this.mIsStarted = false;
            Log.v(TAG, "MediaMuxer stopped:");
        }
    }

    synchronized int addTrack(MediaFormat mediaFormat) {
        int iAddTrack;
        if (this.mIsStarted) {
            throw new IllegalStateException("muxer already started");
        }
        iAddTrack = this.mMediaMuxer.addTrack(mediaFormat);
        Log.i(TAG, "addTrack:trackNum=" + this.mEncoderCount + ",trackIx=" + iAddTrack + ",format=" + mediaFormat);
        return iAddTrack;
    }

    synchronized void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (this.mStatredCount > 0) {
            this.mMediaMuxer.writeSampleData(i, byteBuffer, bufferInfo);
        }
    }

    synchronized boolean isStarted() {
        return this.mIsStarted;
    }
}

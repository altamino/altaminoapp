package com.narvii.chat.p2a.encoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(18)
public class MediaMuxerWrapper {
    private static final String TAG = "MediaMuxerWrapper";
    private static final boolean VERBOSE = true;
    private final MediaMuxer mMediaMuxer;
    private int mEncoderCount = 2;
    private int mStatredCount = 0;
    private boolean mIsStarted = false;

    synchronized int addTrack(MediaFormat mediaFormat) {
        int iAddTrack;
        if (this.mIsStarted) {
            throw new IllegalStateException("muxer already started");
        }
        iAddTrack = this.mMediaMuxer.addTrack(mediaFormat);
        Log.i(TAG, "addTrack:trackNum=" + this.mEncoderCount + ",trackIx=" + iAddTrack + ",format=" + mediaFormat);
        return iAddTrack;
    }

    synchronized boolean isStarted() {
        return this.mIsStarted;
    }

    synchronized boolean start() {
        try {
            Log.v(TAG, "start:");
            int i10 = this.mStatredCount + 1;
            this.mStatredCount = i10;
            int i11 = this.mEncoderCount;
            if (i11 > 0 && i10 == i11) {
                this.mMediaMuxer.start();
                this.mIsStarted = true;
                notifyAll();
                Log.v(TAG, "MediaMuxer started:");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mIsStarted;
    }

    synchronized void stop() {
        Log.v(TAG, "stop:mStatredCount=" + this.mStatredCount);
        int i10 = this.mStatredCount + (-1);
        this.mStatredCount = i10;
        if (this.mEncoderCount > 0 && i10 <= 0) {
            this.mMediaMuxer.release();
            this.mIsStarted = false;
            Log.v(TAG, "MediaMuxer stopped:");
        }
    }

    synchronized void writeSampleData(int i10, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (this.mStatredCount > 0) {
            this.mMediaMuxer.writeSampleData(i10, byteBuffer, bufferInfo);
        }
    }

    public MediaMuxerWrapper(String str) throws IOException {
        this.mMediaMuxer = new MediaMuxer(str, 0);
    }
}

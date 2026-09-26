package net.protyposis.android.mediaplayer;

import android.media.AudioTrack;
import android.media.MediaFormat;
import android.util.Log;
import androidx.compose.runtime.ComposerKt;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes5.dex */
class AudioPlayback {
    public static long PTS_NOT_SET = Long.MIN_VALUE;
    private static final String TAG = "AudioPlayback";
    private MediaFormat mAudioFormat;
    private AudioThread mAudioThread;
    private AudioTrack mAudioTrack;
    public int mChannelCount;
    private int mFrameSize;
    private long mLastPlaybackHeadPositionUs;
    private long mLastPresentationTimeUs;
    private int mPlaybackBufferSize;
    private long mPresentationTimeOffsetUs;
    private int mSampleRate;
    private byte[] mTransferBuffer;
    private float mVolumeLeft = 1.0f;
    private float mVolumeRight = 1.0f;
    private int mFrameChunkSize = 8192;
    private BufferQueue mBufferQueue = new BufferQueue();
    private int mAudioSessionId = 0;
    private int mAudioStreamType = 3;

    private class AudioThread extends Thread {
        private final Object SYNC;
        private boolean mPaused;

        AudioThread() {
            super(AudioPlayback.TAG);
            this.SYNC = new Object();
            this.mPaused = true;
        }

        public void notifyOfNewBufferInQueue() {
            synchronized (this.SYNC) {
                this.SYNC.notify();
            }
        }

        void setPaused(boolean z6) {
            this.mPaused = z6;
            synchronized (this) {
                notify();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BufferQueue.Item itemTake;
            while (!isInterrupted()) {
                try {
                    synchronized (this) {
                        while (this.mPaused) {
                            try {
                                wait();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    synchronized (this.SYNC) {
                        while (true) {
                            try {
                                itemTake = AudioPlayback.this.mBufferQueue.take();
                                if (itemTake != null) {
                                    break;
                                } else {
                                    this.SYNC.wait();
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                    AudioPlayback.this.writeToPlaybackBuffer(itemTake.buffer, itemTake.presentationTimeUs);
                    AudioPlayback.this.mBufferQueue.put(itemTake);
                } catch (InterruptedException unused) {
                    interrupt();
                }
            }
        }
    }

    private static class BufferQueue {
        private int bufferSize;
        private int mQueuedDataSize;
        private Queue<Item> bufferQueue = new LinkedList();
        private List<Item> emptyBuffers = new ArrayList();

        synchronized void flush() {
            while (true) {
                try {
                    Item itemPoll = this.bufferQueue.poll();
                    if (itemPoll != null) {
                        put(itemPoll);
                    } else {
                        this.mQueuedDataSize = 0;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        synchronized void put(ByteBuffer byteBuffer, long j6) {
            try {
                if (byteBuffer.remaining() > this.bufferSize) {
                    this.emptyBuffers.clear();
                    this.bufferSize = byteBuffer.remaining();
                }
                Item itemRemove = !this.emptyBuffers.isEmpty() ? this.emptyBuffers.remove(0) : new Item(byteBuffer.remaining());
                itemRemove.buffer.limit(byteBuffer.remaining());
                itemRemove.buffer.mark();
                itemRemove.buffer.put(byteBuffer);
                itemRemove.buffer.reset();
                itemRemove.presentationTimeUs = j6;
                this.bufferQueue.add(itemRemove);
                this.mQueuedDataSize += itemRemove.buffer.remaining();
            } catch (Throwable th) {
                throw th;
            }
        }

        synchronized Item take() {
            Item itemPoll;
            itemPoll = this.bufferQueue.poll();
            if (itemPoll != null) {
                this.mQueuedDataSize -= itemPoll.buffer.remaining();
            }
            return itemPoll;
        }

        private static class Item {
            ByteBuffer buffer;
            long presentationTimeUs;

            Item(int i10) {
                this.buffer = ByteBuffer.allocate(i10);
            }
        }

        BufferQueue() {
        }

        synchronized void put(Item item) {
            if (item.buffer.capacity() != this.bufferSize) {
                return;
            }
            item.buffer.rewind();
            this.emptyBuffers.add(item);
        }
    }

    private void stopAndRelease(boolean z6) {
        AudioThread audioThread;
        if (z6 && (audioThread = this.mAudioThread) != null) {
            audioThread.interrupt();
        }
        if (this.mAudioTrack != null) {
            if (isInitialized()) {
                this.mAudioTrack.stop();
            }
            this.mAudioTrack.release();
        }
        this.mAudioTrack = null;
    }

    public int getAudioSessionId() {
        return this.mAudioSessionId;
    }

    public int getAudioStreamType() {
        return this.mAudioStreamType;
    }

    public long getLastPresentationTimeUs() {
        return this.mLastPresentationTimeUs;
    }

    protected void onFrameAvailable(byte[] bArr, int i10, int i11, int i12, int i13) {
    }

    public void pause(boolean z6) {
        if (!isInitialized()) {
            throw new IllegalStateException();
        }
        this.mAudioThread.setPaused(true);
        this.mAudioTrack.pause();
        if (z6) {
            flush();
        }
    }

    public void setAudioStreamType(int i10) {
        this.mAudioStreamType = i10;
    }

    private boolean checkIfReinitializationRequired(MediaFormat mediaFormat) {
        return (this.mAudioFormat.getInteger("channel-count") == mediaFormat.getInteger("channel-count") && this.mAudioFormat.getInteger("sample-rate") == mediaFormat.getInteger("sample-rate") && this.mAudioFormat.getString("mime").equals(mediaFormat.getString("mime"))) ? false : true;
    }

    private long getPlaybackheadPositionUs() {
        return (long) (((((long) this.mAudioTrack.getPlaybackHeadPosition()) & 4294967295L) / ((double) this.mSampleRate)) * 1000000.0d);
    }

    public long getCurrentPresentationTimeUs() {
        long j6 = this.mPresentationTimeOffsetUs;
        long j10 = PTS_NOT_SET;
        if (j6 == j10) {
            return j10;
        }
        long playbackheadPositionUs = getPlaybackheadPositionUs();
        if (playbackheadPositionUs < this.mLastPlaybackHeadPositionUs) {
            Log.d(TAG, "playback head has wrapped");
            this.mPresentationTimeOffsetUs += (long) (((-1.0d) / ((double) this.mSampleRate)) * 1000000.0d);
        }
        this.mLastPlaybackHeadPositionUs = playbackheadPositionUs;
        return this.mPresentationTimeOffsetUs + playbackheadPositionUs;
    }

    public long getPlaybackBufferTimeUs() {
        return (long) ((((double) (this.mPlaybackBufferSize / this.mFrameSize)) / ((double) this.mSampleRate)) * 1000000.0d);
    }

    public long getQueueBufferTimeUs() {
        return (long) ((((double) (this.mBufferQueue.mQueuedDataSize / this.mFrameSize)) / ((double) this.mSampleRate)) * 1000000.0d);
    }

    public void init(MediaFormat mediaFormat) {
        int i10;
        Log.d(TAG, "init");
        boolean z6 = false;
        if (!isInitialized()) {
            AudioThread audioThread = new AudioThread();
            this.mAudioThread = audioThread;
            audioThread.setPaused(true);
            this.mAudioThread.start();
        } else {
            if (!checkIfReinitializationRequired(mediaFormat)) {
                this.mAudioFormat = mediaFormat;
                return;
            }
            boolean zIsPlaying = isPlaying();
            pause();
            stopAndRelease(false);
            z6 = zIsPlaying;
        }
        this.mAudioFormat = mediaFormat;
        int integer = mediaFormat.getInteger("channel-count");
        this.mChannelCount = integer;
        this.mFrameSize = integer * 2;
        this.mSampleRate = mediaFormat.getInteger("sample-rate");
        int i11 = this.mChannelCount;
        int i12 = 4;
        if (i11 == 1) {
            i10 = i12;
        } else {
            if (i11 == 2) {
                i12 = 12;
            } else if (i11 == 4) {
                i12 = ComposerKt.providerMapsKey;
            } else if (i11 == 6) {
                i12 = 252;
            } else if (i11 != 8) {
                i10 = 1;
            } else {
                i12 = 1020;
            }
            i10 = i12;
        }
        this.mPlaybackBufferSize = this.mFrameChunkSize * i11;
        AudioTrack audioTrack = new AudioTrack(this.mAudioStreamType, this.mSampleRate, i10, 2, this.mPlaybackBufferSize, 1, this.mAudioSessionId);
        this.mAudioTrack = audioTrack;
        if (audioTrack.getState() != 1) {
            stopAndRelease();
            throw new IllegalStateException("audio track init failed");
        }
        this.mAudioSessionId = this.mAudioTrack.getAudioSessionId();
        this.mAudioStreamType = this.mAudioTrack.getStreamType();
        setStereoVolume(this.mVolumeLeft, this.mVolumeRight);
        this.mPresentationTimeOffsetUs = PTS_NOT_SET;
        if (z6) {
            play();
        }
    }

    public boolean isInitialized() {
        AudioTrack audioTrack = this.mAudioTrack;
        return audioTrack != null && audioTrack.getState() == 1;
    }

    public boolean isPlaying() {
        return this.mAudioTrack.getPlayState() == 3;
    }

    public void setStereoVolume(float f, float f6) {
        this.mVolumeLeft = f;
        this.mVolumeRight = f6;
        AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            audioTrack.setStereoVolume(f, f6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeToPlaybackBuffer(ByteBuffer byteBuffer, long j6) {
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = this.mTransferBuffer;
        if (bArr == null || bArr.length < iRemaining) {
            this.mTransferBuffer = new byte[iRemaining];
        }
        byteBuffer.get(this.mTransferBuffer, 0, iRemaining);
        this.mLastPresentationTimeUs = j6;
        onFrameAvailable(this.mTransferBuffer, 0, iRemaining, this.mSampleRate, this.mChannelCount);
        try {
            AudioTrack audioTrack = this.mAudioTrack;
            if (audioTrack != null) {
                audioTrack.write(this.mTransferBuffer, 0, iRemaining);
            }
        } catch (Exception unused) {
        }
    }

    public void flush() {
        if (isInitialized()) {
            boolean zIsPlaying = isPlaying();
            if (zIsPlaying) {
                this.mAudioTrack.pause();
            }
            this.mAudioTrack.flush();
            this.mBufferQueue.flush();
            this.mPresentationTimeOffsetUs = PTS_NOT_SET;
            if (zIsPlaying) {
                this.mAudioTrack.play();
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    public void play() {
        if (isInitialized()) {
            this.mAudioTrack.play();
            this.mAudioThread.setPaused(false);
            return;
        }
        throw new IllegalStateException();
    }

    public void setAudioSessionId(int i10) {
        if (!isInitialized()) {
            this.mAudioSessionId = i10;
            return;
        }
        throw new IllegalStateException("cannot set session id on an initialized audio track");
    }

    public void setPlaybackSpeed(float f) {
        if (isInitialized()) {
            this.mAudioTrack.setPlaybackRate((int) (this.mSampleRate * f));
            return;
        }
        throw new IllegalStateException();
    }

    public void setVolume(float f) {
        setStereoVolume(f, f);
    }

    public void write(ByteBuffer byteBuffer, long j6) {
        int iRemaining = byteBuffer.remaining();
        if (this.mFrameChunkSize < iRemaining) {
            Log.d(TAG, "incoming frame chunk size increased to " + iRemaining);
            this.mFrameChunkSize = iRemaining;
            init(this.mAudioFormat);
        }
        if (this.mPresentationTimeOffsetUs == PTS_NOT_SET) {
            this.mPresentationTimeOffsetUs = j6;
            this.mLastPlaybackHeadPositionUs = 0L;
            long playbackheadPositionUs = getPlaybackheadPositionUs();
            if (playbackheadPositionUs > 0) {
                this.mPresentationTimeOffsetUs -= playbackheadPositionUs;
                Log.d(TAG, "playback head not reset");
            }
        }
        this.mBufferQueue.put(byteBuffer, j6);
        this.mAudioThread.notifyOfNewBufferInQueue();
    }

    public void stopAndRelease() {
        stopAndRelease(true);
    }

    public void pause() {
        pause(true);
    }
}

package net.protyposis.android.mediaplayer;

import android.media.AudioTrack;
import android.media.MediaFormat;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes4.dex */
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

    protected void onFrameAvailable(byte[] bArr, int i, int i2, int i3, int i4) {
    }

    public void init(MediaFormat mediaFormat) throws IllegalStateException {
        boolean zIsPlaying;
        Log.d(TAG, "init");
        if (isInitialized()) {
            if (!checkIfReinitializationRequired(mediaFormat)) {
                this.mAudioFormat = mediaFormat;
                return;
            } else {
                zIsPlaying = isPlaying();
                pause();
                stopAndRelease(false);
            }
        } else {
            this.mAudioThread = new AudioThread();
            this.mAudioThread.setPaused(true);
            this.mAudioThread.start();
            zIsPlaying = false;
        }
        this.mAudioFormat = mediaFormat;
        this.mChannelCount = mediaFormat.getInteger("channel-count");
        this.mFrameSize = this.mChannelCount * 2;
        this.mSampleRate = mediaFormat.getInteger("sample-rate");
        int i = this.mChannelCount;
        int i2 = i != 1 ? i != 2 ? i != 4 ? i != 6 ? i != 8 ? 1 : 1020 : 252 : 204 : 12 : 4;
        this.mPlaybackBufferSize = this.mFrameChunkSize * this.mChannelCount;
        this.mAudioTrack = new AudioTrack(this.mAudioStreamType, this.mSampleRate, i2, 2, this.mPlaybackBufferSize, 1, this.mAudioSessionId);
        if (this.mAudioTrack.getState() != 1) {
            stopAndRelease();
            throw new IllegalStateException("audio track init failed");
        }
        this.mAudioSessionId = this.mAudioTrack.getAudioSessionId();
        this.mAudioStreamType = this.mAudioTrack.getStreamType();
        setStereoVolume(this.mVolumeLeft, this.mVolumeRight);
        this.mPresentationTimeOffsetUs = PTS_NOT_SET;
        if (zIsPlaying) {
            play();
        }
    }

    private boolean checkIfReinitializationRequired(MediaFormat mediaFormat) {
        return (this.mAudioFormat.getInteger("channel-count") == mediaFormat.getInteger("channel-count") && this.mAudioFormat.getInteger("sample-rate") == mediaFormat.getInteger("sample-rate") && this.mAudioFormat.getString(IMediaFormat.KEY_MIME).equals(mediaFormat.getString(IMediaFormat.KEY_MIME))) ? false : true;
    }

    public void setAudioSessionId(int i) {
        if (isInitialized()) {
            throw new IllegalStateException("cannot set session id on an initialized audio track");
        }
        this.mAudioSessionId = i;
    }

    public int getAudioSessionId() {
        return this.mAudioSessionId;
    }

    public void setAudioStreamType(int i) {
        this.mAudioStreamType = i;
    }

    public int getAudioStreamType() {
        return this.mAudioStreamType;
    }

    public boolean isInitialized() {
        AudioTrack audioTrack = this.mAudioTrack;
        return audioTrack != null && audioTrack.getState() == 1;
    }

    public void play() throws IllegalStateException {
        if (isInitialized()) {
            this.mAudioTrack.play();
            this.mAudioThread.setPaused(false);
            return;
        }
        throw new IllegalStateException();
    }

    public void pause(boolean z) throws IllegalStateException {
        if (isInitialized()) {
            this.mAudioThread.setPaused(true);
            this.mAudioTrack.pause();
            if (z) {
                flush();
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    public void pause() throws IllegalStateException {
        pause(true);
    }

    public void flush() throws IllegalStateException {
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

    public void write(ByteBuffer byteBuffer, long j) throws IllegalStateException {
        int iRemaining = byteBuffer.remaining();
        if (this.mFrameChunkSize < iRemaining) {
            Log.d(TAG, "incoming frame chunk size increased to " + iRemaining);
            this.mFrameChunkSize = iRemaining;
            init(this.mAudioFormat);
        }
        if (this.mPresentationTimeOffsetUs == PTS_NOT_SET) {
            this.mPresentationTimeOffsetUs = j;
            this.mLastPlaybackHeadPositionUs = 0L;
            long playbackheadPositionUs = getPlaybackheadPositionUs();
            if (playbackheadPositionUs > 0) {
                this.mPresentationTimeOffsetUs -= playbackheadPositionUs;
                Log.d(TAG, "playback head not reset");
            }
        }
        this.mBufferQueue.put(byteBuffer, j);
        this.mAudioThread.notifyOfNewBufferInQueue();
    }

    private void stopAndRelease(boolean z) throws IllegalStateException {
        AudioThread audioThread;
        if (z && (audioThread = this.mAudioThread) != null) {
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

    public void stopAndRelease() throws IllegalStateException {
        stopAndRelease(true);
    }

    public long getQueueBufferTimeUs() {
        double d = this.mBufferQueue.mQueuedDataSize / this.mFrameSize;
        double d2 = this.mSampleRate;
        Double.isNaN(d);
        Double.isNaN(d2);
        return (long) ((d / d2) * 1000000.0d);
    }

    public long getPlaybackBufferTimeUs() {
        double d = this.mPlaybackBufferSize / this.mFrameSize;
        double d2 = this.mSampleRate;
        Double.isNaN(d);
        Double.isNaN(d2);
        return (long) ((d / d2) * 1000000.0d);
    }

    private long getPlaybackheadPositionUs() {
        double playbackHeadPosition = this.mAudioTrack.getPlaybackHeadPosition() & 4294967295L;
        double d = this.mSampleRate;
        Double.isNaN(playbackHeadPosition);
        Double.isNaN(d);
        return (long) ((playbackHeadPosition / d) * 1000000.0d);
    }

    public long getCurrentPresentationTimeUs() {
        long j = this.mPresentationTimeOffsetUs;
        long j2 = PTS_NOT_SET;
        if (j == j2) {
            return j2;
        }
        long playbackheadPositionUs = getPlaybackheadPositionUs();
        if (playbackheadPositionUs < this.mLastPlaybackHeadPositionUs) {
            Log.d(TAG, "playback head has wrapped");
            long j3 = this.mPresentationTimeOffsetUs;
            double d = this.mSampleRate;
            Double.isNaN(d);
            this.mPresentationTimeOffsetUs = j3 + ((long) (((-1.0d) / d) * 1000000.0d));
        }
        this.mLastPlaybackHeadPositionUs = playbackheadPositionUs;
        return this.mPresentationTimeOffsetUs + playbackheadPositionUs;
    }

    public void setPlaybackSpeed(float f) {
        if (isInitialized()) {
            this.mAudioTrack.setPlaybackRate((int) (this.mSampleRate * f));
            return;
        }
        throw new IllegalStateException();
    }

    public boolean isPlaying() {
        return this.mAudioTrack.getPlayState() == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeToPlaybackBuffer(ByteBuffer byteBuffer, long j) {
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = this.mTransferBuffer;
        if (bArr == null || bArr.length < iRemaining) {
            this.mTransferBuffer = new byte[iRemaining];
        }
        byteBuffer.get(this.mTransferBuffer, 0, iRemaining);
        this.mLastPresentationTimeUs = j;
        onFrameAvailable(this.mTransferBuffer, 0, iRemaining, this.mSampleRate, this.mChannelCount);
        try {
            if (this.mAudioTrack != null) {
                this.mAudioTrack.write(this.mTransferBuffer, 0, iRemaining);
            }
        } catch (Exception unused) {
        }
    }

    public void setStereoVolume(float f, float f2) {
        this.mVolumeLeft = f;
        this.mVolumeRight = f2;
        AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            audioTrack.setStereoVolume(f, f2);
        }
    }

    private class AudioThread extends Thread {
        private final Object SYNC;
        private boolean mPaused;

        AudioThread() {
            super(AudioPlayback.TAG);
            this.SYNC = new Object();
            this.mPaused = true;
        }

        void setPaused(boolean z) {
            this.mPaused = z;
            synchronized (this) {
                notify();
            }
        }

        public void notifyOfNewBufferInQueue() {
            synchronized (this.SYNC) {
                this.SYNC.notify();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BufferQueue.Item itemTake;
            while (!isInterrupted()) {
                try {
                    synchronized (this) {
                        while (this.mPaused) {
                            wait();
                        }
                    }
                    synchronized (this.SYNC) {
                        while (true) {
                            itemTake = AudioPlayback.this.mBufferQueue.take();
                            if (itemTake != null) {
                                break;
                            } else {
                                this.SYNC.wait();
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

        private static class Item {
            ByteBuffer buffer;
            long presentationTimeUs;

            Item(int i) {
                this.buffer = ByteBuffer.allocate(i);
            }
        }

        BufferQueue() {
        }

        synchronized void put(ByteBuffer byteBuffer, long j) {
            Item item;
            if (byteBuffer.remaining() > this.bufferSize) {
                this.emptyBuffers.clear();
                this.bufferSize = byteBuffer.remaining();
            }
            if (!this.emptyBuffers.isEmpty()) {
                item = this.emptyBuffers.remove(0);
            } else {
                item = new Item(byteBuffer.remaining());
            }
            item.buffer.limit(byteBuffer.remaining());
            item.buffer.mark();
            item.buffer.put(byteBuffer);
            item.buffer.reset();
            item.presentationTimeUs = j;
            this.bufferQueue.add(item);
            this.mQueuedDataSize += item.buffer.remaining();
        }

        synchronized Item take() {
            Item itemPoll;
            itemPoll = this.bufferQueue.poll();
            if (itemPoll != null) {
                this.mQueuedDataSize -= itemPoll.buffer.remaining();
            }
            return itemPoll;
        }

        synchronized void put(Item item) {
            if (item.buffer.capacity() != this.bufferSize) {
                return;
            }
            item.buffer.rewind();
            this.emptyBuffers.add(item);
        }

        synchronized void flush() {
            while (true) {
                Item itemPoll = this.bufferQueue.poll();
                if (itemPoll != null) {
                    put(itemPoll);
                } else {
                    this.mQueuedDataSize = 0;
                }
            }
        }
    }
}

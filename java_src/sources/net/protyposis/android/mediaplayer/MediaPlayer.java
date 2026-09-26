package net.protyposis.android.mediaplayer;

import android.content.Context;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import androidx.constraintlayout.motion.widget.Key;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MediaPlayer {
    private static final long BUFFER_LOW_WATER_MARK_US = 2000000;
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_ERROR = 100;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    private static final int MEDIA_INFO = 200;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    private static final int MEDIA_PLAYBACK_COMPLETE = 2;
    private static final int MEDIA_PREPARED = 1;
    private static final int MEDIA_SEEK_COMPLETE = 4;
    private static final int MEDIA_SET_VIDEO_SIZE = 5;
    private static final String TAG = "MediaPlayer";
    public static final int TRACK_INDEX_AUTO = -2;
    public static final int TRACK_INDEX_NONE = -1;
    AudioFrameAvailableListener audioFrameAvailableListener;
    private View keepScreenOnView;
    private MediaExtractor mAudioExtractor;
    private MediaFormat mAudioFormat;
    private long mAudioMinPTS;
    private AudioPlayback mAudioPlayback;
    private int mAudioTrackIndex;
    private int mBufferPercentage;
    private boolean mBuffering;
    private long mCurrentPosition;
    private Decoders mDecoders;
    private boolean mLooping;
    private OnBufferingUpdateListener mOnBufferingUpdateListener;
    private OnCompletionListener mOnCompletionListener;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private OnPreparedListener mOnPreparedListener;
    private OnSeekCompleteListener mOnSeekCompleteListener;
    private OnSeekListener mOnSeekListener;
    private OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private Object mReleaseSyncLock;
    private boolean mScreenOnWhilePlaying;
    private long mSeekTargetTime;
    private boolean mSeeking;
    private boolean mStayAwake;
    private Surface mSurface;
    private SurfaceHolder mSurfaceHolder;
    private MediaExtractor mVideoExtractor;
    private MediaFormat mVideoFormat;
    private long mVideoMinPTS;
    private int mVideoTrackIndex;
    private SeekMode mSeekMode = SeekMode.FAST_TO_PREVIOUS_SYNC;
    private float mVolumeLeft = 1.0f;
    private float mVolumeRight = 1.0f;
    private PowerManager.WakeLock mWakeLock = null;
    private PlaybackThread mPlaybackThread = null;
    private EventHandler mEventHandler = new EventHandler();
    private TimeBase mTimeBase = new TimeBase();
    private VideoRenderTimingMode mVideoRenderTimingMode = VideoRenderTimingMode.AUTO;
    private volatile State mCurrentState = State.IDLE;
    private int mAudioSessionId = 0;
    private int mAudioStreamType = 3;

    public interface AudioFrameAvailableListener {
        void onAudioFrameAvailable(byte[] bArr, int i10, int i11, int i12, int i13);
    }

    private class EventHandler extends Handler {
        private EventHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                Log.d(MediaPlayer.TAG, "onPrepared");
                if (MediaPlayer.this.mOnPreparedListener != null) {
                    MediaPlayer.this.mOnPreparedListener.onPrepared(MediaPlayer.this);
                    return;
                }
                return;
            }
            if (i10 == 2) {
                Log.d(MediaPlayer.TAG, "onPlaybackComplete");
                if (MediaPlayer.this.mOnCompletionListener != null) {
                    MediaPlayer.this.mOnCompletionListener.onCompletion(MediaPlayer.this);
                }
                MediaPlayer.this.stayAwake(false);
                return;
            }
            if (i10 == 3) {
                if (MediaPlayer.this.mOnBufferingUpdateListener != null) {
                    MediaPlayer.this.mOnBufferingUpdateListener.onBufferingUpdate(MediaPlayer.this, message.arg1);
                    return;
                }
                return;
            }
            if (i10 == 4) {
                Log.d(MediaPlayer.TAG, "onSeekComplete");
                if (MediaPlayer.this.mOnSeekCompleteListener != null) {
                    MediaPlayer.this.mOnSeekCompleteListener.onSeekComplete(MediaPlayer.this);
                    return;
                }
                return;
            }
            if (i10 == 5) {
                Log.d(MediaPlayer.TAG, "onVideoSizeChanged");
                if (MediaPlayer.this.mOnVideoSizeChangedListener != null) {
                    MediaPlayer.this.mOnVideoSizeChangedListener.onVideoSizeChanged(MediaPlayer.this, message.arg1, message.arg2);
                    return;
                }
                return;
            }
            if (i10 != 100) {
                if (i10 != 200) {
                    return;
                }
                Log.d(MediaPlayer.TAG, "onInfo");
                if (MediaPlayer.this.mOnInfoListener != null) {
                    MediaPlayer.this.mOnInfoListener.onInfo(MediaPlayer.this, message.arg1, message.arg2);
                    return;
                }
                return;
            }
            Log.e(MediaPlayer.TAG, "Error (" + message.arg1 + "," + message.arg2 + ")");
            boolean zOnError = MediaPlayer.this.mOnErrorListener != null ? MediaPlayer.this.mOnErrorListener.onError(MediaPlayer.this, message.arg1, message.arg2) : false;
            if (MediaPlayer.this.mOnCompletionListener != null && !zOnError) {
                MediaPlayer.this.mOnCompletionListener.onCompletion(MediaPlayer.this);
            }
            MediaPlayer.this.stayAwake(false);
        }
    }

    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i10);
    }

    public interface OnCompletionListener {
        void onCompletion(MediaPlayer mediaPlayer);
    }

    public interface OnErrorListener {
        boolean onError(MediaPlayer mediaPlayer, int i10, int i11);
    }

    public interface OnInfoListener {
        boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11);
    }

    public interface OnPreparedListener {
        void onPrepared(MediaPlayer mediaPlayer);
    }

    public interface OnSeekCompleteListener {
        void onSeekComplete(MediaPlayer mediaPlayer);
    }

    public interface OnSeekListener {
        void onSeek(MediaPlayer mediaPlayer);
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11);
    }

    private class PlaybackThread extends HandlerThread implements Handler.Callback {
        static final int DECODER_SET_SURFACE = 100;
        private static final int PLAYBACK_LOOP = 4;
        private static final int PLAYBACK_PAUSE = 3;
        private static final int PLAYBACK_PAUSE_AUDIO = 7;
        private static final int PLAYBACK_PLAY = 2;
        private static final int PLAYBACK_PREPARE = 1;
        private static final int PLAYBACK_RELEASE = 6;
        private static final int PLAYBACK_SEEK = 5;
        private boolean mAVLocked;
        private Handler mHandler;
        private long mLastBufferingUpdateTime;
        private volatile boolean mPaused;
        private double mPlaybackSpeed;
        private boolean mReleasing;
        private boolean mRenderModeApi21;
        private boolean mRenderingStarted;
        private MediaCodecDecoder.FrameInfo mVideoFrameInfo;

        private void pauseInternal(boolean z6) {
            this.mHandler.removeMessages(4);
            if (MediaPlayer.this.mAudioPlayback != null) {
                if (z6) {
                    this.mHandler.sendEmptyMessageDelayed(7, ((MediaPlayer.this.mAudioPlayback.getQueueBufferTimeUs() + MediaPlayer.this.mAudioPlayback.getPlaybackBufferTimeUs()) / 1000) + 1);
                } else {
                    MediaPlayer.this.mAudioPlayback.pause(false);
                }
            }
        }

        private void prepareInternal() {
            try {
                MediaPlayer.this.prepareInternal();
                MediaPlayer.this.mCurrentState = State.PREPARED;
                MediaPlayer.this.mEventHandler.sendEmptyMessage(1);
            } catch (IOException e) {
                Log.e(MediaPlayer.TAG, "prepareAsync() failed: cannot decode stream(s)", e);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, MediaPlayer.MEDIA_ERROR_IO));
                releaseInternal();
            } catch (IllegalArgumentException e2) {
                Log.e(MediaPlayer.TAG, "prepareAsync() failed: surface might be gone", e2);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
            } catch (IllegalStateException e6) {
                Log.e(MediaPlayer.TAG, "prepareAsync() failed: something is in a wrong state", e6);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            try {
                if (this.mReleasing) {
                    releaseInternal();
                    return true;
                }
                int i10 = message.what;
                if (i10 == 100) {
                    setVideoSurface((Surface) message.obj);
                    return true;
                }
                switch (i10) {
                    case 1:
                        prepareInternal();
                        return true;
                    case 2:
                        playInternal();
                        return true;
                    case 3:
                        pauseInternal();
                        return true;
                    case 4:
                        loopInternal();
                        return true;
                    case 5:
                        seekInternal(((Long) message.obj).longValue());
                        return true;
                    case 6:
                        releaseInternal();
                        return true;
                    case 7:
                        pauseInternalAudio();
                        return true;
                    default:
                        Log.d(MediaPlayer.TAG, "unknown/invalid message");
                        return false;
                }
            } catch (IOException e) {
                Log.e(MediaPlayer.TAG, "decoder error, codec can not be created", e);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, MediaPlayer.MEDIA_ERROR_IO));
                releaseInternal();
                return true;
            } catch (IllegalStateException e2) {
                Log.e(MediaPlayer.TAG, "decoder error, too many instances?", e2);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
                return true;
            } catch (InterruptedException e6) {
                Log.d(MediaPlayer.TAG, "decoder interrupted", e6);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
                return true;
            } catch (Exception e7) {
                Log.e(MediaPlayer.TAG, "decoder exception", e7);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
                return true;
            }
        }

        public boolean isPaused() {
            return this.mPaused;
        }

        public void pause() {
            this.mPaused = true;
            this.mHandler.sendEmptyMessage(3);
        }

        public void play() {
            this.mPaused = false;
            this.mHandler.sendEmptyMessage(2);
        }

        @Override // java.lang.Thread
        public synchronized void start() {
            super.start();
            this.mHandler = new Handler(getLooper(), this);
            Log.d(MediaPlayer.TAG, "PlaybackThread started");
        }

        public PlaybackThread() {
            super(MediaPlayer.TAG + "#" + PlaybackThread.class.getSimpleName(), -16);
            this.mPaused = true;
            this.mReleasing = false;
            this.mRenderModeApi21 = MediaPlayer.this.mVideoRenderTimingMode.isRenderModeApi21();
            this.mRenderingStarted = true;
            this.mAVLocked = false;
            this.mLastBufferingUpdateTime = 0L;
        }

        private void loopInternal() throws InterruptedException, IOException {
            MediaCodecDecoder.FrameInfo frameInfo;
            long cachedDuration = MediaPlayer.this.mDecoders.getCachedDuration();
            if (cachedDuration != -1) {
                updateBufferPercentage((int) ((100.0d / ((double) (MediaPlayer.this.getDuration() * 1000))) * (MediaPlayer.this.mCurrentPosition + cachedDuration)));
            }
            if (MediaPlayer.this.mBuffering && cachedDuration > -1 && cachedDuration < MediaPlayer.BUFFER_LOW_WATER_MARK_US && !MediaPlayer.this.mDecoders.hasCacheReachedEndOfStream()) {
                this.mHandler.sendEmptyMessageDelayed(4, 100L);
                return;
            }
            if (MediaPlayer.this.mDecoders.getVideoDecoder() != null && this.mVideoFrameInfo == null) {
                MediaCodecDecoder.FrameInfo frameInfoDecodeFrame = MediaPlayer.this.mDecoders.decodeFrame(false);
                this.mVideoFrameInfo = frameInfoDecodeFrame;
                if (frameInfoDecodeFrame == null && !MediaPlayer.this.mDecoders.isEOS()) {
                    this.mHandler.sendEmptyMessageDelayed(4, 10L);
                    return;
                }
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (MediaPlayer.this.mBuffering) {
                MediaPlayer.this.mBuffering = false;
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(200, 702, 0));
                MediaPlayer.this.mTimeBase.startAt(MediaPlayer.this.mDecoders.getCurrentDecodingPTS());
            }
            if (this.mVideoFrameInfo != null && MediaPlayer.this.mTimeBase.getOffsetFrom(this.mVideoFrameInfo.presentationTimeUs) > 60000) {
                this.mHandler.sendEmptyMessageDelayed(4, 50L);
                return;
            }
            MediaPlayer mediaPlayer = MediaPlayer.this;
            mediaPlayer.mCurrentPosition = mediaPlayer.mDecoders.getCurrentDecodingPTS();
            if (MediaPlayer.this.mDecoders.getVideoDecoder() != null && (frameInfo = this.mVideoFrameInfo) != null) {
                renderVideoFrame(frameInfo);
                this.mVideoFrameInfo = null;
                if (this.mRenderingStarted) {
                    this.mRenderingStarted = false;
                    MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(200, 3, 0));
                }
            }
            if (MediaPlayer.this.mAudioPlayback != null) {
                if (this.mPlaybackSpeed != MediaPlayer.this.mTimeBase.getSpeed()) {
                    this.mPlaybackSpeed = MediaPlayer.this.mTimeBase.getSpeed();
                    MediaPlayer.this.mAudioPlayback.setPlaybackSpeed((float) this.mPlaybackSpeed);
                }
                long currentPresentationTimeUs = MediaPlayer.this.mAudioPlayback.getCurrentPresentationTimeUs();
                if (currentPresentationTimeUs > AudioPlayback.PTS_NOT_SET && !MediaPlayer.this.mDecoders.suspectAudioEOS()) {
                    MediaPlayer.this.mTimeBase.startAt(currentPresentationTimeUs);
                }
            }
            if (MediaPlayer.this.mDecoders.isEOS()) {
                MediaPlayer.this.mEventHandler.sendEmptyMessage(2);
                if (MediaPlayer.this.mLooping) {
                    if (MediaPlayer.this.mAudioPlayback != null) {
                        MediaPlayer.this.mAudioPlayback.flush();
                    }
                    MediaPlayer.this.mDecoders.seekTo(SeekMode.FAST_TO_PREVIOUS_SYNC, 0L);
                    MediaPlayer.this.mDecoders.renderFrames();
                } else {
                    this.mPaused = true;
                    pauseInternal(true);
                }
            } else {
                this.mVideoFrameInfo = MediaPlayer.this.mDecoders.decodeFrame(false);
            }
            if (this.mPaused) {
                return;
            }
            long speed = ((long) (10 / MediaPlayer.this.mTimeBase.getSpeed())) - (SystemClock.elapsedRealtime() - jElapsedRealtime);
            if (speed > 0) {
                this.mHandler.sendEmptyMessageDelayed(4, speed);
            } else {
                this.mHandler.sendEmptyMessage(4);
            }
        }

        private void pauseInternalAudio() {
            if (MediaPlayer.this.mAudioPlayback != null) {
                MediaPlayer.this.mAudioPlayback.pause();
            }
        }

        private void playInternal() throws InterruptedException, IOException {
            if (MediaPlayer.this.mDecoders.isEOS()) {
                MediaPlayer.this.mCurrentPosition = 0L;
                MediaPlayer.this.mDecoders.seekTo(SeekMode.FAST_TO_PREVIOUS_SYNC, 0L);
            }
            MediaPlayer.this.mTimeBase.startAt(MediaPlayer.this.mDecoders.getCurrentDecodingPTS());
            if (MediaPlayer.this.mAudioPlayback != null) {
                this.mHandler.removeMessages(7);
                MediaPlayer.this.mAudioPlayback.play();
            }
            this.mPlaybackSpeed = MediaPlayer.this.mTimeBase.getSpeed();
            if (MediaPlayer.this.mAudioPlayback != null) {
                MediaPlayer.this.mAudioPlayback.setPlaybackSpeed((float) this.mPlaybackSpeed);
            }
            this.mHandler.removeMessages(4);
            loopInternal();
        }

        private void renderVideoFrame(MediaCodecDecoder.FrameInfo frameInfo) throws InterruptedException {
            if (frameInfo.endOfStream) {
                MediaPlayer.this.mDecoders.getVideoDecoder().dismissFrame(frameInfo);
                return;
            }
            long offsetFrom = MediaPlayer.this.mTimeBase.getOffsetFrom(frameInfo.presentationTimeUs);
            if (offsetFrom < -1000) {
                Log.d(MediaPlayer.TAG, "LAGGING " + offsetFrom);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(200, 700, 0));
            }
            if (frameInfo.representationChanged) {
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(5, MediaPlayer.this.mDecoders.getVideoDecoder().getVideoWidth(), MediaPlayer.this.mDecoders.getVideoDecoder().getVideoHeight()));
            }
            if (!this.mRenderModeApi21 && offsetFrom > 5000) {
                Thread.sleep(offsetFrom / 1000);
            }
            MediaPlayer.this.mDecoders.getVideoDecoder().renderFrame(frameInfo, offsetFrom);
        }

        private void seekInternal(long j6) throws InterruptedException, IOException {
            if (this.mVideoFrameInfo != null) {
                MediaPlayer.this.mDecoders.getVideoDecoder().dismissFrame(this.mVideoFrameInfo);
                this.mVideoFrameInfo = null;
            }
            if (MediaPlayer.this.mAudioPlayback != null) {
                MediaPlayer.this.mAudioPlayback.pause(true);
            }
            MediaPlayer.this.mDecoders.seekTo(MediaPlayer.this.mSeekMode, j6);
            MediaPlayer.this.mTimeBase.startAt(MediaPlayer.this.mDecoders.getCurrentDecodingPTS());
            boolean zHasMessages = this.mHandler.hasMessages(5);
            if (zHasMessages) {
                MediaPlayer.this.mDecoders.dismissFrames();
            } else {
                MediaPlayer.this.mDecoders.renderFrames();
            }
            if (zHasMessages) {
                return;
            }
            MediaPlayer mediaPlayer = MediaPlayer.this;
            mediaPlayer.mCurrentPosition = mediaPlayer.mDecoders.getCurrentDecodingPTS();
            MediaPlayer.this.mSeeking = false;
            this.mAVLocked = false;
            MediaPlayer.this.mEventHandler.sendEmptyMessage(4);
            if (this.mPaused) {
                return;
            }
            playInternal();
        }

        private void setVideoSurface(Surface surface) throws IOException {
            if (MediaPlayer.this.mDecoders == null || MediaPlayer.this.mDecoders.getVideoDecoder() == null) {
                return;
            }
            if (this.mVideoFrameInfo != null) {
                MediaPlayer.this.mDecoders.getVideoDecoder().dismissFrame(this.mVideoFrameInfo);
                this.mVideoFrameInfo = null;
            }
            MediaPlayer.this.mDecoders.getVideoDecoder().updateSurface(surface);
        }

        public void prepare() {
            this.mHandler.sendEmptyMessage(1);
        }

        public void seekTo(long j6) {
            this.mHandler.removeMessages(5);
            this.mHandler.obtainMessage(5, Long.valueOf(j6)).sendToTarget();
        }

        public void setSurface(Surface surface) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(100, surface));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean release() {
            if (!isAlive()) {
                return false;
            }
            this.mPaused = true;
            this.mReleasing = true;
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.sendEmptyMessage(6);
            }
            return true;
        }

        private void releaseInternal() {
            interrupt();
            quit();
            if (MediaPlayer.this.mDecoders != null && this.mVideoFrameInfo != null) {
                try {
                    MediaPlayer.this.mDecoders.getVideoDecoder().releaseFrame(this.mVideoFrameInfo);
                } catch (Exception unused) {
                }
                this.mVideoFrameInfo = null;
            }
            if (MediaPlayer.this.mDecoders != null) {
                MediaPlayer.this.mDecoders.release();
            }
            if (MediaPlayer.this.mAudioPlayback != null) {
                MediaPlayer.this.mAudioPlayback.stopAndRelease();
            }
            MediaPlayer.this.releaseMediaExtractors();
            Log.d(MediaPlayer.TAG, "PlaybackThread destroyed");
            if (MediaPlayer.this.mReleaseSyncLock != null) {
                synchronized (MediaPlayer.this.mReleaseSyncLock) {
                    MediaPlayer.this.mReleaseSyncLock.notify();
                    MediaPlayer.this.mReleaseSyncLock = null;
                }
            }
        }

        private void updateBufferPercentage(int i10) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - this.mLastBufferingUpdateTime > 1000 && i10 != MediaPlayer.this.mBufferPercentage) {
                this.mLastBufferingUpdateTime = jElapsedRealtime;
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(3, i10, 0));
            }
            MediaPlayer.this.mBufferPercentage = i10;
        }

        private void pauseInternal() {
            pauseInternal(false);
        }
    }

    private enum State {
        IDLE,
        INITIALIZED,
        PREPARING,
        PREPARED,
        STOPPED,
        RELEASING,
        RELEASED,
        ERROR
    }

    enum VideoRenderTimingMode {
        AUTO,
        SLEEP,
        SURFACEVIEW_TIMESTAMP_API21;

        public boolean isRenderModeApi21() {
            int i10 = AnonymousClass3.$SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode[ordinal()];
            return i10 == 1 || i10 == 2;
        }
    }

    private int getTrackIndex(MediaExtractor mediaExtractor, String str) {
        if (mediaExtractor == null) {
            return -1;
        }
        for (int i10 = 0; i10 < mediaExtractor.getTrackCount(); i10++) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(i10);
            Log.d(TAG, trackFormat.toString());
            if (trackFormat.getString("mime").startsWith(str)) {
                return i10;
            }
        }
        return -1;
    }

    public int getAudioSessionId() {
        return this.mAudioSessionId;
    }

    public int getAudioStreamType() {
        return this.mAudioStreamType;
    }

    public int getBufferPercentage() {
        return this.mBufferPercentage;
    }

    public SeekMode getSeekMode() {
        return this.mSeekMode;
    }

    public boolean isLooping() {
        return this.mLooping;
    }

    public void seekTo(long j6) {
        if (this.mCurrentState.ordinal() < State.PREPARED.ordinal() && this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            throw new IllegalStateException();
        }
        Log.d(TAG, "seekTo " + j6 + " with video sample offset " + this.mVideoMinPTS);
        OnSeekListener onSeekListener = this.mOnSeekListener;
        if (onSeekListener != null) {
            onSeekListener.onSeek(this);
        }
        this.mSeeking = true;
        long j10 = this.mVideoMinPTS + j6;
        this.mSeekTargetTime = j10;
        this.mPlaybackThread.seekTo(j10);
    }

    public void setAudioFrameAvailableListener(AudioFrameAvailableListener audioFrameAvailableListener) {
        this.audioFrameAvailableListener = audioFrameAvailableListener;
    }

    public void setAudioStreamType(int i10) {
        this.mAudioStreamType = i10;
    }

    public void setDataSource(MediaSource mediaSource, int i10, int i11) throws IllegalStateException, IOException {
        if (this.mCurrentState != State.IDLE) {
            throw new IllegalStateException();
        }
        releaseMediaExtractors();
        this.mVideoExtractor = mediaSource.getVideoExtractor();
        MediaExtractor audioExtractor = mediaSource.getAudioExtractor();
        this.mAudioExtractor = audioExtractor;
        MediaExtractor mediaExtractor = this.mVideoExtractor;
        if (mediaExtractor != null && audioExtractor == null) {
            this.mAudioExtractor = mediaExtractor;
        }
        if (i10 == -2) {
            this.mVideoTrackIndex = getTrackIndex(mediaExtractor, "video/");
        } else if (i10 != -1) {
            this.mVideoTrackIndex = i10;
        } else {
            this.mVideoTrackIndex = -1;
        }
        if (i11 == -2) {
            this.mAudioTrackIndex = getTrackIndex(this.mAudioExtractor, "audio/");
        } else if (i11 != -1) {
            this.mAudioTrackIndex = i11;
        } else {
            this.mAudioTrackIndex = -1;
        }
        int i12 = this.mVideoTrackIndex;
        if (i12 != -1) {
            this.mVideoExtractor.selectTrack(i12);
            this.mVideoFormat = this.mVideoExtractor.getTrackFormat(this.mVideoTrackIndex);
            this.mVideoMinPTS = this.mVideoExtractor.getSampleTime();
            Log.d(TAG, "selected video track #" + this.mVideoTrackIndex + " " + this.mVideoFormat.toString());
        }
        int i13 = this.mAudioTrackIndex;
        if (i13 != -1) {
            this.mAudioExtractor.selectTrack(i13);
            this.mAudioFormat = this.mAudioExtractor.getTrackFormat(this.mAudioTrackIndex);
            this.mAudioMinPTS = this.mAudioExtractor.getSampleTime();
            Log.d(TAG, "selected audio track #" + this.mAudioTrackIndex + " " + this.mAudioFormat.toString());
        }
        int i14 = this.mVideoTrackIndex;
        if (i14 == -1) {
            this.mVideoExtractor = null;
        }
        if (i14 == -1 && this.mAudioTrackIndex == -1) {
            throw new IOException("invalid data source, no supported stream found");
        }
        if (i14 != -1 && this.mPlaybackThread == null && this.mSurface == null) {
            Log.i(TAG, "no video output surface specified");
        }
        this.mCurrentState = State.INITIALIZED;
    }

    public void setKeepScreenOnView(View view) {
        this.keepScreenOnView = view;
    }

    public void setLooping(boolean z6) {
        this.mLooping = z6;
    }

    public void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnSeekListener(OnSeekListener onSeekListener) {
        this.mOnSeekListener = onSeekListener;
    }

    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setPlaybackSpeed(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("speed cannot be negative");
        }
        this.mTimeBase.setSpeed(f);
        this.mTimeBase.startAt(this.mCurrentPosition);
    }

    public void setSeekMode(SeekMode seekMode) {
        this.mSeekMode = seekMode;
    }

    public void setVolume(float f, float f6) {
        this.mVolumeLeft = f;
        this.mVolumeRight = f6;
        try {
            AudioPlayback audioPlayback = this.mAudioPlayback;
            if (audioPlayback != null) {
                audioPlayback.setStereoVolume(f, f6);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: net.protyposis.android.mediaplayer.MediaPlayer$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode;

        static {
            int[] iArr = new int[VideoRenderTimingMode.values().length];
            $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode = iArr;
            try {
                iArr[VideoRenderTimingMode.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode[VideoRenderTimingMode.SURFACEVIEW_TIMESTAMP_API21.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode[VideoRenderTimingMode.SLEEP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum SeekMode {
        FAST(0),
        FAST_TO_PREVIOUS_SYNC(0),
        FAST_TO_NEXT_SYNC(1),
        FAST_TO_CLOSEST_SYNC(2),
        PRECISE(0),
        EXACT(0),
        FAST_EXACT(0);

        private int baseSeekMode;

        public int getBaseSeekMode() {
            return this.baseSeekMode;
        }

        SeekMode(int i10) {
            this.baseSeekMode = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareInternal() throws IllegalStateException, IOException {
        MediaCodecDecoder.OnDecoderEventListener onDecoderEventListener = new MediaCodecDecoder.OnDecoderEventListener() { // from class: net.protyposis.android.mediaplayer.MediaPlayer.1
            @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder.OnDecoderEventListener
            public void onBuffering(MediaCodecDecoder mediaCodecDecoder) {
                if (MediaPlayer.this.mPlaybackThread == null || MediaPlayer.this.mPlaybackThread.isPaused() || MediaPlayer.this.mBuffering || MediaPlayer.this.mDecoders.getCachedDuration() >= MediaPlayer.BUFFER_LOW_WATER_MARK_US || MediaPlayer.this.mDecoders.hasCacheReachedEndOfStream()) {
                    return;
                }
                MediaPlayer.this.mBuffering = true;
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(200, 701, 0));
            }
        };
        if (this.mCurrentState == State.RELEASING) {
            return;
        }
        this.mDecoders = new Decoders();
        int i10 = this.mVideoTrackIndex;
        if (i10 != -1) {
            try {
                this.mDecoders.addDecoder(new MediaCodecVideoDecoder(this.mVideoExtractor, false, i10, onDecoderEventListener, this.mSurface, this.mVideoRenderTimingMode.isRenderModeApi21()));
            } catch (Exception e) {
                Log.e(TAG, "cannot create video decoder: " + e.getMessage());
            }
        }
        if (this.mAudioTrackIndex != -1) {
            AudioPlayback audioPlayback = new AudioPlayback() { // from class: net.protyposis.android.mediaplayer.MediaPlayer.2
                @Override // net.protyposis.android.mediaplayer.AudioPlayback
                protected void onFrameAvailable(byte[] bArr, int i11, int i12, int i13, int i14) {
                    MediaPlayer.this.onAudioFrameAvailable(bArr, i11, i12, i13, i14);
                }
            };
            this.mAudioPlayback = audioPlayback;
            audioPlayback.setAudioStreamType(this.mAudioStreamType);
            this.mAudioPlayback.setAudioSessionId(this.mAudioSessionId);
            setVolume(this.mVolumeLeft, this.mVolumeRight);
            try {
                MediaExtractor mediaExtractor = this.mAudioExtractor;
                MediaExtractor mediaExtractor2 = this.mVideoExtractor;
                boolean z6 = mediaExtractor == mediaExtractor2 || mediaExtractor == null;
                if (mediaExtractor != null) {
                    mediaExtractor2 = mediaExtractor;
                }
                this.mDecoders.addDecoder(new MediaCodecAudioDecoder(mediaExtractor2, z6, this.mAudioTrackIndex, onDecoderEventListener, this.mAudioPlayback));
            } catch (Exception e2) {
                Log.e(TAG, "cannot create audio decoder: " + e2.getMessage());
                this.mAudioPlayback = null;
            }
        }
        if (this.mDecoders.getDecoders().isEmpty()) {
            throw new IOException("cannot decode any stream");
        }
        AudioPlayback audioPlayback2 = this.mAudioPlayback;
        if (audioPlayback2 != null) {
            this.mAudioSessionId = audioPlayback2.getAudioSessionId();
            this.mAudioStreamType = this.mAudioPlayback.getAudioStreamType();
        }
        if (this.mDecoders.getVideoDecoder() != null) {
            int videoWidth = this.mDecoders.getVideoDecoder().getVideoWidth();
            int videoHeight = this.mDecoders.getVideoDecoder().getVideoHeight();
            int videoRotation = this.mDecoders.getVideoDecoder().getVideoRotation();
            if (videoRotation > 0 && videoRotation != 180) {
                videoHeight = videoWidth;
                videoWidth = videoHeight;
            }
            EventHandler eventHandler = this.mEventHandler;
            eventHandler.sendMessage(eventHandler.obtainMessage(5, videoWidth, videoHeight));
        }
        if (this.mCurrentState == State.RELEASING) {
            return;
        }
        if (this.mDecoders.getVideoDecoder() != null) {
            this.mDecoders.getVideoDecoder().releaseFrame(this.mDecoders.decodeFrame(true));
        } else {
            this.mDecoders.decodeFrame(false);
        }
        AudioPlayback audioPlayback3 = this.mAudioPlayback;
        if (audioPlayback3 != null) {
            audioPlayback3.pause(true);
        }
        this.mDecoders.seekTo(SeekMode.FAST_TO_PREVIOUS_SYNC, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseMediaExtractors() {
        MediaExtractor mediaExtractor = this.mAudioExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
            this.mAudioExtractor = null;
        }
        MediaExtractor mediaExtractor2 = this.mVideoExtractor;
        if (mediaExtractor2 != null) {
            mediaExtractor2.release();
            this.mVideoExtractor = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stayAwake(boolean z6) {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (z6 && !wakeLock.isHeld()) {
                this.mWakeLock.acquire(600000L);
            } else if (!z6 && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z6;
        updateSurfaceScreenOn();
    }

    public int getCurrentPosition() {
        if (this.mCurrentState.ordinal() < State.RELEASING.ordinal()) {
            return (int) ((this.mSeeking ? this.mSeekTargetTime : this.mCurrentPosition) / 1000);
        }
        throw new IllegalStateException();
    }

    public int getDuration() {
        long j6;
        if (this.mCurrentState.ordinal() <= State.PREPARING.ordinal() && this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            throw new IllegalStateException();
        }
        MediaFormat mediaFormat = this.mVideoFormat;
        if (mediaFormat != null) {
            j6 = mediaFormat.getLong("durationUs") / 1000;
        } else {
            MediaFormat mediaFormat2 = this.mAudioFormat;
            if (mediaFormat2 == null || !mediaFormat2.containsKey("durationUs")) {
                return 0;
            }
            j6 = this.mAudioFormat.getLong("durationUs") / 1000;
        }
        return (int) j6;
    }

    public float getPlaybackSpeed() {
        return (float) this.mTimeBase.getSpeed();
    }

    public int getVideoHeight() {
        int integer;
        if (this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            this.mCurrentState = State.ERROR;
            throw new IllegalStateException();
        }
        MediaFormat mediaFormat = this.mVideoFormat;
        if (mediaFormat == null) {
            return 0;
        }
        boolean z6 = true;
        if (!mediaFormat.containsKey("rotation-degrees") ? !this.mVideoFormat.containsKey(Key.ROTATION) || this.mVideoFormat.getInteger(Key.ROTATION) % 180 != 90 : this.mVideoFormat.getInteger("rotation-degrees") % 180 != 90) {
            z6 = false;
        }
        MediaFormat mediaFormat2 = this.mVideoFormat;
        if (mediaFormat2 != null) {
            integer = mediaFormat2.getInteger(z6 ? "width" : "height");
        } else {
            integer = 0;
        }
        if (this.mVideoFormat != null) {
            return integer;
        }
        return 0;
    }

    public int getVideoWidth() {
        int integer;
        if (this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            this.mCurrentState = State.ERROR;
            throw new IllegalStateException();
        }
        MediaFormat mediaFormat = this.mVideoFormat;
        if (mediaFormat == null) {
            return 0;
        }
        boolean z6 = true;
        if (!mediaFormat.containsKey("rotation-degrees") ? !this.mVideoFormat.containsKey(Key.ROTATION) || this.mVideoFormat.getInteger(Key.ROTATION) % 180 != 90 : this.mVideoFormat.getInteger("rotation-degrees") % 180 != 90) {
            z6 = false;
        }
        MediaFormat mediaFormat2 = this.mVideoFormat;
        if (mediaFormat2 != null) {
            integer = mediaFormat2.getInteger(z6 ? "height" : "width");
        } else {
            integer = 0;
        }
        if (this.mVideoFormat != null) {
            return integer;
        }
        return 0;
    }

    public boolean isPaused() {
        PlaybackThread playbackThread = this.mPlaybackThread;
        return (playbackThread == null || playbackThread.isPaused()) ? false : true;
    }

    public boolean isPlaying() {
        if (this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            throw new IllegalStateException();
        }
        PlaybackThread playbackThread = this.mPlaybackThread;
        return (playbackThread == null || playbackThread.isPaused()) ? false : true;
    }

    protected void onAudioFrameAvailable(byte[] bArr, int i10, int i11, int i12, int i13) {
        AudioFrameAvailableListener audioFrameAvailableListener = this.audioFrameAvailableListener;
        if (audioFrameAvailableListener != null) {
            audioFrameAvailableListener.onAudioFrameAvailable(bArr, i10, i11, i12, i13);
        }
    }

    public void pause() {
        if (this.mCurrentState != State.PREPARED) {
            throw new IllegalStateException();
        }
        this.mPlaybackThread.pause();
        stayAwake(false);
    }

    public void prepare() throws IllegalStateException, IOException {
        if (this.mCurrentState != State.INITIALIZED && this.mCurrentState != State.STOPPED) {
            throw new IllegalStateException();
        }
        this.mCurrentState = State.PREPARING;
        prepareInternal();
        PlaybackThread playbackThread = new PlaybackThread();
        this.mPlaybackThread = playbackThread;
        playbackThread.start();
        this.mCurrentState = State.PREPARED;
    }

    public void prepareAsync() throws IllegalStateException {
        if (this.mCurrentState != State.INITIALIZED && this.mCurrentState != State.STOPPED) {
            throw new IllegalStateException();
        }
        this.mCurrentState = State.PREPARING;
        PlaybackThread playbackThread = new PlaybackThread();
        this.mPlaybackThread = playbackThread;
        playbackThread.start();
        this.mPlaybackThread.prepare();
    }

    public void release() {
        State state = this.mCurrentState;
        State state2 = State.RELEASING;
        if (state != state2) {
            State state3 = this.mCurrentState;
            State state4 = State.RELEASED;
            if (state3 == state4) {
                return;
            }
            this.mCurrentState = state2;
            stop();
            releaseMediaExtractors();
            this.mCurrentState = state4;
            this.mOnBufferingUpdateListener = null;
            this.mOnCompletionListener = null;
            this.mOnErrorListener = null;
            this.mOnInfoListener = null;
            this.mOnPreparedListener = null;
            this.mOnSeekCompleteListener = null;
            this.mOnSeekListener = null;
            this.mOnVideoSizeChangedListener = null;
        }
    }

    public void setAudioSessionId(int i10) {
        if (this.mCurrentState != State.IDLE) {
            throw new IllegalStateException();
        }
        this.mAudioSessionId = i10;
    }

    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        if (surfaceHolder != null) {
            this.mSurface = surfaceHolder.getSurface();
        } else {
            this.mSurface = null;
        }
        Decoders decoders = this.mDecoders;
        if (decoders != null) {
            decoders.getVideoDecoder();
        }
        PlaybackThread playbackThread = this.mPlaybackThread;
        if (playbackThread != null) {
            playbackThread.setSurface(this.mSurface);
        } else {
            setVideoRenderTimingMode(VideoRenderTimingMode.AUTO);
            updateSurfaceScreenOn();
        }
    }

    public void setScreenOnWhilePlaying(boolean z6) {
        if (this.mScreenOnWhilePlaying != z6) {
            if (z6 && this.mSurfaceHolder == null) {
                Log.w(TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z6;
            updateSurfaceScreenOn();
        }
    }

    public void setSurface(Surface surface) {
        this.mSurface = surface;
        if (this.mScreenOnWhilePlaying && surface != null) {
            Log.w(TAG, "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        PlaybackThread playbackThread = this.mPlaybackThread;
        if (playbackThread != null) {
            playbackThread.setSurface(this.mSurface);
        } else {
            setVideoRenderTimingMode(VideoRenderTimingMode.SLEEP);
            updateSurfaceScreenOn();
        }
    }

    void setVideoRenderTimingMode(VideoRenderTimingMode videoRenderTimingMode) {
        if (this.mPlaybackThread != null) {
            throw new IllegalStateException("called after prepare/prepareAsync");
        }
        Log.d(TAG, "setVideoRenderTimingMode " + videoRenderTimingMode);
        this.mVideoRenderTimingMode = videoRenderTimingMode;
    }

    public void setVolume(float f) {
        setVolume(f, f);
    }

    public void setWakeMode(Context context, int i10) {
        boolean z6;
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                this.mWakeLock.release();
                z6 = true;
            } else {
                z6 = false;
            }
            this.mWakeLock = null;
        } else {
            z6 = false;
        }
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i10 | 536870912, MediaPlayer.class.getName());
        this.mWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        if (z6) {
            this.mWakeLock.acquire(600000L);
        }
    }

    public void start() {
        if (this.mCurrentState != State.PREPARED) {
            throw new IllegalStateException();
        }
        this.mPlaybackThread.play();
        stayAwake(true);
    }

    public void stop() {
        if (this.mPlaybackThread != null) {
            Object obj = new Object();
            this.mReleaseSyncLock = obj;
            synchronized (obj) {
                try {
                    boolean zRelease = this.mPlaybackThread.release();
                    this.mPlaybackThread = null;
                    if (zRelease) {
                        this.mReleaseSyncLock.wait();
                    }
                } catch (InterruptedException unused) {
                }
            }
            this.mReleaseSyncLock = null;
        }
        stayAwake(false);
        this.mCurrentState = State.STOPPED;
    }

    public void updateSurfaceScreenOn() {
        View view = this.keepScreenOnView;
        if (view != null) {
            view.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    public void reset() {
        stop();
        this.mCurrentState = State.IDLE;
    }

    public void seekTo(int i10) {
        seekTo(((long) i10) * 1000);
    }

    public void setDataSource(MediaSource mediaSource) throws IllegalStateException, IOException {
        setDataSource(mediaSource, -2, -2);
    }

    @Deprecated
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        setDataSource(new UriSource(context, uri, map));
    }

    @Deprecated
    public void setDataSource(Context context, Uri uri) throws IOException {
        setDataSource(context, uri, (Map<String, String>) null);
    }
}

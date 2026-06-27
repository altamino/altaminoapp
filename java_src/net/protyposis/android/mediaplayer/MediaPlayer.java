package net.protyposis.android.mediaplayer;

import android.content.Context;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.Map;
import net.protyposis.android.mediaplayer.MediaCodecDecoder;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* loaded from: classes4.dex */
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
        void onAudioFrameAvailable(byte[] bArr, int i, int i2, int i3, int i4);
    }

    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i);
    }

    public interface OnCompletionListener {
        void onCompletion(MediaPlayer mediaPlayer);
    }

    public interface OnErrorListener {
        boolean onError(MediaPlayer mediaPlayer, int i, int i2);
    }

    public interface OnInfoListener {
        boolean onInfo(MediaPlayer mediaPlayer, int i, int i2);
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
        void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2);
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

    public enum SeekMode {
        FAST(0),
        FAST_TO_PREVIOUS_SYNC(0),
        FAST_TO_NEXT_SYNC(1),
        FAST_TO_CLOSEST_SYNC(2),
        PRECISE(0),
        EXACT(0),
        FAST_EXACT(0);

        private int baseSeekMode;

        SeekMode(int i) {
            this.baseSeekMode = 0;
            this.baseSeekMode = i;
        }

        public int getBaseSeekMode() {
            return this.baseSeekMode;
        }
    }

    /* renamed from: net.protyposis.android.mediaplayer.MediaPlayer$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode = new int[VideoRenderTimingMode.values().length];

        static {
            try {
                $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode[VideoRenderTimingMode.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode[VideoRenderTimingMode.SLEEP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode[VideoRenderTimingMode.SURFACEVIEW_TIMESTAMP_API21.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    enum VideoRenderTimingMode {
        AUTO,
        SLEEP,
        SURFACEVIEW_TIMESTAMP_API21;

        public boolean isRenderModeApi21() {
            int i = AnonymousClass3.$SwitchMap$net$protyposis$android$mediaplayer$MediaPlayer$VideoRenderTimingMode[ordinal()];
            return i != 1 ? i != 2 && i == 3 : Build.VERSION.SDK_INT >= 21;
        }
    }

    public void setKeepScreenOnView(View view) {
        this.keepScreenOnView = view;
    }

    public void setAudioFrameAvailableListener(AudioFrameAvailableListener audioFrameAvailableListener) {
        this.audioFrameAvailableListener = audioFrameAvailableListener;
    }

    public void setDataSource(MediaSource mediaSource, int i, int i2) throws IllegalStateException, IOException {
        if (this.mCurrentState != State.IDLE) {
            throw new IllegalStateException();
        }
        releaseMediaExtractors();
        this.mVideoExtractor = mediaSource.getVideoExtractor();
        this.mAudioExtractor = mediaSource.getAudioExtractor();
        MediaExtractor mediaExtractor = this.mVideoExtractor;
        if (mediaExtractor != null && this.mAudioExtractor == null) {
            this.mAudioExtractor = mediaExtractor;
        }
        if (i == -2) {
            this.mVideoTrackIndex = getTrackIndex(this.mVideoExtractor, "video/");
        } else if (i == -1) {
            this.mVideoTrackIndex = -1;
        } else {
            this.mVideoTrackIndex = i;
        }
        if (i2 == -2) {
            this.mAudioTrackIndex = getTrackIndex(this.mAudioExtractor, "audio/");
        } else if (i2 == -1) {
            this.mAudioTrackIndex = -1;
        } else {
            this.mAudioTrackIndex = i2;
        }
        int i3 = this.mVideoTrackIndex;
        if (i3 != -1) {
            this.mVideoExtractor.selectTrack(i3);
            this.mVideoFormat = this.mVideoExtractor.getTrackFormat(this.mVideoTrackIndex);
            this.mVideoMinPTS = this.mVideoExtractor.getSampleTime();
            Log.d(TAG, "selected video track #" + this.mVideoTrackIndex + " " + this.mVideoFormat.toString());
        }
        int i4 = this.mAudioTrackIndex;
        if (i4 != -1) {
            this.mAudioExtractor.selectTrack(i4);
            this.mAudioFormat = this.mAudioExtractor.getTrackFormat(this.mAudioTrackIndex);
            this.mAudioMinPTS = this.mAudioExtractor.getSampleTime();
            Log.d(TAG, "selected audio track #" + this.mAudioTrackIndex + " " + this.mAudioFormat.toString());
        }
        if (this.mVideoTrackIndex == -1) {
            this.mVideoExtractor = null;
        }
        if (this.mVideoTrackIndex == -1 && this.mAudioTrackIndex == -1) {
            throw new IOException("invalid data source, no supported stream found");
        }
        if (this.mVideoTrackIndex != -1 && this.mPlaybackThread == null && this.mSurface == null) {
            Log.i(TAG, "no video output surface specified");
        }
        this.mCurrentState = State.INITIALIZED;
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

    public void setDataSource(MediaSource mediaSource) throws IllegalStateException, IOException {
        setDataSource(mediaSource, -2, -2);
    }

    private int getTrackIndex(MediaExtractor mediaExtractor, String str) {
        if (mediaExtractor == null) {
            return -1;
        }
        for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
            Log.d(TAG, trackFormat.toString());
            if (trackFormat.getString(IMediaFormat.KEY_MIME).startsWith(str)) {
                return i;
            }
        }
        return -1;
    }

    @Deprecated
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalStateException, IOException {
        setDataSource(new UriSource(context, uri, map));
    }

    protected void onAudioFrameAvailable(byte[] bArr, int i, int i2, int i3, int i4) {
        AudioFrameAvailableListener audioFrameAvailableListener = this.audioFrameAvailableListener;
        if (audioFrameAvailableListener != null) {
            audioFrameAvailableListener.onAudioFrameAvailable(bArr, i, i2, i3, i4);
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
        int i = this.mVideoTrackIndex;
        if (i != -1) {
            try {
                this.mDecoders.addDecoder(new MediaCodecVideoDecoder(this.mVideoExtractor, false, i, onDecoderEventListener, this.mSurface, this.mVideoRenderTimingMode.isRenderModeApi21()));
            } catch (Exception e) {
                Log.e(TAG, "cannot create video decoder: " + e.getMessage());
            }
        }
        if (this.mAudioTrackIndex != -1) {
            this.mAudioPlayback = new AudioPlayback() { // from class: net.protyposis.android.mediaplayer.MediaPlayer.2
                @Override // net.protyposis.android.mediaplayer.AudioPlayback
                protected void onFrameAvailable(byte[] bArr, int i2, int i3, int i4, int i5) {
                    MediaPlayer.this.onAudioFrameAvailable(bArr, i2, i3, i4, i5);
                }
            };
            this.mAudioPlayback.setAudioStreamType(this.mAudioStreamType);
            this.mAudioPlayback.setAudioSessionId(this.mAudioSessionId);
            setVolume(this.mVolumeLeft, this.mVolumeRight);
            try {
                this.mDecoders.addDecoder(new MediaCodecAudioDecoder(this.mAudioExtractor != null ? this.mAudioExtractor : this.mVideoExtractor, this.mAudioExtractor == this.mVideoExtractor || this.mAudioExtractor == null, this.mAudioTrackIndex, onDecoderEventListener, this.mAudioPlayback));
            } catch (Exception e2) {
                Log.e(TAG, "cannot create audio decoder: " + e2.getMessage());
                this.mAudioPlayback = null;
            }
        }
        if (this.mDecoders.getDecoders().isEmpty()) {
            throw new IOException("cannot decode any stream");
        }
        AudioPlayback audioPlayback = this.mAudioPlayback;
        if (audioPlayback != null) {
            this.mAudioSessionId = audioPlayback.getAudioSessionId();
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
        AudioPlayback audioPlayback2 = this.mAudioPlayback;
        if (audioPlayback2 != null) {
            audioPlayback2.pause(true);
        }
        this.mDecoders.seekTo(SeekMode.FAST_TO_PREVIOUS_SYNC, 0L);
    }

    public void prepareAsync() throws IllegalStateException {
        if (this.mCurrentState != State.INITIALIZED && this.mCurrentState != State.STOPPED) {
            throw new IllegalStateException();
        }
        this.mCurrentState = State.PREPARING;
        this.mPlaybackThread = new PlaybackThread();
        this.mPlaybackThread.start();
        this.mPlaybackThread.prepare();
    }

    public void setSurface(Surface surface) {
        this.mSurface = surface;
        if (this.mScreenOnWhilePlaying && surface != null) {
            Log.w(TAG, "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        PlaybackThread playbackThread = this.mPlaybackThread;
        if (playbackThread == null) {
            setVideoRenderTimingMode(VideoRenderTimingMode.SLEEP);
            updateSurfaceScreenOn();
        } else {
            playbackThread.setSurface(this.mSurface);
        }
    }

    public void start() {
        if (this.mCurrentState != State.PREPARED) {
            throw new IllegalStateException();
        }
        this.mPlaybackThread.play();
        stayAwake(true);
    }

    public void pause() {
        if (this.mCurrentState != State.PREPARED) {
            throw new IllegalStateException();
        }
        this.mPlaybackThread.pause();
        stayAwake(false);
    }

    public void seekTo(long j) {
        if (this.mCurrentState.ordinal() < State.PREPARED.ordinal() && this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            throw new IllegalStateException();
        }
        Log.d(TAG, "seekTo " + j + " with video sample offset " + this.mVideoMinPTS);
        OnSeekListener onSeekListener = this.mOnSeekListener;
        if (onSeekListener != null) {
            onSeekListener.onSeek(this);
        }
        this.mSeeking = true;
        this.mSeekTargetTime = this.mVideoMinPTS + j;
        this.mPlaybackThread.seekTo(this.mSeekTargetTime);
    }

    public void seekTo(int i) {
        seekTo(i * 1000);
    }

    public boolean isPlaying() {
        if (this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            throw new IllegalStateException();
        }
        PlaybackThread playbackThread = this.mPlaybackThread;
        return (playbackThread == null || playbackThread.isPaused()) ? false : true;
    }

    public void stop() {
        if (this.mPlaybackThread != null) {
            this.mReleaseSyncLock = new Object();
            synchronized (this.mReleaseSyncLock) {
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

    public void reset() {
        stop();
        this.mCurrentState = State.IDLE;
    }

    public void release() {
        if (this.mCurrentState == State.RELEASING || this.mCurrentState == State.RELEASED) {
            return;
        }
        this.mCurrentState = State.RELEASING;
        stop();
        releaseMediaExtractors();
        this.mCurrentState = State.RELEASED;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnPreparedListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnSeekListener = null;
        this.mOnVideoSizeChangedListener = null;
    }

    public void setScreenOnWhilePlaying(boolean z) {
        if (this.mScreenOnWhilePlaying != z) {
            if (z && this.mSurfaceHolder == null) {
                Log.w(TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z;
            updateSurfaceScreenOn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stayAwake(boolean z) {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (z && !wakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else if (!z && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z;
        updateSurfaceScreenOn();
    }

    public void updateSurfaceScreenOn() {
        View view = this.keepScreenOnView;
        if (view != null) {
            view.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    public int getDuration() {
        long j;
        if (this.mCurrentState.ordinal() <= State.PREPARING.ordinal() && this.mCurrentState.ordinal() >= State.RELEASING.ordinal()) {
            throw new IllegalStateException();
        }
        MediaFormat mediaFormat = this.mVideoFormat;
        if (mediaFormat != null) {
            j = mediaFormat.getLong("durationUs") / 1000;
        } else {
            MediaFormat mediaFormat2 = this.mAudioFormat;
            if (mediaFormat2 == null || !mediaFormat2.containsKey("durationUs")) {
                return 0;
            }
            j = this.mAudioFormat.getLong("durationUs") / 1000;
        }
        return (int) j;
    }

    public int getCurrentPosition() {
        if (this.mCurrentState.ordinal() < State.RELEASING.ordinal()) {
            return (int) ((this.mSeeking ? this.mSeekTargetTime : this.mCurrentPosition) / 1000);
        }
        throw new IllegalStateException();
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
        boolean z = true;
        if (!mediaFormat.containsKey("rotation-degrees") ? !this.mVideoFormat.containsKey("rotation") || this.mVideoFormat.getInteger("rotation") % 180 != 90 : this.mVideoFormat.getInteger("rotation-degrees") % 180 != 90) {
            z = false;
        }
        MediaFormat mediaFormat2 = this.mVideoFormat;
        if (mediaFormat2 != null) {
            integer = mediaFormat2.getInteger(z ? "height" : "width");
        } else {
            integer = 0;
        }
        if (this.mVideoFormat != null) {
            return integer;
        }
        return 0;
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
        boolean z = true;
        if (!mediaFormat.containsKey("rotation-degrees") ? !this.mVideoFormat.containsKey("rotation") || this.mVideoFormat.getInteger("rotation") % 180 != 90 : this.mVideoFormat.getInteger("rotation-degrees") % 180 != 90) {
            z = false;
        }
        MediaFormat mediaFormat2 = this.mVideoFormat;
        if (mediaFormat2 != null) {
            integer = mediaFormat2.getInteger(z ? "width" : "height");
        } else {
            integer = 0;
        }
        if (this.mVideoFormat != null) {
            return integer;
        }
        return 0;
    }

    public void setVolume(float f, float f2) {
        this.mVolumeLeft = f;
        this.mVolumeRight = f2;
        try {
            if (this.mAudioPlayback != null) {
                this.mAudioPlayback.setStereoVolume(f, f2);
            }
        } catch (Exception unused) {
        }
    }

    public void setVolume(float f) {
        setVolume(f, f);
    }

    public void setAudioSessionId(int i) {
        if (this.mCurrentState != State.IDLE) {
            throw new IllegalStateException();
        }
        this.mAudioSessionId = i;
    }

    public int getAudioSessionId() {
        return this.mAudioSessionId;
    }

    public void setAudioStreamType(int i) {
        this.mAudioStreamType = i;
    }

    void setVideoRenderTimingMode(VideoRenderTimingMode videoRenderTimingMode) {
        if (this.mPlaybackThread != null) {
            throw new IllegalStateException("called after prepare/prepareAsync");
        }
        if (videoRenderTimingMode == VideoRenderTimingMode.SURFACEVIEW_TIMESTAMP_API21 && Build.VERSION.SDK_INT < 21) {
            throw new IllegalArgumentException("this mode needs min API 21");
        }
        Log.d(TAG, "setVideoRenderTimingMode " + videoRenderTimingMode);
        this.mVideoRenderTimingMode = videoRenderTimingMode;
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

        public PlaybackThread() {
            super(MediaPlayer.TAG + "#" + PlaybackThread.class.getSimpleName(), -16);
            this.mPaused = true;
            this.mReleasing = false;
            this.mRenderModeApi21 = MediaPlayer.this.mVideoRenderTimingMode.isRenderModeApi21();
            this.mRenderingStarted = true;
            this.mAVLocked = false;
            this.mLastBufferingUpdateTime = 0L;
        }

        @Override // java.lang.Thread
        public synchronized void start() {
            super.start();
            this.mHandler = new Handler(getLooper(), this);
            Log.d(MediaPlayer.TAG, "PlaybackThread started");
        }

        public void prepare() {
            this.mHandler.sendEmptyMessage(1);
        }

        public void play() {
            this.mPaused = false;
            this.mHandler.sendEmptyMessage(2);
        }

        public void pause() {
            this.mPaused = true;
            this.mHandler.sendEmptyMessage(3);
        }

        public boolean isPaused() {
            return this.mPaused;
        }

        public void seekTo(long j) {
            this.mHandler.removeMessages(5);
            this.mHandler.obtainMessage(5, Long.valueOf(j)).sendToTarget();
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

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) throws IllegalStateException {
            try {
                if (this.mReleasing) {
                    releaseInternal();
                    return true;
                }
                int i = message.what;
                if (i != 100) {
                    switch (i) {
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
                }
                setVideoSurface((Surface) message.obj);
                return true;
            } catch (IOException e) {
                Log.e(MediaPlayer.TAG, "decoder error, codec can not be created", e);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, -1004));
                releaseInternal();
                return true;
            } catch (IllegalStateException e2) {
                Log.e(MediaPlayer.TAG, "decoder error, too many instances?", e2);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
                return true;
            } catch (InterruptedException e3) {
                Log.d(MediaPlayer.TAG, "decoder interrupted", e3);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
                return true;
            } catch (Exception e4) {
                Log.e(MediaPlayer.TAG, "decoder exception", e4);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
                return true;
            }
        }

        private void prepareInternal() throws IllegalStateException {
            try {
                MediaPlayer.this.prepareInternal();
                MediaPlayer.this.mCurrentState = State.PREPARED;
                MediaPlayer.this.mEventHandler.sendEmptyMessage(1);
            } catch (IOException e) {
                Log.e(MediaPlayer.TAG, "prepareAsync() failed: cannot decode stream(s)", e);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, -1004));
                releaseInternal();
            } catch (IllegalArgumentException e2) {
                Log.e(MediaPlayer.TAG, "prepareAsync() failed: surface might be gone", e2);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
            } catch (IllegalStateException e3) {
                Log.e(MediaPlayer.TAG, "prepareAsync() failed: something is in a wrong state", e3);
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(100, 1, 0));
                releaseInternal();
            }
        }

        private void playInternal() throws IllegalStateException, InterruptedException, IOException {
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

        private void pauseInternal(boolean z) throws IllegalStateException {
            this.mHandler.removeMessages(4);
            if (MediaPlayer.this.mAudioPlayback != null) {
                if (!z) {
                    MediaPlayer.this.mAudioPlayback.pause(false);
                } else {
                    this.mHandler.sendEmptyMessageDelayed(7, ((MediaPlayer.this.mAudioPlayback.getQueueBufferTimeUs() + MediaPlayer.this.mAudioPlayback.getPlaybackBufferTimeUs()) / 1000) + 1);
                }
            }
        }

        private void pauseInternal() throws IllegalStateException {
            pauseInternal(false);
        }

        private void pauseInternalAudio() throws IllegalStateException {
            if (MediaPlayer.this.mAudioPlayback != null) {
                MediaPlayer.this.mAudioPlayback.pause();
            }
        }

        private void loopInternal() throws IllegalStateException, InterruptedException, IOException {
            MediaCodecDecoder.FrameInfo frameInfo;
            long cachedDuration = MediaPlayer.this.mDecoders.getCachedDuration();
            if (cachedDuration != -1) {
                double duration = MediaPlayer.this.getDuration() * 1000;
                Double.isNaN(duration);
                double d = 100.0d / duration;
                double d2 = MediaPlayer.this.mCurrentPosition + cachedDuration;
                Double.isNaN(d2);
                updateBufferPercentage((int) (d * d2));
            }
            if (!MediaPlayer.this.mBuffering || cachedDuration <= -1 || cachedDuration >= MediaPlayer.BUFFER_LOW_WATER_MARK_US || MediaPlayer.this.mDecoders.hasCacheReachedEndOfStream()) {
                if (MediaPlayer.this.mDecoders.getVideoDecoder() != null && this.mVideoFrameInfo == null) {
                    this.mVideoFrameInfo = MediaPlayer.this.mDecoders.decodeFrame(false);
                    if (this.mVideoFrameInfo == null && !MediaPlayer.this.mDecoders.isEOS()) {
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
                if (this.mVideoFrameInfo != null && MediaPlayer.this.mTimeBase.getOffsetFrom(this.mVideoFrameInfo.presentationTimeUs) > DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
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
                double d3 = 10L;
                double speed = MediaPlayer.this.mTimeBase.getSpeed();
                Double.isNaN(d3);
                long jElapsedRealtime2 = ((long) (d3 / speed)) - (SystemClock.elapsedRealtime() - jElapsedRealtime);
                if (jElapsedRealtime2 > 0) {
                    this.mHandler.sendEmptyMessageDelayed(4, jElapsedRealtime2);
                    return;
                } else {
                    this.mHandler.sendEmptyMessage(4);
                    return;
                }
            }
            this.mHandler.sendEmptyMessageDelayed(4, 100L);
        }

        private void seekInternal(long j) throws IllegalStateException, InterruptedException, IOException {
            if (this.mVideoFrameInfo != null) {
                MediaPlayer.this.mDecoders.getVideoDecoder().dismissFrame(this.mVideoFrameInfo);
                this.mVideoFrameInfo = null;
            }
            if (MediaPlayer.this.mAudioPlayback != null) {
                MediaPlayer.this.mAudioPlayback.pause(true);
            }
            MediaPlayer.this.mDecoders.seekTo(MediaPlayer.this.mSeekMode, j);
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

        private void releaseInternal() throws IllegalStateException {
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
            if (!this.mRenderModeApi21 && offsetFrom > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                Thread.sleep(offsetFrom / 1000);
            }
            MediaPlayer.this.mDecoders.getVideoDecoder().renderFrame(frameInfo, offsetFrom);
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

        private void updateBufferPercentage(int i) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - this.mLastBufferingUpdateTime > 1000 && i != MediaPlayer.this.mBufferPercentage) {
                this.mLastBufferingUpdateTime = jElapsedRealtime;
                MediaPlayer.this.mEventHandler.sendMessage(MediaPlayer.this.mEventHandler.obtainMessage(3, i, 0));
            }
            MediaPlayer.this.mBufferPercentage = i;
        }
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnSeekListener(OnSeekListener onSeekListener) {
        this.mOnSeekListener = onSeekListener;
    }

    public void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    private class EventHandler extends Handler {
        private EventHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Log.d(MediaPlayer.TAG, "onPrepared");
                if (MediaPlayer.this.mOnPreparedListener != null) {
                    MediaPlayer.this.mOnPreparedListener.onPrepared(MediaPlayer.this);
                    return;
                }
                return;
            }
            if (i == 2) {
                Log.d(MediaPlayer.TAG, "onPlaybackComplete");
                if (MediaPlayer.this.mOnCompletionListener != null) {
                    MediaPlayer.this.mOnCompletionListener.onCompletion(MediaPlayer.this);
                }
                MediaPlayer.this.stayAwake(false);
                return;
            }
            if (i == 3) {
                if (MediaPlayer.this.mOnBufferingUpdateListener != null) {
                    MediaPlayer.this.mOnBufferingUpdateListener.onBufferingUpdate(MediaPlayer.this, message.arg1);
                    return;
                }
                return;
            }
            if (i == 4) {
                Log.d(MediaPlayer.TAG, "onSeekComplete");
                if (MediaPlayer.this.mOnSeekCompleteListener != null) {
                    MediaPlayer.this.mOnSeekCompleteListener.onSeekComplete(MediaPlayer.this);
                    return;
                }
                return;
            }
            if (i == 5) {
                Log.d(MediaPlayer.TAG, "onVideoSizeChanged");
                if (MediaPlayer.this.mOnVideoSizeChangedListener != null) {
                    MediaPlayer.this.mOnVideoSizeChangedListener.onVideoSizeChanged(MediaPlayer.this, message.arg1, message.arg2);
                    return;
                }
                return;
            }
            if (i != 100) {
                if (i != 200) {
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
}

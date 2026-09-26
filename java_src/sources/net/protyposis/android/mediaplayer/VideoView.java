package net.protyposis.android.mediaplayer;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.MediaController;
import android.widget.Toast;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class VideoView extends SurfaceView implements SurfaceHolder.Callback, MediaController.MediaPlayerControl {
    private static final int STATE_ERROR = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private static final String TAG = "VideoView";
    private int mAudioTrackIndex;
    private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener;
    private MediaPlayer.OnCompletionListener mCompletionListener;
    private int mCurrentState;
    private MediaPlayer.OnErrorListener mErrorListener;
    private MediaPlayer.OnInfoListener mInfoListener;
    private MediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
    private MediaPlayer.OnCompletionListener mOnCompletionListener;
    private MediaPlayer.OnErrorListener mOnErrorListener;
    private MediaPlayer.OnInfoListener mOnInfoListener;
    private MediaPlayer.OnPreparedListener mOnPreparedListener;
    private MediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
    private MediaPlayer.OnSeekListener mOnSeekListener;
    private float mPlaybackSpeedWhenPrepared;
    private MediaPlayer mPlayer;
    private MediaPlayer.OnPreparedListener mPreparedListener;
    private MediaPlayer.OnSeekCompleteListener mSeekCompleteListener;
    private MediaPlayer.OnSeekListener mSeekListener;
    private int mSeekWhenPrepared;
    private MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener;
    private MediaSource mSource;
    private SurfaceHolder mSurfaceHolder;
    private int mTargetState;
    private int mVideoHeight;
    private int mVideoTrackIndex;
    private int mVideoWidth;

    public VideoView(Context context) {
        super(context);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: net.protyposis.android.mediaplayer.VideoView.3
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VideoView.this.mCurrentState = 2;
                VideoView videoView = VideoView.this;
                videoView.setPlaybackSpeed(videoView.mPlaybackSpeedWhenPrepared);
                if (VideoView.this.mOnPreparedListener != null) {
                    VideoView.this.mOnPreparedListener.onPrepared(mediaPlayer);
                }
                int i10 = VideoView.this.mSeekWhenPrepared;
                if (i10 != 0) {
                    VideoView.this.seekTo(i10);
                }
                if (VideoView.this.mTargetState == 3) {
                    VideoView.this.start();
                }
            }
        };
        this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: net.protyposis.android.mediaplayer.VideoView.4
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
                VideoView.this.mVideoWidth = i10;
                VideoView.this.mVideoHeight = i11;
                VideoView.this.requestLayout();
            }
        };
        this.mSeekListener = new MediaPlayer.OnSeekListener() { // from class: net.protyposis.android.mediaplayer.VideoView.5
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekListener
            public void onSeek(MediaPlayer mediaPlayer) {
                if (VideoView.this.mOnSeekListener != null) {
                    VideoView.this.mOnSeekListener.onSeek(mediaPlayer);
                }
            }
        };
        this.mSeekCompleteListener = new MediaPlayer.OnSeekCompleteListener() { // from class: net.protyposis.android.mediaplayer.VideoView.6
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                if (VideoView.this.mOnSeekCompleteListener != null) {
                    VideoView.this.mOnSeekCompleteListener.onSeekComplete(mediaPlayer);
                }
            }
        };
        this.mCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: net.protyposis.android.mediaplayer.VideoView.7
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                VideoView.this.mCurrentState = 5;
                VideoView.this.mTargetState = 5;
                if (VideoView.this.mOnCompletionListener != null) {
                    VideoView.this.mOnCompletionListener.onCompletion(mediaPlayer);
                }
            }
        };
        this.mErrorListener = new MediaPlayer.OnErrorListener() { // from class: net.protyposis.android.mediaplayer.VideoView.8
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                VideoView.this.mCurrentState = -1;
                VideoView.this.mTargetState = -1;
                if (VideoView.this.mOnErrorListener != null) {
                    return VideoView.this.mOnErrorListener.onError(mediaPlayer, i10, i11);
                }
                Toast.makeText(VideoView.this.getContext(), "Cannot play the video", 1).show();
                return true;
            }
        };
        this.mInfoListener = new MediaPlayer.OnInfoListener() { // from class: net.protyposis.android.mediaplayer.VideoView.9
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
                if (VideoView.this.mOnInfoListener != null) {
                    return VideoView.this.mOnInfoListener.onInfo(mediaPlayer, i10, i11);
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener() { // from class: net.protyposis.android.mediaplayer.VideoView.10
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
                if (VideoView.this.mOnBufferingUpdateListener != null) {
                    VideoView.this.mOnBufferingUpdateListener.onBufferingUpdate(mediaPlayer, i10);
                }
            }
        };
        initVideoView();
    }

    private boolean isInPlaybackState() {
        return this.mPlayer != null && this.mCurrentState >= 2;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return true;
    }

    public MediaPlayer getMediaPlayer() {
        return this.mPlayer;
    }

    public void setOnBufferingUpdateListener(MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnSeekListener(MediaPlayer.OnSeekListener onSeekListener) {
        this.mOnSeekListener = onSeekListener;
    }

    public void setPlaybackSpeed(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("speed cannot be negative");
        }
        if (isInPlaybackState()) {
            this.mPlayer.setPlaybackSpeed(f);
        }
        this.mPlaybackSpeedWhenPrepared = f;
    }

    public void setVideoSource(MediaSource mediaSource, int i10, int i11) {
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mSource = mediaSource;
        this.mVideoTrackIndex = i10;
        this.mAudioTrackIndex = i11;
        this.mSeekWhenPrepared = 0;
        this.mPlaybackSpeedWhenPrepared = 1.0f;
        openVideo();
        requestLayout();
        invalidate();
    }

    @Deprecated
    public void setVideoURI(Uri uri) {
        setVideoSource(new UriSource(getContext(), uri));
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = null;
        release();
    }

    private void openVideo() {
        if (this.mSource == null || this.mSurfaceHolder == null) {
            return;
        }
        release();
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mPlayer = mediaPlayer;
        mediaPlayer.setDisplay(this.mSurfaceHolder);
        this.mPlayer.setScreenOnWhilePlaying(true);
        this.mPlayer.setOnPreparedListener(this.mPreparedListener);
        this.mPlayer.setOnSeekListener(this.mSeekListener);
        this.mPlayer.setOnSeekCompleteListener(this.mSeekCompleteListener);
        this.mPlayer.setOnCompletionListener(this.mCompletionListener);
        this.mPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
        this.mPlayer.setOnErrorListener(this.mErrorListener);
        this.mPlayer.setOnInfoListener(this.mInfoListener);
        this.mPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
        final Handler handler = new Handler(new Handler.Callback() { // from class: net.protyposis.android.mediaplayer.VideoView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                VideoView.this.mCurrentState = -1;
                VideoView.this.mTargetState = -1;
                VideoView.this.mErrorListener.onError(VideoView.this.mPlayer, 1, 0);
                return true;
            }
        });
        final MediaPlayer mediaPlayer2 = this.mPlayer;
        new Thread(new Runnable() { // from class: net.protyposis.android.mediaplayer.VideoView.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    VideoView.this.mCurrentState = 1;
                    mediaPlayer2.setDataSource(VideoView.this.mSource, VideoView.this.mVideoTrackIndex, VideoView.this.mAudioTrackIndex);
                    MediaPlayer mediaPlayer3 = VideoView.this.mPlayer;
                    MediaPlayer mediaPlayer4 = mediaPlayer2;
                    if (mediaPlayer3 != mediaPlayer4) {
                        mediaPlayer4.release();
                    } else {
                        mediaPlayer4.prepareAsync();
                        Log.d(VideoView.TAG, "video opened");
                    }
                } catch (IOException e) {
                    Log.e(VideoView.TAG, "video open failed", e);
                    if (VideoView.this.mPlayer == mediaPlayer2) {
                        handler.sendEmptyMessage(0);
                    }
                } catch (Exception e2) {
                    Log.e(VideoView.TAG, "something went wrong", e2);
                }
            }
        }).start();
    }

    private void release() {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mPlayer = null;
        }
        this.mCurrentState = 0;
        this.mTargetState = 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getAudioSessionId();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getBufferPercentage();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getDuration();
        }
        return 0;
    }

    public MediaPlayer.SeekMode getSeekMode() {
        return this.mPlayer.getSeekMode();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mPlayer;
        return mediaPlayer != null && mediaPlayer.isPlaying();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int defaultSize = View.getDefaultSize(this.mVideoWidth, i10);
        int defaultSize2 = View.getDefaultSize(this.mVideoHeight, i11);
        if (this.mVideoWidth > 0 && this.mVideoHeight > 0) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i13 = this.mVideoWidth;
                int i14 = i13 * size2;
                int i15 = this.mVideoHeight;
                if (i14 < size * i15) {
                    defaultSize = (i13 * size2) / i15;
                } else {
                    if (i13 * size2 > size * i15) {
                        defaultSize2 = (i15 * size) / i13;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                int i16 = (this.mVideoHeight * size) / this.mVideoWidth;
                if (mode2 != Integer.MIN_VALUE || i16 <= size2) {
                    defaultSize2 = i16;
                    defaultSize = size;
                }
                defaultSize = size;
                defaultSize2 = size2;
            } else {
                if (mode2 == 1073741824) {
                    i12 = (this.mVideoWidth * size2) / this.mVideoHeight;
                    if (mode == Integer.MIN_VALUE && i12 > size) {
                        defaultSize = size;
                    }
                    defaultSize2 = size2;
                } else {
                    int i17 = this.mVideoWidth;
                    int i18 = this.mVideoHeight;
                    if (mode2 != Integer.MIN_VALUE || i18 <= size2) {
                        i12 = i17;
                        size2 = i18;
                    } else {
                        i12 = (size2 * i17) / i18;
                    }
                    if (mode == Integer.MIN_VALUE && i12 > size) {
                        defaultSize2 = (i18 * size) / i17;
                        defaultSize = size;
                    }
                }
                defaultSize = i12;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public void setSeekMode(MediaPlayer.SeekMode seekMode) {
        this.mPlayer.setSeekMode(seekMode);
    }

    @Deprecated
    public void setVideoPath(String str) {
        setVideoSource(new UriSource(getContext(), Uri.parse(str)));
    }

    @Deprecated
    public void setVideoURI(Uri uri, Map<String, String> map) {
        setVideoSource(new UriSource(getContext(), uri, map));
    }

    public void stopPlayback() {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mCurrentState = 0;
            this.mTargetState = 0;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        openVideo();
    }

    private void initVideoView() {
        getHolder().addCallback(this);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (isInPlaybackState()) {
            return this.mPlayer.getCurrentPosition();
        }
        return 0;
    }

    public float getPlaybackSpeed() {
        if (isInPlaybackState()) {
            return this.mPlayer.getPlaybackSpeed();
        }
        return this.mPlaybackSpeedWhenPrepared;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (isInPlaybackState()) {
            this.mPlayer.pause();
        }
        this.mTargetState = 4;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i10) {
        if (isInPlaybackState()) {
            this.mPlayer.seekTo(i10);
            this.mSeekWhenPrepared = 0;
        } else {
            this.mSeekWhenPrepared = i10;
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        if (isInPlaybackState()) {
            this.mPlayer.start();
        } else {
            this.mTargetState = 3;
        }
    }

    public void setVideoSource(MediaSource mediaSource) {
        setVideoSource(mediaSource, -2, -2);
    }

    public VideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: net.protyposis.android.mediaplayer.VideoView.3
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VideoView.this.mCurrentState = 2;
                VideoView videoView = VideoView.this;
                videoView.setPlaybackSpeed(videoView.mPlaybackSpeedWhenPrepared);
                if (VideoView.this.mOnPreparedListener != null) {
                    VideoView.this.mOnPreparedListener.onPrepared(mediaPlayer);
                }
                int i10 = VideoView.this.mSeekWhenPrepared;
                if (i10 != 0) {
                    VideoView.this.seekTo(i10);
                }
                if (VideoView.this.mTargetState == 3) {
                    VideoView.this.start();
                }
            }
        };
        this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: net.protyposis.android.mediaplayer.VideoView.4
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
                VideoView.this.mVideoWidth = i10;
                VideoView.this.mVideoHeight = i11;
                VideoView.this.requestLayout();
            }
        };
        this.mSeekListener = new MediaPlayer.OnSeekListener() { // from class: net.protyposis.android.mediaplayer.VideoView.5
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekListener
            public void onSeek(MediaPlayer mediaPlayer) {
                if (VideoView.this.mOnSeekListener != null) {
                    VideoView.this.mOnSeekListener.onSeek(mediaPlayer);
                }
            }
        };
        this.mSeekCompleteListener = new MediaPlayer.OnSeekCompleteListener() { // from class: net.protyposis.android.mediaplayer.VideoView.6
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                if (VideoView.this.mOnSeekCompleteListener != null) {
                    VideoView.this.mOnSeekCompleteListener.onSeekComplete(mediaPlayer);
                }
            }
        };
        this.mCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: net.protyposis.android.mediaplayer.VideoView.7
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                VideoView.this.mCurrentState = 5;
                VideoView.this.mTargetState = 5;
                if (VideoView.this.mOnCompletionListener != null) {
                    VideoView.this.mOnCompletionListener.onCompletion(mediaPlayer);
                }
            }
        };
        this.mErrorListener = new MediaPlayer.OnErrorListener() { // from class: net.protyposis.android.mediaplayer.VideoView.8
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                VideoView.this.mCurrentState = -1;
                VideoView.this.mTargetState = -1;
                if (VideoView.this.mOnErrorListener != null) {
                    return VideoView.this.mOnErrorListener.onError(mediaPlayer, i10, i11);
                }
                Toast.makeText(VideoView.this.getContext(), "Cannot play the video", 1).show();
                return true;
            }
        };
        this.mInfoListener = new MediaPlayer.OnInfoListener() { // from class: net.protyposis.android.mediaplayer.VideoView.9
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
                if (VideoView.this.mOnInfoListener != null) {
                    return VideoView.this.mOnInfoListener.onInfo(mediaPlayer, i10, i11);
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener() { // from class: net.protyposis.android.mediaplayer.VideoView.10
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
                if (VideoView.this.mOnBufferingUpdateListener != null) {
                    VideoView.this.mOnBufferingUpdateListener.onBufferingUpdate(mediaPlayer, i10);
                }
            }
        };
        initVideoView();
    }

    public VideoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: net.protyposis.android.mediaplayer.VideoView.3
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                VideoView.this.mCurrentState = 2;
                VideoView videoView = VideoView.this;
                videoView.setPlaybackSpeed(videoView.mPlaybackSpeedWhenPrepared);
                if (VideoView.this.mOnPreparedListener != null) {
                    VideoView.this.mOnPreparedListener.onPrepared(mediaPlayer);
                }
                int i11 = VideoView.this.mSeekWhenPrepared;
                if (i11 != 0) {
                    VideoView.this.seekTo(i11);
                }
                if (VideoView.this.mTargetState == 3) {
                    VideoView.this.start();
                }
            }
        };
        this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: net.protyposis.android.mediaplayer.VideoView.4
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i11, int i12) {
                VideoView.this.mVideoWidth = i11;
                VideoView.this.mVideoHeight = i12;
                VideoView.this.requestLayout();
            }
        };
        this.mSeekListener = new MediaPlayer.OnSeekListener() { // from class: net.protyposis.android.mediaplayer.VideoView.5
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekListener
            public void onSeek(MediaPlayer mediaPlayer) {
                if (VideoView.this.mOnSeekListener != null) {
                    VideoView.this.mOnSeekListener.onSeek(mediaPlayer);
                }
            }
        };
        this.mSeekCompleteListener = new MediaPlayer.OnSeekCompleteListener() { // from class: net.protyposis.android.mediaplayer.VideoView.6
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                if (VideoView.this.mOnSeekCompleteListener != null) {
                    VideoView.this.mOnSeekCompleteListener.onSeekComplete(mediaPlayer);
                }
            }
        };
        this.mCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: net.protyposis.android.mediaplayer.VideoView.7
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                VideoView.this.mCurrentState = 5;
                VideoView.this.mTargetState = 5;
                if (VideoView.this.mOnCompletionListener != null) {
                    VideoView.this.mOnCompletionListener.onCompletion(mediaPlayer);
                }
            }
        };
        this.mErrorListener = new MediaPlayer.OnErrorListener() { // from class: net.protyposis.android.mediaplayer.VideoView.8
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i11, int i12) {
                VideoView.this.mCurrentState = -1;
                VideoView.this.mTargetState = -1;
                if (VideoView.this.mOnErrorListener != null) {
                    return VideoView.this.mOnErrorListener.onError(mediaPlayer, i11, i12);
                }
                Toast.makeText(VideoView.this.getContext(), "Cannot play the video", 1).show();
                return true;
            }
        };
        this.mInfoListener = new MediaPlayer.OnInfoListener() { // from class: net.protyposis.android.mediaplayer.VideoView.9
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i11, int i12) {
                if (VideoView.this.mOnInfoListener != null) {
                    return VideoView.this.mOnInfoListener.onInfo(mediaPlayer, i11, i12);
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener() { // from class: net.protyposis.android.mediaplayer.VideoView.10
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i11) {
                if (VideoView.this.mOnBufferingUpdateListener != null) {
                    VideoView.this.mOnBufferingUpdateListener.onBufferingUpdate(mediaPlayer, i11);
                }
            }
        };
        initVideoView();
    }
}

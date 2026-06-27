package com.narvii.media.online.audio;

import android.animation.Animator;
import android.media.MediaPlayer;
import android.widget.SeekBar;
import com.narvii.app.NVContext;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes3.dex */
public class MusicPlayer implements SeekBar.OnSeekBarChangeListener {
    private static final int STATUS_BUFFERING = 3;
    private static final int STATUS_END = 5;
    private static final int STATUS_IDLE = 0;
    private static final int STATUS_PAUSE = 2;
    private static final int STATUS_PLAYING = 1;
    private static final int STATUS_PREPARING = 4;
    private static final int UPDATE_PERIOD = 1000;
    private Animator animator;
    private final AudioDownloader audioDownloader;
    private Sound currentPlayMusic;
    private MusicPlayStatusView playingStatusView;
    private SeekBar seekBar;
    private HashMap<String, Float> resumeSeekCache = new HashMap<>();
    private int playingStatus = 0;
    private TimerTask timerTask = new TimerTask() { // from class: com.narvii.media.online.audio.MusicPlayer.1
        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (MusicPlayer.this.mediaPlayer == null || !MusicPlayer.this.mediaPlayer.isPlaying() || MusicPlayer.this.seekBar == null || MusicPlayer.this.seekBar.isPressed()) {
                return;
            }
            Utils.post(new Runnable() { // from class: com.narvii.media.online.audio.MusicPlayer.1.1
                @Override // java.lang.Runnable
                public void run() {
                    MusicPlayer.this.updatePlayingView();
                }
            });
        }
    };
    private MediaPlayer mediaPlayer = new MediaPlayer();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    private @interface STATUS {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public MusicPlayer(NVContext nVContext) {
        this.mediaPlayer.setAudioStreamType(3);
        this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.narvii.media.online.audio.MusicPlayer.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
                Float f;
                MusicPlayer.this.mediaPlayer.start();
                if (MusicPlayer.this.currentPlayMusic != null && !TextUtils.isEmpty(MusicPlayer.this.currentPlayMusic.id) && (f = (Float) MusicPlayer.this.resumeSeekCache.get(MusicPlayer.this.currentPlayMusic.id)) != null) {
                    MusicPlayer.this.seek(f.floatValue());
                }
                MusicPlayer.this.setPlayingStatus(1);
            }
        });
        this.audioDownloader = (AudioDownloader) nVContext.getService("audioDownloader");
        new Timer().schedule(this.timerTask, 0L, 1000L);
        this.mediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.narvii.media.online.audio.MusicPlayer.3
            private int originalStatus;

            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                if (i == 701) {
                    this.originalStatus = MusicPlayer.this.playingStatus;
                    MusicPlayer.this.setPlayingStatus(3);
                    return true;
                }
                if (i != 702 || MusicPlayer.this.playingStatus != 3) {
                    return true;
                }
                MusicPlayer.this.setPlayingStatus(this.originalStatus);
                return true;
            }
        });
        this.mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.narvii.media.online.audio.MusicPlayer.4
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                if (MusicPlayer.this.mediaPlayer.isPlaying() || MusicPlayer.this.playingStatus == 2 || MusicPlayer.this.playingStatus == 4) {
                    MusicPlayer.this.updatePlayingView();
                } else {
                    MusicPlayer.this.setPlayingStatus(5);
                }
            }
        });
    }

    public void release() {
        this.timerTask.cancel();
        this.mediaPlayer.release();
    }

    public void bindViews(MusicSliderView musicSliderView, MusicPlayStatusView musicPlayStatusView) {
        SeekBar seekBar = this.seekBar;
        if (seekBar != null) {
            seekBar.setOnSeekBarChangeListener(null);
        }
        this.seekBar = musicSliderView;
        this.playingStatusView = musicPlayStatusView;
        SeekBar seekBar2 = this.seekBar;
        if (seekBar2 != null) {
            seekBar2.setOnSeekBarChangeListener(this);
        }
        updatePlayingView();
    }

    public void clearViewBind(MusicSliderView musicSliderView, MusicPlayStatusView musicPlayStatusView) {
        SeekBar seekBar = this.seekBar;
        if (musicSliderView == seekBar && seekBar != null) {
            seekBar.setOnSeekBarChangeListener(null);
            this.seekBar = null;
        }
        MusicPlayStatusView musicPlayStatusView2 = this.playingStatusView;
        if (musicPlayStatusView != musicPlayStatusView2 || musicPlayStatusView2 == null) {
            return;
        }
        this.playingStatusView = null;
    }

    public void play(Sound sound) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        Sound sound2 = this.currentPlayMusic;
        if (sound2 != null && !TextUtils.isEmpty(sound2.id)) {
            this.resumeSeekCache.put(this.currentPlayMusic.id, Float.valueOf(getcurrentProgress()));
        }
        this.currentPlayMusic = sound;
        try {
            setPlayingStatus(4);
            this.mediaPlayer.reset();
            if (this.audioDownloader.getDownloadState(sound) == -1) {
                this.mediaPlayer.setDataSource(this.audioDownloader.getDwonloadedFile(sound).getPath());
            } else {
                this.mediaPlayer.setDataSource(sound.getMediaUrl());
            }
            this.mediaPlayer.prepareAsync();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private float getcurrentProgress() {
        int i = this.playingStatus;
        if (i != 0) {
            if (i != 1 && i != 2 && i != 3) {
                return (i == 4 || i != 5) ? 0.0f : 1.0f;
            }
            int currentPosition = this.mediaPlayer.getCurrentPosition();
            int duration = this.mediaPlayer.getDuration();
            if (duration > 0) {
                return (currentPosition * 1.0f) / duration;
            }
        }
        return 0.0f;
    }

    public void resume() throws IllegalStateException {
        int i = this.playingStatus;
        if (i == 2 || i == 5) {
            this.mediaPlayer.start();
            setPlayingStatus(1);
        }
    }

    public void pause() throws IllegalStateException {
        if (this.mediaPlayer.isPlaying()) {
            this.mediaPlayer.pause();
            setPlayingStatus(2);
        }
    }

    public void stop() throws IllegalStateException {
        this.mediaPlayer.stop();
        setPlayingStatus(0);
        this.currentPlayMusic = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seek(float f) throws IllegalStateException {
        this.mediaPlayer.seekTo((int) (f * r0.getDuration()));
        if (this.playingStatus == 5) {
            setPlayingStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayingStatus(int i) {
        this.playingStatus = i;
        updatePlayingView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updatePlayingView() {
        /*
            r12 = this;
            android.widget.SeekBar r0 = r12.seekBar
            r1 = 5
            r2 = 4
            r3 = 3
            r4 = 0
            r5 = 2
            r6 = 1
            if (r0 == 0) goto L47
            int r7 = r12.playingStatus
            if (r7 == 0) goto L44
            if (r7 == r6) goto L21
            if (r7 == r5) goto L21
            if (r7 == r3) goto L21
            if (r7 == r2) goto L44
            if (r7 == r1) goto L19
            goto L47
        L19:
            int r0 = r0.getMax()
            r12.scrollProgress(r0)
            goto L47
        L21:
            android.media.MediaPlayer r0 = r12.mediaPlayer
            int r0 = r0.getCurrentPosition()
            android.media.MediaPlayer r7 = r12.mediaPlayer
            int r7 = r7.getDuration()
            if (r7 <= 0) goto L40
            android.widget.SeekBar r8 = r12.seekBar
            int r8 = r8.getMax()
            long r8 = (long) r8
            long r10 = (long) r0
            long r8 = r8 * r10
            long r10 = (long) r7
            long r8 = r8 / r10
            int r0 = (int) r8
            r12.scrollProgress(r0)
            goto L47
        L40:
            r12.scrollProgress(r4)
            goto L47
        L44:
            r12.scrollProgress(r4)
        L47:
            com.narvii.media.online.audio.MusicPlayStatusView r0 = r12.playingStatusView
            if (r0 == 0) goto L69
            int r7 = r12.playingStatus
            if (r7 == 0) goto L64
            if (r7 == r6) goto L60
            if (r7 == r5) goto L64
            if (r7 == r3) goto L5a
            if (r7 == r2) goto L5a
            if (r7 == r1) goto L64
            goto L69
        L5a:
            com.narvii.media.online.audio.MusicPlayStatusView r0 = r12.playingStatusView
            r0.setStatus(r5)
            goto L69
        L60:
            r0.setStatus(r6)
            goto L69
        L64:
            com.narvii.media.online.audio.MusicPlayStatusView r0 = r12.playingStatusView
            r0.setStatus(r4)
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.online.audio.MusicPlayer.updatePlayingView():void");
    }

    private void scrollProgress(int i) {
        this.seekBar.setProgress(i);
    }

    public boolean isPlaying() {
        int i;
        return this.mediaPlayer.isPlaying() || (i = this.playingStatus) == 3 || i == 1 || i == 4;
    }

    public boolean isCurrentPlayMusic(Sound sound) {
        Sound sound2;
        if (sound == null || (sound2 = this.currentPlayMusic) == null) {
            return this.currentPlayMusic == sound;
        }
        return sound2.equals(sound);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) throws IllegalStateException {
        seek((seekBar.getProgress() * 1.0f) / seekBar.getMax());
    }
}

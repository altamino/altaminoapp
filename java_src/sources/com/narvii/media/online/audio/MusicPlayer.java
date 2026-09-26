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

/* JADX INFO: loaded from: classes9.dex */
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
    private MediaPlayer mediaPlayer;
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

    @Retention(RetentionPolicy.SOURCE)
    private @interface STATUS {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i10, boolean z6) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    private float getcurrentProgress() {
        int i10 = this.playingStatus;
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            return i10 != 5 ? 0.0f : 1.0f;
        }
        int currentPosition = this.mediaPlayer.getCurrentPosition();
        int duration = this.mediaPlayer.getDuration();
        if (duration > 0) {
            return (currentPosition * 1.0f) / duration;
        }
        return 0.0f;
    }

    private void scrollProgress(int i10) {
        this.seekBar.setProgress(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seek(float f) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        mediaPlayer.seekTo((int) (f * mediaPlayer.getDuration()));
        if (this.playingStatus == 5) {
            setPlayingStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayingStatus(int i10) {
        this.playingStatus = i10;
        updatePlayingView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0043  */
    public void updatePlayingView() {
        SeekBar seekBar = this.seekBar;
        if (seekBar != null) {
            int i10 = this.playingStatus;
            if (i10 == 0) {
                scrollProgress(0);
            } else if (i10 == 1 || i10 == 2 || i10 == 3) {
                int currentPosition = this.mediaPlayer.getCurrentPosition();
                int duration = this.mediaPlayer.getDuration();
                if (duration > 0) {
                    scrollProgress((int) ((((long) this.seekBar.getMax()) * ((long) currentPosition)) / ((long) duration)));
                } else {
                    scrollProgress(0);
                }
            } else if (i10 == 4) {
                scrollProgress(0);
            } else if (i10 == 5) {
                scrollProgress(seekBar.getMax());
            }
        }
        MusicPlayStatusView musicPlayStatusView = this.playingStatusView;
        if (musicPlayStatusView != null) {
            int i11 = this.playingStatus;
            if (i11 != 0) {
                if (i11 == 1) {
                    musicPlayStatusView.setStatus(1);
                    return;
                } else if (i11 != 2) {
                    if (i11 == 3 || i11 == 4) {
                        musicPlayStatusView.setStatus(2);
                        return;
                    } else if (i11 != 5) {
                        return;
                    }
                }
            }
            musicPlayStatusView.setStatus(0);
        }
    }

    public void bindViews(MusicSliderView musicSliderView, MusicPlayStatusView musicPlayStatusView) {
        SeekBar seekBar = this.seekBar;
        if (seekBar != null) {
            seekBar.setOnSeekBarChangeListener(null);
        }
        this.seekBar = musicSliderView;
        this.playingStatusView = musicPlayStatusView;
        if (musicSliderView != null) {
            musicSliderView.setOnSeekBarChangeListener(this);
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

    public boolean isCurrentPlayMusic(Sound sound) {
        Sound sound2;
        if (sound == null || (sound2 = this.currentPlayMusic) == null) {
            return this.currentPlayMusic == sound;
        }
        return sound2.equals(sound);
    }

    public boolean isPlaying() {
        int i10;
        return this.mediaPlayer.isPlaying() || (i10 = this.playingStatus) == 3 || i10 == 1 || i10 == 4;
    }

    public void pause() {
        if (this.mediaPlayer.isPlaying()) {
            this.mediaPlayer.pause();
            setPlayingStatus(2);
        }
    }

    public void play(Sound sound) {
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

    public void release() {
        this.timerTask.cancel();
        this.mediaPlayer.release();
    }

    public void resume() {
        int i10 = this.playingStatus;
        if (i10 == 2 || i10 == 5) {
            this.mediaPlayer.start();
            setPlayingStatus(1);
        }
    }

    public void stop() {
        this.mediaPlayer.stop();
        setPlayingStatus(0);
        this.currentPlayMusic = null;
    }

    public MusicPlayer(NVContext nVContext) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setAudioStreamType(3);
        this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.narvii.media.online.audio.MusicPlayer.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer2) {
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
            public boolean onInfo(MediaPlayer mediaPlayer2, int i10, int i11) {
                if (i10 == 701) {
                    this.originalStatus = MusicPlayer.this.playingStatus;
                    MusicPlayer.this.setPlayingStatus(3);
                    return true;
                }
                if (i10 != 702 || MusicPlayer.this.playingStatus != 3) {
                    return true;
                }
                MusicPlayer.this.setPlayingStatus(this.originalStatus);
                return true;
            }
        });
        this.mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.narvii.media.online.audio.MusicPlayer.4
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) {
                if (MusicPlayer.this.mediaPlayer.isPlaying() || MusicPlayer.this.playingStatus == 2 || MusicPlayer.this.playingStatus == 4) {
                    MusicPlayer.this.updatePlayingView();
                } else {
                    MusicPlayer.this.setPlayingStatus(5);
                }
            }
        });
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        seek((seekBar.getProgress() * 1.0f) / seekBar.getMax());
    }
}

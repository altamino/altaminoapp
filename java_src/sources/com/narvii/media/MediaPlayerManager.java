package com.narvii.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.audio.AudioHelper;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MediaPlayerManager {
    AudioHelper audioHelper;
    public AudioManager audioManager;
    String currentUrl;
    boolean isPlaying;
    private MediaPlayer mMediaPlayer;
    MediaLoader mediaLoader;
    private NVContext nvContext;
    public Sensor sensor;
    public SensorManager sensorManager;
    WeakReference<MediaStatusChangeListener> statusChangeListenerWR;
    boolean receiverRegistered = false;
    private final ConcurrentHashMap<String, Integer> pausingMediaMap = new ConcurrentHashMap<>();
    BroadcastReceiver headsetReceiver = new BroadcastReceiver() { // from class: com.narvii.media.MediaPlayerManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            action.hashCode();
            if (action.equals("android.intent.action.HEADSET_PLUG")) {
                MediaPlayerManager.this.resetSpeakMode();
            }
        }
    };
    SensorEventListener sensorEventListener = new SensorEventListener() { // from class: com.narvii.media.MediaPlayerManager.2
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.values[0] >= MediaPlayerManager.this.sensor.getMaximumRange()) {
                MediaPlayerManager.this.resetSpeakMode(false);
            } else {
                MediaPlayerManager.this.resetSpeakMode(true);
            }
        }
    };
    Runnable updateProgressRunnable = new Runnable() { // from class: com.narvii.media.MediaPlayerManager.3
        @Override // java.lang.Runnable
        public void run() {
            WeakReference<MediaStatusChangeListener> weakReference;
            MediaStatusChangeListener mediaStatusChangeListener;
            MediaPlayerManager mediaPlayerManager = MediaPlayerManager.this;
            if (mediaPlayerManager.currentUrl == null || mediaPlayerManager.mMediaPlayer == null) {
                return;
            }
            MediaPlayerManager mediaPlayerManager2 = MediaPlayerManager.this;
            if (!mediaPlayerManager2.isPlaying || (weakReference = mediaPlayerManager2.statusChangeListenerWR) == null || (mediaStatusChangeListener = weakReference.get()) == null || !Utils.isStringEquals(mediaStatusChangeListener.getMediaUrl(), MediaPlayerManager.this.currentUrl)) {
                return;
            }
            MediaPlayerManager mediaPlayerManager3 = MediaPlayerManager.this;
            mediaStatusChangeListener.onProgressChange(mediaPlayerManager3.currentUrl, mediaPlayerManager3.mMediaPlayer.getCurrentPosition(), MediaPlayerManager.this.mMediaPlayer.getDuration());
            Utils.postDelayed(MediaPlayerManager.this.updateProgressRunnable, 10L);
        }
    };

    public void pauseMediaPlayer() {
        pauseMediaPlayer(false);
    }

    public void resetSpeakMode() {
        resetSpeakMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abandonAudioFocus() {
        AudioManager audioManager = this.audioManager;
        if (audioManager != null) {
            try {
                audioManager.abandonAudioFocus(null);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaStatusChangeListener getStatusChangeListener() {
        MediaStatusChangeListener mediaStatusChangeListener;
        WeakReference<MediaStatusChangeListener> weakReference = this.statusChangeListenerWR;
        if (weakReference == null || (mediaStatusChangeListener = weakReference.get()) == null || !mediaStatusChangeListener.getMediaUrl().equals(this.currentUrl)) {
            return null;
        }
        return mediaStatusChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrentUrl(String str) {
        return str != null && Utils.isStringEquals(this.currentUrl, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlayError() {
        try {
            this.mMediaPlayer.stop();
        } catch (Exception unused) {
        }
        NVToast.makeText(this.nvContext.getContext(), R.string.fail_play_voice_message, 0).show();
        resetSpeakMode();
        this.isPlaying = false;
        MediaStatusChangeListener statusChangeListener = getStatusChangeListener();
        if (statusChangeListener != null) {
            statusChangeListener.onStatusChange(MediaStatus.IDLE);
        }
        Utils.handler.removeCallbacks(this.updateProgressRunnable);
        this.currentUrl = null;
        this.statusChangeListenerWR = null;
        if (this.receiverRegistered) {
            this.nvContext.getContext().unregisterReceiver(this.headsetReceiver);
            this.sensorManager.unregisterListener(this.sensorEventListener);
            this.receiverRegistered = false;
        }
        abandonAudioFocus();
    }

    private void pauseMediaPlayer(boolean z6) {
        MediaStatusChangeListener statusChangeListener;
        String str = this.currentUrl;
        if (str == null) {
            return;
        }
        if (this.isPlaying) {
            resetSpeakMode();
            this.isPlaying = false;
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                this.pausingMediaMap.put(this.currentUrl, Integer.valueOf(mediaPlayer.getCurrentPosition()));
                this.mMediaPlayer.stop();
            }
            MediaStatusChangeListener statusChangeListener2 = getStatusChangeListener();
            if (statusChangeListener2 != null) {
                statusChangeListener2.onStatusChange(new MediaStatus(2, this.pausingMediaMap.get(this.currentUrl).intValue()));
            }
            if (this.receiverRegistered) {
                this.nvContext.getContext().unregisterReceiver(this.headsetReceiver);
                this.sensorManager.unregisterListener(this.sensorEventListener);
                this.receiverRegistered = false;
            }
        } else if (getMediaStatus(str).status == 3 && (statusChangeListener = getStatusChangeListener()) != null) {
            statusChangeListener.onStatusChange(MediaStatus.IDLE);
        }
        Utils.handler.removeCallbacks(this.updateProgressRunnable);
        this.currentUrl = null;
        this.statusChangeListenerWR = null;
        if (z6) {
            return;
        }
        abandonAudioFocus();
    }

    public void playAudio(String str, final int i10, MediaStatusChangeListener mediaStatusChangeListener) {
        if (this.audioHelper.showAVChatOnToast()) {
            return;
        }
        if (!isUrlPlaying(str)) {
            pauseMediaPlayer(true);
        }
        this.currentUrl = str;
        this.statusChangeListenerWR = new WeakReference<>(mediaStatusChangeListener);
        if (!isUrlPlaying(str)) {
            this.mediaLoader.loadMedia(str, new MediaLoader.OnMediaLoadListener() { // from class: com.narvii.media.MediaPlayerManager.4
                @Override // com.narvii.media.MediaLoader.OnMediaLoadListener
                public void onError(String str2) {
                    if (MediaPlayerManager.this.isCurrentUrl(str2)) {
                        NVToast.makeText(MediaPlayerManager.this.nvContext.getContext(), R.string.fail_play_voice_message, 0).show();
                        MediaStatusChangeListener statusChangeListener = MediaPlayerManager.this.getStatusChangeListener();
                        if (statusChangeListener != null) {
                            statusChangeListener.onStatusChange(MediaStatus.IDLE);
                        }
                    }
                }

                @Override // com.narvii.media.MediaLoader.OnMediaLoadListener
                public void onLoading(String str2) {
                    MediaStatusChangeListener statusChangeListener;
                    if (!MediaPlayerManager.this.isCurrentUrl(str2) || (statusChangeListener = MediaPlayerManager.this.getStatusChangeListener()) == null) {
                        return;
                    }
                    statusChangeListener.onStatusChange(MediaStatus.DOWNLOADING);
                }

                @Override // com.narvii.media.MediaLoader.OnMediaLoadListener
                public void onLocalReady(final String str2, FileDescriptor fileDescriptor) {
                    if (MediaPlayerManager.this.getStatusChangeListener() != null && MediaPlayerManager.this.isCurrentUrl(str2)) {
                        if (MediaPlayerManager.this.mMediaPlayer == null) {
                            MediaPlayerManager.this.mMediaPlayer = new MediaPlayer();
                        } else {
                            MediaPlayerManager.this.mMediaPlayer.reset();
                        }
                        MediaPlayerManager mediaPlayerManager = MediaPlayerManager.this;
                        mediaPlayerManager.isPlaying = false;
                        mediaPlayerManager.audioManager = (AudioManager) mediaPlayerManager.nvContext.getContext().getSystemService("audio");
                        MediaPlayerManager.this.mMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.narvii.media.MediaPlayerManager.4.1
                            @Override // android.media.MediaPlayer.OnCompletionListener
                            public void onCompletion(MediaPlayer mediaPlayer) {
                                MediaPlayerManager.this.resetSpeakMode();
                                MediaPlayerManager mediaPlayerManager2 = MediaPlayerManager.this;
                                mediaPlayerManager2.isPlaying = false;
                                MediaStatusChangeListener statusChangeListener = mediaPlayerManager2.getStatusChangeListener();
                                if (statusChangeListener != null) {
                                    MediaPlayerManager mediaPlayerManager3 = MediaPlayerManager.this;
                                    statusChangeListener.onProgressChange(mediaPlayerManager3.currentUrl, mediaPlayerManager3.mMediaPlayer.getDuration(), MediaPlayerManager.this.mMediaPlayer.getDuration());
                                }
                                if (MediaPlayerManager.this.pausingMediaMap.containsKey(str2)) {
                                    MediaPlayerManager.this.pausingMediaMap.remove(str2);
                                }
                                if (statusChangeListener != null) {
                                    statusChangeListener.onStatusChange(MediaStatus.IDLE);
                                }
                                MediaPlayerManager mediaPlayerManager4 = MediaPlayerManager.this;
                                mediaPlayerManager4.currentUrl = null;
                                mediaPlayerManager4.statusChangeListenerWR = null;
                                if (mediaPlayerManager4.receiverRegistered) {
                                    mediaPlayerManager4.nvContext.getContext().unregisterReceiver(MediaPlayerManager.this.headsetReceiver);
                                    MediaPlayerManager mediaPlayerManager5 = MediaPlayerManager.this;
                                    mediaPlayerManager5.sensorManager.unregisterListener(mediaPlayerManager5.sensorEventListener);
                                    MediaPlayerManager.this.receiverRegistered = false;
                                }
                                Utils.handler.removeCallbacks(MediaPlayerManager.this.updateProgressRunnable);
                                MediaPlayerManager.this.abandonAudioFocus();
                            }
                        });
                        MediaPlayerManager.this.mMediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.narvii.media.MediaPlayerManager.4.2
                            @Override // android.media.MediaPlayer.OnErrorListener
                            public boolean onError(MediaPlayer mediaPlayer, int i11, int i12) {
                                MediaPlayerManager.this.onPlayError();
                                Log.i("play", "play audio error " + i11);
                                return true;
                            }
                        });
                        MediaPlayerManager.this.mMediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.narvii.media.MediaPlayerManager.4.3
                            @Override // android.media.MediaPlayer.OnInfoListener
                            public boolean onInfo(MediaPlayer mediaPlayer, int i11, int i12) {
                                Log.i("play", "play audio info " + i11);
                                return false;
                            }
                        });
                        try {
                            AudioManager audioManager = MediaPlayerManager.this.audioManager;
                            if (audioManager != null) {
                                try {
                                    audioManager.requestAudioFocus(null, 3, 2);
                                } catch (Exception unused) {
                                }
                            }
                            MediaPlayerManager.this.mMediaPlayer.setAudioStreamType(3);
                            MediaPlayerManager.this.mMediaPlayer.setDataSource(fileDescriptor);
                            MediaPlayerManager.this.mMediaPlayer.prepare();
                            MediaPlayerManager.this.mMediaPlayer.seekTo(i10);
                            AudioManager audioManager2 = MediaPlayerManager.this.audioManager;
                            if (audioManager2 != null && audioManager2.isSpeakerphoneOn() && MediaPlayerManager.this.audioManager.getMode() == 0) {
                                if (MediaPlayerManager.this.audioManager.getStreamVolume(3) < MediaPlayerManager.this.audioManager.getStreamMaxVolume(3) * 0.2f) {
                                    NVToast.makeText(MediaPlayerManager.this.nvContext.getContext(), R.string.increase_volume_to_hear, 0).show();
                                }
                            }
                            MediaPlayerManager.this.mMediaPlayer.start();
                            MediaPlayerManager mediaPlayerManager2 = MediaPlayerManager.this;
                            mediaPlayerManager2.isPlaying = true;
                            if (Build.VERSION.SDK_INT >= 33) {
                                mediaPlayerManager2.nvContext.getContext().registerReceiver(MediaPlayerManager.this.headsetReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED), 4);
                            } else {
                                mediaPlayerManager2.nvContext.getContext().registerReceiver(MediaPlayerManager.this.headsetReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
                            }
                            MediaPlayerManager mediaPlayerManager3 = MediaPlayerManager.this;
                            mediaPlayerManager3.sensorManager.registerListener(mediaPlayerManager3.sensorEventListener, mediaPlayerManager3.sensor, 3);
                            MediaPlayerManager mediaPlayerManager4 = MediaPlayerManager.this;
                            mediaPlayerManager4.receiverRegistered = true;
                            Utils.post(mediaPlayerManager4.updateProgressRunnable);
                            MediaStatusChangeListener statusChangeListener = MediaPlayerManager.this.getStatusChangeListener();
                            if (statusChangeListener != null) {
                                statusChangeListener.onStatusChange(new MediaStatus(1, MediaPlayerManager.this.mMediaPlayer.getCurrentPosition()));
                            }
                        } catch (Exception unused2) {
                            MediaPlayerManager.this.onPlayError();
                        }
                    }
                }
            });
        } else {
            this.mMediaPlayer.seekTo(i10);
            Utils.post(this.updateProgressRunnable);
        }
    }

    public void resetSpeakMode(boolean z6) {
        AudioManager audioManager;
        if (!this.isPlaying || (audioManager = this.audioManager) == null || this.mMediaPlayer == null) {
            return;
        }
        try {
            if (audioManager.isWiredHeadsetOn()) {
                this.audioManager.setSpeakerphoneOn(false);
                this.audioManager.setMode(0);
            } else if (z6) {
                this.audioManager.setMode(3);
                this.audioManager.setSpeakerphoneOn(false);
            } else {
                this.audioManager.setMode(0);
                this.audioManager.setSpeakerphoneOn(true);
            }
        } catch (Exception e) {
            if (e.getMessage() != null) {
                Log.e(e.getMessage());
            }
        }
    }

    public void tryListenMediaStatusChange(MediaStatusChangeListener mediaStatusChangeListener) {
        if (mediaStatusChangeListener == null || this.currentUrl == null || !Utils.isStringEquals(mediaStatusChangeListener.getMediaUrl(), this.currentUrl)) {
            return;
        }
        this.statusChangeListenerWR = new WeakReference<>(mediaStatusChangeListener);
        Utils.post(this.updateProgressRunnable);
    }

    public MediaPlayerManager(NVContext nVContext) {
        this.nvContext = nVContext;
        this.mediaLoader = (MediaLoader) nVContext.getService("mediaLoader");
        SensorManager sensorManager = (SensorManager) nVContext.getContext().getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.sensor = sensorManager.getDefaultSensor(8);
        this.audioHelper = new AudioHelper(nVContext);
    }

    private boolean isUrlPlaying(String str) {
        MediaPlayer mediaPlayer;
        if (isCurrentUrl(str) && (mediaPlayer = this.mMediaPlayer) != null && mediaPlayer.isPlaying()) {
            return true;
        }
        return false;
    }

    public MediaStatus getMediaStatus(String str) {
        MediaLoader mediaLoader;
        if (TextUtils.isEmpty(str)) {
            return MediaStatus.IDLE;
        }
        boolean zIsCurrentUrl = isCurrentUrl(str);
        if (this.mMediaPlayer != null && this.isPlaying && zIsCurrentUrl) {
            return new MediaStatus(1, this.mMediaPlayer.getCurrentPosition());
        }
        if (zIsCurrentUrl && (mediaLoader = this.mediaLoader) != null && mediaLoader.isDownloading(str)) {
            return MediaStatus.DOWNLOADING;
        }
        if (this.pausingMediaMap.containsKey(str)) {
            return new MediaStatus(2, this.pausingMediaMap.get(str).intValue());
        }
        return MediaStatus.IDLE;
    }

    public void releaseMediaPlayer() {
        pauseMediaPlayer();
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }
}

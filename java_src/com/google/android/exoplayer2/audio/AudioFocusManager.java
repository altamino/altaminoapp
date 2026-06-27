package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes.dex */
public final class AudioFocusManager {
    private static final int AUDIO_FOCUS_STATE_HAVE_FOCUS = 1;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT = 2;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK = 3;
    private static final int AUDIO_FOCUS_STATE_LOST_FOCUS = -1;
    private static final int AUDIO_FOCUS_STATE_NO_FOCUS = 0;
    public static final int PLAYER_COMMAND_DO_NOT_PLAY = -1;
    public static final int PLAYER_COMMAND_PLAY_WHEN_READY = 1;
    public static final int PLAYER_COMMAND_WAIT_FOR_CALLBACK = 0;
    private static final String TAG = "AudioFocusManager";
    private static final float VOLUME_MULTIPLIER_DEFAULT = 1.0f;
    private static final float VOLUME_MULTIPLIER_DUCK = 0.2f;
    private AudioAttributes audioAttributes;
    private AudioFocusRequest audioFocusRequest;
    private final AudioManager audioManager;
    private int focusGain;
    private final PlayerControl playerControl;
    private boolean rebuildAudioFocusRequest;
    private float volumeMultiplier = 1.0f;
    private final AudioFocusListener focusListener = new AudioFocusListener();
    private int audioFocusState = 0;

    public interface PlayerControl {
        void executePlayerCommand(int i);

        void setVolumeMultiplier(float f);
    }

    private int handleIdle(boolean z) {
        return z ? 1 : -1;
    }

    public AudioFocusManager(Context context, PlayerControl playerControl) {
        this.audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.playerControl = playerControl;
    }

    public float getVolumeMultiplier() {
        return this.volumeMultiplier;
    }

    public int handlePrepare(boolean z) {
        if (z) {
            return requestAudioFocus();
        }
        return -1;
    }

    public int handleSetPlayWhenReady(boolean z, int i) {
        if (z) {
            return i == 1 ? handleIdle(z) : requestAudioFocus();
        }
        abandonAudioFocus();
        return -1;
    }

    public void handleStop() {
        abandonAudioFocus(true);
    }

    private int requestAudioFocus() {
        int iRequestAudioFocusDefault;
        if (this.focusGain == 0) {
            if (this.audioFocusState != 0) {
                abandonAudioFocus(true);
            }
            return 1;
        }
        if (this.audioFocusState == 0) {
            if (Util.SDK_INT >= 26) {
                iRequestAudioFocusDefault = requestAudioFocusV26();
            } else {
                iRequestAudioFocusDefault = requestAudioFocusDefault();
            }
            this.audioFocusState = iRequestAudioFocusDefault == 1 ? 1 : 0;
        }
        int i = this.audioFocusState;
        if (i == 0) {
            return -1;
        }
        return i == 2 ? 0 : 1;
    }

    private void abandonAudioFocus() {
        abandonAudioFocus(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abandonAudioFocus(boolean z) {
        if (this.focusGain == 0 && this.audioFocusState == 0) {
            return;
        }
        if (this.focusGain != 1 || this.audioFocusState == -1 || z) {
            if (Util.SDK_INT >= 26) {
                abandonAudioFocusV26();
            } else {
                abandonAudioFocusDefault();
            }
            this.audioFocusState = 0;
        }
    }

    private int requestAudioFocusDefault() {
        AudioManager audioManager = this.audioManager;
        AudioFocusListener audioFocusListener = this.focusListener;
        AudioAttributes audioAttributes = this.audioAttributes;
        Assertions.checkNotNull(audioAttributes);
        return audioManager.requestAudioFocus(audioFocusListener, Util.getStreamTypeForAudioUsage(audioAttributes.usage), this.focusGain);
    }

    private int requestAudioFocusV26() {
        if (this.audioFocusRequest == null || this.rebuildAudioFocusRequest) {
            AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
            AudioFocusRequest.Builder builder = audioFocusRequest == null ? new AudioFocusRequest.Builder(this.focusGain) : new AudioFocusRequest.Builder(audioFocusRequest);
            boolean zWillPauseWhenDucked = willPauseWhenDucked();
            AudioAttributes audioAttributes = this.audioAttributes;
            Assertions.checkNotNull(audioAttributes);
            this.audioFocusRequest = builder.setAudioAttributes(audioAttributes.getAudioAttributesV21()).setWillPauseWhenDucked(zWillPauseWhenDucked).setOnAudioFocusChangeListener(this.focusListener).build();
            this.rebuildAudioFocusRequest = false;
        }
        return this.audioManager.requestAudioFocus(this.audioFocusRequest);
    }

    private void abandonAudioFocusDefault() {
        this.audioManager.abandonAudioFocus(this.focusListener);
    }

    private void abandonAudioFocusV26() {
        AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
        if (audioFocusRequest != null) {
            this.audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean willPauseWhenDucked() {
        AudioAttributes audioAttributes = this.audioAttributes;
        return audioAttributes != null && audioAttributes.contentType == 1;
    }

    private class AudioFocusListener implements AudioManager.OnAudioFocusChangeListener {
        private AudioFocusListener() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i != -3) {
                if (i == -2) {
                    AudioFocusManager.this.audioFocusState = 2;
                } else if (i == -1) {
                    AudioFocusManager.this.audioFocusState = -1;
                } else if (i == 1) {
                    AudioFocusManager.this.audioFocusState = 1;
                } else {
                    Log.w(AudioFocusManager.TAG, "Unknown focus change type: " + i);
                    return;
                }
            } else if (AudioFocusManager.this.willPauseWhenDucked()) {
                AudioFocusManager.this.audioFocusState = 2;
            } else {
                AudioFocusManager.this.audioFocusState = 3;
            }
            int i2 = AudioFocusManager.this.audioFocusState;
            if (i2 == -1) {
                AudioFocusManager.this.playerControl.executePlayerCommand(-1);
                AudioFocusManager.this.abandonAudioFocus(true);
            } else if (i2 != 0) {
                if (i2 == 1) {
                    AudioFocusManager.this.playerControl.executePlayerCommand(1);
                } else if (i2 == 2) {
                    AudioFocusManager.this.playerControl.executePlayerCommand(0);
                } else if (i2 != 3) {
                    throw new IllegalStateException("Unknown audio focus state: " + AudioFocusManager.this.audioFocusState);
                }
            }
            float f = AudioFocusManager.this.audioFocusState == 3 ? 0.2f : 1.0f;
            if (AudioFocusManager.this.volumeMultiplier != f) {
                AudioFocusManager.this.volumeMultiplier = f;
                AudioFocusManager.this.playerControl.setVolumeMultiplier(f);
            }
        }
    }
}

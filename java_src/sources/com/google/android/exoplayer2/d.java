package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
final class d {
    private static final int AUDIOFOCUS_GAIN = 1;
    private static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    private static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    private static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    private static final int AUDIOFOCUS_NONE = 0;
    private static final int AUDIO_FOCUS_STATE_HAVE_FOCUS = 1;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT = 2;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK = 3;
    private static final int AUDIO_FOCUS_STATE_NO_FOCUS = 0;
    public static final int PLAYER_COMMAND_DO_NOT_PLAY = -1;
    public static final int PLAYER_COMMAND_PLAY_WHEN_READY = 1;
    public static final int PLAYER_COMMAND_WAIT_FOR_CALLBACK = 0;
    private static final String TAG = "AudioFocusManager";
    private static final float VOLUME_MULTIPLIER_DEFAULT = 1.0f;
    private static final float VOLUME_MULTIPLIER_DUCK = 0.2f;

    @Nullable
    private com.google.android.exoplayer2.audio.e audioAttributes;
    private AudioFocusRequest audioFocusRequest;
    private final AudioManager audioManager;
    private int focusGainToRequest;
    private final a focusListener;

    @Nullable
    private b playerControl;
    private boolean rebuildAudioFocusRequest;
    private float volumeMultiplier = 1.0f;
    private int audioFocusState = 0;

    /* JADX INFO: Access modifiers changed from: private */
    class a implements AudioManager.OnAudioFocusChangeListener {
        private final Handler eventHandler;

        public a(Handler handler) {
            this.eventHandler = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i10) {
            d.this.h(i10);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i10) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1188a.b(i10);
                }
            });
        }
    }

    public interface b {
        void y(float f);

        void z(int i10);
    }

    private static int e(@Nullable com.google.android.exoplayer2.audio.e eVar) {
        if (eVar == null) {
            return 0;
        }
        switch (eVar.usage) {
            case 0:
                com.google.android.exoplayer2.util.t.i(TAG, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (eVar.contentType == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                com.google.android.exoplayer2.util.t.i(TAG, "Unidentified audio usage: " + eVar.usage);
                return 0;
            case 16:
                return com.google.android.exoplayer2.util.o0.SDK_INT >= 19 ? 4 : 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i10) {
        if (i10 == -3 || i10 == -2) {
            if (i10 != -2 && !q()) {
                n(3);
                return;
            } else {
                f(0);
                n(2);
                return;
            }
        }
        if (i10 == -1) {
            f(-1);
            b();
        } else if (i10 == 1) {
            n(1);
            f(1);
        } else {
            com.google.android.exoplayer2.util.t.i(TAG, "Unknown focus change type: " + i10);
        }
    }

    private boolean o(int i10) {
        return i10 == 1 || this.focusGainToRequest != 1;
    }

    public float g() {
        return this.volumeMultiplier;
    }

    public void i() {
        this.playerControl = null;
        b();
    }

    private void a() {
        this.audioManager.abandonAudioFocus(this.focusListener);
    }

    private void b() {
        if (this.audioFocusState == 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 26) {
            c();
        } else {
            a();
        }
        n(0);
    }

    @RequiresApi
    private void c() {
        AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
        if (audioFocusRequest != null) {
            this.audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    private void f(int i10) {
        b bVar = this.playerControl;
        if (bVar != null) {
            bVar.z(i10);
        }
    }

    private int j() {
        if (this.audioFocusState == 1) {
            return 1;
        }
        if ((com.google.android.exoplayer2.util.o0.SDK_INT >= 26 ? l() : k()) == 1) {
            n(1);
            return 1;
        }
        n(0);
        return -1;
    }

    private int k() {
        return this.audioManager.requestAudioFocus(this.focusListener, com.google.android.exoplayer2.util.o0.a0(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.audioAttributes)).usage), this.focusGainToRequest);
    }

    @RequiresApi
    private int l() {
        AudioFocusRequest.Builder builderA;
        AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
        if (audioFocusRequest == null || this.rebuildAudioFocusRequest) {
            if (audioFocusRequest == null) {
                androidx.media3.exoplayer.i.a();
                builderA = androidx.media3.exoplayer.g.a(this.focusGainToRequest);
            } else {
                androidx.media3.exoplayer.i.a();
                builderA = androidx.media3.exoplayer.h.a(this.audioFocusRequest);
            }
            this.audioFocusRequest = builderA.setAudioAttributes(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.audioAttributes)).b().audioAttributes).setWillPauseWhenDucked(q()).setOnAudioFocusChangeListener(this.focusListener).build();
            this.rebuildAudioFocusRequest = false;
        }
        return this.audioManager.requestAudioFocus(this.audioFocusRequest);
    }

    private void n(int i10) {
        if (this.audioFocusState == i10) {
            return;
        }
        this.audioFocusState = i10;
        float f = i10 == 3 ? 0.2f : 1.0f;
        if (this.volumeMultiplier == f) {
            return;
        }
        this.volumeMultiplier = f;
        b bVar = this.playerControl;
        if (bVar != null) {
            bVar.y(f);
        }
    }

    private boolean q() {
        com.google.android.exoplayer2.audio.e eVar = this.audioAttributes;
        return eVar != null && eVar.contentType == 1;
    }

    public void m(@Nullable com.google.android.exoplayer2.audio.e eVar) {
        if (com.google.android.exoplayer2.util.o0.c(this.audioAttributes, eVar)) {
            return;
        }
        this.audioAttributes = eVar;
        int iE = e(eVar);
        this.focusGainToRequest = iE;
        boolean z6 = true;
        if (iE != 1 && iE != 0) {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.b(z6, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public d(Context context, Handler handler, b bVar) {
        this.audioManager = (AudioManager) com.google.android.exoplayer2.util.a.e((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.playerControl = bVar;
        this.focusListener = new a(handler);
    }

    public int p(boolean z6, int i10) {
        if (o(i10)) {
            b();
            if (!z6) {
                return -1;
            }
            return 1;
        }
        if (!z6) {
            return -1;
        }
        return j();
    }
}

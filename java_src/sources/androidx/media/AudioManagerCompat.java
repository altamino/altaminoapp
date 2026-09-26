package androidx.media;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioManagerCompat {
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    private static final String TAG = "AudioManCompat";

    @RequiresApi
    private static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static boolean a(AudioManager audioManager) {
            return audioManager.isVolumeFixed();
        }
    }

    @RequiresApi
    private static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static int a(AudioManager audioManager, AudioFocusRequest audioFocusRequest) {
            return audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }

        @DoNotInline
        static int b(AudioManager audioManager, AudioFocusRequest audioFocusRequest) {
            return audioManager.requestAudioFocus(audioFocusRequest);
        }
    }

    @RequiresApi
    private static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static int a(AudioManager audioManager, int i10) {
            return audioManager.getStreamMinVolume(i10);
        }
    }

    private AudioManagerCompat() {
    }
}

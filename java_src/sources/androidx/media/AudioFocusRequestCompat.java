package androidx.media;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;

/* JADX INFO: loaded from: classes2.dex */
public class AudioFocusRequestCompat {
    static final AudioAttributesCompat FOCUS_DEFAULT_ATTR = new AudioAttributesCompat.Builder().c(1).a();
    private final AudioAttributesCompat mAudioAttributesCompat;
    private final Handler mFocusChangeHandler;
    private final int mFocusGain;
    private final Object mFrameworkAudioFocusRequest;
    private final AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;
    private final boolean mPauseOnDuck;

    @RequiresApi
    private static class Api26Impl {
        @DoNotInline
        static AudioFocusRequest a(int i10, AudioAttributes audioAttributes, boolean z6, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            return new AudioFocusRequest.Builder(i10).setAudioAttributes(audioAttributes).setWillPauseWhenDucked(z6).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        }

        private Api26Impl() {
        }
    }

    private static class OnAudioFocusChangeListenerHandlerCompat implements Handler.Callback, AudioManager.OnAudioFocusChangeListener {
        private static final int FOCUS_CHANGE = 2782386;
        private final Handler mHandler;
        private final AudioManager.OnAudioFocusChangeListener mListener;

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != FOCUS_CHANGE) {
                return false;
            }
            this.mListener.onAudioFocusChange(message.arg1);
            return true;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i10) {
            Handler handler = this.mHandler;
            handler.sendMessage(Message.obtain(handler, FOCUS_CHANGE, i10, 0));
        }
    }

    @NonNull
    public AudioAttributesCompat a() {
        return this.mAudioAttributesCompat;
    }

    @NonNull
    public Handler b() {
        return this.mFocusChangeHandler;
    }

    public int c() {
        return this.mFocusGain;
    }

    @NonNull
    public AudioManager.OnAudioFocusChangeListener d() {
        return this.mOnAudioFocusChangeListener;
    }

    public boolean e() {
        return this.mPauseOnDuck;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
        return this.mFocusGain == audioFocusRequestCompat.mFocusGain && this.mPauseOnDuck == audioFocusRequestCompat.mPauseOnDuck && ObjectsCompat.a(this.mOnAudioFocusChangeListener, audioFocusRequestCompat.mOnAudioFocusChangeListener) && ObjectsCompat.a(this.mFocusChangeHandler, audioFocusRequestCompat.mFocusChangeHandler) && ObjectsCompat.a(this.mAudioAttributesCompat, audioFocusRequestCompat.mAudioAttributesCompat);
    }

    public int hashCode() {
        return ObjectsCompat.b(Integer.valueOf(this.mFocusGain), this.mOnAudioFocusChangeListener, this.mFocusChangeHandler, this.mAudioAttributesCompat, Boolean.valueOf(this.mPauseOnDuck));
    }

    public static final class Builder {
        private AudioAttributesCompat mAudioAttributesCompat;
        private Handler mFocusChangeHandler;
        private int mFocusGain;
        private AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;
        private boolean mPauseOnDuck;

        public Builder(int i10) {
            this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
            b(i10);
        }

        private static boolean a(int i10) {
            return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4;
        }

        @NonNull
        public Builder b(int i10) {
            if (a(i10)) {
                this.mFocusGain = i10;
                return this;
            }
            throw new IllegalArgumentException("Illegal audio focus gain type " + i10);
        }

        public Builder(@NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
            this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
            if (audioFocusRequestCompat != null) {
                this.mFocusGain = audioFocusRequestCompat.c();
                this.mOnAudioFocusChangeListener = audioFocusRequestCompat.d();
                this.mFocusChangeHandler = audioFocusRequestCompat.b();
                this.mAudioAttributesCompat = audioFocusRequestCompat.a();
                this.mPauseOnDuck = audioFocusRequestCompat.e();
                return;
            }
            throw new IllegalArgumentException("AudioFocusRequestCompat to copy must not be null");
        }
    }
}

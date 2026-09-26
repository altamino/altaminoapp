package androidx.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class AudioCapabilitiesReceiver {

    @Nullable
    AudioCapabilities audioCapabilities;

    @Nullable
    private final AudioDeviceCallbackV23 audioDeviceCallback;
    private final Context context;

    @Nullable
    private final ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver;
    private final Handler handler;

    @Nullable
    private final BroadcastReceiver hdmiAudioPlugBroadcastReceiver;
    private final Listener listener;
    private boolean registered;

    @RequiresApi
    private static final class Api23 {
        @DoNotInline
        public static void a(Context context, AudioDeviceCallback audioDeviceCallback, Handler handler) {
            ((AudioManager) Assertions.e((AudioManager) context.getSystemService("audio"))).registerAudioDeviceCallback(audioDeviceCallback, handler);
        }

        @DoNotInline
        public static void b(Context context, AudioDeviceCallback audioDeviceCallback) {
            ((AudioManager) Assertions.e((AudioManager) context.getSystemService("audio"))).unregisterAudioDeviceCallback(audioDeviceCallback);
        }

        private Api23() {
        }
    }

    @RequiresApi
    private final class AudioDeviceCallbackV23 extends AudioDeviceCallback {
        private AudioDeviceCallbackV23() {
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.c(AudioCapabilities.c(audioCapabilitiesReceiver.context));
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.c(AudioCapabilities.c(audioCapabilitiesReceiver.context));
        }
    }

    private final class ExternalSurroundSoundSettingObserver extends ContentObserver {
        private final ContentResolver resolver;
        private final Uri settingUri;

        public ExternalSurroundSoundSettingObserver(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.resolver = contentResolver;
            this.settingUri = uri;
        }

        public void a() {
            this.resolver.registerContentObserver(this.settingUri, false, this);
        }

        public void b() {
            this.resolver.unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z6) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.c(AudioCapabilities.c(audioCapabilitiesReceiver.context));
        }
    }

    public interface Listener {
        void a(AudioCapabilities audioCapabilities);
    }

    private final class HdmiAudioPlugBroadcastReceiver extends BroadcastReceiver {
        private HdmiAudioPlugBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                AudioCapabilitiesReceiver.this.c(AudioCapabilities.d(context, intent));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AudioCapabilities audioCapabilities) {
        if (!this.registered || audioCapabilities.equals(this.audioCapabilities)) {
            return;
        }
        this.audioCapabilities = audioCapabilities;
        this.listener.a(audioCapabilities);
    }

    public AudioCapabilities d() {
        AudioDeviceCallbackV23 audioDeviceCallbackV23;
        if (this.registered) {
            return (AudioCapabilities) Assertions.e(this.audioCapabilities);
        }
        this.registered = true;
        ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = this.externalSurroundSoundSettingObserver;
        if (externalSurroundSoundSettingObserver != null) {
            externalSurroundSoundSettingObserver.a();
        }
        if (Util.SDK_INT >= 23 && (audioDeviceCallbackV23 = this.audioDeviceCallback) != null) {
            Api23.a(this.context, audioDeviceCallbackV23, this.handler);
        }
        AudioCapabilities audioCapabilitiesD = AudioCapabilities.d(this.context, this.hdmiAudioPlugBroadcastReceiver != null ? this.context.registerReceiver(this.hdmiAudioPlugBroadcastReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.handler) : null);
        this.audioCapabilities = audioCapabilitiesD;
        return audioCapabilitiesD;
    }

    public void e() {
        AudioDeviceCallbackV23 audioDeviceCallbackV23;
        if (this.registered) {
            this.audioCapabilities = null;
            if (Util.SDK_INT >= 23 && (audioDeviceCallbackV23 = this.audioDeviceCallback) != null) {
                Api23.b(this.context, audioDeviceCallbackV23);
            }
            BroadcastReceiver broadcastReceiver = this.hdmiAudioPlugBroadcastReceiver;
            if (broadcastReceiver != null) {
                this.context.unregisterReceiver(broadcastReceiver);
            }
            ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = this.externalSurroundSoundSettingObserver;
            if (externalSurroundSoundSettingObserver != null) {
                externalSurroundSoundSettingObserver.b();
            }
            this.registered = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AudioCapabilitiesReceiver(Context context, Listener listener) {
        AudioDeviceCallbackV23 audioDeviceCallbackV23;
        HdmiAudioPlugBroadcastReceiver hdmiAudioPlugBroadcastReceiver;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.listener = (Listener) Assertions.e(listener);
        Handler handlerY = Util.y();
        this.handler = handlerY;
        int i10 = Util.SDK_INT;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (i10 >= 23) {
            audioDeviceCallbackV23 = new AudioDeviceCallbackV23();
        } else {
            audioDeviceCallbackV23 = null;
        }
        this.audioDeviceCallback = audioDeviceCallbackV23;
        if (i10 >= 21) {
            hdmiAudioPlugBroadcastReceiver = new HdmiAudioPlugBroadcastReceiver();
        } else {
            hdmiAudioPlugBroadcastReceiver = null;
        }
        this.hdmiAudioPlugBroadcastReceiver = hdmiAudioPlugBroadcastReceiver;
        Uri uriG = AudioCapabilities.g();
        this.externalSurroundSoundSettingObserver = uriG != null ? new ExternalSurroundSoundSettingObserver(handlerY, applicationContext.getContentResolver(), uriG) : null;
    }
}

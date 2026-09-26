package io.agora.rtc.audio;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes11.dex */
class AudioManagerAndroid {
    private static final int DEFAULT_FRAMES_PER_BUFFER = 256;
    private static final int DEFAULT_SAMPLING_RATE = 44100;
    private AudioManager audioManager;
    private int mAudioLowLatencyOutputFrameSize;
    private boolean mAudioLowLatencySupported;
    private int mNativeOutputSampleRate;
    private Context mcontext;

    private int SetAudioMode(int mode) {
        if (mode == 0) {
            this.audioManager.setMode(0);
        } else if (mode == 1) {
            this.audioManager.setMode(1);
        } else if (mode == 2) {
            this.audioManager.setMode(2);
        } else if (mode != 3) {
            this.audioManager.setMode(0);
        } else {
            this.audioManager.setMode(3);
        }
        return 0;
    }

    private int getAudioLowLatencyOutputFrameSize() {
        return this.mAudioLowLatencyOutputFrameSize;
    }

    private int getNativeOutputSampleRate() {
        return this.mNativeOutputSampleRate;
    }

    private boolean isAudioLowLatencySupported() {
        return this.mAudioLowLatencySupported;
    }

    private int GetAudioMode(int mode) {
        return this.audioManager.getMode();
    }

    private int QuerySpeakerStatus() {
        if (this.audioManager.isBluetoothScoOn()) {
            return 5;
        }
        if (this.audioManager.isWiredHeadsetOn()) {
            return 0;
        }
        return this.audioManager.isSpeakerphoneOn() ? 3 : 1;
    }

    private int SetPlayoutSpeaker(boolean loudspeakerOn) {
        this.audioManager.setSpeakerphoneOn(loudspeakerOn);
        return 0;
    }

    private int enableHardwareEarback(boolean enable) {
        Context context = this.mcontext;
        if (context != null) {
            return HardwareEarbackController.getInstance(context).enableHardwareEarback(enable);
        }
        return -1;
    }

    private boolean isHardwareEarbackSupported() {
        Context context = this.mcontext;
        if (context != null) {
            return HardwareEarbackController.getInstance(context).isHardwareEarbackSupported();
        }
        return false;
    }

    private int setHardwareEarbackVolume(int volume) {
        Context context = this.mcontext;
        if (context != null) {
            return HardwareEarbackController.getInstance(context).setHardwareEarbackVolume(volume);
        }
        return -1;
    }

    private AudioManagerAndroid(Context context) {
        this.mcontext = context;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.audioManager = audioManager;
        this.mNativeOutputSampleRate = 44100;
        this.mAudioLowLatencyOutputFrameSize = 256;
        String property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
        if (property != null) {
            this.mNativeOutputSampleRate = Integer.parseInt(property);
        }
        String property2 = this.audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER");
        if (property2 != null) {
            this.mAudioLowLatencyOutputFrameSize = Integer.parseInt(property2);
        }
        this.mAudioLowLatencySupported = context.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency");
    }
}

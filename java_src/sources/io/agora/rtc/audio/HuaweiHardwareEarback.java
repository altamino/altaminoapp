package io.agora.rtc.audio;

import android.content.Context;
import io.agora.rtc.internal.Logging;

/* JADX INFO: loaded from: classes7.dex */
class HuaweiHardwareEarback implements IHardwareEarback {
    private static final String TAG = "HuaweiHardwareEarback";
    private Context mContext;
    private com.huawei.multimedia.audiokit.interfaces.d mHwAudioKit = null;
    private com.huawei.multimedia.audiokit.interfaces.c mHwAudioKaraokeFeatureKit = null;
    private boolean mInited = false;
    private boolean mEarbackEnabled = false;
    private int latency = 0;
    private int volume = 0;

    @Override // io.agora.rtc.audio.IHardwareEarback
    public synchronized int enableEarbackFeature(boolean enable) {
        if (!this.mInited) {
            return -7;
        }
        Logging.d(TAG, ">>enableEarbackFeature " + enable);
        if (!this.mHwAudioKaraokeFeatureKit.p()) {
            Logging.e(TAG, "karaoke not supported");
            return -1;
        }
        int iM = this.mHwAudioKaraokeFeatureKit.m(enable);
        if (iM != 0) {
            Logging.e(TAG, "enableKaraokeFeature failed ret " + iM);
            return -1;
        }
        this.mEarbackEnabled = enable;
        if (enable) {
            this.latency = this.mHwAudioKaraokeFeatureKit.n();
            Logging.i(TAG, "latency " + this.latency);
        }
        return 0;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public synchronized int setHardwareEarbackVolume(int vol) {
        if (!this.mInited) {
            return -7;
        }
        Logging.d(TAG, ">>setHardwareEarbackVolume " + vol);
        if (vol < 0) {
            vol = 0;
        } else if (vol > 100) {
            vol = 100;
        }
        int iS = this.mHwAudioKaraokeFeatureKit.s(com.huawei.multimedia.audiokit.interfaces.c.EnumC0278c.CMD_SET_VOCAL_VOLUME_BASE, vol);
        if (iS == 0) {
            this.volume = vol;
            return 0;
        }
        Logging.e(TAG, "setParameter error number " + iS);
        return -1;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void destroy() {
        Logging.d(TAG, ">>destroy");
        this.mHwAudioKaraokeFeatureKit.l();
        this.mHwAudioKit.m();
    }

    protected void finalize() throws Throwable {
        Logging.d(TAG, ">>finalize");
        destroy();
        super.finalize();
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void initialize() {
        if (this.mContext == null) {
            Logging.e(TAG, "mContext is null!");
            return;
        }
        Logging.d(TAG, ">>initialize");
        com.huawei.multimedia.audiokit.interfaces.d dVar = new com.huawei.multimedia.audiokit.interfaces.d(this.mContext, new com.huawei.multimedia.audiokit.interfaces.e() { // from class: io.agora.rtc.audio.HuaweiHardwareEarback.1
            @Override // com.huawei.multimedia.audiokit.interfaces.e
            public void onResult(int i10) {
                if (i10 == 0) {
                    Logging.i(HuaweiHardwareEarback.TAG, "IAudioKitCallback: HwAudioKit init success");
                    return;
                }
                if (i10 == 2) {
                    Logging.i(HuaweiHardwareEarback.TAG, "IAudioKitCallback: audio kit not installed");
                    return;
                }
                if (i10 == 1000) {
                    HuaweiHardwareEarback.this.mInited = true;
                    Logging.i(HuaweiHardwareEarback.TAG, "IAudioKitCallback: HwAudioKaraokeFeatureKit init success ");
                } else {
                    Logging.e(HuaweiHardwareEarback.TAG, "IAudioKitCallback: onResult error number " + i10);
                }
            }
        });
        this.mHwAudioKit = dVar;
        dVar.n();
        this.mHwAudioKaraokeFeatureKit = (com.huawei.multimedia.audiokit.interfaces.c) this.mHwAudioKit.l(com.huawei.multimedia.audiokit.interfaces.d.c.HWAUDIO_FEATURE_KARAOKE);
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public boolean isHardwareEarbackSupported() {
        if (!this.mInited) {
            return false;
        }
        Logging.d(TAG, ">>isHardwareEarbackSupported");
        boolean zP = this.mHwAudioKaraokeFeatureKit.p();
        Logging.d(TAG, "isSupported " + zP);
        return zP;
    }

    public HuaweiHardwareEarback(Context context) {
        this.mContext = null;
        Logging.d(TAG, ">>ctor");
        this.mContext = context;
        initialize();
    }
}

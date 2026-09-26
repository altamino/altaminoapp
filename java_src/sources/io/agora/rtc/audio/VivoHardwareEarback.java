package io.agora.rtc.audio;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import io.agora.rtc.internal.Logging;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes11.dex */
class VivoHardwareEarback implements IHardwareEarback {
    private static final String KEY_KTV_MODE = "vivo_ktv_mode";
    private static final String KEY_MIC_TYPE = "vivo_ktv_mic_type";
    private static final String KEY_PLAY_SRC = "vivo_ktv_play_source";
    private static final String KEY_VOL_MIC = "vivo_ktv_volume_mic";
    private static final String TAG = "VivoHardwareEarback Java";
    private AudioManager mAudioManager = null;
    private Context mContext;

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void destroy() {
        this.mAudioManager = null;
        this.mContext = null;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public synchronized int enableEarbackFeature(boolean enable) {
        return -1;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public synchronized int setHardwareEarbackVolume(int vol) {
        if (vol < 0) {
            vol = 0;
        }
        if (15 < vol) {
            vol = 15;
        }
        if (this.mAudioManager == null) {
            return -1;
        }
        this.mAudioManager.setParameters(KEY_VOL_MIC + "=" + vol);
        return 0;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void initialize() {
        Context context = this.mContext;
        if (context == null) {
            Logging.e(TAG, "mContext should not be null!");
        } else {
            this.mAudioManager = (AudioManager) context.getSystemService("audio");
        }
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public boolean isHardwareEarbackSupported() {
        int i10;
        if (this.mAudioManager != null && Build.MANUFACTURER.trim().contains("vivo")) {
            StringTokenizer stringTokenizer = new StringTokenizer(this.mAudioManager.getParameters(KEY_MIC_TYPE), "=");
            if (2 == stringTokenizer.countTokens() && stringTokenizer.nextToken().equals(KEY_MIC_TYPE) && (1 == (i10 = Integer.parseInt(stringTokenizer.nextToken())) || i10 == 0)) {
                return true;
            }
        }
        return false;
    }

    public VivoHardwareEarback(Context context) {
        this.mContext = context;
        initialize();
    }

    protected void finalize() throws Throwable {
        destroy();
        super.finalize();
    }
}

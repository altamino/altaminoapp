package io.agora.rtc.audio;

import android.content.Context;
import com.coloros.ocs.base.common.api.f;
import io.agora.rtc.internal.Logging;

/* JADX INFO: loaded from: classes4.dex */
public class OppoHardwareEarback implements IHardwareEarback {
    private static String TAG = "AG-OPPO";
    private boolean isConnected = false;
    private Context mContext;

    @Override // io.agora.rtc.audio.IHardwareEarback
    public boolean isHardwareEarbackSupported() {
        return this.isConnected;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public int setHardwareEarbackVolume(int vol) {
        return 0;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void destroy() {
        try {
            Context context = this.mContext;
            if (context != null) {
                com.coloros.ocs.mediaunit.d.a(context);
                com.coloros.ocs.mediaunit.e.q();
            }
        } catch (Exception e) {
            Logging.e(e.getMessage());
        }
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public int enableEarbackFeature(boolean enable) {
        try {
            Context context = this.mContext;
            if (context == null || !this.isConnected) {
                return -1;
            }
            if (enable) {
                com.coloros.ocs.mediaunit.d.a(context).a(new f() { // from class: io.agora.rtc.audio.OppoHardwareEarback.2
                    @Override // com.coloros.ocs.base.common.api.f
                    public void onConnectionSucceed() {
                        if (OppoHardwareEarback.this.mContext != null) {
                            com.coloros.ocs.mediaunit.d.a(OppoHardwareEarback.this.mContext).r();
                        }
                    }
                });
                return 0;
            }
            com.coloros.ocs.mediaunit.d.a(context).a(new f() { // from class: io.agora.rtc.audio.OppoHardwareEarback.3
                @Override // com.coloros.ocs.base.common.api.f
                public void onConnectionSucceed() {
                    if (OppoHardwareEarback.this.mContext != null) {
                        com.coloros.ocs.mediaunit.d.a(OppoHardwareEarback.this.mContext).f();
                    }
                }
            });
            return 0;
        } catch (Exception e) {
            Logging.e(e.getMessage());
            return -1;
        }
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void initialize() {
        try {
            Context context = this.mContext;
            if (context != null) {
                com.coloros.ocs.mediaunit.d.a(context).a(new f() { // from class: io.agora.rtc.audio.OppoHardwareEarback.1
                    @Override // com.coloros.ocs.base.common.api.f
                    public void onConnectionSucceed() {
                        OppoHardwareEarback.this.isConnected = true;
                    }
                });
            }
        } catch (Exception e) {
            Logging.e(e.getMessage());
        }
    }

    public OppoHardwareEarback(Context context) {
        this.mContext = context;
        initialize();
    }
}

package com.narvii.util.diagnosis;

import android.os.Build;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.internal.DeviceUtils;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes9.dex */
public class VVTask extends DiagnosisTask {
    VVTask(NVContext nVContext) {
        super(nVContext, "Voice/Video Chat");
    }

    @Override // java.lang.Runnable
    public void run() {
        if (((RtcService) this.context.getService("rtc")).isEligible()) {
            this.result = Boolean.TRUE;
            return;
        }
        this.result = Boolean.FALSE;
        StringBuilder sb = new StringBuilder();
        try {
            RtcEngine.getSdkVersion();
        } catch (UnsatisfiedLinkError unused) {
            if (sb.length() > 0) {
                sb.append(b.COMMA);
            }
            String str = Build.SUPPORTED_ABIS[0];
            sb.append("ABI=");
            sb.append(str);
        }
        if (sb.length() > 0) {
            sb.append(b.COMMA);
        }
        sb.append("Encoder=");
        sb.append(DeviceUtils.getRecommendedEncoderType());
        this.error = sb.toString();
    }
}

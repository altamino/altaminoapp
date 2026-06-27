package com.narvii.util.diagnosis;

import android.os.Build;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.internal.DeviceUtils;

/* loaded from: classes3.dex */
public class VVTask extends DiagnosisTask {
    VVTask(NVContext nVContext) {
        super(nVContext, "Voice/Video Chat");
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (((RtcService) this.context.getService("rtc")).isEligible()) {
            this.result = true;
            return;
        }
        this.result = false;
        StringBuilder sb = new StringBuilder();
        if (Build.VERSION.SDK_INT < 18) {
            sb.append("API=");
            sb.append(Build.VERSION.SDK_INT);
        }
        try {
            RtcEngine.getSdkVersion();
        } catch (UnsatisfiedLinkError unused) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            if (Build.VERSION.SDK_INT < 21) {
                str = Build.CPU_ABI;
            } else {
                str = Build.SUPPORTED_ABIS[0];
            }
            sb.append("ABI=");
            sb.append(str);
        }
        if (sb.length() > 0) {
            sb.append(',');
        }
        sb.append("Encoder=");
        sb.append(DeviceUtils.getRecommendedEncoderType());
        this.error = sb.toString();
    }
}

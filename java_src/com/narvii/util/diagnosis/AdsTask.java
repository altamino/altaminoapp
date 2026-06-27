package com.narvii.util.diagnosis;

import android.text.SpannableStringBuilder;
import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public class AdsTask extends DiagnosisTask {
    @Override // com.narvii.util.diagnosis.DiagnosisTask
    void appendTo(SpannableStringBuilder spannableStringBuilder) {
    }

    public AdsTask(NVContext nVContext) {
        super(nVContext, "Ads");
    }

    @Override // java.lang.Runnable
    public void run() {
        this.result = true;
    }
}

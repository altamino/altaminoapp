package com.narvii.util.diagnosis;

import android.text.SpannableStringBuilder;
import com.narvii.app.NVContext;
import com.narvii.prompt.AccountPopUpUtils;
import com.narvii.wallet.AdsService;

/* JADX INFO: loaded from: classes4.dex */
public class AdsTask extends DiagnosisTask {
    @Override // java.lang.Runnable
    public void run() {
        this.result = Boolean.TRUE;
    }

    public AdsTask(NVContext nVContext) {
        super(nVContext, "Ads");
    }

    @Override // com.narvii.util.diagnosis.DiagnosisTask
    void appendTo(SpannableStringBuilder spannableStringBuilder) {
        super.appendTo(spannableStringBuilder);
        spannableStringBuilder.append((CharSequence) ("    OF=" + ((AdsService) this.context.getService(AccountPopUpUtils.POPUP_TYPE_ADS)).offerWallVendor() + "\n"));
    }
}

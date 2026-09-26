package com.narvii.prompt;

import android.content.DialogInterface;
import androidx.work.WorkRequest;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.rate.RateAppHelper;

/* JADX INFO: loaded from: classes5.dex */
public class RatePromptHelper extends PromptHelper {
    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() {
        final RateAppHelper rateAppHelper = new RateAppHelper(this.nvContext);
        if (rateAppHelper.canShow()) {
            dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.RatePromptHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    if (rateAppHelper.canShow()) {
                        rateAppHelper.showRateDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.prompt.RatePromptHelper.1.1
                            @Override // android.content.DialogInterface.OnDismissListener
                            public void onDismiss(DialogInterface dialogInterface) {
                                RatePromptHelper.this.whenNotBlocking();
                            }
                        });
                    } else {
                        RatePromptHelper.this.whenNotBlocking();
                    }
                }
            }, WorkRequest.MIN_BACKOFF_MILLIS);
        } else {
            whenNotBlocking();
        }
    }

    public RatePromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
    }
}

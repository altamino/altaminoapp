package com.narvii.prompt;

import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.wallet.optinads.OptinAdsPopupDialog;

/* JADX INFO: loaded from: classes2.dex */
public class OptinAdsPromptHelper extends PromptHelper {
    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() {
        User userAccount = this.account.getUserAccount();
        if (userAccount == null || userAccount.extensions == null) {
            whenNotBlocking();
            return;
        }
        if (System.currentTimeMillis() - this.prefs.getLong("ads_pop_up_last_shown_time", 0L) < DateUtils.ONE_DAY) {
            whenNotBlocking();
            return;
        }
        int iNodeInt = JacksonUtils.nodeInt(userAccount.extensions, -1, "popupConfig", AccountPopUpUtils.POPUP_TYPE_ADS, NotificationCompat.CATEGORY_STATUS);
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(userAccount.extensions, "popupConfig", AccountPopUpUtils.POPUP_TYPE_ADS, "lastPopupTime");
        if (iNodeInt == 1 && jsonNodeNodePath == null) {
            dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.OptinAdsPromptHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    new OptinAdsPopupDialog(OptinAdsPromptHelper.this.nvContext.getContext()).show();
                    AccountPopUpUtils.reportPopUpShown(OptinAdsPromptHelper.this.nvContext, AccountPopUpUtils.POPUP_TYPE_ADS);
                    OptinAdsPromptHelper.this.prefs.edit().putLong("ads_pop_up_last_shown_time", System.currentTimeMillis()).apply();
                }
            });
        } else {
            whenNotBlocking();
        }
    }

    public OptinAdsPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
    }
}

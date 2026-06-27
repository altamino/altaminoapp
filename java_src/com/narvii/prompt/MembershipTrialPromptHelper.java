package com.narvii.prompt;

import android.content.DialogInterface;
import android.content.res.Resources;
import com.narvii.amino.PromptShowListener;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.monetization.MembershipTrialDialog;
import com.narvii.util.DateTimeFormatter;
import com.narvii.wallet.MembershipService;

/* loaded from: classes3.dex */
public class MembershipTrialPromptHelper extends PromptHelper {
    public static final boolean FORCE_SHOW = false;
    public static final String MEMBERSHIP_TRIAL_PROMPT_SHOWN_TIME = "membership_trial_prompt_shown_time";

    public MembershipTrialPromptHelper(NVContext nVContext) {
        super(nVContext, null);
    }

    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() throws Resources.NotFoundException {
        if (canShow()) {
            PromptShowListener promptShowListener = this.promptShowListener;
            if (promptShowListener != null) {
                promptShowListener.setPromptShown(2048);
            }
            this.prefs.edit().putLong(MEMBERSHIP_TRIAL_PROMPT_SHOWN_TIME, System.currentTimeMillis()).apply();
            MembershipTrialDialog membershipTrialDialog = new MembershipTrialDialog(this.nvContext.getContext());
            membershipTrialDialog.show();
            membershipTrialDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.prompt.MembershipTrialPromptHelper.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    MembershipTrialPromptHelper.this.whenNotBlocking();
                }
            });
            return;
        }
        whenNotBlocking();
    }

    private boolean canShow() {
        User userAccount;
        if (!this.account.hasAccount() || (userAccount = this.account.getUserAccount()) == null || userAccount.createdTime == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - DateTimeFormatter.parseISO8601(userAccount.createdTime).getTime() < 604800000 || !new CommunityConfigHelper(this.nvContext).isPremiumFeatureEnabled()) {
            return false;
        }
        MembershipService membershipService = (MembershipService) this.nvContext.getService("membership");
        if (!membershipService.freeTrial() || membershipService.isMembership()) {
            return false;
        }
        PromptShowListener promptShowListener = this.promptShowListener;
        return (promptShowListener == null || !promptShowListener.anyPromptShown()) && jCurrentTimeMillis - this.prefs.getLong(MEMBERSHIP_TRIAL_PROMPT_SHOWN_TIME, 0L) >= 604800000;
    }
}

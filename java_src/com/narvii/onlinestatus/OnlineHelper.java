package com.narvii.onlinestatus;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;

/* loaded from: classes3.dex */
public class OnlineHelper {
    NVContext nvContext;

    public OnlineHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public boolean isOnline() {
        int onlineStatus;
        AccountService accountService = (AccountService) this.nvContext.getService("account");
        if (accountService.getUserProfile() == null) {
            return false;
        }
        AffiliationsService affiliationsService = (AffiliationsService) this.nvContext.getService("affiliations");
        return ((affiliationsService != null && !affiliationsService.contains(((ConfigService) this.nvContext.getService("config")).getCommunityId())) || (onlineStatus = accountService.getOnlineStatus()) == 0 || onlineStatus == 2) ? false : true;
    }
}

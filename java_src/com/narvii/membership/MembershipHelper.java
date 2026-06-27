package com.narvii.membership;

import com.narvii.app.NVContext;
import com.narvii.wallet.MembershipService;

/* loaded from: classes3.dex */
public class MembershipHelper {
    private NVContext ctx;
    MembershipService membershipService;

    public MembershipHelper(NVContext nVContext) {
        this.ctx = nVContext;
        this.membershipService = (MembershipService) nVContext.getService("membership");
    }

    public void showJoinAminoPlusDialog(String str) {
        showJoinAminoPlusDialog(null, str);
    }

    public void showJoinAminoPlusDialog(String str, String str2) {
        if (this.membershipService.isMembershipBefore()) {
            MembershipExpireDialog membershipExpireDialog = new MembershipExpireDialog(this.ctx, str);
            membershipExpireDialog.source = str2;
            membershipExpireDialog.show();
        } else {
            MembershipHintDialog membershipHintDialog = new MembershipHintDialog(this.ctx, str);
            membershipHintDialog.source = str2;
            membershipHintDialog.show();
        }
    }
}

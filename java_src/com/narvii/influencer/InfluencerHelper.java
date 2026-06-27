package com.narvii.influencer;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.Feed;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InfluencerHelper.kt */
/* loaded from: classes2.dex */
public final class InfluencerHelper {
    private final NVContext ctx;

    public InfluencerHelper(NVContext _ctx) {
        Intrinsics.checkParameterIsNotNull(_ctx, "_ctx");
        this.ctx = _ctx;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean checkNeedShowFansOnlyHintDialog(Feed feed, String str) {
        if (feed == null || !feed.needHidden) {
            return false;
        }
        AccountService accountService = (AccountService) this.ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
        if (accountService.getUserProfile() == null) {
            FansOnlyHintDialog.showFansOnlyHintDialog(this.ctx, feed, str);
            return true;
        }
        FanClub fanClub = accountService.getFanClub(feed.uid());
        if (fanClub != null && fanClub.isActive()) {
            return false;
        }
        FansOnlyHintDialog.showFansOnlyHintDialog(this.ctx, feed, str);
        return true;
    }
}

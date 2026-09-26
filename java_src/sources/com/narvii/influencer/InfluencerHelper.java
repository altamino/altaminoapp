package com.narvii.influencer;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.Feed;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class InfluencerHelper {

    @NotNull
    private final NVContext ctx;

    public final boolean checkNeedShowFansOnlyHintDialog(@Nullable Feed feed, @Nullable String str) {
        if (feed == null || !feed.needHidden) {
            return false;
        }
        AccountService accountService = (AccountService) this.ctx.getService("account");
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

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public InfluencerHelper(@NotNull NVContext _ctx) {
        t.j(_ctx, "_ctx");
        this.ctx = _ctx;
    }
}

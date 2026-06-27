package com.narvii.master;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.community.LeaveCommunityHelper;
import com.narvii.model.Community;
import com.narvii.util.logging.LoggingService;

/* loaded from: classes3.dex */
public class MasterLeaveCommunityHelper extends LeaveCommunityHelper {
    public MasterLeaveCommunityHelper(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.community.LeaveCommunityHelper
    protected void onLeaveCommunitySuccess(Community community) {
        super.onLeaveCommunitySuccess(community);
        ((AffiliationsService) NVApplication.instance().getService("affiliations")).opRemove(community.id);
        ((GlobalChatService) this.nvContext.getService("globalChat")).removeCommunity(community.id);
        RtcService rtcService = (RtcService) this.nvContext.getService("rtc");
        rtcService.exitLiveChannelOfCommunity(community.id);
        rtcService.hideThreadDetailWindow(community.id);
    }

    @Override // com.narvii.community.LeaveCommunityHelper
    protected void onSendLeaveCommunityRequest(Community community) {
        ((LoggingService) this.nvContext.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("LeaveAmino", CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(community.id));
    }
}

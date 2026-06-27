package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.widget.NicknameView;

/* loaded from: classes2.dex */
public class VVChatNickNameView extends NicknameView {
    public VVChatNickNameView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.hideRole = true;
        this.hideMembershipBadge = true;
        this.hideRankingBadge = true;
        this.hideInfluencerBadge = false;
    }
}
